Return-Path: <alexis.lothore@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 008EEE00A48; Sat, 29 Apr 2017 02:12:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alexis.lothore[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr0-f173.google.com (mail-wr0-f173.google.com
	[209.85.128.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35E10E009AA
	for <yocto@yoctoproject.org>; Sat, 29 Apr 2017 02:12:33 -0700 (PDT)
Received: by mail-wr0-f173.google.com with SMTP id l50so43894435wrc.3
	for <yocto@yoctoproject.org>; Sat, 29 Apr 2017 02:12:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:in-reply-to:message-id:references
	:user-agent:mime-version;
	bh=++MZSrGGpJc6mjWej9xuH2z7K0eY3pnds0HorqzGSWg=;
	b=iJdLHa2EDDqRXby8y0AqSswpnDZQyBQ6VIoc92UIdN8hXaUeEZcL2gsw5Td+Fcs7I1
	XXZz+VCpM3xngJxCiMt62YEUMBDwpXhDNHf5FiUCJ2XsHLAYHBy+0S6Uh0JQuQhuui0T
	KUJIs3S0v4hwfmkYFlqNdyFzQscwYnAmUagKKtVkai4P3F/ht/Ub3Ha7ZdoIs4vV+Iai
	0uHw3GTFHAfJMAH1wHILmyuSuk63n3dCtaH4tHI9Fk3/NyPE0ieCgU3yFc250DvKadMK
	R3jVh7qowqBe0rpqhlEuQ+5AOkzw5ycV5Yic8ThKzwR411QlIGY08t8On//GhtovB2+R
	GZHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:in-reply-to:message-id
	:references:user-agent:mime-version;
	bh=++MZSrGGpJc6mjWej9xuH2z7K0eY3pnds0HorqzGSWg=;
	b=rY5a1TRWAIArLadFtnUa4BnFF2kk3AtBNd1Lz34iBuUnPMBJSBzccLoE48eeg1LDaC
	fUkmMJShdvQQpK4x4Ik9AMFyRn43qg3Au++BoXUu4SlSmxGZLKVJ+qqwiEj3bThE3PNk
	wJBwA/FSG6v0SXaN3EbP4tQc0qgmb69zcMSB97VuQrvGE27shFmhSXSRLEDShMwItJEw
	fwzTdgHKJrZUmS6MYVtx8LO/ztjO7gYB76ntu4ZtpOCDMUIeVsFqQch6izPeBUqbQsH9
	jlZDlFIHEHr4ktevSMG0J/A3Ea14q6fE4jgmQXq1JTen200mqFyi2QYVNac2IcZIR1Yw
	KuWA==
X-Gm-Message-State: AN3rC/5Gab8lu1q0YoN219SxbfxpjVvytW/cfDKX1ezi6jvDJzGXzD5C
	MnXEdbk5s0veMEYA
X-Received: by 10.223.175.46 with SMTP id z43mr11872890wrc.84.1493457151997;
	Sat, 29 Apr 2017 02:12:31 -0700 (PDT)
Received: from [192.168.0.10] (6.167.141.77.rev.sfr.net. [77.141.167.6])
	by smtp.gmail.com with ESMTPSA id 92sm7163483wra.0.2017.04.29.02.12.30
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sat, 29 Apr 2017 02:12:30 -0700 (PDT)
From: alexis.lothore@gmail.com
X-Google-Original-From: alexis@gmail.com
Date: Sat, 29 Apr 2017 11:12:20 +0200 (CEST)
X-X-Sender: alexis@debian
To: alexis.lothore@gmail.com
In-Reply-To: <alpine.DEB.2.21.1.1704252058100.16188@debian>
Message-ID: <alpine.DEB.2.21.1.1704291059030.17120@debian>
References: <alpine.DEB.2.21.1.1704242008400.4869@debian>
	<CAPyrkgxrdCVB8pFSJ-AYoXqxwuHiPHUBo98izvCKMM-5h_5mVw@mail.gmail.com>
	<alpine.DEB.2.21.1.1704252058100.16188@debian>
User-Agent: Alpine 2.21.1 (DEB 209 2017-03-23)
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Raspberry Pi 3 build issue
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
X-List-Received-Date: Sat, 29 Apr 2017 09:12:35 -0000
Content-Type: multipart/mixed; boundary="8323329-348369293-1493457155=:17120"

--8323329-348369293-1493457155=:17120
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT

Hello,
I finally figured out what was messing my build, and it was a poor 
mistake from my side... I am posting it here for anyone who could encounter a similar issue.

I did let my custom layer in my bblayer.conf. I did not think it could 
break the build, but I forgot about the bbappends there. In fact there was one bbappend trying to 
patch a dts file, and I poorly mixed overrides in the bbappend : I used a 
SRC_URI_raspberrypi3 to add the patch in the bbappend, but I also have put 
the patch in a machine specific directory (raspberrypi3/xxx.patch). 
Letting only the second option seems to be the correct way to proceed
(http://www.yoctoproject.org/docs/1.5/dev-manual/dev-manual.html#best-practices-to-follow-when-creating-layers, 
section "Place Machine-Specific Files in Machine-Specific Locations)

Regards,

On Tue, 25 Apr 2017, alexis.lothore@gmail.com wrote:

> Hello Paul,
> thanks for the try. It should means that there is a detail on my setup 
> which prevents the build from being done. I encounter the error on the 
> commits id your provided too. I also tried being on last tag on poky 
> project for morty branch, without success. I also suspected my python 
> configuration/version so I resintalled it completely, but It made no 
> change to the error.
> 
> On Tue, 25 Apr 2017, Paul Barker wrote:
> 
> > On Mon, Apr 24, 2017 at 7:25 PM,  <alexis.lothore@gmail.com> wrote:
> > > Hello,
> > > I am currently encountering an issue with meta-raspberry and more
> > > specifically Raspberry Pi 3 build. Since I was not sure the problem was
> > > not my fault, I cloned a fresh copy of poky and meta-raspberrypi (both
> > > checked out on morty, and meta dependencies on morty too), but the problem
> > > is still appearing, trying to build the image rpi-hwup-image with BDISTRO
> > > poky for MACHINE
> > > raspberrypi3 :
> > >
> > > ➜ build git:(morty) bitbake rpi-hwup-image
> > > Loading cache: 100%
> > > |#########################################################################################################################################################################################################|
> > > Time: 0:00:00
> > > Loaded 2 entries from dependency cache.
> > > WARNING:
> > > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb:
> > > Exception during build_dependencies for PKG_kernel-image | ETA: --:--:--
> > > WARNING:
> > > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb:
> > > Error during finalise of
> > > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> > > WARNING:
> > > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb:
> > > Exception during build_dependencies for PKG_kernel-image
> > > WARNING:
> > > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb:
> > > Error during finalise of
> > > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.4.bb
> > > ERROR: ExpansionError during parsing
> > > /home/alexis/Projets/poky/meta-raspberrypi/recipes-kernel/linux/linux-raspberrypi_4.9.bb
> > > Traceback (most recent call last):
> > > bb.data_smart.ExpansionError: Failure expanding variable PKG_kernel-image,
> > > expression was
> > > kernel-image-${@legitimize_package_name('${@get_kernelversion_headers('/home/alexis/Projets/poky/build/tmp/work/raspberrypi3-poky-linux-gnueabi/linux-raspberrypi/1_4.9.21+git${SRCPV}-r0/linux-raspberrypi3-standard-build')}')}
> > > which triggered exception SyntaxError: invalid syntax (PKG_kernel-image,
> > > line 1)
> > > Summary: There were 4 WARNING messages shown.
> > > Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> > >
> > > I am executing the build on an x86 machine with Debian 8.
> > >
> > > Unfortunately, since the problem seems to appear right at parsing, I
> > > cannot get the exact variable expansion with bitbake -e. Apparently my
> > > Yocto setup does not encounter the issue if I try the build for another
> > > RPI target, like raspberrypi0. Any advice on how to troubleshoot this
> > > issue ?
> > > --
> > 
> > I've just tried to reproduce this using a fresh clone of poky and
> > meta-raspberrypi on the morty branch. I edited bblayers.conf to add
> > the meta-raspberrypi layer and then edited local.conf to set MACHINE =
> > "raspberrypi3", those were my only changes. I then ran "bitbake
> > rpi-hwup-image" and it's correctly parsed all the recipes and started
> > the build.
> > 
> > Which exact commits of poky and meta-raspberrypi are you using? I have
> > the following:
> > 
> > meta
> > meta-poky
> > meta-yocto-bsp    = "morty:924e576b8930fd2268d85f0b151e5f68a3c2afce"
> > meta-raspberrypi  = "morty:28d4404f89eb59d406b4976c0e3f5ca19137ba74"
> > 
> > Thanks,
> > 
> > -- 
> > Paul Barker
> > Co-Founder & Principal Engineer
> > Togán Labs Ltd
> > 

--8323329-348369293-1493457155=:17120--
