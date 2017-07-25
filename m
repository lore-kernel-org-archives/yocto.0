Return-Path: <colin.helliwell@ln-systems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 37EE2E00C2B; Tue, 25 Jul 2017 03:26:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_05,RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.135 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [212.227.126.135 listed in dnsbl.sorbs.net]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0250]
X-Greylist: delayed 302 seconds by postgrey-1.32 at yocto-www;
	Tue, 25 Jul 2017 03:26:52 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57165E00C1C
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 03:26:52 -0700 (PDT)
Received: from LNSYSCH3 ([81.130.69.98]) by mrelayeu.kundenserver.de (mreue004
	[212.227.15.163]) with ESMTPSA (Nemesis) id 0MCdZW-1dQdId0gxm-009NRs
	for <yocto@yoctoproject.org>; Tue, 25 Jul 2017 12:21:49 +0200
From: <colin.helliwell@ln-systems.com>
To: <yocto@yoctoproject.org>
Date: Tue, 25 Jul 2017 11:21:48 +0100
Organization: LN Systems Limited
Message-ID: <083d01d3052f$d367e6c0$7a37b440$@ln-systems.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdMFLs7E+Ae88kZUQ9udAKHmYnTc4w==
X-Provags-ID: V03:K0:5OLa0fpcgeAn4hmptgcJGCP7mmSwADNFUJSDusyIwAyb9tSQekU
	QeYc6d2s/jCchQFilHjP/9OHfTQ90BTIKJxegf1QdAH9Jo8Eg9EDOa8b2nhd7IBAYSh5aZk
	2vewunKYUcFvuZwrTyDx9Cew4C5AAvAPQlhUPSi/TBnE8bfBsWvMM9CevD38ZjUZWmNkqkO
	raq0+6I4QkTCEq7S3dqKA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:qiCBS/GyAUo=:oDRLTa0YQrAl5IlzjemWXU
	rd9PhQgFEOzzy7H0Y2oXk4jUWzjB4B/Qe1xn5cbAJ92ErFxacxuJR3OJONvZU870fjRAQn0dY
	HvSDvDMbjCltPbWTFZ3f5ZafZwJan+9Ew11Qzptn3A/QLrxQB+rEbcocS33EP5ksyr0Fhl5es
	hcoY3eyFccLwJaG5uDDLWOhVP48MSobzSl8S/GQtk5tbPSyTWA67VYk+8NsN2d4hxh4UoNn4u
	XsWyzdzry69NaKIr3zqakdyITlzHUgSdvp4nzD1qaZTRleuyrrZAl/+xQHBbN1GhdzWOdWP6Y
	QvVGzXx0+iHpN0EDXDJrIljfJOBpJuWlREhmIeYkM4SIOo0oazBQVetB/WZGqt/GJKh8vMdk1
	SNcnm3MZfXQaf5L/XYxOkPxC26gtO4WV4TTOOvKlEV5BAxonc2t0yGEHXD/HBreH9HkHMX5ub
	ZFzqWrTOhgqA4NDb6Q3GjYT8l1W/tlFV10Ojh8G9ulssm3KCms50DZmzcCv+u+C7Vd+XEwhOQ
	CI64O+DXQOU8HjSYtyswhY9plsFmCqxUKApB+iJxz+JjuieaXCIgQwUwJ4S8cfW3uzZTvEBv3
	8Cr+enqVomoeRoWNASv3wykoAtMwuWrkXt0ZsPSRrrrM+gF2rg4Qw30SP9s52xprBJrAYdzGL
	kNK8fujDtQYaUohV7CMGhporUSXPHfQYGDyQHOEtXaI3Q/lBSjQ7hV1QiVcSp/Iw4JuyVs4D0
	ckRri8sQUfOMAL+GezBRyW5cwvVvMHHLWinSZYYOzbD1S50IXOWH7unWWX4=
Subject: Migrating from krogoth to morty (can't boot fitImage)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: colin.helliwell@ln-systems.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 25 Jul 2017 10:26:54 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable
Content-Language: en-gb

I'm trying to migrate my krogoth environment to morty. I have custom =
recipes
for u-boot and kernel; the only change necessary to build under morty =
was to
patch u-boot for gcc6 =A0- other than that the source versions and =
configs
used are the same.
On krogoth I can boot a fitImage kernel, but not on morty. (uImage works =
on
both).=20
Looking at the image info on the morty image, it looks like the =
load/entry
addresses are completely wrong.

On krogoth:
U-Boot > iminfo

## Checking Image at 18000000 ...
   FIT image found
   FIT description: U-Boot fitImage for=20
    Image 0 (kernel@1)
     Description:  Linux kernel
     Type:         Kernel Image
     Compression:  uncompressed
     Data Start:   0x180000e8
     Data Size:    3304552 Bytes =3D 3.2 MiB
     Architecture: ARM
     OS:           Linux
     Load Address: 0x10008000
     Entry Point:  0x10008000
     Hash algo:    sha1
     Hash value:   10a220564569205b11febba4b7e2809395bfee9c
    Image 1 (fdt@1)
     Description:  Flattened Device Tree blob
     Type:         Flat Device Tree
     Compression:  uncompressed
     Data Start:   0x18326e44
     Data Size:    38269 Bytes =3D 37.4 KiB
     Architecture: ARM
     Hash algo:    sha1
     Hash value:   79d5eeb892ef059566c04d98cdc6b30e92a665a2
    Default Configuration: 'conf@1'
    Configuration 0 (conf@1)
     Description:  Boot Linux kernel with FDT blob
     Kernel:       kernel@1
     FDT:          fdt@1
## Checking hash(es) for FIT Image at 18000000 ...
   Hash(es) for Image 0 (kernel@1): sha1+
   Hash(es) for Image 1 (fdt@1): sha1+

On morty:
U-Boot > iminfo

## Checking Image at 18000000 ...
   FIT image found
   FIT description: U-Boot fitImage for=20
    Image 0 (kernel@1)
     Description:  Linux kernel
     Type:         Kernel Image
     Compression:  uncompressed
     Data Start:   0x180000e8
     Data Size:    3304016 Bytes =3D 3.2 MiB
     Architecture: ARM
     OS:           Linux
     Load Address: 0x01314c40		<- doesn't seem like these could be
correct?
     Entry Point:  0x01314c40
     Hash algo:    sha1
     Hash value:   e2de67793e93d854614a42994180b77e053c7302
    Image 1 (fdt@1)
     Description:  Flattened Device Tree blob
     Type:         Flat Device Tree
     Compression:  uncompressed
     Data Start:   0x18326c2c
     Data Size:    38269 Bytes =3D 37.4 KiB
     Architecture: ARM
     Hash algo:    sha1
     Hash value:   79d5eeb892ef059566c04d98cdc6b30e92a665a2
    Default Configuration: 'conf@1'
    Configuration 0 (conf@1)
     Description:  Linux kernel, FDT blob
     Kernel:       kernel@1
     FDT:          fdt@1
## Checking hash(es) for FIT Image at 18000000 ...
   Hash(es) for Image 0 (kernel@1): sha1+
   Hash(es) for Image 1 (fdt@1): sha1+

Attempting to boot causes it to hang after "Loading Kernel Image ... "

Anyone got any ideas what might be wrong, or where to look to track it =
down?
(Any change to mkimage-type steps in morty?)



