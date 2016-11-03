Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6CB7E00BB0; Wed,  2 Nov 2016 22:58:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.195 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.192.195 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f195.google.com (mail-pf0-f195.google.com
	[209.85.192.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B24B4E00C28
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 22:58:45 -0700 (PDT)
Received: by mail-pf0-f195.google.com with SMTP id y68so3803452pfb.1
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 22:58:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:from:in-reply-to:date:cc:message-id:references
	:to; bh=ALqUovxn+uO7N/4HDwYBBTtxd+3qtZO+sDH5orF/WoI=;
	b=y2HnxPAm8a9VqZ05dS2qMsIVkZyU3HADjocJEg6T+xevDZ2ZzTZgiRAjJ5am0rIj1H
	mn98eYv2iRbWnXRLE4qTCTkDKgko0c/ZZL9V/UpStBB0vebTNdiATZmywH4Ee+4sqTZv
	W+Bj+Zl6gh77z/6OC+eCHtXpGR0r+mVRc6/Bveiq2NAOv8dUD++iwFcC0kPbgqUax++f
	WWFCdn5yuRoz7a++nfYmKTpO/J+yJ8wlvXXq+ZSDPsUfmD5tjt7xcum4L41UUa55/nSI
	ca2l4nuTzkZmyBtbnKyZRRkvanpxr/b7E7PAgKZl4rROPWWYFDDRMyL9Zb9FDObw7ksb
	FujA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:mime-version:from:in-reply-to:date:cc
	:message-id:references:to;
	bh=ALqUovxn+uO7N/4HDwYBBTtxd+3qtZO+sDH5orF/WoI=;
	b=QRc/SlIaLQtb2rVpZ/BSohbtezTnfr2yRwSXa5P6hYofj7j2T1Itcr+M0dsIFpk8oh
	O5d/s5qWbbgD/YD+gvVWTZYD0N5Xo9LQTllPgZtNzRh2OxPSbRan03chuJG2DMZ82wvv
	FXF/m2EijsoOz8xFeT8hPQgjdwnkVYu8YXADVlh8GYgoLGti+//J4ZKq35jofIbEQ8PW
	KN8qZroCKbjaJDOvMu7wBDWIGip6EPMa4AQKLrPNfao3ueuQNejOVzDfi9PfmoKpV6O7
	OsRP3XkD1RH5pMNWawIlhinU//C0zPgWWg8gEprYrzk/9wWPS1iyf7Kn837g5VW3Wkzl
	quAw==
X-Gm-Message-State: ABUngvc3q3/J46yxUYN5bU6aFOkxF7GttqbH93/Ua0/FQLX7jFNroT/2z9Yooz97WL8hdg==
X-Received: by 10.98.150.79 with SMTP id c76mr13888043pfe.154.1478152725457;
	Wed, 02 Nov 2016 22:58:45 -0700 (PDT)
Received: from ?IPv6:2601:646:8882:b8c:99b5:6af1:c0c3:9e76?
	([2601:646:8882:b8c:99b5:6af1:c0c3:9e76])
	by smtp.gmail.com with ESMTPSA id
	g78sm9064606pfe.19.2016.11.02.22.58.44
	(version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
	Wed, 02 Nov 2016 22:58:44 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3124\))
X-Pgp-Agent: GPGMail
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20161102074635.7522a939@nuc.betafive.co.uk>
Date: Wed, 2 Nov 2016 22:58:44 -0700
Message-Id: <1D85A8A3-C041-4EC4-9249-EC5D56E01D0A@gmail.com>
References: <20161101134911.11547-1-net147@gmail.com>
	<20161102074635.7522a939@nuc.betafive.co.uk>
To: Paul Barker <paul@paulbarker.me.uk>
X-Mailer: Apple Mail (2.3124)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] u-boot: Simplify boot script
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
X-List-Received-Date: Thu, 03 Nov 2016 05:58:55 -0000
X-Groupsio-MsgNum: 32796
Content-Type: multipart/signed;
	boundary="Apple-Mail=_A78228C2-30CA-42BB-8542-E53FC3BAFBD5";
	protocol="application/pgp-signature"; micalg=pgp-sha1

--Apple-Mail=_A78228C2-30CA-42BB-8542-E53FC3BAFBD5
Content-Transfer-Encoding: 7bit
Content-Type: text/plain;
	charset=us-ascii


