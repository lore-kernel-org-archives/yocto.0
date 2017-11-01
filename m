Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 03B0BE00AAF; Wed,  1 Nov 2017 09:53:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.177 listed in dnsbl.sorbs.net]
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AB6FE00928
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 09:53:12 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id m81so7403254ioi.13
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 09:53:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=VrsfMRkXaHTt2f+oPpiXXvM+VQNlBdZcvZB9minkuN0=;
	b=ba4KMbpLiUiMQsDr0B3Sc5BbcQ25avyzzA6aGuYqZOjX287BWNqSk2RriBpmx/+wcY
	yPSlzDGG3IENCpv//9l8N3SlWPOg59XV3mXlsqF2PejZTBCVtw8ObbE/2Ce7V0gn1aHR
	gF0gy2DZnyrv/h7y/HB2do5gobK2zwpaiWK5+mJS5qEk5DdBDV/MzQvOzcfrhFpWGHvO
	ZxxjJ31GfyG4dj+pbopm0ImaiHAIuZ1hW36zPy6yDqmd8E5h4kAWFpJYZOdinOwZrStw
	hAdGWcnpg8saYE2pUQb/HnBs/NGT2s8k0uxIkktmTXdn2NK29NEYhJjDVwzMQ5FeTKsG
	GOzg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=VrsfMRkXaHTt2f+oPpiXXvM+VQNlBdZcvZB9minkuN0=;
	b=MLRajwrbOvF8eOpCbE3dtTMIzSqPQOOjzveL5sWpkH8HRBi1UR7woVyRP1Pw8K3V3Z
	fU4wwnB2u3bovdvAj24MVxViG1+gnW0Rs5RkxcP8ZUHPFFVe4M8qvp0loNP40G4Tv8LJ
	00Mf0gbnRd4m9OJEbCV4AS4wvtZUPWB3ZjlifCjoZdaLcNywNjjtnWqF1MVH8vhEL1V9
	xHRhWSsAlrCxXIh12QBTdJXg7fzODuBp3hORNLq1FGwsjT9eclyVpIxoVp+8TCCW8ECw
	15AeFNSKFHYws81fbnqdiTjZ3EPYF8tZGY3Q9i8MsjhouumS3CkU4ixp4GUdBmEBVUtt
	OZ0A==
X-Gm-Message-State: AMCzsaUx+JCVrbuXDz++Y2mwSsPmEBQwoRWzIyASvJurxOfCy9vse9sG
	2nYnC8w89wfepX0l1KoOWRCiaarOvOJ4lSjqeBnQQw==
X-Google-Smtp-Source: ABhQp+Ri8RiZLBBiwYysJxlBo1y5hGXp1Z/MiXJqqq6IUzz6pEDI/nZkP+UixVjuT5iH74W7YBRtbvQKdprUQ1Tj7qA=
X-Received: by 10.36.87.2 with SMTP id u2mr1299401ita.151.1509555191698; Wed,
	01 Nov 2017 09:53:11 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.176.10 with HTTP; Wed, 1 Nov 2017 09:52:51 -0700 (PDT)
In-Reply-To: <CAFeBWL79uCL0tci-9YDTeUYLFZGoND1t7yx5rMi3rPJFNt9iOg@mail.gmail.com>
References: <CAFeBWL7V1TNoGj4gpc5QkQ4mraFwUmvt77sAAxyGTmrivTQ-Mw@mail.gmail.com>
	<1509546479.13007.35.camel@collabora.co.uk>
	<CAFeBWL79uCL0tci-9YDTeUYLFZGoND1t7yx5rMi3rPJFNt9iOg@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 1 Nov 2017 16:52:51 +0000
Message-ID: <CAJTo0LbcS5eG2SxZpWiEXvw0+Nh5DPBJ9gxjb50S9ZfnNAKnwg@mail.gmail.com>
To: Adam Lee <adam.yh.lee@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Checking for xwayland
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
X-List-Received-Date: Wed, 01 Nov 2017 16:53:13 -0000
Content-Type: multipart/alternative; boundary="001a1143e854f89c36055ceeb429"

--001a1143e854f89c36055ceeb429
Content-Type: text/plain; charset="UTF-8"

On 1 November 2017 at 15:58, Adam Lee <adam.yh.lee@gmail.com> wrote:

> Thanks Fabien, I definitely don't have Xwayland in my rootfs. My manifest
> is missing xserver-xorg-xwayland as well.
>
> Which image are you using? I thought including of  "x11 wayland" was
> sufficient. Perhaps not..?
>
>
Are you refering to DISTRO_FEATURES?  That just controls what is
*available*, not what goes into a particular image.  As Fabien said,
core-image-weston is the classic example of an image that has Weston.

Ross

--001a1143e854f89c36055ceeb429
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On 1 November 2017 at 15:58, Adam Lee <span dir=3D"ltr">&l=
t;<a href=3D"mailto:adam.yh.lee@gmail.com" target=3D"_blank">adam.yh.lee@gm=
ail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"g=
mail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bo=
rder-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">Thanks Fabien, =
I definitely don&#39;t have Xwayland in my rootfs. My manifest is missing x=
server-xorg-xwayland as well.<div><br></div><div>Which image are you using?=
 I thought including of=C2=A0 &quot;x11 wayland&quot; was sufficient. Perha=
ps not..?</div><div><br></div></div></blockquote><div><br></div><div>Are yo=
u refering to DISTRO_FEATURES?=C2=A0 That just controls what is *available*=
, not what goes into a particular image.=C2=A0 As Fabien said, core-image-w=
eston is the classic example of an image that has Weston.</div><div><br></d=
iv><div>Ross=C2=A0</div></div></div></div>

--001a1143e854f89c36055ceeb429--
