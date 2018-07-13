Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9255E010DF; Fri, 13 Jul 2018 07:52:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.160.65 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f65.google.com (mail-pl0-f65.google.com
	[209.85.160.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A1CD3E00EE0
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 07:52:21 -0700 (PDT)
Received: by mail-pl0-f65.google.com with SMTP id a7-v6so12305598plp.3
	for <yocto@yoctoproject.org>; Fri, 13 Jul 2018 07:52:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=lC/oElDWw9qAWIixyMQUqk7qCEkAQEBvc+Y8yWiOvsM=;
	b=g2H9Ktxby55qaZ9zs2wsoAg8iOLhpOXcQp3pjuestVR12+ZG8uVo1ut/H4+9llqvfk
	1lYAnkJrrTkCSiuQ7TEjEBULAFn8r4NoNpO14gnuNskAsNokdYJ6iQuo77HE2GBIY8+d
	JXbPfSks4z2ZF1sconph1MKF7lOq8Cg4WGy6zOw065i+26vJZBc5ojNCM1Ou3ZT9o+G+
	3hP2ra7YYlZYimEOAVhlOV6EHODt2wJFUfTu/8QikA8idXnQaFHCpKzMTcWpuAreWYkp
	2rLXlyVH2IB8Y41MUjqcye6ZeuHtspHEKPCo+Rl4wBL5d5xxz1ADhZMQoa4ucCdZGq9J
	+2eQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=lC/oElDWw9qAWIixyMQUqk7qCEkAQEBvc+Y8yWiOvsM=;
	b=Hrzd+a/l1bA9TT6ZEqR21z1CNalA/vOi1OCv3EMnPYIXoh/gEoe2CK4sWnVkUY6Qi2
	sdHDSXyO9NQQoZ1KZHsCF3MX9lmMtB3p4ODkZBsgYNGHoVP7/mDO7uiMHz733Q1lo0XF
	l12iVPCHfPcGUUx+6nsEt5tp+uu6LzQZJGV2zl6DVs6QrsK1KA/oEPf71nOlMym0ZVOO
	ojAtQOecAAvkEDxJp1jG1kgbZOMybXzebOQW9mloLVuvCFsd6yXs8o8nNymOiKLqVLI6
	ldFOVkuSrIj/+Cht9gYWf5ndyQ8xNqOImmLY6QS2qZPAfho6K44NJjk+KroV7RFPH0Jt
	y8aA==
X-Gm-Message-State: AOUpUlFHx4DyXRCoqI2gnkeXx0sYOwqVlomkgbBNTBbSE1CTD3eQO5mV
	rPguUzD6VxcyIZ0JtZ/asBpNMg==
X-Google-Smtp-Source: AAOMgpeNaYMzUPNcuZYKM5d2LTFO5AqKmgGXI/CBhYOKmIG83aXncTcWfPW3Wto0VO/hFTRx6zccCw==
X-Received: by 2002:a17:902:24a5:: with SMTP id
	w34-v6mr6741082pla.52.1531493540773; 
	Fri, 13 Jul 2018 07:52:20 -0700 (PDT)
Received: from ?IPv6:2601:202:4000:1184:955f:e3a6:6fb7:17eb?
	([2601:202:4000:1184:955f:e3a6:6fb7:17eb])
	by smtp.gmail.com with ESMTPSA id
	e186-v6sm45404640pfc.13.2018.07.13.07.52.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 13 Jul 2018 07:52:19 -0700 (PDT)
To: mohamad.noor.alim.hussin@intel.com, yocto@yoctoproject.org,
	richard.purdie@linuxfoundation.org
References: <1531483735-31772-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <6de7931a-6e29-e7c9-bc40-b79a4c50e430@gmail.com>
Date: Fri, 13 Jul 2018 07:52:18 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <1531483735-31772-1-git-send-email-mohamad.noor.alim.hussin@intel.com>
Subject: Re: [PATCH] runtime: Add support to manual BSP test cases
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 13 Jul 2018 14:52:24 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit
Content-Language: en-US



On 07/13/2018 05:08 AM, mohamad.noor.alim.hussin@intel.com wrote:
> From: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
>
> This is manual BSP test cases that have converted to auto test cases
> for QA release. Manualbsp.py has dependency on file bsphardware that run
> on hardware.
How do the TestID get determined?

Also, I think this patch needs to be cc'd to
"openembedded-core@lists.openembedded.org"
>
> Signed-off-by: Mohamad Noor Alim Hussin <mohamad.noor.alim.hussin@intel.com>
> ---
>  meta/lib/oeqa/runtime/cases/manualbsp.py | 122 ++++++++++++++++++++++++++++
>  meta/lib/oeqa/runtime/files/bsphardware  | 132 +++++++++++++++++++++++++++++++
>  2 files changed, 254 insertions(+)
>  create mode 100644 meta/lib/oeqa/runtime/cases/manualbsp.py
>  create mode 100755 meta/lib/oeqa/runtime/files/bsphardware
>
> diff --git a/meta/lib/oeqa/runtime/cases/manualbsp.py b/meta/lib/oeqa/runtime/cases/manualbsp.py
> new file mode 100644
> index 0000000..22d0d33
> --- /dev/null
> +++ b/meta/lib/oeqa/runtime/cases/manualbsp.py
> @@ -0,0 +1,122 @@
> +from oeqa.runtime.case import OERuntimeTestCase
> +from oeqa.core.decorator.depends import OETestDepends
> +from oeqa.core.decorator.oeid import OETestID
> +import subprocess
> +import time
> +
> +class BspRuntimeTest(OERuntimeTestCase):
> +
> +    @OETestID(240)
> +    def test_check_bash(self):
> +        status, output = self.target.run('which bash')
> +        msg = ('bash shell not working as expected. '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestID(228)
> +    def test_runlevel_5(self):
> +        status, output = self.target.run('init 5')
> +        msg = ('System unable to init 5 '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 255, msg = msg)
> +        time.sleep(2)
> +        command = 'bsphardware -r 5'
> +        status, output = self.target.run(command)
> +        msg = ('System did not start from runlevel 5. '
> +                'Status:%s.' % (status))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestID(198)
> +    def test_runlevel_3(self):
> +        status, output = self.target.run('init 3')
> +        msg = ('System unable to start with runlevel 3. '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 255, msg = msg)
> +        time.sleep(2)
> +        command = 'bsphardware -r 3'
> +        status, output = self.target.run(command)
> +        msg = ('Unable to change from runlevel 5 to 3. '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +class BspHardwareTest(OERuntimeTestCase):
> +
> +    @classmethod
> +    def setUpClass(cls):
> +        src = os.path.join(cls.tc.runtime_files_dir, 'bsphardware')
> +        cls.tc.target.run('mkdir ~/test')
> +        cls.tc.target.copyTo(src, '/usr/bin')
> +
> +    @classmethod
> +    def tearDownClass(cls):
> +        cls.tc.target.run('rm -rf ~/test')
> +
> +    @OETestID(216)
> +    def test_USB_mount(self):
> +        command = 'bsphardware -d sd -sp 1 -m ~/test/stick'
> +        status, output = self.target.run(command)
> +        msg = ('Unable to mount USB stick. '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestID(217)
> +    @OETestDepends(['manualbsp.BspHardwareTest.test_USB_write_file'])
> +    def test_USB_read_file(self):
> +        command = 'cat ~/test/stick/hello_stick'
> +        status, output = self.target.run(command)
> +        msg = ('Unable to read file from USB stick. '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestDepends(['manualbsp.BspHardwareTest.test_USB_mount'])
> +    @OETestID(219)
> +    def test_USB_write_file(self):
> +        command = 'touch ~/test/stick/hello_stick'
> +        status, output = self.target.run(command)
> +        msg = ('Status and  output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestDepends(['manualbsp.BspHardwareTest.test_USB_mount'])
> +    @OETestID(218)
> +    def test_USB_unmount(self):
> +        command = 'bsphardware -u ~/test/stick'
> +        status, output = self.target.run(command)
> +        msg = ('Unable to unmount USB stick. ' 
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestID(241)
> +    def test_MicroSD_mount(self):
> +        command = 'bsphardware -d mmc -sp p1 -m ~/test/microsd'
> +        status, output = self.target.run(command)
> +        msg = ('Unable to mount MicroSD. '
> +                'Status and output:%s and %s.' %(status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestDepends(['manualbsp.BspHardwareTest.test_MicroSD_write_file'])
> +    @OETestID(242)
> +    def test_MicroSD_read_file(self):
> +        command = 'cat ~/test/microsd/hello_mmc'
> +        status, output = self.target.run(command)
> +        msg = ('Unable to read MicroSD. '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestDepends(['manualbsp.BspHardwareTest.test_MicroSD_mount'])
> +    @OETestID(244)
> +    def test_MicroSD_write_file(self):
> +        command = 'touch ~/test/microsd/hello_mmc'
> +        status, output = self.target.run(command)
> +        msg = ('Unable to write to MicroSD. '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> +    @OETestDepends(['manualbsp.BspHardwareTest.test_MicroSD_mount'])
> +    @OETestID(243)
> +    def test_MicroSD_unmount(self):
> +        command = 'bsphardware -u ~/test/microsd'
> +        status, output = self.target.run(command)
> +        msg = ('Unable to unmount MicroSD. '
> +                'Status and output:%s and %s.' % (status, output))
> +        self.assertEqual(status, 0, msg = msg)
> +
> diff --git a/meta/lib/oeqa/runtime/files/bsphardware b/meta/lib/oeqa/runtime/files/bsphardware
> new file mode 100755
> index 0000000..2640acc
> --- /dev/null
> +++ b/meta/lib/oeqa/runtime/files/bsphardware
> @@ -0,0 +1,132 @@
> +#!/bin/sh
> +
> +# Description: This script used for Yocto Project BSP test.
> +#              manualbsp.py script is depend on this script
> +#              that available in poky/meta/lib/oeqa/runtime/cases/manualbsp.py.
> +#              This script is should be located in
> +#              poky/meta/lib/oeqa/runtime/cases/
> +
> +LOG_FILE="/tmp/bsphardware.log"
> +
> +usage() {
> +echo "BSP hardware test is a script used to test hardware"
> +echo "such as USB stick, micro SD and SSD hard disk on Yocto Project."$'\n'
> +echo "Usage:"
> +echo " -d, --device <keyword, e.g. sd/mmc>            Get device's name"
> +echo " -sp, --setPartition <partition's number>       Set partition's number "
> +echo " -m, --mount <path/to/mount>                    Mount the device to /path/to/mount"
> +echo " -u, --umount <path/to/unmount>                 Unmont the mounted device"
> +echo " -r, --runlevel <3|5>                           Get runlevel on current system"
> +echo " -h, --help                                     Show the usage"$'\n'
> +echo "Examples"
> +echo " bsphardware -d sda -sp 1 -m ~/data   Mount /dev/sda1 on ~/data"
> +}
> +
> +options() {
> +SETPARTITION=""
> +DEVICE=""
> +while [[ $# -gt 0 ]]; do
> +case "$1" in
> +    -d|--device)
> +        echo "[INFO]: get device's name" 2>&1 | tee -a $LOG_FILE
> +        array_devices=()
> +        index_device=()
> +        array_devices=$(ls /dev/$2*)
> +        for i in ${array_devices[@]}
> +        do
> +            index_device+=($i)
> +        done
> +        DEVICE="${index_device[0]}"
> +        echo "[INFO]: Detected device: $DEVICE"$'\n' 2>&1 | tee -a $LOG_FILE
> +        ;;
> +    -sp| --setPartition)
> +        echo "[INFO]: Set partition: $2" 2>&1 | tee -a $LOG_FILE
> +        SETPARTITION=$2
> +        ;;
> +    -m|mount)
> +        if [[ ! -d $2 ]];then
> +            mkdir -p $2
> +        fi
> +        if [[ "$DEVICE" == "" || " $SETPARTITION" == "" ]]; then
> +            echo "[ERROR]: Target device and partition not found." 2>&1 | tee -a $LOG_FILE 
> +            echo "[INFO]: Use -d <device_keyword> -sp <partition's number> -m <dir>"  2>&1 | tee -a $LOG_FILE
> +        else
> +            echo "[INFO]: Mounting removable media..." 2>&1 | tee -a $LOG_FILE
> +            echo "[DEBUG]: commandline: mount $DEVICE$SETPARTITION $2"$'\n' 2>&1 | tee -a $LOG_FILE > /dev/null
> +            mount $DEVICE$SETPARTITION $2
> +        fi
> +        if [[ $? -eq 0 ]]; then
> +            echo "[INFO]: Device $DEVICE$SETPARTITION mount successfully"$'\n' 2>&1 | tee -a $LOG_FILE
> +            exit 0
> +        else
> +            echo "[ERROR]: Unable to mount device $DEVICE$SETPARTITION. Device does not exist"$'\n' 2>&1 | tee -a $LOG_FILE
> +            exit 1
> +        fi
> +        ;;
> +    -u|umount)
> +        echo "[INFO]: Unmount $2" 2>&1 | tee -a $LOG_FILE
> +        if [[ -d $2 ]]; then
> +            echo "[DEBUG]: commandline: umount from $2" 2>&1 | tee -a $LOG_FILE > /dev/null
> +            umount $2
> +        else
> +            echo "[Error]: No mount point on $2"$'\n' 2>&1 | tee -a $LOG_FILE
> +            exit 1
> +        fi
> +        if [[ $? -eq 0 ]];then 
> +            echo "[INFO]: Device $2 unmount successfully" 2>&1 | tee -a $LOG_FILE
> +            echo "[INFO]: Removing mount point on $2" $'\n' 2>&1 | tee -a $LOG_FILE
> +            rm -rf $2
> +        else
> +            echo "[ERROR]: Unable to unmount from $2"$'\n' 2>&1 | tee -a $LOG_FILE
> +        fi
> +        ;;
> +    -r|--runlevel)
> +        level=$(runlevel | cut -d " " -f2)
> +        echo "[DEBUG]: commandline: runlevel | cut -d ' ' -f2" 2>&1 | tee -a $LOG_FILE > /dev/null
> +        if [[ "$2" == "3" || "$2" == "5" ]]; then
> +            if [[ "$level" == "3" && "$level" == "$2" ]]; then
> +                echo "[DEBUG]: Test runlevel 3"  2>&1 | tee -a $LOG_FILE
> +                echo "[INFO]: System start with runlevel: $level"$'\n' 2>&1 | tee -a $LOG_FILE
> +                exit 0
> +            elif [[ "$level" == "5" && "$level" == "$2" ]]; then
> +                echo "[DEBUG]: Test runlevel 5" 2>&1 | tee -a $LOG_FILE > /dev/null
> +                echo "[INFO]: System start with runlevel: $level"$'\n' 2>&1 | tee -a $LOG_FILE
> +                exit 0
> +            else
> +                echo "[INFO]: System did not start with runlevel: $2"$'\n' 2>&1 | tee -a $LOG_FILE
> +                exit 1
> +            fi
> +        else
> +            echo "[ERROR]: Runlevel other than 3 & 5 are not allowed."$'\n' 2>&1 | tee -a $LOG_FILE
> +            exit 1
> +        fi
> +        ;;
> +    -h|--help)
> +        usage
> +        exit 0
> +        ;;
> +    *) 
> +        echo "[Error]: Arguments $1 is not exists."$'\n' 2>&1 | tee -a $LOG_FILE
> +        usage
> +        exit 1
> +        ;;
> +esac
> +shift
> +shift
> +done
> +}
> +
> +main() {
> +if [ "$#" == "0" ];then
> +    usage
> +    exit 1
> +else
> +    echo "[INFO]: Start-Date: $(date '+%Y-%m-%d %H:%M:%S')" 2>&1 | tee -a $LOG_FILE > /dev/null
> +    echo "[DEBUG]: commandline: $0 ${POSITIONAL[*]}" 2>&1 | tee -a $LOG_FILE > /dev/null
> +    options "${POSITIONAL[@]}"
> +fi
> +}
> +
> +POSITIONAL=()
> +POSITIONAL+=("$@")
> +main ${POSITIONAL[@]}


