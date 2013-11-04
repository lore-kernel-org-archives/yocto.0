Return-Path: <raj.khem@gmail.com>
Received: from mail-pa0-f47.google.com (mail-pa0-f47.google.com
	[209.85.220.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9D71CE016DC
	for <yocto@yoctoproject.org>; Mon,  4 Nov 2013 11:29:36 -0800 (PST)
Received: by mail-pa0-f47.google.com with SMTP id lf10so7279554pab.20
	for <yocto@yoctoproject.org>; Mon, 04 Nov 2013 11:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=content-type:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=yZKdU3S6sXMmNuJJjpP91WSkWgufCZxbTIfriufDqbQ=;
	b=LuB0WgaPutoRtvmMZdkiy7xuPv+/Q3U+u17N5FdyYpLwpufZ8+QVWFlk4z1HNxFB7c
	wdQ7tLFFOnOpqEdT9CDy5k28eQ8FYrIpWZ1K000i9zz9l9izkqVBMlGzB5qp9wfF6aBf
	UyKYh06/aYLrBs7Lbm1rLTZpAwxaaGup94d18t7XFLfo0s2xOBFHNBWQ9DD84zCKvw/I
	X+CAQx/CqhOW24QvVKKUFtEkAOYmdRlrYJHwnvybw4DaqsgXa5fFUJ1RiPW8cMAMHVuD
	grLquukqORDP+BXfxsO5AjF8PZr4/suegASzUMn+7NUIR+CXVF0KEHleLiL/i6Cbv8cp
	e8ZQ==
X-Received: by 10.68.232.3 with SMTP id tk3mr19404744pbc.121.1383593376719;
	Mon, 04 Nov 2013 11:29:36 -0800 (PST)
Received: from sa-nc-common2-176.static.jnpr.net (natint3.juniper.net.
	[66.129.224.36]) by mx.google.com with ESMTPSA id
	i10sm34942811pat.11.2013.11.04.11.29.35 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 04 Nov 2013 11:29:36 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 7.0 \(1816\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <2613359.1lbv24R3Iq@helios>
Date: Mon, 4 Nov 2013 11:29:38 -0800
Message-Id: <FB8BAF9F-27D4-476A-94A2-4B9A56B209BE@gmail.com>
References: <alpine.DEB.2.02.1311020624570.21875@oneiric>
	<CAMKF1so3X0P=A5fvVpzj-3RMntH_bGVJsGX2iJFJoiFZgJyksQ@mail.gmail.com>
	<2613359.1lbv24R3Iq@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1816)
Cc: "yocto@yoctoproject.org discussion" <yocto@yoctoproject.org>
Subject: Re: BB_DANGLINGAPPENDS_WARNONLY = "1" or "true"?
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
X-List-Received-Date: Mon, 04 Nov 2013 19:29:41 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable


On Nov 4, 2013, at 10:47 AM, Paul Eggleton =
<paul.eggleton@linux.intel.com> wrote:

> On Sunday 03 November 2013 12:49:16 Khem Raj wrote:
>> On Sat, Nov 2, 2013 at 3:27 AM, Robert P. J. Day =
<rpjday@crashcourse.ca>=20
> wrote:
>>>  (i can see it's going to be that kind of weekend.) ref manual =
reads:
>>>     BB_DANGLINGAPPENDS_WARNONLY =3D "1"
>>>=20
>>> but some layers define:
>>>=20
>>> meta-linaro/meta-aarch64/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY =
=3D
>>> "true"
>>> =
meta-linaro/meta-linaro-toolchain/conf/layer.conf:BB_DANGLINGAPPENDS_WARN
>>> ONLY =3D "true"
>>> meta-linaro/meta-linaro/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY =
=3D
>>> "true"
>>> =
poky-extras/meta-kernel-dev/conf/layer.conf:BB_DANGLINGAPPENDS_WARNONLY
>>> ?=3D "true"
>>>=20
>>> so general question(s) -- is it understood that "1" and "true" are
>>> equivalent? should there be a standard? should the ref manual be
>>> enhanced, or should the above layers clean themselves up?
>>=20
>> They are all correct. Accepted values are
>>=20
>> "1", "yes", "true"
>=20
> Note - for this variable only. For consistency with other "boolean" =
type=20
> variables I'd suggest sticking to "1=94.

may be it should be deprecated slowly for other values.=

