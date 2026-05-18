import SwiftUI

struct ContentView: View {
    @State private var status = "长按下面方块"

    var body: some View {
        VStack(spacing: 16) {
            RoundedRectangle(cornerRadius: 20)
                .fill(.orange.gradient)
                .frame(width: 180, height: 180)
                .onLongPressGesture(minimumDuration: 1) {
                    status = "已触发长按"
                }

            Text(status)
                .foregroundStyle(.secondary)
        }
        .padding()
    }
}
