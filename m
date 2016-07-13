Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFF16E00DB0; Wed, 13 Jul 2016 04:57:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f66.google.com (mail-wm0-f66.google.com [74.125.82.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 91556E00D9D
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:57:18 -0700 (PDT)
Received: by mail-wm0-f66.google.com with SMTP id o80so5622747wme.0
	for <yocto@yoctoproject.org>; Wed, 13 Jul 2016 04:57:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=bchOzlNUdX9ZjwuxRv5E6k63nWmP+MXoKkJa79wP3K8=;
	b=cMcu/JoNS3wnMAfe2H+WfZSvTVKCWvgMMXpwa3ge9VgUanr7uBKX/kL3FEIR7UsQpL
	g/I5ujc0CVzVlXAY5x8S//sexlBTy3oArwBFvZ+gnpZ8x0MPjx0XjFk1Meh+1lTWu1PI
	mJGSzsSAA/jh9n5fSd3Sp3VzxCLEpaAenrV9ghOa8hi5W9/vdugEg9OLbRAx4lLtXnzj
	ikElhTLkbIPSIqxCqv1ID+pOhM4zBZzGka/uNZ7xaZggSsMOkfOXGJc0ILNUnxTmyTKr
	YoBWa+AK3jJPEbsXxWGNd+fj8xcNuvsnHYlXXBVdM/W/Y719kNjCCFEcxJS2Cp7IjT44
	zcYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=bchOzlNUdX9ZjwuxRv5E6k63nWmP+MXoKkJa79wP3K8=;
	b=PuV0l0xw728M2SK6LGDHw2CmA+v7r5YLFX8Bol46fakY0ZP/UPNiSZM+Aro6IoTPNB
	ayG8Hy5nbYk14NBjWXSL0ZPS4FFy0niWSYsweA/gJBPTFs55xaIfh8YtRm4hLGi3gkfZ
	wNijTxaFbJ4j9w94YUPQCr3+voMrnbc5OyIjKOWApw4VcejWQ5/SEqij47/K7V6zC4vA
	7dC1WAyLC8JY/k3mLf4gvuTpIEeMBX1NX9vb/GVQQ0IUu1oROkTDPG9p/L5Z/VmX0Wuo
	03n9DdywiuLJyjiq+Bu84KcfhFvGGV0+h/ZSGuMMpQP/JptsIB1AloLDsXTHDbCZgTe2
	siDQ==
X-Gm-Message-State: ALyK8tJqWm4B33lVD5xKgXPJTOvUdUkO3wJ64FRhnGmngnJGXqgHFLUNddlRTzugYYolDg==
X-Received: by 10.28.95.85 with SMTP id t82mr9918277wmb.20.1468411037437;
	Wed, 13 Jul 2016 04:57:17 -0700 (PDT)
Received: from resin.home (host109-152-128-245.range109-152.btcentralplus.com.
	[109.152.128.245])
	by smtp.gmail.com with ESMTPSA id n7sm539294wje.2.2016.07.13.04.57.16
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 13 Jul 2016 04:57:16 -0700 (PDT)
Date: Wed, 13 Jul 2016 12:57:14 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: "Daniel." <danielhilst@gmail.com>
Message-ID: <20160713115714.GG21822@resin.home>
References: <CACibCHofyRnNQXuK_G2N9jeQ6ATEo5HG4vEp88PDa6+8hVABtg@mail.gmail.com>
	<20160709103558.140ffe32@nuc.betafive.co.uk>
	<20160711002711.07076803@nuc.betafive.co.uk>
	<CAF3SDA4eb3XHEtTbD1zRt2rprHCey3dD8u07PZk1raOtbbcRow@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAF3SDA4eb3XHEtTbD1zRt2rprHCey3dD8u07PZk1raOtbbcRow@mail.gmail.com>
User-Agent: Mutt/1.6.2 (2016-07-01)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] u-boot doesnt boot kernel
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
X-List-Received-Date: Wed, 13 Jul 2016 11:57:23 -0000
X-Groupsio-MsgNum: 31029
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature"; boundary="zGQnqpIoxlsbsOfg"
Content-Disposition: inline

--zGQnqpIoxlsbsOfg
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi Hammad,

On Mon, Jul 11, 2016 at 10:37:04AM -0300, Daniel. wrote:
> Hi Hammad,
>
> As Paul said the u-boot need some configuration so it can boot the
> kernel. Usually it looks for bootcmd variable and try to run it so at
> last this variable need to be setted. User's usually make this one
> (bootcmd) call a miriad of another commands to retrieve kernel from
> ftp, or nand, load it to memoby and boot it.
>

We are working on a patchset that will set a default configuration
bootable with uboot. For all other fancy changes see above.

> Take a look at www.denx.de/wiki/DULG/Manual for more information.
>
> Regards,
>
> 2016-07-10 20:27 GMT-03:00 Paul Barker <paul@paulbarker.me.uk>:
> > On Sat, 9 Jul 2016 10:35:58 +0100
> > Paul Barker <paul@paulbarker.me.uk> wrote:
> >
> >> On Fri, 8 Jul 2016 21:04:24 -0400
> >> Hammad Ahmed <hammadahmed85@gmail.com> wrote:
> >>
> >> > Hi,
> >> > I wanted to boot with u-boot so I added:
> >> >
> >> > KERNEL_IMAGETYPE = "uImage"
> >> >
> >> > u-boot builds fine but when I boot up my raspberrypi, u-boot doesnt
> >> > start the kernel.
> >> >
> >>
> >
> > I've just sent a patch series which should allow u-boot to start the
> > kernel without needing to type in a bunch of manual commands.
> >
> > You can get the patches from the mailing list or use the
> > 'pbarker/u-boot' branch of https://gitlab.com/oryx/meta-raspberrypi.
> >
> > Let me know if this works for you.
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
>
>
>
> --
> "Do or do not. There is no try"
>   Yoda Master
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

--
Andrei Gherzan

--zGQnqpIoxlsbsOfg
Content-Type: application/pgp-signature; name="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQIcBAEBCAAGBQJXhiyaAAoJEHO76Gt+erfP0EQP/1A5B5Oa0wWuqK2GIiFYWr3f
xdnmyiChoHpclEm9D8K1V6CbcqHvrU6V9w+m9MKiPM7Z1vgbIcewFXxmSBqD/25b
1s2ofuff2jYf4HDtUrWursJaGSNd0ZTtBkxLUrZUqlmFYFdM4pOiCZVpm/ys09pw
tDClMq+4GqapC2TU/I8zsMXhO/xXDZjwzi/TKaE+vGjywzuoufl/f8W7juq048m6
ewDoTxjhrx1LxaxQG0NeNlc09yrr5DxMLmSpvoirCl6djPJHX+TDLsf+IkxLXfPp
M4fgBknu9Y4v/YZq2aZuJnwj/q0Mra98j+GejXTVKC72i/4oIvW0q+K1rMylw/Il
SiTVjQn2rkBPzrxj4ZNd51ALnxe58JuiRLKBXniCYUUZQHnoN3S6p241VuKOfL/K
2bIITQ1AAA9a6EtjOp6rLwkKlaIrkbpphrahmJ0TwNVP5E9XahPFRftv+Yji5iUh
Vdo/X6jBgdoPNI6w9yB12vC6gyJdMgwbZ1sei1qawyoQrjBx68NT1CKGFmf6iLEF
dezFZaVf+tXRSgzVP0Y8ZjEjD95LhVBtcYLHwNNfGp8ELqMWE6kRmE5qwiFDkqt1
f3rUMKgrr4LXJB1tWRAFJ8OTuSb63Nw6FWLdiSMPNAhg/lQPduZarX5E+E/X2sOg
xogxDpASQhxqe7PvuBIa
=xJFG
-----END PGP SIGNATURE-----

--zGQnqpIoxlsbsOfg--
