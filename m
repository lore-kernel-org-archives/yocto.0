Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f169.google.com (mail-ve0-f169.google.com
	[209.85.128.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A18FE014A5
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 02:54:12 -0700 (PDT)
Received: by mail-ve0-f169.google.com with SMTP id 15so2276843vea.28
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 02:54:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=HszepAnAp1mwyICORwi5EbcEZLQrZfti2fDCEOtID+Y=;
	b=IjqNqWI1+dUR7r6Coft1Aq/QbHLXUgBOQoD17U7pS0HHVu4p8+9BUtNBAKJr58RuKR
	A+n8dJhSM/jcpEHSqetqcf7PaVg/R1WfoDMkgGBHLI3sl/0iCCPsmJguiahDUgRWnt/g
	LCsM7hmXguLKdrcnj6+tjKduJXtNzLFZCAEYe//dz8JotJ96ZOHQhmv55YWSSFO7FkXw
	E6Lx6e1T6N55/5LWVD3zaxlDoPNc4/tEkpXzMJlIkgH06IBZ81dY1KXGBEY2TMqgjDWK
	O8hIGVjTw2T4j39mRGQ+zj7kyYKUSARe+ZHkAoLBuJA4UCcum8vyEZuw+WfvrosIc728
	e/BA==
X-Received: by 10.52.75.65 with SMTP id a1mr10494110vdw.79.1363859652289; Thu,
	21 Mar 2013 02:54:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.125.102 with HTTP; Thu, 21 Mar 2013 02:53:44 -0700 (PDT)
In-Reply-To: <F164AFC4EFDF43D28B0BC563D7026360@PAULD>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD>
	<CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com>
	<3C8645632D634EAC903E8930B57F4777@PAULD>
	<CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com>
	<56C806C0B65D44ADA7D6314F4051E91E@PAULD>
	<CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com>
	<603BDC00C3D14F51BF551A28572660E3@PAULD>
	<CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com>
	<B85484ED80754E0D8F82ECCA688762AF@PAULD>
	<CAJTo0LaOU=ak5awePdFdW2sCB=N1CsbiLMaQgF6Gzt5gFWuNSw@mail.gmail.com>
	<9331786F4D074BCCAB63AE3E10152262@PAULD>
	<F6460DFEAC8C415FAFCF7A16B0499DA6@intel.com>
	<207F72914E4C4014A2C1124BBADDD244@PAULD>
	<D6081CD6470747D1803B8A19E552149F@intel.com>
	<439A53A3DAF743BEA77A6820E8B9641E@PAULD>
	<DAD15C33EB5B4620BF57DF4816FC3C4B@intel.com>
	<F164AFC4EFDF43D28B0BC563D7026360@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 21 Mar 2013 09:53:44 +0000
Message-ID: <CAJTo0LbAhQV6QANXgPe2Ax4DR6Wzs+jOz=ZtZTxRNFc0C3rLqg@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Gm-Message-State: ALoCoQnbKvX+OT0M42FohshtuSbzG3al1OO6berld9TJIohGRraPwTR+VlbrNlXT/zZO0VhAS/XD
Cc: yocto@yoctoproject.org
Subject: Re: Can't find guile-2.0
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
X-List-Received-Date: Thu, 21 Mar 2013 09:54:13 -0000
Content-Type: text/plain; charset=UTF-8

Hi Paul,

On 21 March 2013 06:48, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> In the metadata trees, meta-openembedded/meta-oe has recipes called
> "guile_1.8.7.bb" and "guile-native_1.8.7.bb". poky-danny-8.0/meta and
> openembedded-core/meta both have recipes called "guile_2.0.6.bb". The latter
> has some extra junk in it I don't understand. Nothing has a recipe called
> "guile-native_2.0.6.bb".

Ah ha!

poky contains a copy of oe-core, so you don't need both, for a given
version the meta/ directories will be identical (poky is the union of
oe-core, bitbake, and meta-yocto).

I'd forgotten that meta-oe used to have guile in. Presumably the
problem here is that autogen-native wants guile-native and it finds
guile-native_1.8.7 before realising that guile_2.0.7 can also do a
native build (that's what BBCLASSEXTEND=native does).

Try using BBMASK to hide the guile in meta-oe.  Add this to your local.conf:

BBMASK = "meta-oe/recipes-support/guile"

> So let me see if I understand the problem. Everything worked fine when I
> built the standard image, but I started having problems when I pulled in a
> couple of repositories from OpenEmbedded so that I could add a Samba server.
> Something in the layers I added needs to run a tool called autogen, so it
> tries to do a native build of autogen-5.12-r3. In the process of configuring
> that, it needs access to guile-2.0.6, but it can't find it, so it quits. Is
> it looking to run guile, or is it looking for a native version of the guile
> library to link into autogen? Somehow, I've got the source for this version
> of guile, but nothing is building it, and there is no recipe for it. Where
> is the recipe supposed to be found? Or is this simply a tool that I'm
> supposed to have on my machine in the first place, and bitbake doesn't try
> to build it?

The root cause is normally needing to build grub.  grub needs
autogen-native which needs guile-native, as it uses guile.  We don't
assume guile exists on the host, so will always build it ourselves.

Normally guile_2.0.6.bb can do both cross and native builds.  It
appears that meta-oe has an older version of guile with an explicit
guile-native name, which is selected before the newer version in
oe-core.  This is the root of the problem, and the BBMASK should cause
it to ignore that recipe.  I've just submitted a patch to remove this
guile from meta-oe, as it's just causing trouble.

Ross

