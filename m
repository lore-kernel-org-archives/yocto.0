Return-Path: <prvs=10404ea304=holzmayr@rsi-elektrotechnik.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 574F5E00BAF; Fri, 17 May 2019 02:24:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [85.215.255.53 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mo4-p01-ob.smtp.rzone.de (mo4-p01-ob.smtp.rzone.de
	[85.215.255.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A33F5E00B8F
	for <yocto@yoctoproject.org>; Fri, 17 May 2019 02:24:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; t=1558085071;
	s=strato-dkim-0002; d=rsi-elektrotechnik.de;
	h=In-Reply-To:References:Message-ID:Subject:Cc:To:From:Date:
	X-RZG-CLASS-ID:X-RZG-AUTH:From:Subject:Sender;
	bh=Sbl+xH3GhObsekSqwfc4vK3C6dKdVMlcwaUQ6rDFfxI=;
	b=HZUJa5yP31AOKEjolyD5XQ5swVlBcI3WtW7+R2/h2hkYUZGSs8Ur2Krzt4Oz1UAU1D
	5tKoKT+H/WAL8Xt97T8LByZFfZsiV7fT9fhrKbIrM4GrsshKEGWM1o04FHAzvnnp8Fyn
	cqyhRtKYC+Gxvvg6jSvmEo+8kED2Ic6FWFoRlbvjBzKrWmPm5ID6wsXfaEB+ro9eWwFd
	br/mQ6EnjNieBQDSmcJVdorh9rIauCPBgW6HRwDViBRsz0I5SlCm87ib5CfCsa/a+LDp
	AwUE8izEl5f7WV1kDxMGi4tvPMsyWraHPlWrkFFhKwghna0BTvDnqB+ptTJZn5zvzJOc
	Swzg==
X-RZG-AUTH: ":fz5RJhWIaexwuXGosGLfiBc0xYyi1Y5bd+wRKqrzPXw4V1/KqCOd+ZZzzoK8epFp9XQIUl6aPGQL"
X-RZG-CLASS-ID: mo00
Received: from mail.rsi-elektrotechnik.de by smtp.strato.de (RZmta 44.18 AUTH)
	with ESMTPSA id Q0b788v4H9OVEci
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (curve secp384r1
	with 384 ECDH bits, eq. 7680 bits RSA))
	(Client did not present a certificate);
	Fri, 17 May 2019 11:24:31 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/relaxed;
	d=rsi-elektrotechnik.de; s=MDaemon; t=1558085073; x=1558689873;
	i=holzmayr@rsi-elektrotechnik.de; q=dns/txt; h=Date:From:To:Cc:
	Subject:Message-ID:References:MIME-Version:Content-Type:
	Content-Disposition:Content-Transfer-Encoding:In-Reply-To:
	User-Agent; bh=Sbl+xH3GhObsekSqwfc4vK3C6dKdVMlcwaUQ6rDFfxI=; b=F
	zfy398mbAa2rM+/YJyLwJomw0foVACC0iHRZ+jlKN/CnSwrYhCW/okN4pkPsr2GX
	LvBM4/vlLF0XXDl40kBafOYbzcytXs4H/502H0cKqlABylU1LqK5RPwMcVfQjb9L
	f1Gv5RXX+E+T1fx7IzqPxe8gDuXim/6i4eSpd0epkY=
Received: by mail.rsi-elektrotechnik.de (MDaemon PRO v19.0.1) with ESMTPSA id
	md50000167475.msg; Fri, 17 May 2019 11:24:32 +0200
X-MDArrival-Date: Fri, 17 May 2019 11:24:32 +0200
X-Authenticated-Sender: holzmayr@rsi-elektrotechnik.de
X-Return-Path: prvs=10404ea304=holzmayr@rsi-elektrotechnik.de
X-Envelope-From: holzmayr@rsi-elektrotechnik.de
Date: Fri, 17 May 2019 11:24:28 +0200
From: Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
To: Gaurav Kalra <gvkalra@gmail.com>
Message-ID: <20190517092428.b2ryukhkjh63nepp@jholzmayr.localdomain>
References: <CAD5qJ_svyizBB4c0zRDL5W0dkEAs0+KDRVvhAGS3GW-V0kGsag@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAD5qJ_svyizBB4c0zRDL5W0dkEAs0+KDRVvhAGS3GW-V0kGsag@mail.gmail.com>
User-Agent: NeoMutt/20180716
Cc: yocto@yoctoproject.org
Subject: Re: do_rootfs failed (not sure why)
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
X-List-Received-Date: Fri, 17 May 2019 09:24:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

Hi Gaurav,

On Fri, May 17, 2019 at 03:42:02PM +0900, Gaurav Kalra wrote:
> Hi,
> 
> I am new in the Yocto world and have started learning the concepts recently.
> A big thanks to the broadcasts on twitch and numerous youtube videos.

As the broadcaster on Twitch, thanks for letting us know. It is much
appreciated!

> What I am doing: Modifying boot2qt (
> https://codereview.qt-project.org/gitweb?p=yocto/meta-boot2qt.git;a=shortlog;h=refs/heads/thud)
> as my blueprint for raspberry-pi.
> 
> Mostly:
> 1. Modifying the configuration of packages (e.g., systemd conf files)
> 2. Adding new recipes
> 3. Keeping Qt updated
> 
> "Sometimes", I face this strange error in do_rootfs(), while
> installing binutils-lic package inside the image.
> 
> [...]
> ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Unable to install
> packages. Command
> '/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/recipe-sysroot-native/usr/bin/opkg

I'm not sure if it applies here, but I have encountered problems with
long pathes. Especially the leading part with the UUID *might* be
problematic. Have you tried in a location closer to root?

Greetz
Josef

> --volatile-cache -f
> /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/opkg.conf
> -t
> /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/temp/ipktemp/
> -o
> /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/rootfs
>  --force_postinstall --prefer-arch-to-version   install opkg
> packagegroup-b2qt-embedded-base packagegroup-b2qt-embedded-gstreamer
> packagegroup-b2qt-embedded-tools packagegroup-b2qt-qt5-modules
> packagegroup-base-extended packagegroup-core-boot
> packagegroup-core-ssh-dropbear packagegroup-core-tools-debug
> packagegroup-core-tools-profile run-postinsts' returned -11:
> [...]
> Installing openssh-lic (7.8p1+git) on root
> Downloading
> file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-rootfs-repo/cortexa7t2hf-neon-vfpv4/openssh-lic_7.8p1+git-r0_cortexa7t2hf-neon-vfpv4.ipk.
> Installing binutils-lic (2.31) on root
> Downloading
> file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-roo
> ERROR: seesv-embedded-qt5-image-1.0-r0 do_rootfs: Function failed: do_rootfs
> ERROR: Logfile of failure stored in:
> /media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/temp/log.do_rootfs.21682
> ERROR: Task
> (/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/sources/meta-seesv/meta-seesv-distro/recipes-qt/images/seesv-embedded-qt5-image.bb:do_rootfs)
> failed with exit code '1'
> [...]
> 
> Notice:
> In the log "Downloading
> file:/media/gvkalra/66bef40b-d84f-4ad0-ada6-a025b494ca5d/seesv-distro/build-raspberrypi3/tmp/work/raspberrypi3-poky-linux-gnueabi/seesv-embedded-qt5-image/1.0-r0/oe-roo",
> bitbake didn't finish writing the whole path to the console. (I don't know
> why)
> 
> I have tried "bitbake -c cleansstate binutils" and rebuilding the image
> (again same error)
> 
> Previously when I faced this error, I deleted everything and started from
> scratch (compiling everything) - it worked!
> But it takes too long, so this time I thought it's best to discuss in the
> mailing list.
> 
> Any ideas of what could be the reason?
> 
> PS: I am open to share any logs you'd like to have.
> 
> --
> Gaurav Kalra

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 
———————————————
Josef Holzmayr
Software Developer Embedded Systems

Tel: +49 8444 9204-48
Fax: +49 8444 9204-50

R-S-I Elektrotechnik GmbH & Co. KG
Woelkestrasse 11
D-85301 Schweitenkirchen
www.rsi-elektrotechnik.de
———————————————
Amtsgericht Ingolstadt – GmbH: HRB 191328 – KG: HRA 170393
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
Ust-IdNr: DE 128592548 

_____________________________________________________________
Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
Geschäftsführer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
USt-IdNr.: DE 128592548


