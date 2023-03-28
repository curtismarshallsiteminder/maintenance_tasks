function refresh() {
  if (!("refresh" in document.body.dataset)) return
  window.setTimeout(() => {
    document.body.style.cursor = "wait"
    fetch(document.location, { headers: { "X-Requested-With": "XMLHttpRequest" } }).then(
      async response => {
        const text = await response.text()
        const newDocument = new DOMParser().parseFromString(text, "text/html")
        document.body.replaceWith(newDocument.body)
        // force a redraw for Safari
        window.scrollTo({ top: document.documentElement.scrollTop + 1 })
        window.scrollTo({ top: document.documentElement.scrollTop - 1 })
        refresh()
      },
      error => location.reload()
    )
  }, 3000)
}
document.addEventListener('DOMContentLoaded', refresh)