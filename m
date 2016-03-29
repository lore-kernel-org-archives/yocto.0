Return-Path: <petter@technux.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39864E006AE; Tue, 29 Mar 2016 13:54:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [195.74.38.228 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from bin-vsp-out-02.atm.binero.net (bin-mail-out-05.binero.net
	[195.74.38.228])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 892B7E0048B
	for <yocto@yoctoproject.org>; Tue, 29 Mar 2016 13:54:06 -0700 (PDT)
X-Halon-ID: 5ca08358-f5f0-11e5-aff0-005056917f90
Authorized-sender: petter@technux.se
Received: from [192.168.1.11] (unknown [85.195.55.167])
	by bin-vsp-out-02.atm.binero.net (Halon Mail Gateway) with ESMTPSA;
	Tue, 29 Mar 2016 22:53:59 +0200 (CEST)
To: Khem Raj <raj.khem@gmail.com>
References: <1459263851-32643-1-git-send-email-petter@technux.se>
	<1459263851-32643-2-git-send-email-petter@technux.se>
	<127D05D7-F0BC-4D36-8E9E-4F3C10E104EF@gmail.com>
From: =?UTF-8?Q?Petter_Mab=c3=a4cker?= <petter@technux.se>
Message-ID: <56FAEB92.5050709@technux.se>
Date: Tue, 29 Mar 2016 22:54:42 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.4.0
MIME-Version: 1.0
In-Reply-To: <127D05D7-F0BC-4D36-8E9E-4F3C10E104EF@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 1/4] pitft: Add support for pitft28r
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
X-List-Received-Date: Tue, 29 Mar 2016 20:54:12 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

On 03/29/2016 05:59 PM, Khem Raj wrote:
>> On Mar 29, 2016, at 8:04 AM, Petter Mabäcker <petter@technux.se> wrote:
>>
>> The support for PiTFT 28 inch resistive touchscreen is optional
>> and can be enabled by adding below in local.conf:
>>
>> MACHINE_FEATURES += "pitft pitft28r”
>>
> will this work with all kernel recipes available in layer ?
It works on 3.18+. I just realized that 3.14 support was not removed 
when we took in 4.4 (so it will not work on that kernel). Since the 
general policy we have is to support three kernel versions; latest 
stable (4.4) + two longterm (4.1 and 3.18), I can send up a commit that 
removes 3.14 support in 'master' within this series.

Thanks for your help to pointing this out!

