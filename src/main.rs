#![no_std]
#![no_main]

use cortex_m_rt::entry;
use mkl82z7_pac::Peripherals;
use panic_halt as _;

#[entry]
fn main() -> ! {
    let peripherals = Peripherals::take().unwrap();
    let sim = peripherals.SIM;

    let devid = sim.sdid.read().bits();
    loop {
        continue;
    }
}