> On Nov 2, 2016, at 12:46 AM, Paul Barker <paul@paulbarker.me.uk> wrote:
> 
> On Wed,  2 Nov 2016 00:49:11 +1100
> Jonathan Liu <net147@gmail.com> wrote:
> 
>> device_tree_address=0x100 is set in config.txt so the firmware will
>> load a patched device tree blob to 0x100 before passing control to
>> U-Boot. The U-Boot script will then read the command line arguments
>> generated by the firmware from the device tree and boot the kernel
>> with the command line arguments and the loaded device tree.
>> 
>> This allows things like MAC address, board revision and serial number
>> to be correctly configured and options in config.txt to be used.
>> 
>> Signed-off-by: Jonathan Liu <net147@gmail.com>
>> ---
>> recipes-bsp/bootfiles/rpi-config_git.bb                | 5 +++++
>> recipes-bsp/rpi-u-boot-scr/files/boot.cmd              | 3 +++
>> recipes-bsp/rpi-u-boot-scr/files/raspberrypi/boot.cmd  | 6 ------
>> recipes-bsp/rpi-u-boot-scr/files/raspberrypi0/boot.cmd | 6 ------
>> recipes-bsp/rpi-u-boot-scr/files/raspberrypi2/boot.cmd | 6 ------
>> recipes-bsp/rpi-u-boot-scr/files/raspberrypi3/boot.cmd | 6 ------
>> 6 files changed, 8 insertions(+), 24 deletions(-)
>> create mode 100644 recipes-bsp/rpi-u-boot-scr/files/boot.cmd
>> delete mode 100644
>> recipes-bsp/rpi-u-boot-scr/files/raspberrypi/boot.cmd delete mode
>> 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi0/boot.cmd delete
>> mode 100644 recipes-bsp/rpi-u-boot-scr/files/raspberrypi2/boot.cmd
>> delete mode 100644
>> recipes-bsp/rpi-u-boot-scr/files/raspberrypi3/boot.cmd
>> 
>> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb
>> b/recipes-bsp/bootfiles/rpi-config_git.bb index f610718..2f4d25c
>> 100644 --- a/recipes-bsp/bootfiles/rpi-config_git.bb
>> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
>> @@ -76,6 +76,11 @@ do_deploy() {
>>         echo "dispmanx_offline=1"
>>>> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt fi
>> 
>> +    # U-Boot Device Tree support
>> +    if [ "${KERNEL_IMAGETYPE}" = "uImage" ]; then
>> +        sed -i '/#device_tree_address/ c\device_tree_address=0x100'
>> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>> +    fi
>> +
>>     # SPI bus support
>>     if [ -n "${ENABLE_SPI_BUS}" ] || [ "${PITFT}" = "1" ]; then
>>         echo "# Enable SPI bus"
>>>> ${DEPLOYDIR}/bcm2835-bootfiles/config.txt diff --git
>>>> a/recipes-bsp/rpi-u-boot-scr/files/boot.cmd
>>>> b/recipes-bsp/rpi-u-boot-scr/files/boot.cmd
>> new file mode 100644
>> index 0000000..3f7e3b6
>> --- /dev/null
>> +++ b/recipes-bsp/rpi-u-boot-scr/files/boot.cmd
>> @@ -0,0 +1,3 @@
>> +fdt addr ${fdt_addr_r} && fdt get value bootargs /chosen bootargs
>> +fatload mmc 0:1 ${kernel_addr_r} uImage
>> +bootm ${kernel_addr_r} - ${fdt_addr_r}
>> diff --git a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi/boot.cmd
>> b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi/boot.cmd deleted file
>> mode 100644 index c86c758..0000000
>> --- a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi/boot.cmd
>> +++ /dev/null
>> @@ -1,6 +0,0 @@
>> -setenv fdtfile bcm2708-rpi-b.dtb
>> -setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0
>> root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd' -mmc dev 0
>> -fatload mmc 0:1 ${kernel_addr_r} uImage
>> -fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
>> -bootm ${kernel_addr_r} - ${fdt_addr_r}
>> diff --git a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi0/boot.cmd
>> b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi0/boot.cmd deleted file
>> mode 100644 index c86c758..0000000
>> --- a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi0/boot.cmd
>> +++ /dev/null
>> @@ -1,6 +0,0 @@
>> -setenv fdtfile bcm2708-rpi-b.dtb
>> -setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0
>> root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd' -mmc dev 0
>> -fatload mmc 0:1 ${kernel_addr_r} uImage
>> -fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
>> -bootm ${kernel_addr_r} - ${fdt_addr_r}
>> diff --git a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi2/boot.cmd
>> b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi2/boot.cmd deleted file
>> mode 100644 index aa4ea64..0000000
>> --- a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi2/boot.cmd
>> +++ /dev/null
>> @@ -1,6 +0,0 @@
>> -setenv fdtfile bcm2709-rpi-2-b.dtb
>> -setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0
>> root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd' -mmc dev 0
>> -fatload mmc 0:1 ${kernel_addr_r} uImage
>> -fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
>> -bootm ${kernel_addr_r} - ${fdt_addr_r}
>> diff --git a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi3/boot.cmd
>> b/recipes-bsp/rpi-u-boot-scr/files/raspberrypi3/boot.cmd deleted file
>> mode 100644 index 2950856..0000000
>> --- a/recipes-bsp/rpi-u-boot-scr/files/raspberrypi3/boot.cmd
>> +++ /dev/null
>> @@ -1,6 +0,0 @@
>> -setenv fdtfile bcm2710-rpi-3-b.dtb
>> -setenv bootargs 'earlyprintk console=tty0 console=ttyAMA0
>> root=/dev/mmcblk0p2 rootfstype=ext4 rootwait noinitrd' -mmc dev 0
>> -fatload mmc 0:1 ${kernel_addr_r} uImage
>> -fatload mmc 0:1 ${fdt_addr_r} ${fdtfile}
>> -bootm ${kernel_addr_r} - ${fdt_addr_r}
> 
> Looks like I missed the RaspberryPi Device Tree documentation
> (https://www.raspberrypi.org/documentation/configuration/device-tree.md)
> when putting my patches together. I assumed that they use device trees
> in a pretty standard way but looks like I was wrong!
> 
> I'll give this a test this week.

Staged for testing


> 
> Thanks,
> Paul
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


--Apple-Mail=_A78228C2-30CA-42BB-8542-E53FC3BAFBD5
Content-Transfer-Encoding: 7bit
Content-Disposition: attachment;
	filename=signature.asc
Content-Type: application/pgp-signature;
	name=signature.asc
Content-Description: Message signed with OpenPGP using GPGMail

-----BEGIN PGP SIGNATURE-----
Comment: GPGTools - https://gpgtools.org

iEYEARECAAYFAlga0hQACgkQuwUzVZGdMxQ0eACgjARBBfPFmYg/mnpaaGxp88zX
QDAAn3SX5jWtu14mt8lcZCK+BY5AcFHd
=UI1J
-----END PGP SIGNATURE-----

--Apple-Mail=_A78228C2-30CA-42BB-8542-E53FC3BAFBD5--
