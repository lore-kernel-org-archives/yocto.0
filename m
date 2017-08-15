Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1940CE00CF4; Tue, 15 Aug 2017 16:48:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.54 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f54.google.com (mail-wm0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 631BCE00CD8
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 16:48:29 -0700 (PDT)
Received: by mail-wm0-f54.google.com with SMTP id m85so18933047wma.0
	for <yocto@yoctoproject.org>; Tue, 15 Aug 2017 16:48:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=C1ZObIK/ils0cAvuc8io62ijzKWH9+XanQnu5nNifuI=;
	b=kb6ySh9RpWpta7GwjEExEmuJF7QFdGXNtR/t1HPJNtEAQiCTjB6rgW3IMt80119DiA
	f/qal6dS8KowDt7ksWitAMssGUaL8WGGD3Fe5uG3Ko/WUmMqttbxk1yGX0lsH5Fj5FdI
	u3eQi0/wNTC//BWc6ToVk/ngvzTeSUPgSb+lyfyP/dBKFQfVD+36TH+vrOus5gVZDTi1
	Cj+5Pb0o5rTiLgRNMxrPY30Xc0tw0lxLzszzkXi5hJvLantD2Cqew78P8zISoRVg5HPF
	MNRwVS6JXbDIQnzxj+ao2S/hg0Vh1Jm+sN6v2PyEmwGuKZSWCe7PhqNO4LOg/uZqsUrd
	amIQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:from:date:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=C1ZObIK/ils0cAvuc8io62ijzKWH9+XanQnu5nNifuI=;
	b=lYT904MggG0p4VsfCDrfvbhNnxCo+mD4V1rzZ4O7rSDGxDrmdowRC48hffVmOn1I6T
	LYuRUMmB9Kri8JfjP2PK2tSD8SfPiH6SukNHVqYk2eS3XRcsewZif71OEVBBLkKC9UPi
	FSNLYD+1SFy7rAzwFX8svb7i20XeuFYHx0cDwbMkVdmfobt3T+PKNc9vJPBea3fbLlkc
	F0wlnwV1Sbb44hrkXHklKjQ3bTmqQME8Lp0G/LseGaoCEPZ5+eMDxx2iL3WYephqJ3yo
	wDfECiE/A7Epwb1AL1Oksad0xlG/B3mvImBv9nAbmmMPxNqiWi9vbKJ88AJMbC+Ag7SY
	zeYA==
X-Gm-Message-State: AHYfb5h33jpT/rJt92Q5JmR2tuWMjcw07ArBjbnFT6VcB3leMeoGigFo
	TBJKWstxboz2cA==
X-Received: by 10.28.196.71 with SMTP id u68mr109903wmf.18.1502840909170;
	Tue, 15 Aug 2017 16:48:29 -0700 (PDT)
Received: from localhost ([217.30.68.212]) by smtp.gmail.com with ESMTPSA id
	j137sm4117075wmf.43.2017.08.15.16.48.26
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Tue, 15 Aug 2017 16:48:27 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Wed, 16 Aug 2017 01:50:04 +0200
To: Riko Ho <antonius.riko@gmail.com>
Message-ID: <20170815235004.GA3353@jama>
References: <39341581-7086-955e-d678-fa771e5941da@gmail.com>
	<1502725740.28941.13.camel@linux.intel.com>
	<CABcZANkw2EPzROT6WFkqzL+OoJtnXBu_HWJVevKg07RrmGOLfw@mail.gmail.com>
	<299105a1-2bf6-a89f-d1f1-e35bd2d458c1@gmail.com>
	<1502806378.28941.32.camel@linux.intel.com>
	<CA+chaQe_1GVYdmCwqQ-gSUZZ=_xcN5RR=ORuzZiUxTyj3tU8uQ@mail.gmail.com>
	<CAByQQ_qNcKpj5RYXX0EVtzLfqki0CW-FwSN-tAhvEYybKo24ug@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAByQQ_qNcKpj5RYXX0EVtzLfqki0CW-FwSN-tAhvEYybKo24ug@mail.gmail.com>
User-Agent: Mutt/1.8.3 (2017-05-23)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: layer.conf on openembedded-core ?
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
X-List-Received-Date: Tue, 15 Aug 2017 23:48:31 -0000
X-Groupsio-MsgNum: 37417
Content-Type: multipart/signed; micalg=pgp-sha1;
	protocol="application/pgp-signature"; boundary="LQksG6bCIzRHxTLp"
Content-Disposition: inline

--LQksG6bCIzRHxTLp
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 16, 2017 at 07:40:10AM +0800, Riko Ho wrote:
> I see, so I must use all layers within the same branch.
> Could you tell me where I can download those layers in the sma branch?
> I didn't see the branch when I clone the layers.

This might help you:
https://git-scm.com/documentation

> On Aug 15, 2017 10:11 PM, "Martin Jansa" <martin.jansa@gmail.com> wrote:
>=20
> > But it's related to it, in this thread he added oe-core/meta in master
> > branch to BBLAYERS in poky build (already including poky/meta) from pyro
> > branch.
> >
> > That's why he is seeing 3 strange issues reported in couple threads
> > already (and this is also 3rd time someone telling him that he shouldn't
> > include oe-core meta twice and to use the same branch across all layers=
).
> >
> > On Tue, Aug 15, 2017 at 4:12 PM, Leonardo Sandoval <
> > leonardo.sandoval.gonzalez@linux.intel.com> wrote:
> >
> >> On Tue, 2017-08-15 at 09:09 +0800, Riko wrote:
> >> > Dear Team Yocto Members,
> >> >
> >> > I continue compiling, and got :
> >> >
> >> > ERROR: /home/bianchi/poky/openembedded-core/meta/recipes-core/images/
> >> build-appliance-image_15.0.0.bb: No IMAGE_CMD defined for IMAGE_FSTYPES
> >> entry 'wic.vmdk' - possibly invalid type name or missing support class
> >> > ERROR: Failed to parse
> >> > recipe: /home/bianchi/poky/openembedded-core/meta/recipes-core/image=
s/
> >> build-appliance-image_15.0.0.bb
> >> >
> >>
> >> would be better if you start another thread with this issue. BTW, I ju=
st
> >> built a build-appliance without any change at local.conf and all went
> >> fine so you may have included something that you are not referring to
> >> (IMAGE_FILES?)
> >>
> >>
> >>
> >> > How can I fix it ?
> >> >
> >> > regards,
> >> >
> >> > Riko
> >> >
> >> >
> >> >
> >> > On 14/08/17 23:56, Christopher Larson wrote:
> >> >
> >> > > The openembedded-core root isn=E2=80=99t a layer, openembedded-cor=
e/meta is.
> >> > >
> >> > > On Mon, Aug 14, 2017 at 8:49 AM, Leonardo Sandoval
> >> > > <leonardo.sandoval.gonzalez@linux.intel.com> wrote:
> >> > >         On Mon, 2017-08-14 at 15:11 +0800, Riko wrote:
> >> > >         > Dear Yocto Members,
> >> > >         >
> >> > >         > How can I find this file ?
> >> > >
> >> > >
> >> > >         this is a pretty general question. are you running bitbake
> >> > >         from the
> >> > >         build directory? double check your conf/bblayers.conf and
> >> > >         make sure
> >> > >         paths there are pointing correctly.
> >> > >
> >> > >
> >> > >         >
> >> > >         > =3D=3D
> >> > >         >
> >> > >         > ERROR: Unable to parse
> >> > >         > /home/bianchi/poky/openembedded-core/conf/layer.conf:
> >> > >         [Errno 2] file
> >> > >         > /home/bianchi/poky/openembedded-core/conf/layer.conf not
> >> > >         found
> >> > >         >
> >> > >         >
> >> > >         > Thanks,
> >> > >         >
> >> > >         > Riko
> >> > >         >
> >> > >
> >> > >
> >> > >         --
> >> > >         _______________________________________________
> >> > >         yocto mailing list
> >> > >         yocto@yoctoproject.org
> >> > >         https://lists.yoctoproject.org/listinfo/yocto
> >> > >
> >> > >
> >> > >
> >> > >
> >> > >
> >> > > --
> >> > > Christopher Larson
> >> > > kergoth at gmail dot com
> >> > > Founder - BitBake, OpenEmbedded, OpenZaurus
> >> > > Senior Software Engineer, Mentor Graphics
> >> >
> >>
> >>
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >>
> >
> >

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

--LQksG6bCIzRHxTLp
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: Digital signature

-----BEGIN PGP SIGNATURE-----

iF0EARECAB0WIQRU+ejDffEzV2Je2oc3VSO3ZXaAHAUCWZOIqwAKCRA3VSO3ZXaA
HDtaAJ0Z3hlzUKy8hFKML5EMohmdStXA5gCgpMooZZ3B56qlsrGLJqBEgr1Ew/c=
=5qLk
-----END PGP SIGNATURE-----

--LQksG6bCIzRHxTLp--