BR Petter
>
>
>> Signed-off-by: Petter Mabäcker <petter@technux.se>
>> ---
>> README                                                              | 1 +
>> conf/machine/include/rpi-base.inc                                   | 1 +
>> recipes-bsp/bootfiles/rpi-config_git.bb                             | 6 ++++++
>> .../xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pitft.conf  | 5 +++++
>> .../xserver-xf86-config/rpi/xorg.conf.d/99-calibration.conf         | 6 ++++++
>> .../xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf  | 5 -----
>> recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend      | 6 ++++--
>> recipes-kernel/linux/linux-raspberrypi.inc                          | 2 ++
>> 8 files changed, 25 insertions(+), 7 deletions(-)
>> create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pitft.conf
>> create mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-calibration.conf
>> delete mode 100644 recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
>>
>> diff --git a/README b/README
>> index 536926b..54b1ac3 100644
>> --- a/README
>> +++ b/README
>> @@ -232,6 +232,7 @@ the modelname should be added as a MACHINE_FEATURES in local.conf like below:
>>
>> List of currently supported models:
>>      - pitft22
>> +    - pitft28r
>>
>>
>> 4. Extra apps
>> diff --git a/conf/machine/include/rpi-base.inc b/conf/machine/include/rpi-base.inc
>> index 792150e..a9e8053 100644
>> --- a/conf/machine/include/rpi-base.inc
>> +++ b/conf/machine/include/rpi-base.inc
>> @@ -33,6 +33,7 @@ KERNEL_DEVICETREE ?= " \
>>      overlays/iqaudio-dacplus-overlay.dtb \
>>      overlays/lirc-rpi-overlay.dtb \
>>      overlays/pitft22-overlay.dtb \
>> +    overlays/pitft28-resistive-overlay.dtb \
>>      overlays/pps-gpio-overlay.dtb \
>>      overlays/w1-gpio-overlay.dtb \
>>      overlays/w1-gpio-pullup-overlay.dtb \
>> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfiles/rpi-config_git.bb
>> index 4d41723..2941982 100644
>> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
>> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
>> @@ -17,6 +17,7 @@ PR = "r4"
>>
>> PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
>> PITFT22="${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d)}"
>> +PITFT28r="${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0", d)}"
>>
>> inherit deploy
>>
>> @@ -90,6 +91,11 @@ do_deploy() {
>>          echo "# Enable PITFT22 display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>          echo "dtoverlay=pitft22,rotate=270,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>      fi
>> +
>> +    if [ "${PITFT28r}" = "1" ]; then
>> +        echo "# Enable PITFT28r display" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>> +        echo "dtoverlay=pitft28-resistive,rotate=90,speed=32000000,txbuflen=32768" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>> +    fi
>> }
>>
>> addtask deploy before do_package after do_install
>> diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pitft.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pitft.conf
>> new file mode 100644
>> index 0000000..0d2b36b
>> --- /dev/null
>> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/98-pitft.conf
>> @@ -0,0 +1,5 @@
>> +Section "Device"
>> +    Identifier "Adafruit PiTFT"
>> +    Driver "fbdev"
>> +    Option "fbdev" "/dev/fb1"
>> +EndSection
>> diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-calibration.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-calibration.conf
>> new file mode 100644
>> index 0000000..f8b578c
>> --- /dev/null
>> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-calibration.conf
>> @@ -0,0 +1,6 @@
>> +Section "InputClass"
>> +        Identifier      "calibration"
>> +        MatchProduct    "stmpe-ts"
>> +        Option  "Calibration"   "3800 200 200 3800"
>> +        Option  "SwapAxes"      "1"
>> +EndSection
>> diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf b/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
>> deleted file mode 100644
>> index 0d2b36b..0000000
>> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config/rpi/xorg.conf.d/99-pitft.conf
>> +++ /dev/null
>> @@ -1,5 +0,0 @@
>> -Section "Device"
>> -    Identifier "Adafruit PiTFT"
>> -    Driver "fbdev"
>> -    Option "fbdev" "/dev/fb1"
>> -EndSection
>> diff --git a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> index 0ae2ee0..062de2d 100644
>> --- a/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> +++ b/recipes-graphics/xorg-xserver/xserver-xf86-config_0.1.bbappend
>> @@ -1,7 +1,8 @@
>> FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>>
>> SRC_URI_append_rpi = " file://xorg.conf.d/10-evdev.conf \
>> -                       file://xorg.conf.d/99-pitft.conf \
>> +                       file://xorg.conf.d/98-pitft.conf \
>> +                       file://xorg.conf.d/99-calibration.conf \
>>                       "
>>
>> do_install_append_rpi () {
>> @@ -10,7 +11,8 @@ do_install_append_rpi () {
>>
>> 	PITFT="${@bb.utils.contains("MACHINE_FEATURES", "pitft", "1", "0", d)}"
>> 	if [ "${PITFT}" = "1" ]; then
>> -		install -m 0644 ${WORKDIR}/xorg.conf.d/99-pitft.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
>> +		install -m 0644 ${WORKDIR}/xorg.conf.d/98-pitft.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
>> +		install -m 0644 ${WORKDIR}/xorg.conf.d/99-calibration.conf ${D}/${sysconfdir}/X11/xorg.conf.d/
>> 	fi
>> }
>>
>> diff --git a/recipes-kernel/linux/linux-raspberrypi.inc b/recipes-kernel/linux/linux-raspberrypi.inc
>> index 24e7fe2..142ad7f 100644
>> --- a/recipes-kernel/linux/linux-raspberrypi.inc
>> +++ b/recipes-kernel/linux/linux-raspberrypi.inc
>> @@ -27,6 +27,8 @@ CMDLINE_append = ' ${@base_conditional("ENABLE_KGDB", "1", "kgdboc=ttyAMA0,11520
>>
>> UDEV_GE_141 ?= "1"
>>
>> +KERNEL_MODULE_AUTOLOAD += "${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "stmpe-ts", "", d)}"
>> +
>> # Set programmatically some variables during recipe parsing
>> # See http://www.yoctoproject.org/docs/current/bitbake-user-manual/bitbake-user-manual.html#anonymous-python-functions
>> python __anonymous () {
>> --
>> 1.9.1
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto


