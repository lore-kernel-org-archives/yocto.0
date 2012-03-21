Return-Path: <dvhart@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE79DE0044D
	for <yocto@yoctoproject.org>; Wed, 21 Mar 2012 16:07:25 -0700 (PDT)
Received: from azsmga002.ch.intel.com ([10.2.17.35])
	by azsmga101.ch.intel.com with ESMTP; 21 Mar 2012 16:06:58 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="80144686"
Received: from unknown (HELO envy.home) ([10.255.15.248])
	by AZSMGA002.ch.intel.com with ESMTP; 21 Mar 2012 16:06:58 -0700
Message-ID: <4F6A5EE6.8070303@linux.intel.com>
Date: Wed, 21 Mar 2012 16:06:14 -0700
From: Darren Hart <dvhart@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0.1) Gecko/20120209 Thunderbird/10.0.1
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>, "Wold, Saul" <saul.wold@intel.com>
References: <cover.1331666101.git.dvhart@linux.intel.com>
	<a7914fb82371af784c544d3efefefaa2c63afd4d.1331666101.git.dvhart@linux.intel.com>
In-Reply-To: <a7914fb82371af784c544d3efefefaa2c63afd4d.1331666101.git.dvhart@linux.intel.com>
X-Enigmail-Version: 1.4
Subject: Re: [PATCH 1/1] ddimage: Add script for writing images to boot media
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Mar 2012 23:07:25 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Any objections to this going in?

On 03/13/2012 12:16 PM, Darren Hart wrote:
> Fixes [YOCTO #1806]
> 
> Standard practice is to use the Linux "dd" command to write images to boot
> media. This can be error prone and the results of sloppy usage can be
> disastrous. Locating the device you want to use is a clumsy process, especially
> on a headless build system.
> 
> The ddimage script does the following:
> 
> o Check the image and device exist
> o Check the device is writable
> o Compare the device to a blacklist and abort if it's listed
>   Blacklist defaults to "/dev/sda"
> o Display useful identifying information about the image and device
> o Prompt the user before commencing the write
> 
> The output looks something like this:
> 
> $ sudo ~/bin/ddimage tmp/deploy/images/core-image-sato-fri2-noemgd.hddimg /dev/sdk
> Image details
> =============
>     image: `tmp/deploy/images/core-image-sato-fri2-noemgd.hddimg' -> `core-image-sato-fri2-noemgd-20111202214038.hddimg'
>      size: 318568448 bytes
>  modified: 2011-12-02 13:45:05.298897861 -0800
>      type: x86 boot sector, code offset 0x58, OEM-ID "SYSLINUX", sectors/cluster 16, root entries 512, Media descriptor 0xf8, sectors/FAT 152, heads 64, hidden sectors 32, sectors 622204 (volumes > 32 MB) , serial number 0x4ed946e0, label: "boot       ", FAT (16 bit)
> 
> Device details
> ==============
>   device: /dev/sdk
>   vendor: Kingston
>    model: DT 101 G2
> 
> Write tmp/deploy/images/core-image-sato-fri2-noemgd.hddimg to /dev/sdk [y/N]? y
> Writing image...
> 303+1 records in
> 303+1 records out
> 318568448 bytes (319 MB) copied, 53.6766 s, 5.9 MB/s
> 
> Signed-off-by: Darren Hart <dvhart@linux.intel.com>
> CC: Dexuan Cui <dexuan.cui@intel.com>
> CC: Joshua Lock <josh@linux.intel.com>
> CC: Kishore K Bodke <kishore.k.bodke@intel.com>
> ---
>  scripts/contrib/ddimage |   87 +++++++++++++++++++++++++++++++++++++++++++++++
>  1 files changed, 87 insertions(+), 0 deletions(-)
>  create mode 100755 scripts/contrib/ddimage
> 
> diff --git a/scripts/contrib/ddimage b/scripts/contrib/ddimage
> new file mode 100755
> index 0000000..2cba9b2
> --- /dev/null
> +++ b/scripts/contrib/ddimage
> @@ -0,0 +1,87 @@
> +#!/bin/sh
> +
> +#BLACKLIST_DEVICES="/dev/sda /dev/sdb /dev/sdc /dev/sdd /dev/sde"
> +BLACKLIST_DEVICES="/dev/sda"
> +
> +# 1MB blocksize
> +BLOCKSIZE=1048576
> +
> +function usage() {
> +	echo "Usage: $(basename $0) IMAGE DEVICE"
> +}
> +
> +function image_details() {
> +	IMG=$1
> +	echo "Image details"
> +	echo "============="
> +	echo "    image: $(stat --printf '%N\n' $IMG)"
> +	echo "     size: $(stat -L --printf '%s bytes\n' $IMG)"
> +	echo " modified: $(stat -L --printf '%y\n' $IMG)"
> +	echo "     type: $(file -L -b $IMG)"
> +	echo ""
> +}
> +
> +function device_details() {
> +	DEV=$1
> +	BLOCK_SIZE=512
> +
> +	echo "Device details"
> +	echo "=============="
> +	echo "  device: $DEVICE"
> +	if [ -f "/sys/class/block/$DEV/device/vendor" ]; then
> +		echo "  vendor: $(cat /sys/class/block/$DEV/device/vendor)"
> +	else
> +		echo "  vendor: UNKOWN"
> +	fi
> +	if [ -f "/sys/class/block/$DEV/device/model" ]; then
> +		echo "   model: $(cat /sys/class/block/$DEV/device/model)"
> +	else
> +		echo "   model: UNKNOWN"
> +	fi
> +	if [ -f "/sys/class/block/$DEV/size" ]; then
> +		echo "    size: $[$(cat /sys/class/block/$DEV/size)*BLOCK_SIZE] bytes"
> +	else
> +		echo "    size: UNKNOWN"
> +	fi
> +	echo ""
> +}
> +
> +if [ $# -ne 2 ]; then
> +	usage
> +	exit 1
> +fi
> +
> +IMAGE=$1
> +DEVICE=$2
> +
> +if [ ! -e "$IMAGE" ]; then
> +	echo "ERROR: Image $IMAGE does not exist"
> +	usage
> +	exit 1
> +fi
> +
> +
> +if [ "${BLACKLIST_DEVICES/${DEVICE}/ERROR}" != "$BLACKLIST_DEVICES" ]; then
> +	echo "ERROR: Device $DEVICE is blacklisted"
> +	exit 1
> +fi
> +
> +if [ ! -w "$DEVICE" ]; then
> +	echo "ERROR: Device $DEVICE does not exist or is not writable"
> +	usage
> +	exit 1
> +fi
> +
> +image_details $IMAGE
> +device_details $(basename $DEVICE)
> +
> +echo -n "Write $IMAGE to $DEVICE [y/N]? "
> +read RESPONSE
> +if [ "$RESPONSE" != "y" ]; then
> +	echo "Write aborted"
> +	exit 0
> +fi
> +
> +echo "Writing image..."
> +dd if="$IMAGE" of="$DEVICE" bs="$BLOCKSIZE"
> +sync

-- 
Darren Hart
Intel Open Source Technology Center
Yocto Project - Linux Kernel

