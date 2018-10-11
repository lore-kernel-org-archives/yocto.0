Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48C77E00A94; Thu, 11 Oct 2018 04:41:04 -0700 (PDT)
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
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.179 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qk1-f179.google.com (mail-qk1-f179.google.com
	[209.85.222.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 82B37E003D9
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 04:41:03 -0700 (PDT)
Received: by mail-qk1-f179.google.com with SMTP id a13-v6so5165127qkc.7
	for <yocto@yoctoproject.org>; Thu, 11 Oct 2018 04:41:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=3uAtjbyO47yn1V5gpdJsUHhIWxKTFAtYw1MXB9YHCAk=;
	b=t2wJRvfNe0OdvIVNbaEpxg2yX6vQyK6jY3bOVX7CgYQsWA2DJcd4EO/J6ZiSBQDKEP
	tjfxvGX8H6v0BvQIGQ/ekXWDUaw9oItJSojnKubEVGsdm0oC20IFtfTrUpI5AMWh95xo
	vOAJaIWidk4Syb05vfxEJgOdc6L/Sc3HCChmGM4FbjlbQ4lVXG9nDWo6JIpWWrC/0j/R
	WyxpMOofUChZb8GQUWHNIIrxuc7uAHm5yIP0F028oMnAZCtCiT929rVbkcAc3VNKXci9
	V05AzX6HLy9xtdLiE3u6lGBmRAUgUtaIyF0VGWoncWNmzTUr/x69Q1DKkGyFkiIgw1d+
	r9Ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=3uAtjbyO47yn1V5gpdJsUHhIWxKTFAtYw1MXB9YHCAk=;
	b=AeMmkHYhfexkBHjOF/C0mS2mp2Ah/gSytzpS+IFCtHCEjoSBoIpARiRF8KFxvf3wH0
	DyVboC5ZfHhMFYYTyO+i4NtXRS4gccQ3d0ouBnE7fsC6eqPU8IzMIEWdkyB92uYVSpFg
	l48lVyvCsXuFKqXGr4FWd6hIaWhXCLTcHveqM7A3bf3HXdz1g+R5gvQkVO8w/WdgHlpN
	AoCzjw94dvm+EaUTEKqyptt7GZc8J9Jz720v/RO+FZIDMl/BbG/UTk5LAqrAWGUC6OU3
	wByKqqxNBreycoVCx10xxbcnWYzoxqRCXyGlk/QMpiJV3rMD+JBVkmR1xO44YwItRtE7
	iBoA==
X-Gm-Message-State: ABuFfojC2uvVNdO+BQS1kSTqea7BngvB4lJ54LllRNZcZzH4nH8QXW2I
	0iIfQ5B3lFj7VLE3km8h8xq1c7++Gb5Hzj4C9aA=
X-Google-Smtp-Source: ACcGV60f4Sc1zLLAEa/x8CAai7nK/I0jGUmgAoCPE9bbfjK3YsGrn68QM8sdrRtE33GH2sDWpl7DoNlOLUc6av6at0w=
X-Received: by 2002:a37:d7c5:: with SMTP id
	t66-v6mr1091893qkt.336.1539258062746; 
	Thu, 11 Oct 2018 04:41:02 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Ly_txg3AQNqOM+Rg0Oy-RdS_96y328GwXw7Qu=iDx1yfg@mail.gmail.com>
	<14f3ead713e649f48582d18ddd477d3c@advaoptical.com>
In-Reply-To: <14f3ead713e649f48582d18ddd477d3c@advaoptical.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 11 Oct 2018 13:40:51 +0200
Message-ID: <CAGAf8LwAQsBHNNCp8uL4pU5tPGGKVKvnVDF6dcdv-VtMHDGRVg@mail.gmail.com>
To: KZertsekel@advaoptical.com, Yocto Project <yocto@yoctoproject.org>
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
X-List-Received-Date: Thu, 11 Oct 2018 11:41:04 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Kosta,

> For example, you can do the below:
> CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp-client dhcp-server cmake... "

I added to this example dhcp-relay, just to test the whole build, and
it does work. Actually, I need only dhcp-client for the target (since
I have dhcp-server on the ETH interface on the opposite (VM) side).

Thank you for the help!
Zoran
_______
On Wed, Oct 10, 2018 at 5:57 PM Kosta Zertsekel
<KZertsekel@advaoptical.com> wrote:
>
> You need to take a look at the available dhcp packages
> for dhcp recipe here:
> https://git.yoctoproject.org/clean/cgit.cgi/poky/tree/meta/recipes-connectivity/dhcp/dhcp.inc#n100
>
> PACKAGES += "dhcp-libs dhcp-server dhcp-server-config dhcp-client dhcp-relay dhcp-omshell"
>
> For example, you can do the below:
> CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp-client dhcp-server cmake... "
>
> Thanks,
> --- Kosta Z
> ________________________________
> From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on behalf of Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> Sent: Wednesday, 10 October 2018 16:29:05
> To: Yocto Project
> Subject: [yocto] Sumo distro problem with dhcp packet?
>
> Hello.
>
> I need on my test initramfs YOCTO image to add dhcp package (both dhcp server and client).
>
> For the beginning, I traced it, where it is:
> .../poky/meta/recipes-connectivity/dchp
>
> and decided to test it adding it to ...poky/build/conf/local.conf for the starters:
> CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp cmake... "
>
> But it produced the following error:
> [user@fedora28-ssd conf]$ bitbake -k core-image-base
>
>    [snap]
>
> ERROR: Nothing RPROVIDES 'dhcp' (but /home/user/projects2/beaglebone-black/sumo/poky/meta/recipes-core/images/core-image-base.bb RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'dhcp' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['dhcp']
> ERROR: Nothing RPROVIDES 'core-image-base'
> No eligible RPROVIDERs exist for 'core-image-base'
> NOTE: Runtime target 'core-image-base' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['core-image-base']
>
> I added another package, dhcpcd, which is located in the another layer:
> CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcpcd cmake... "
>
> so this one worked/was integrated seamlessly.
>
> What is the catch 22 here?
>
> Thank you,
> Zoran
>

