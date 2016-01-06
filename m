Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 316A6E00C51; Wed,  6 Jan 2016 12:41:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f49.google.com (mail-wm0-f49.google.com [74.125.82.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7DEBE007C3
	for <yocto@yoctoproject.org>; Wed,  6 Jan 2016 12:41:34 -0800 (PST)
Received: by mail-wm0-f49.google.com with SMTP id f206so73454627wmf.0
	for <yocto@yoctoproject.org>; Wed, 06 Jan 2016 12:41:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=EtQizNl57TyEnysC5IXgIT0+vFyGq2XHA2djzvKxXks=;
	b=ZrBDWIpseRA8F04qx/Qrq8s6mtJppytxJKuAiiii1H4Hb1t+S01NE3TBwmESypR2Df
	LPu5LOiNnXMbRfkAvPflNArGUv1oe2f5JNayP+Ic6M7pH0PxSvPHr1T/ZfD/beJxQk3r
	nQlVd/ZwB2Tj+LQpp23sZD0sIEv++W43J08THMVGO72YbcnpAXmGhqhC1U79LAiTZMKA
	W88om6bx4mJ9DWpZDewvN2wm/N5pqmFYqR6p+vhUYuVrZHrIc5E7Lsl6K8iFwU2HxkQO
	fhhmBzgNh/tKNx0eMBztHOqyo42fjDW3R9ftjCtOVrKLxRRRAQfwhwLY1kSSCuOWJmkO
	6gow==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=EtQizNl57TyEnysC5IXgIT0+vFyGq2XHA2djzvKxXks=;
	b=mEod3xkH/Y8IyXVwRBxXRcf8wi68auF3cUxogqYoUhq/4wKkKCEyfdV39qIwywmMDY
	m4uAWFiJiIq3z3nqw1ZVrtkbxdfb8UEqUreaWkG+lTXlxXtsgw9jMJwDrh0oM1jrGq/l
	0I4e6+Is3jJQ10O+OMtfcAzWvz6LrAsD2GdNbwVqC9NnIHpsBQxu7ACYsGCt30PnFtRT
	/BF1pvXoFzS5McFxm/dH5FJUakhTgGazvI/B6l1nViuMpmUjI/BBVdBZ3ozm5f1Gixey
	okdxWTPy+gUcESmoJLFAebpX0mhgBI2vWMm9WHcCBGqVPJ0xbnIKUcueHuBLoe+Wjx1c
	Zc+g==
X-Gm-Message-State: ALoCoQmrvUlM3HBP448UiRvxfniqELy9FfJKJ7YbYKG4BMy8e1Wc37bZ87JhtXjPjs0gkWPuElm3WlriED7r7/B9rJxyixITRQ==
MIME-Version: 1.0
X-Received: by 10.28.158.74 with SMTP id h71mr12123774wme.74.1452112894139;
	Wed, 06 Jan 2016 12:41:34 -0800 (PST)
Received: by 10.28.129.200 with HTTP; Wed, 6 Jan 2016 12:41:33 -0800 (PST)
X-Originating-IP: [178.7.64.118]
Received: by 10.28.129.200 with HTTP; Wed, 6 Jan 2016 12:41:33 -0800 (PST)
In-Reply-To: <CAK18fxF5d+7JecsEHM=wGWGfzeyZPTVKbLbfygNqNoEcjnce0A@mail.gmail.com>
References: <CAK18fxF5d+7JecsEHM=wGWGfzeyZPTVKbLbfygNqNoEcjnce0A@mail.gmail.com>
Date: Wed, 6 Jan 2016 21:41:33 +0100
Message-ID: <CAK18fxGSYtduY0xv8aF8hYWJORmZwdMxw2TAgf3XS5_u+sKBWQ@mail.gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
To: Yocto Project <yocto@yoctoproject.org>
Cc: Florin Ionut <florin@resin.io>,
	Paul Eggleton <paul.eggleton@linux.intel.com>,
	Alexandros Marinos <alexandros@resin.io>
Subject: Layer manifest (topic touched at ELCE)
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
X-List-Received-Date: Wed, 06 Jan 2016 20:41:39 -0000
Content-Type: multipart/alternative; boundary=001a114b39863abb8c0528b061d1

--001a114b39863abb8c0528b061d1
Content-Type: text/plain; charset=UTF-8

Hello all,

We started a discussion at the last ELCE: layer manifest in a machine
parsable format. I'll make a short summary on what is this about.

In the current yocto layers structures, the only way to describe a layer is
through README. Which provides useful information like layer dependencies,
available targets, maybe available machines etc. First of all this
information is not standardized in any way and not machine parsable. So is
not an uncommon situation to get a BSP yocto layer and have no idea what to
do without actually looking into it. As well, there is no way of
automating, for example, cloning of dependencies or any other kind of
automations.

Now the questions is, would it make sense to define a layer manifest where
a layer would be fully described in a machine parsable way? Does yocto
community feel the need of such a file and maybe additionally have a script
which would be able to parse such a manifest and setup a build environment?


--
Andrei Gherzan

--001a114b39863abb8c0528b061d1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Hello all,</p>
<p dir=3D"ltr">We started a discussion at the last ELCE: layer manifest in =
a machine parsable format. I&#39;ll make a short summary on what is this ab=
out.</p>
<p dir=3D"ltr">In the current yocto layers structures, the only way to desc=
ribe a layer is through README. Which provides useful information like laye=
r dependencies, available targets, maybe available machines etc. First of a=
ll this information is not standardized in any way and not machine parsable=
. So is not an uncommon situation to get a BSP yocto layer and have no idea=
 what to do without actually looking into it. As well, there is no way of a=
utomating, for example, cloning of dependencies or any other kind of automa=
tions.=C2=A0</p>
<p dir=3D"ltr">Now the questions is, would it make sense to define a layer =
manifest where a layer would be fully described in a machine parsable way? =
Does yocto community feel the need of such a file and maybe additionally ha=
ve a script which would be able to parse such a manifest and setup a build =
environment? =C2=A0</p>
<p dir=3D"ltr">--<br>
Andrei Gherzan</p>

--001a114b39863abb8c0528b061d1--
