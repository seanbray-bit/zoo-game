import SwiftUI
import WebKit

// The actual game lives on GitHub Pages. Because this app just displays that
// page, editing index.html on GitHub updates the game instantly — you only
// need to re-upload to TestFlight if you change this native shell itself.
private let gameURL = URL(string: "https://seanbray-bit.github.io/zoo-game/")!

struct ContentView: View {
    var body: some View {
        WebView(url: gameURL)
            .ignoresSafeArea()
            .background(Color(red: 0.31, green: 0.76, blue: 0.97)) // sky blue while loading
    }
}

struct WebView: UIViewRepresentable {
    let url: URL

    func makeUIView(context: Context) -> WKWebView {
        let config = WKWebViewConfiguration()
        config.allowsInlineMediaPlayback = true
        config.mediaTypesRequiringUserActionForPlayback = []

        let webView = WKWebView(frame: .zero, configuration: config)
        webView.scrollView.bounces = false
        webView.scrollView.contentInsetAdjustmentBehavior = .never
        webView.isOpaque = false
        webView.backgroundColor = .clear
        webView.allowsBackForwardNavigationGestures = false
        return webView
    }

    func updateUIView(_ webView: WKWebView, context: Context) {
        if webView.url == nil {
            webView.load(URLRequest(url: url))
        }
    }
}

#Preview {
    ContentView()
}
