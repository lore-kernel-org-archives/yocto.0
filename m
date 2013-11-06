Return-Path: <arigead@gmail.com>
Received: from mail-wg0-f46.google.com (mail-wg0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5FDBE0193A
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 14:07:02 -0800 (PST)
Received: by mail-wg0-f46.google.com with SMTP id m15so134277wgh.13
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2013 14:07:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=ss813fBCzf4dqzlmKxfvJBoxeebB89sLBaXIUcgheYI=;
	b=xc/Kbq2vR/fesVAPrvYTmwsc+2CX7vLJTbKb96175Mmul519uDmQ1Xe6enVjChV4ht
	kC3sRJcKpEZ8DbTCmG2yt3d8V+26bBUvvBZ3fjLe4gVMy8UVSAH2S6f8F4cHrpgtnCLU
	XFc9aoR1ytByvPbD3az/GkvDyWLlCcgrFHJq9Kw7dP8B8+Gx+moVvBtikECwW6DhRQCN
	DCbHI2gL91xroHno2cR88ASl0d0vALhM9s7ECbx+FNSPxYKr8iM3Y7R2q+Cnsdj7g17l
	YA6bD8fdjYTHXaCBM0I2/YUzHMhJJ4akhlYZVeHDEPr8zGEnUwd+snEtuDZ+or2IRC44
	eaYA==
X-Received: by 10.194.237.99 with SMTP id vb3mr4559827wjc.28.1383775621681;
	Wed, 06 Nov 2013 14:07:01 -0800 (PST)
Received: from griso.site ([109.77.237.105]) by mx.google.com with ESMTPSA id
	dq11sm28887894wid.3.2013.11.06.14.07.00 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Nov 2013 14:07:01 -0800 (PST)
Date: Wed, 6 Nov 2013 22:06:18 +0000
From: John Whitmore <arigead@gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Message-ID: <20131106220618.GC16472@griso.site>
References: <20131106214039.GA16472@griso.site>
	<alpine.DEB.2.02.1311061646400.26091@oneiric>
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.02.1311061646400.26091@oneiric>
User-Agent: Mutt/1.5.21 (2010-09-15)
Cc: yocto@yoctoproject.org
Subject: Re: Changing Config for linux-raspberrypi
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
X-List-Received-Date: Wed, 06 Nov 2013 22:07:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Wed, Nov 06, 2013 at 04:47:21PM -0500, Robert P. J. Day wrote:
> On Wed, 6 Nov 2013, John Whitmore wrote:
> 
> > Was struggling with the documentation on making chages to the config file used
> > by the raspberrypi linux kernel. I'd got my own layer with a two line append file:
> >
> > FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
>                                               ^
>                                               there should be a ":"
>

typo in the manual, unless I've got an out of date one:

http://www.yoctoproject.org/docs/1.5/kernel-dev/kernel-dev.html#creating-the-append-file


But unfortunately that has not changed anything, I'm afraid. I've tried a
build and it failed and then checked with "bitbake -e linux-raspberrypi"

The output from the -e gives the lines at the start of do_configure()

do_configure() {
	install -m 0644 /home/john/raspberrypi/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.6.11+git63b69a8806ce1890711ff55280c90673ea415933-r7/git/arch/arm/configs/defconfig /home/john/raspberrypi/poky/build/tmp/work/raspberrypi-poky-linux-gnueabi/linux-raspberrypi/3.6.11+git63b69a8806ce1890711ff55280c90673ea415933-r7/defconfig || die "No default configuration for raspberrypi / defconfig available."
	# Clean .config



As you can see the install command is hard wired to copy the config file from
the build tree as opposed to my-layer tree.





 
> rday
> 
> -- 
> 
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
> 
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================

