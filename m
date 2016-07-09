Return-Path: <hammadahmed85@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D10FE00C6E; Fri,  8 Jul 2016 18:04:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (hammadahmed85[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D21ABE00C60
	for <yocto@yoctoproject.org>; Fri,  8 Jul 2016 18:04:25 -0700 (PDT)
Received: by mail-it0-f41.google.com with SMTP id f6so16638436ith.0
	for <yocto@yoctoproject.org>; Fri, 08 Jul 2016 18:04:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=J2Q1GV4/QaDXJNPuhGmsAJ4atxlppQASHhTidDhCTT8=;
	b=qVJnnCbmVwWxCnYsfv4Gki8KBBczZ8S/nRO3roEibQTtisY2H0pBqGqsReIzM6qPjg
	I3dkriurVaoOaDByAkDoOqoaldxzL1u8Aud56+3uFJNq57NoTJiQbegWS3UW6Z1p80cl
	ISLJ7LR530zr4LSLkz9MDgcpNudqvbzeYg9SfuGr58RMJa9iNSzw21z6zy05Q3XM9pBl
	/4Rg+5SLJrfZzjRIk3v/mCCKE6fA/99YzrIe0xW7fB7cMfdbE6y31qy+EKnggtT0hF3I
	k73oB6bB00Y9VyTebWBH1DUSDMMU/kktc2Hm4rLmL2yLXcYeG4aowrMkUbK9Dwh0BVE2
	IQaw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=J2Q1GV4/QaDXJNPuhGmsAJ4atxlppQASHhTidDhCTT8=;
	b=OwfJEorVx9HRr8MKE1ZrAkz346Og061+gGo31DeoSAOSFPM/+wHcNKGbhDmb4gXLGz
	wKbChR7sz4IMeoqaobWc2Hl3MKnflrF2uTHlmQ9D0AJd+y8zFoE5402wMGxwhnP6Nu/M
	y08lJGgjsN5KOVfDLtDGBT4DVE1t3mAXIqSGMh+xkS4lyvQtMP0Td8T935dssWNmMxMk
	wedndnny17+YRfGIfg51fgyga02gD9Sy/v28769+n0XPHBgcduwbXuxixON9N6xgC7LQ
	l7G6bzgtgx7ilOCKa5elCkPBXfhOVlocSAQcXboyU1z14kr8dvRMuMtc/pw6IqW81Dbs
	FPNA==
X-Gm-Message-State: ALyK8tJUR7Xk8T5rLz2TLW69JadULlM0D5kx0hm9OrxTm6/QtMDw6oXxq/ckKGnGLczHnKZT/qknwbTez+FksA==
X-Received: by 10.36.50.206 with SMTP id j197mr1170444ita.70.1468026264670;
	Fri, 08 Jul 2016 18:04:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.79.139 with HTTP; Fri, 8 Jul 2016 18:04:24 -0700 (PDT)
From: Hammad Ahmed <hammadahmed85@gmail.com>
Date: Fri, 8 Jul 2016 21:04:24 -0400
Message-ID: <CACibCHofyRnNQXuK_G2N9jeQ6ATEo5HG4vEp88PDa6+8hVABtg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: [meta-raspberrypi] u-boot doesnt boot kernel
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
X-List-Received-Date: Sat, 09 Jul 2016 01:04:28 -0000
Content-Type: multipart/alternative; boundary=001a114aa33a06d90605372980d6

--001a114aa33a06d90605372980d6
Content-Type: text/plain; charset=UTF-8

Hi,
I wanted to boot with u-boot so I added:

KERNEL_IMAGETYPE = "uImage"

u-boot builds fine but when I boot up my raspberrypi, u-boot doesnt start
the kernel.

U-Boot 2013.01-rc1 (Jul 08 2016 - 19:01:50)

DRAM:  448 MiB
WARNING: Caches not enabled
MMC:   bcm2835_sdhci: 0
Using default environment

In:    serial
Out:   lcd
Err:   lcd
mbox: Timeout waiting for response
bcm2835: Could not set USB power state
Net:   Net Initialization Skipped
No ethernet found.
Hit any key to stop autoboot:  0
reading uEnv.txt
** Unable to read file uEnv.txt **
reading boot.scr
** Unable to read file boot.scr **
U-Boot>


Heres is a printenv

U-Boot> printenv
arch=arm
baudrate=115200
board=rpi_b
board_name=rpi_b
bootargs=dma.dmachans=0x7f35 bcm2708_fb.fbwidth=656 bcm2708_fb.fbheight=416
bcm2708.boardrev=0xe bcm2708.serial=0x4ef0ddfa
smsc95xx.macaddr=B8:27:EB:F0:DD:FA sdhci-bcm2708.emmc_clock_freq=250000000
vc_memg
bootcmd=if mmc rescan ${mmcdev}; then if run loadbootenv; then run
importbootenv; fi; if run loadbootscript; then run bootscript; fi; fi
bootdelay=3
bootenv=uEnv.txt
bootscript=echo Running bootscript from mmc${mmcdev} ...; source ${loadaddr}
cpu=arm1176
importbootenv=echo Importing environment from mmc ...; env import -t
$loadaddr $filesize
loadaddr=0x00200000
loadbootenv=fatload mmc ${mmcdev} ${loadaddr} ${bootenv}
loadbootscript=fatload mmc ${mmcdev} ${loadaddr} boot.scr
mmcdev=0
soc=bcm2835
stderr=serial,lcd
stdin=serial
stdout=serial,lcd
usbethaddr=B8:27:EB:F0:DD:FA
vendor=raspberrypi

Environment size: 1064/16380 bytes

Any help would be great. Thanks.

--001a114aa33a06d90605372980d6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi,<br></div>I wanted to boot with u-b=
oot so I added:<br><br>KERNEL_IMAGETYPE =3D &quot;uImage&quot;<br><br></div=
>u-boot builds fine but when I boot up my raspberrypi, u-boot doesnt start =
the kernel.<br><br>U-Boot 2013.01-rc1 (Jul 08 2016 - 19:01:50)<br><br>DRAM:=
=C2=A0 448 MiB<br>WARNING: Caches not enabled<br>MMC:=C2=A0=C2=A0 bcm2835_s=
dhci: 0<br>Using default environment<br><br>In:=C2=A0=C2=A0=C2=A0 serial<br=
>Out:=C2=A0=C2=A0 lcd<br>Err:=C2=A0=C2=A0 lcd<br>mbox: Timeout waiting for =
response<br>bcm2835: Could not set USB power state<br>Net:=C2=A0=C2=A0 Net =
Initialization Skipped<br>No ethernet found.<br>Hit any key to stop autoboo=
t:=C2=A0 0 <br>reading uEnv.txt<br>** Unable to read file uEnv.txt **<br>re=
ading boot.scr<br>** Unable to read file boot.scr **<br>U-Boot&gt; <br><br>=
<br></div>Heres is a printenv<br><br>U-Boot&gt; printenv<br>arch=3Darm<br>b=
audrate=3D115200<br>board=3Drpi_b<br>board_name=3Drpi_b<br>bootargs=3Ddma.d=
machans=3D0x7f35 bcm2708_fb.fbwidth=3D656 bcm2708_fb.fbheight=3D416 bcm2708=
.boardrev=3D0xe bcm2708.serial=3D0x4ef0ddfa smsc95xx.macaddr=3DB8:27:EB:F0:=
DD:FA sdhci-bcm2708.emmc_clock_freq=3D250000000 vc_memg<br>bootcmd=3Dif mmc=
 rescan ${mmcdev}; then if run loadbootenv; then run importbootenv; fi; if =
run loadbootscript; then run bootscript; fi; fi<br>bootdelay=3D3<br>bootenv=
=3DuEnv.txt<br>bootscript=3Decho Running bootscript from mmc${mmcdev} ...; =
source ${loadaddr}<br>cpu=3Darm1176<br>importbootenv=3Decho Importing envir=
onment from mmc ...; env import -t $loadaddr $filesize<br>loadaddr=3D0x0020=
0000<br>loadbootenv=3Dfatload mmc ${mmcdev} ${loadaddr} ${bootenv}<br>loadb=
ootscript=3Dfatload mmc ${mmcdev} ${loadaddr} boot.scr<br>mmcdev=3D0<br>soc=
=3Dbcm2835<br>stderr=3Dserial,lcd<br>stdin=3Dserial<br>stdout=3Dserial,lcd<=
br>usbethaddr=3DB8:27:EB:F0:DD:FA<br>vendor=3Draspberrypi<br><br>Environmen=
t size: 1064/16380 bytes<br><br></div>Any help would be great. Thanks.<br><=
/div>

--001a114aa33a06d90605372980d6--
