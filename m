Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2B831E00A3B; Mon, 27 Jul 2015 01:51:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.47 listed in list.dnswl.org]
Received: from mail-qg0-f47.google.com (mail-qg0-f47.google.com
	[209.85.192.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5151AE009D6
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 01:51:02 -0700 (PDT)
Received: by qges31 with SMTP id s31so135367qge.3
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 01:51:01 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=y89kVlCLFB5exjPD3EQC0mOuKLTV8s0rQrMnCK6DQr0=;
	b=Ss5P/RE/+keukKFGZ4bAE5VIGY9sncw6OowK6tPQ5eZ2vOOhT9EkiDDAPrDCQiudGO
	mbYYQ2DIV+R3SPtu9Sak3HalaQilSuV99cbQSBkpbY0s7t39+3wnj673b7pMDNtK4+c7
	CZ1khEkfXcpLHFsC6nGmnpLm5QzP/NrLIjI28+bcLPGIY8rZz8TzlrCSQWpLhs51BD6T
	FfbNZOyjphOMtKk/lE5Iqb1Cta31SbCaQKX0uDOBg/oPHldqy19rnXJBnmNK+RMiE37f
	DPr0BkjBa4+EZbtcC/Hu1gi8jqQtQ8jD4nhTqHhO7rsKABcC3Bhzq5SqeGX4V20+EuhZ
	748g==
X-Gm-Message-State: ALoCoQnOev3Xspft7TIupm6nyOPVPVwR0iOwEKWBcgf7VVrILDDuY/N2swORuK7An8c+yIT26KHf
X-Received: by 10.140.109.199 with SMTP id l65mr38346484qgf.91.1437987061450; 
	Mon, 27 Jul 2015 01:51:01 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.98.8 with HTTP; Mon, 27 Jul 2015 01:50:42 -0700 (PDT)
In-Reply-To: <55B5213D.9040604@gmail.com>
References: <55B5213D.9040604@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 27 Jul 2015 10:50:42 +0200
Message-ID: <CAP71Wjz6LZ465Mjskx1gDLV5xpff=_jZiqogAJsm0=x3_o+e1w@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: include all kernel modules in image
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
X-List-Received-Date: Mon, 27 Jul 2015 08:51:09 -0000
Content-Type: text/plain; charset=UTF-8

On Sun, Jul 26, 2015 at 8:04 PM, Trevor Woerner <twoerner@gmail.com> wrote:
>
> Is there a generic way to say "please include all of these packages"
> instead of having to list each and every one of them in a
> CORE_IMAGE_EXTRA_INSTALL variable? Adding "kernel-modules" to that
> variable doesn't work (I get an error executing a python function -- No
> such file or directory).


adding kernel-modules should work. it's a meta package that RDEPENDS
on kernel-modules-*, e.g. in my build (oe-core/master)

$ dpkg -I tmp-glibc/deploy/ipk/ifc6410/kernel-modules_3.19-r0_ifc6410.ipk
 new debian package, version 2.0.
 size 1518 bytes: control archive=1222 bytes.
    3660 bytes,    12 lines      control
 Package: kernel-modules
 Version: 3.19-r0
 Description: linux-linaro-qcomlt version 3.19-r0
  Kernel modules meta package
 Section: base
 Priority: optional
 Maintainer: OE-Core Developers <openembedded-core@lists.openembedded.org>
 License: GPLv2
 Architecture: ifc6410
 OE: linux-linaro-qcomlt
 Depends: kernel-module-navman, kernel-module-gspca-m5602,
kernel-module-g-ether, kernel-module-ti-usb-3410-5052,
kernel-module-zr364xx, kernel-module-hid-microsoft,
kernel-module-gspca-spca561, kernel-module-mct-u232,
kernel-module-gspca-t613, kernel-module-gspca-sn9c2028,
kernel-module-iuu-phoenix, kernel-module-ezusb,
kernel-module-wishbone-serial, kernel-module-cypress-m8,
kernel-module-usb-f-mass-storage, kernel-module-f81232,
kernel-module-gspca-benq, kernel-module-symbolserial,
kernel-module-usb-f-ecm, kernel-module-xsens-mt,
kernel-module-spcp8x5, kernel-module-gspca-nw80x,
kernel-module-kl5kusb105, kernel-module-usb-serial-simple,
kernel-module-lcd, kernel-module-videobuf-core,
kernel-module-gspca-gl860, kernel-module-cp210x,
kernel-module-omninet, kernel-module-gspca-topro,
kernel-module-gspca-se401, kernel-module-ir-usb,
kernel-module-mac80211, kernel-module-gspca-sq905,
kernel-module-mos7840, kernel-module-gspca-finepix,
kernel-module-ansi-cprng, kernel-module-gspca-sunplus,
kernel-module-cfg80211, kernel-module-gspca-ov534-9,
kernel-module-gspca-pac7302, kernel-module-gspca-sq930x,
kernel-module-aircable, kernel-module-gspca-dtcs033,
kernel-module-oti6858, kernel-module-gspca-konica,
kernel-module-gspca-pac7311, kernel-module-gadgetfs,
kernel-module-gspca-ov534, kernel-module-gspca-sonixj,
kernel-module-nfsd, kernel-module-usb-f-ecm-subset,
kernel-module-gspca-sonixb, kernel-module-gspca-tv8532,
kernel-module-whiteheat, kernel-module-gspca-stk014,
kernel-module-gspca-spca1528, kernel-module-gspca-vc032x,
kernel-module-gspca-stv06xx, kernel-module-safe-serial,
kernel-module-gspca-jl2005bcd, kernel-module-digi-acceleport,
kernel-module-qcserial, kernel-module-keyspan, kernel-module-quatech2,
kernel-module-mos7720, kernel-module-configfs,
kernel-module-keyspan-pda, kernel-module-ark3116,
kernel-module-gspca-conex, kernel-module-gspca-spca501,
kernel-module-gspca-spca500, kernel-module-gspca-spca506,
kernel-module-gspca-spca505, kernel-module-gspca-spca508,
kernel-module-gspca-kinect, kernel-module-option, kernel-module-ipaq,
kernel-module-g-ffs, kernel-module-ssu100, kernel-module-gspca-cpia1,
kernel-module-libcomposite, kernel-module-gspca-mr97310a,
kernel-module-usb-f-rndis, kernel-module-gspca-ov519,
kernel-module-io-ti, kernel-module-kobil-sct, kernel-module-empeg,
kernel-module-usb-wwan, kernel-module-metro-usb,
kernel-module-gspca-stv0680, kernel-module-garmin-gps,
kernel-module-qcaux, kernel-module-belkin-sa, kernel-module-mxuport,
kernel-module-ath6kl-sdio, kernel-module-gspca-sn9c20x,
kernel-module-sierra, kernel-module-pl2303,
kernel-module-videobuf-vmalloc, kernel-module-gspca-xirlink-cit,
kernel-module-ftdi-sio, kernel-module-hid-magicmouse,
kernel-module-io-edgeport, kernel-module-visor,
kernel-module-ath6kl-core, kernel-module-gspca-etoms,
kernel-module-opticon, kernel-module-pwc, kernel-module-ipw,
kernel-module-gspca-mars, kernel-module-gspca-vicam,
kernel-module-usbserial, kernel-module-gspca-sq905c,
kernel-module-cyberjack, kernel-module-u-ether, kernel-module-ch341,
kernel-module-gspca-jeilinj, kernel-module-gspca-pac207,
kernel-module-usb-f-fs, kernel-module-hid-logitech,
kernel-module-g-mass-storage, kernel-module-gspca-stk1135,
kernel-module-gspca-zc3xx
 Source: git://git.linaro.org/landing-teams/working/qualcomm/kernel.git;branch=release/qcomlt-3.19;protocol=https
file://defconfig

