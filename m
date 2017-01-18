Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF176E009D7; Wed, 18 Jan 2017 08:33:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.66 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E23EBE009CF
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 08:33:41 -0800 (PST)
Received: by mail-wm0-f66.google.com with SMTP id r144so5290480wme.0
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 08:33:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=x57y8hfbDou9eOlvzSiFaasoppXe62Fny8T7LldavcA=;
	b=R6X0QeEgiq/gSQXahhUL/cKByEXFcDDsYKW9NRbB0Zj+yzxCQhcCF1NwrAzi2Rhpdd
	E3qeWA34PeUCWtf5nubruZYkQRAyAlRGQqN6t36FlAPRigGuO8TAbEFFurmF5MCrTzjW
	6B0hqkL1DbgDAFs+mx2WN1OdHaGslnAL/I4QHtw1VHmoBe94lgqmY0SwvDSjs3WVgESy
	1V1XQDfY9gabEg6SWJh+MwwVGug6esu/8lxs6LdcQI3mHHqVh+OeEyZvipkhXJbhIdPT
	9kL/Vky9BxvbqYYo5+Jpo9QxenIIyfm1SmdNUxwSZLIta93Jn72srdoRdvL5a/+u3Ihd
	20kA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=x57y8hfbDou9eOlvzSiFaasoppXe62Fny8T7LldavcA=;
	b=ATqYxRDGdJ9EK1vAoaxWKXjrz2pFzrzxiX64qW2zvl+A1Cuvm0VYOjABszvMgkPkaU
	wUJ9rRIjZHF1mg1/sSLeh5dDrjpn0Tvwh/gJGA+oiBIHXMo/VwoTBOFlR7g/8PgoJzYz
	DeRUmhf9DmIVyB3pwXE+sZsLjuK9sSAOPn1Tf/4xVMiQlMGarfY4AjTlQs5uuCBXOJh2
	c1s1C4uA7+NcuPRT/JsWIw6AfrHh/gBv8KF6uCkdshyadZGzU0GZXOAuS9gPtz338Klw
	Z6FZB1om3X/3xbpcS83dAKKk43w90pO+8jmyHwSBBfy9csDXGnFoRoyDQOHN4MD1MYC6
	RceQ==
X-Gm-Message-State: AIkVDXLbkFwT5ylY40RHslO/J5JhAeyncE1dEnV2FLL8ssgrokYPd2TZjUcxdYsjUPHSXg==
X-Received: by 10.223.178.9 with SMTP id u9mr3521885wra.110.1484757219781;
	Wed, 18 Jan 2017 08:33:39 -0800 (PST)
Received: from carbonA (cpc96910-walt25-2-0-cust629.13-2.cable.virginm.net.
	[82.22.166.118]) by smtp.gmail.com with ESMTPSA id
	204sm46471418wmj.7.2017.01.18.08.33.38
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jan 2017 08:33:39 -0800 (PST)
Date: Wed, 18 Jan 2017 16:33:35 +0000
From: Andrei Gherzan <andrei@gherzan.ro>
To: Trevor Woerner <twoerner@gmail.com>
Message-ID: <20170118163335.GH14533@carbonA>
References: <20170105174229.1648-1-twoerner@gmail.com>
	<20170105193338.5b1360ec@nuc.betafive.co.uk>
	<20170105201619.GA7568@openSUSE-i7.site>
	<20170105215916.072b9215@nuc.betafive.co.uk>
	<CAHUNapTy3KM_MwRkdXVptjUYR5S344pvXKQDG-5v9+==2tA3sQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAHUNapTy3KM_MwRkdXVptjUYR5S344pvXKQDG-5v9+==2tA3sQ@mail.gmail.com>
User-Agent: Mutt/1.7.2 (2016-11-26)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH v2] linux-raspberrypi-rt: add
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
X-List-Received-Date: Wed, 18 Jan 2017 16:33:42 -0000
X-Groupsio-MsgNum: 33914
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="07FIeBX8hApXX6Bi"
Content-Disposition: inline

