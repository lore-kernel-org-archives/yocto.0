Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B98BAE00B5E; Thu, 18 Oct 2018 03:46:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.172 listed in list.dnswl.org]
Received: from mail-qk1-f172.google.com (mail-qk1-f172.google.com
	[209.85.222.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 620AFE00A0C
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 03:46:10 -0700 (PDT)
Received: by mail-qk1-f172.google.com with SMTP id u20-v6so3849130qkk.9
	for <yocto@yoctoproject.org>; Thu, 18 Oct 2018 03:46:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=BsYfepLMuSdErTh0CPJpRcXa1L5aZQLU8S6Q8ip+84A=;
	b=Ea1rzwYGRTG2HMGWeF+oKJoMynHsr01Y52DFuVSaE8cu3AEM2L6o5N8G0wTSS4E1Pz
	ExKm133XdG9kC9K6dg2VawIrotlgxGXD5pAJji8WagNn95b3JqNm/gYXReSONoTvA4MP
	tDKTK1b/jzRgkeMJEHfL4w62/nDt9puyIwjxOn/mNIYFbFX/gC4iU5eIEIdilQL/DBvC
	Yy5OG9mLowgC+DI4TH4AiZ3C1igRg3lklvzKE25H3YRqBGwYABl9eQXq/f6TkGNd7CD/
	AFbIeD7VQwVkL+42XCCQAZ7BI5GzbwzMWD4Zg0hcsV6arhUIGbfnv7N42UjmaePNVcnD
	FKlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=BsYfepLMuSdErTh0CPJpRcXa1L5aZQLU8S6Q8ip+84A=;
	b=T7JGIK2BDBeZyaP+S/bmxDGTa6pB2v4Fv1bzYgxjOlQk6wS9p6hAssc6ZcsekvQOJs
	ns5CmB+dFlWfvmE9BfQcqCXDKlusCpS1hC8MZKkYaGP/ZSQyNIXHAXKyWOcl4LJTPB9O
	at7Q+zf1ewtNSszC9BDEIYphtHmWZ7sbeAjiBapTqOPNhD4tgA2HrBMFwkJUHuveshsS
	76js41e5qekiiLZubTc6gJQpUEdKqA/Rz287VAs/Hb462RhA8f5Y96G0OwEBFTqXT4dH
	zin1r0E+PXNnJzjjLvNA6H14l5zQEdfunX4gyqVBTsyl/4ncqhvbXiQ/x2sJ/3LbTCa9
	YX5w==
X-Gm-Message-State: ABuFfohMpSwstP6msFqgn0XcKrEPvTs9Dsln06fzppbigT1y/r64DGSD
	ZXqu2rscKVPgUhGu4ffUZSQHI62F2rg07VBtq1I=
X-Google-Smtp-Source: ACcGV61SzTzV968euuVFfv246AK/O2QR/0Zngvk+wlJGE2oHVyOChbZ91XJ5C9oACVFLl/MaJpe66IoRtTaGKQ5fVb4=
X-Received: by 2002:a37:1610:: with SMTP id
	g16-v6mr6533842qkh.336.1539859569518; 
	Thu, 18 Oct 2018 03:46:09 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Ly_txg3AQNqOM+Rg0Oy-RdS_96y328GwXw7Qu=iDx1yfg@mail.gmail.com>
	<14f3ead713e649f48582d18ddd477d3c@advaoptical.com>
	<CAGAf8LwAQsBHNNCp8uL4pU5tPGGKVKvnVDF6dcdv-VtMHDGRVg@mail.gmail.com>
	<CAGAf8LwzrRh6j0n9yqpvv6x1Y7AKhDX7FcREdSzpauYga2QDkw@mail.gmail.com>
	<d6a28fefcd884dd58d0dd9a2d2533937@advaoptical.com>
In-Reply-To: <d6a28fefcd884dd58d0dd9a2d2533937@advaoptical.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 18 Oct 2018 12:45:57 +0200
Message-ID: <CAGAf8LzATLrPmssiy1ED0vpBXjLsrUcs49f0+ycjxdtWL1iDaA@mail.gmail.com>
To: KZertsekel@advaoptical.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Sumo distro problem with dhcp packet?
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
X-List-Received-Date: Thu, 18 Oct 2018 10:46:11 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Kosta,

> I suggest trying other reference image.
> For example, core-image-minimal.

As said, I have tried instead core-image-base ==>> core-image-minimal
one on the target platform, which is BBB. To my surprise it is in
there (in the minimal initramfs)!

Since the eth0 IP address upon sumo booting is all wrong, I have
tested the BBB dhclient command as:
# ifconfig eth0 down
# dhclient eth0 -v

And it works perfectly, brings eth0 up, sets the correct IP address,
and then goes for lease with dhcpd on the another side.

So, what is here catch 22 (why base image does not have dhclient, and
minimal does)?

Thank you,
Zoran
_______
On Wed, Oct 17, 2018 at 10:44 AM Kosta Zertsekel
<KZertsekel@advaoptical.com> wrote:
>
> I suggest trying other reference image.
>
> For example, core-image-minimal.
>
> If it does not help, then core-image-full-cmdline.
>
> Let's get the working reference first with one of these images.
>
>
> --- Kosta Z.
>
> ________________________________
> From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> Sent: Wednesday, 17 October 2018 11:37:38
> To: Kosta Zertsekel; Yocto Project
> Subject: Re: [yocto] Sumo distro problem with dhcp packet?
>
> Hello Kosta and others,
>
> I am a bit behind on a schedule on this one. Albeit I followed the
> advise, This does work for compiling and adding all these packages to
> the ROOTFS. I see that after I added all them, I see the
> initramfs.tar.xz expanded in
> ...poky/build/tmp/deploy/image/beagleboneblack/ directory.
>
> But after I do the testing with initramfs, with all these packages
> added. I do not find anything in the ROOTFS even what it should be
> lookalike DHCP.
>
> After trying # which dhclient, or # which dhcp-client, or # which
> dhcp... It finds nothing!
>
> Then, the next step was to find /etc/dhcp/ or similar. There is
> nothing lookalike dhcp/ or dhcp* in /etc, which shows that these lines
> in dhcp.inc recipe are not executed:
>
> do_install_append () {
>        install -d ${D}${sysconfdir}/init.d
>        install -d ${D}${sysconfdir}/default
>        install -d ${D}${sysconfdir}/dhcp
>        install -m 0755 ${WORKDIR}/init-relay ${D}${sysconfdir}/init.d/dhcp-relay
>        install -m 0644 ${WORKDIR}/default-relay
> ${D}${sysconfdir}/default/dhcp-relay
>        install -m 0755 ${WORKDIR}/init-server
> ${D}${sysconfdir}/init.d/dhcp-server
>        install -m 0644 ${WORKDIR}/default-server
> ${D}${sysconfdir}/default/dhcp-server
>
>        rm -f ${D}${sysconfdir}/dhclient.conf*
>        rm -f ${D}${sysconfdir}/dhcpd.conf*
>
> In addition, when I execute: $ bitbake -c cleanall dhcp, it says that
> it executes thee tasks, and none of them are actually executed (0
> executed).
>
> I also recompiled form scratch the whole sumo BBB build, but this did
> NOT solve the problem.
>
> Any hint how I should proceed?
>
> Thank you,
> Zoran
> _______
>
> On Thu, Oct 11, 2018 at 1:40 PM Zoran Stojsavljevic
> <zoran.stojsavljevic@gmail.com> wrote:
> >
> > Hello Kosta,
> >
> > > For example, you can do the below:
> > > CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp-client dhcp-server cmake... "
> >
> > I added to this example dhcp-relay, just to test the whole build, and
> > it does work. Actually, I need only dhcp-client for the target (since
> > I have dhcp-server on the ETH interface on the opposite (VM) side).
> >
> > Thank you for the help!
> > Zoran
> > _______
> > On Wed, Oct 10, 2018 at 5:57 PM Kosta Zertsekel
> > <KZertsekel@advaoptical.com> wrote:
> > >
> > > You need to take a look at the available dhcp packages
> > > for dhcp recipe here:
> > > https://git.yoctoproject.org/clean/cgit.cgi/poky/tree/meta/recipes-connectivity/dhcp/dhcp.inc#n100
> > >
> > > PACKAGES += "dhcp-libs dhcp-server dhcp-server-config dhcp-client dhcp-relay dhcp-omshell"
> > >
> > > For example, you can do the below:
> > > CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp-client dhcp-server cmake... "
> > >
> > > Thanks,
> > > --- Kosta Z
> > > ________________________________
> > > From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on behalf of Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> > > Sent: Wednesday, 10 October 2018 16:29:05
> > > To: Yocto Project
> > > Subject: [yocto] Sumo distro problem with dhcp packet?
> > >
> > > Hello.
> > >
> > > I need on my test initramfs YOCTO image to add dhcp package (both dhcp server and client).
> > >
> > > For the beginning, I traced it, where it is:
> > > .../poky/meta/recipes-connectivity/dchp
> > >
> > > and decided to test it adding it to ...poky/build/conf/local.conf for the starters:
> > > CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp cmake... "
> > >
> > > But it produced the following error:
> > > [user@fedora28-ssd conf]$ bitbake -k core-image-base
> > >
> > >    [snap]
> > >
> > > ERROR: Nothing RPROVIDES 'dhcp' (but /home/user/projects2/beaglebone-black/sumo/poky/meta/recipes-core/images/core-image-base.bb RDEPENDS on or otherwise requires it)
> > > NOTE: Runtime target 'dhcp' is unbuildable, removing...
> > > Missing or unbuildable dependency chain was: ['dhcp']
> > > ERROR: Nothing RPROVIDES 'core-image-base'
> > > No eligible RPROVIDERs exist for 'core-image-base'
> > > NOTE: Runtime target 'core-image-base' is unbuildable, removing...
> > > Missing or unbuildable dependency chain was: ['core-image-base']
> > >
> > > I added another package, dhcpcd, which is located in the another layer:
> > > CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcpcd cmake... "
> > >
> > > so this one worked/was integrated seamlessly.
> > >
> > > What is the catch 22 here?
> > >
> > > Thank you,
> > > Zoran
> > >

