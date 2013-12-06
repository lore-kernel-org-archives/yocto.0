Return-Path: <r10kindsofpeople@gmail.com>
Received: from mail-ob0-f175.google.com (mail-ob0-f175.google.com
	[209.85.214.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D2F5E007C1
	for <yocto@yoctoproject.org>; Fri,  6 Dec 2013 11:08:29 -0800 (PST)
Received: by mail-ob0-f175.google.com with SMTP id uz6so1200374obc.20
	for <yocto@yoctoproject.org>; Fri, 06 Dec 2013 11:08:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YpH5W07AGtKMh+clHUaDQ+e6FeoUJmiw2lq6lqIAlKQ=;
	b=gh/satWp5Cze1hc8C1jmLpcE5KoElgaf8/jq8x4x2BCHFipC6bldqqC+D+yDO9rAGz
	Zhm2Rno1zI/vtaCrP3G/5a/M8r6cTd7nmXXEMhVrod+F90fH8KVUfiaWd8jVCvxgHjkU
	hzjVor/EB7x9BQ/MJYdRl3Cpc6iRpi8LvoIHWd4wNRmb4EheZoNrJ0JVZSzQcJUJWlsk
	CXBmUoOBw3EonqvQAM5xnFOn1dZAbeJD20AtQCvgIIg5IOq370wIGUC+I1uz8uM1Pkc9
	R3LShofBknx9OpXsyrWtza5SKXC4tL1EKhq/dD/ZWZcxIlVyyhXM/JNPgqAb7fOaNAb5
	Lr2w==
MIME-Version: 1.0
X-Received: by 10.182.44.167 with SMTP id f7mr3647075obm.3.1386356909238; Fri,
	06 Dec 2013 11:08:29 -0800 (PST)
Received: by 10.76.23.136 with HTTP; Fri, 6 Dec 2013 11:08:29 -0800 (PST)
Date: Fri, 6 Dec 2013 14:08:29 -0500
Message-ID: <CAE8H0+XtcT9ZriW31mN28xjDzASAp7AASxOOg=fE9LvepTatRA@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: poky-tiny breaks at ncurses and perl (Dylan 9.0.1)
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
X-List-Received-Date: Fri, 06 Dec 2013 19:08:31 -0000
Content-Type: multipart/alternative; boundary=001a11c1d7e01b6f1c04ece25f49

--001a11c1d7e01b6f1c04ece25f49
Content-Type: text/plain; charset=ISO-8859-1

After some success building my system (crownbay), I'm now trying to
optimize boot time, so I read up on poky-tiny, created a new layer and am
trying to build.  I think I've pulled most of my system changes out so that
I can at least bitbake core-image-minimal, but I'm still not able to get
past ncurses config and perl.  (ncurses reports autoconf errors in widec,
perl has undefined references to gcvt, I'm also getting complaints about
multiple providers for the kernel, etc.)

Is poky-tiny still active and tested?  What are the odds of this being
resolved in Dora versus the odds of running into other migration issues?

John

--001a11c1d7e01b6f1c04ece25f49
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">After some success building my system (crownbay), I&#39;m =
now trying to optimize boot time, so I read up on poky-tiny, created a new =
layer and am trying to build. =A0I think I&#39;ve pulled most of my system =
changes out so that I can at least bitbake core-image-minimal, but I&#39;m =
still not able to get past ncurses config and perl. =A0(ncurses reports aut=
oconf errors in widec, perl has undefined references to gcvt, I&#39;m also =
getting complaints about multiple providers for the kernel, etc.)<div>
<br></div><div>Is poky-tiny still active and tested? =A0What are the odds o=
f this being resolved in Dora versus the odds of running into other migrati=
on issues? =A0</div><div><br></div><div>John</div></div>

--001a11c1d7e01b6f1c04ece25f49--
