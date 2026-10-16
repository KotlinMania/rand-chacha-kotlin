#if canImport(Testing)
import Testing
import RandChacha

@Suite("RandChacha Swift Export Tests")
struct RandChachaExportTests {
    @Test("RandChacha swift module imported cleanly")
    func testSwiftModuleLoads() throws {
        #expect(Bool(true), "RandChacha swift module imported cleanly")
    }
}
#elseif canImport(XCTest)
import XCTest
import RandChacha

final class RandChachaExportTests: XCTestCase {
    func testSwiftModuleLoads() throws {
        XCTAssertTrue(true, "RandChacha swift module imported cleanly")
    }
}
#endif