--07FIeBX8hApXX6Bi
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Thu, Jan 05, 2017 at 10:54:01PM -0500, Trevor Woerner wrote:
> On Thu, Jan 5, 2017 at 4:59 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
> > On Thu, 5 Jan 2017 15:16:19 -0500
> > Trevor Woerner <twoerner@gmail.com> wrote:
> >
> >> On Thu 2017-01-05 @ 07:33:38 PM, Paul Barker wrote:
> >> > On Thu,  5 Jan 2017 12:42:29 -0500
> >> > Trevor Woerner <twoerner@gmail.com> wrote:
> >> >
> >> > > Add an -rt kernel recipe for Raspberry Pi that includes the FIQ patch which
> >> > > adds stability to the -rt kernel (with full preemption enabled) and is an
> >> > > improvement to simply disabling FIQ on the kernel cmdline.
> >> > >
> >> > > Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> >> > > ---
> >> > >
> >> > > changes since v1:
> >> > >   - use "make savedefconfig" to generate the defconfig instead of just
> >> > >     using the full .config
> >> > >
> >> > >  .../0001-fix-dtbo-rules.patch                      |    44 +
> >> > >  .../FIQ_PREEMPT_RT_on_raspi.patch                  |   310 +
> >> > >  .../linux/linux-raspberrypi-rt-4.4/defconfig       |  1249 +
> >> > >  .../patch-4.4.32-rt43.patch                        | 31403 +++++++++++++++++++
> >> > >  recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb   |    55 +
> >> > >  5 files changed, 33061 insertions(+)
> >> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/0001-fix-dtbo-rules.patch
> >> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/FIQ_PREEMPT_RT_on_raspi.patch
> >> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/defconfig
> >> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt-4.4/patch-4.4.32-rt43.patch
> >> > >  create mode 100644 recipes-kernel/linux/linux-raspberrypi-rt_4.4.bb
> >> > >
> >> >
> >> > Would it be possible to point SRC_URI at kernel.org [1] instead of
> >> > including the whole patch in meta-raspberrypi? It feels a bit much to
> >> > me to include a >1MB patch file.
> >> >
> >> > [1]: https://www.kernel.org/pub/linux/kernel/projects/rt/4.4/older/patch-4.4.32-rt43.patch.gz
> >>
> >> The "virgin" -rt patch from kernel.org doesn't apply cleanly. First off there
> >> is a slight version mismatch and secondly this is the raspberrypi kernel, not
> >> a pure upstream kernel.
> >>
> >> Is there a way to patch a patch before it gets applied? If it could be
> >> fetched from kernel.org then patched before applying that would be ideal!
> >> The diff isn't that big; it's sad to have to provide a >1MB patch for such
> >> a small tweak. I guess that's why the yocto kernels/patches have their own
> >> repositories on yoctoproject.org?
> >
> > I think it depends how you want to maintain it going forward. With
> > frequent upgrades to linux-raspberrypi I can see that >1MB patch being
> > modified very often and I'm not sure how good it will be for the git
> > repository size and efficiency.
>
> Okay, agreed.
>
> > A linux-raspberrypi-rt repository on GitLab[1] or some other git hosting
> > service may be a good idea. I can see this having value outside the
> > OpenEmbedded/Yocto Project world, especially if the vanilla -rt patches
> > don't directly apply to linux-raspberrypi. If you decide to go this
> > route and need any support to make it happen, let me know and I'll see
> > what I can do.

I vote for a rt repository externally maintained too. Having it here
might not be the best idea on the long term.

>
> Sounds good... and Wow! GitLab looks awesome! I guess I'll look at how
> the yocto kernels are managed and see if it applies.
>

Does it? :)

> > Also, are you thinking of moving the -rt recipe to the 4.9 series when
> > upstream linux-raspberrypi declares that stable?
>
> Yes.
>
> > When they declared 4.4
> > stable they stopped updating the 4.1 series pretty much immediately. I'm
> > currently investigating whether there is any value in maintaining the
> > 4.4 series ourselves after upstream moves on.
>
> I want to see how managing one goes.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--07FIeBX8hApXX6Bi
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIzBAEBCAAdFiEEQvNqws+Dz7aX1cEEc7voa356t88FAlh/mN4ACgkQc7voa356
t8+dog//T512x+0+wCF8lgYeADU5eJV3SZkJ6c6bOx2rkdlcnse885RBOZnvAwRq
kSAczXF5ZDZBNL3ewKErTx+PVlxEnjyfYrreJwfUr1rOWJIYMLGZBWeHt5jFaJFv
+hwujAIjxf6ZaFQquMljyV1mO8dIxPbSjTsTEIUcDKohmMBga/Xu5pR8dKmZ0yx2
qZsu/pSd+9XSBsi2fBtaL2sQ18hDhWBP2MC6aS9QKtv3v1Cj/yPXecJ7ttTRwCeO
XGrxAFGio46g6WAiQY5f5jvIQ1P34mWkyXJoCCIFLBWlnUTFa9QQv3Y7xWX/S9++
TrHV66/HPhxcmiYjPgT42OAUAGtOP0lIU/8AzVTu44ZRh/O5632jtkv46fhU330T
ixkZ/wZgsW5tQ6q2PFgDEG+F5Dm9IQr6H22fqL979AtPRNETyzOvjdC2oXr6PDZf
lVoVzsKyWd5krEyFzNU81S2AmUbwibE46rZyqhAW/3yNDDNgfIg5T7Q3E4tqmj1l
UDRM1A4ESkFxCp3qKaBBbRR5fK4C1PUvr52j+Ot+JyE7olXG0o4nBqSdS42WMw40
j5tOMfIymCk78xBSDy4BLXWaLDWlXboRq3/WthRMaFjNRWTpvxtMZyMC8fQNVqaV
yAFXo5quya8jIYw1W6GtrF6Bn8aDir6Z2ESQAb/QI2n8c2x1hPc=
=cspP
-----END PGP SIGNATURE-----

--07FIeBX8hApXX6Bi--
