Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08828E00474; Wed, 22 Aug 2018 11:16:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f180.google.com (mail-qk0-f180.google.com
	[209.85.220.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5099E003D7
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 11:16:28 -0700 (PDT)
Received: by mail-qk0-f180.google.com with SMTP id p71-v6so1860357qka.9
	for <yocto@yoctoproject.org>; Wed, 22 Aug 2018 11:16:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=7fLZ2CBjhaUD+kRdMaWX8zukyr9lqapqb/KUYN6rI6s=;
	b=n1a10ENvvo84sUNAxLUb8YwZh8EXyyy91239Ol9HqJF4JQ4uI4sn56j+33YR/cnYIJ
	A310ZAsEEuN/ckrAnCgvzTq+ApLpSvTRCD6ZFUA9HlndvWF9jR/7Y37/ruSuC4jqwc9m
	iaGM0GNpBFo6WJNswJzSYzRbHAL1G1fmaKqWfBFafX59L/0QtJMSQKcVweT9DooN3Liv
	9BuvLUE9cD4Aow+z4Wq/lLqIX/HfRM1pHZjlscegT4TPD7tiNh8t5InUKOLNxrci5PhK
	wYXdics3qr5He9gwMzzwXMFuG2wvHvraQLkTfoDY6MtN8u8qdJoEQuRxvAwzT5gU0JWy
	r4Kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=7fLZ2CBjhaUD+kRdMaWX8zukyr9lqapqb/KUYN6rI6s=;
	b=Vq9KZ+Z/ZxsV9FcnJhLej7z/uAz0LhbwIi5yWuLgRp7vbDsBclUs26FNks+8Q+VkvZ
	8oa5Fqgaj/aMjgYDDd9pyvJkBwJ62nmdUtsJvkqAi8Jacf5+glJzvwVqGu2ZKLH9/u12
	r3QpjQ6MFmENsxBgA7nR52/1RZ8EogBu2N3hGoIrlsSMiSL1jof+sRZjZD+OAT6Qd560
	IFfupEM4voIM7FCHeVh5CuxmG9r58abV+EHePLSoWjMbR6fdRzmYKJPK8M2guv0lMySF
	HxXZMt9dgvYtYxBF4mmHvtABbW8hHWxtljDuYLXN23Voz17vo226ceZpx/a0a4fRg7ja
	vxrw==
X-Gm-Message-State: AOUpUlH79dp5P0b/pJFAfKlPAzXb2tt4ue8Za2oTM1BcDHuTcqhysI8G
	uOSZ6zDG7Yv0uj/ZaHo1snQzTlOf4F/gR4fK1iwyHUCr
X-Google-Smtp-Source: AA+uWPyFu0fc4dDAFrgWKMUdrtzHEHJaUNmzNWuCBVwxYl2NMf3iCTUHoHPe5f2s8/pLAnz6cT9viRzrj7Rq/KAuy4k=
X-Received: by 2002:a37:2e03:: with SMTP id
	u3-v6mr52834348qkh.223.1534961788065; 
	Wed, 22 Aug 2018 11:16:28 -0700 (PDT)
MIME-Version: 1.0
References: <4b0fd208e0cf4fb3a1d1518047a47359@4rf-nz-exchange.local.4rf.com>
In-Reply-To: <4b0fd208e0cf4fb3a1d1518047a47359@4rf-nz-exchange.local.4rf.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 22 Aug 2018 11:16:02 -0700
Message-ID: <CAMKF1sqn4ULq_JAjRBDcvBpVsqvkNL6YaHxwYcu03PywrrrkKg@mail.gmail.com>
To: Amol.Lad@4rf.com
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Recipe re-build when variable in local.conf changes
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
X-List-Received-Date: Wed, 22 Aug 2018 18:16:30 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Wed, Aug 22, 2018 at 8:21 AM Amol Lad <Amol.Lad@4rf.com> wrote:
>
> Hi,
>
>
>
> Is there a way to re-build a recipe if I change a variable in local.conf?
>
>
>
> I=E2=80=99ve defined a variable =E2=80=93 BUILDVERSION =3D =E2=80=9C1.0.0=
=E2=80=9D in local.conf. There is a recipe which uses this variable, create=
s a version file and populates it in the root file system. Now if I change =
this variable to say =E2=80=9C2.0.0=E2=80=9D then how can I cause my recipe=
 to re-build so it can pick up new value?

this should cause dependent recipe to rebuild automatically,  if this
recipe appears anywhere in your image creation dependency chain you
dont have to do anything
but if you are using it in a post processing function something like
below might help

do_update_version[depends] +=3D "${PN}:do_image_complete"
do_update_version[depends] +=3D "<your-recipe>:do_populate_sysroot"
do_update_version[nostamp] =3D "1"

