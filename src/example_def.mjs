export default {
	"vm-name": {
		run_as: "<user>",

		// path to place logs, stderr.log and stdout.log
		logs: "<path>",
		// path to place control files like qemu monitor etc.
		control: "<path>",

		virtio_disks: [
			// path to disks that will be attached via virtio
		]

		// cpu pinning (optional)
		pin_cpu_ids: [],

		// PCIe Passthrough (optional)
		vfio_pcie_addr: [`01:00.0`]
	}
}
