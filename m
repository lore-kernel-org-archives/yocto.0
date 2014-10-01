Return-Path: <ashish.dalela@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B47AE0086A; Wed,  1 Oct 2014 07:49:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ashish.dalela[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
Received: from mail-yk0-f181.google.com (mail-yk0-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F4EFE00857
	for <yocto@yoctoproject.org>; Wed,  1 Oct 2014 07:49:00 -0700 (PDT)
Received: by mail-yk0-f181.google.com with SMTP id q200so170443ykb.40
	for <yocto@yoctoproject.org>; Wed, 01 Oct 2014 07:49:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=PwkqudDzsP0NLjVQ/CcTNct1pV1XoOihSxQw9ov7nlo=;
	b=0I2OnLibJWnVEM1Zkq3Sav9SfStHAxBcAQoFsOtYxcDKIdWXKOGOYC9+vL4EBsguLS
	oHYfxwq8sBLrp6MTOzafY4Zjdk6O7RJZO3Sg0ngt8QsUyaK9GhLLVZMV1gbsgWiqJVit
	lKDiUpyboI7z9mfBCCSUps55gIdyXddqqoHLvu9ubxv+efDnuzuNOPYpUlRuEMkQ/uln
	2KkgklA8gR5bcsu/dY890jPgeejRv8TnZKcMRI7cmZ9jwsvzN/uob/oMSTqUoEGDDNP+
	PhwU3SkLM2db+vPsIQ3xaWciq0hsuOnx90H9+8Uv6Fus+lNuNLRKosjfwiaTDFKPeUBk
	XG1g==
MIME-Version: 1.0
X-Received: by 10.236.128.33 with SMTP id e21mr4609079yhi.187.1412174940165;
	Wed, 01 Oct 2014 07:49:00 -0700 (PDT)
Received: by 10.170.176.10 with HTTP; Wed, 1 Oct 2014 07:49:00 -0700 (PDT)
Date: Wed, 1 Oct 2014 20:19:00 +0530
Message-ID: <CABhkJRe8kMy+v00Xeoe0zr_EnMDhQwcRh8puGmwnf0m2GuepGQ@mail.gmail.com>
From: Ashish Dalela <ashish.dalela@gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: libc6-dev issue
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
X-List-Received-Date: Wed, 01 Oct 2014 14:49:07 -0000
Content-Type: multipart/alternative; boundary=20cf3011dacdab5c2d05045d9949

--20cf3011dacdab5c2d05045d9949
Content-Type: text/plain; charset=UTF-8

Folks,

While trying to install libc6-dev RPM I get the below error -

error: Can't install libc6-dev-2.17-r3@i586: no package provides
libsegfault-dev

I can't figure out how to build libsegfault-dev. Can anyone provide
guidance?

I tried eglibc clean and rebuild a few times. Even did this with one thread
to avoid race conditions.

Thanks
--Ashish

--20cf3011dacdab5c2d05045d9949
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Folks,<div><br></div><div>While trying to install libc6-de=
v RPM I get the below error -=C2=A0</div><div><br></div><div><div>error: Ca=
n&#39;t install libc6-dev-2.17-r3@i586: no package provides libsegfault-dev=
</div></div><div><br></div><div>I can&#39;t figure out how to build libsegf=
ault-dev. Can anyone provide guidance?</div><div><br></div><div>I tried egl=
ibc clean and rebuild a few times. Even did this with one thread to avoid r=
ace conditions.</div><div><br></div><div>Thanks</div><div>--Ashish</div></d=
iv>

--20cf3011dacdab5c2d05045d9949--
