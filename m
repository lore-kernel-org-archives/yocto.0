Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C6475E002AC
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 01:26:14 -0700 (PDT)
Received: by yenm12 with SMTP id m12so158152yen.35
	for <yocto@yoctoproject.org>; Tue, 14 Aug 2012 01:26:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=EDhU4NuMyJ1ODsyJniFU1nge4y8igo8s/Sf8c3c76o8=;
	b=lBBqxijgfoQhFLl2gWvr/3px7PB6qh1PrJpmSBlMfbvZlRR/33waw5rauPLXVncega
	KKBeWQDxO8ozEK36cDxO505xM5kjAncLKg+6kbLFx8bco55C5dQbkoXskAjWDXfH8lq8
	ag6plMP0t7StsNcyjtE735Igz5f1tXXRe8WqYFBAYndWX4i5webzPnTBOnrAjZFn/LEm
	Q12ioxXukmvwqkueN387NBJk/7JongkzNvYIBMtsJQkvFNB+4r/9N6jW5y3wlmiMS1lb
	zahoNlFZFBuVT8MtuMsT0b7SLNvy+P4Djl5LEg82ogIkhSvgE5O3jxmnfP/7pOG0gHSL
	+c+g==
Received: by 10.68.231.39 with SMTP id td7mr36517688pbc.3.1344932773835;
	Tue, 14 Aug 2012 01:26:13 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id mn9sm594730pbc.39.2012.08.14.01.26.11
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 14 Aug 2012 01:26:13 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <6047F1EE-6246-490D-BEC3-EE93F40439FE@gmail.com>
Date: Tue, 14 Aug 2012 12:26:08 +0400
Message-Id: <4A5B27D0-AF2F-4FBE-B1DC-FEB002F80B76@gmail.com>
References: <F1A84E50-21BF-4E9B-BC38-545D72F59A70@gmail.com>
	<50226D44.3070503@mindchasers.com>
	<CAEsOVNcYoCPaT-uRFw1tzggABncZAKL+U17fYkbi_fOgdJ5CtQ@mail.gmail.com>
	<5022CDAD.5020309@mindchasers.com>
	<CAEsOVNeyn9OQQvk-Z8V0eax5sjSSwHCkuDgd3yLu60VTsSqNSA@mail.gmail.com>
	<ADE9BE2D-CF83-4389-9262-B628780B1DD4@gmail.com>
	<AE25B08B-9B55-4EBA-B39B-2BE263109AA7@gmail.com>
	<E1905E17-0DE0-46BD-B6CF-CD5B87BE816C@gmail.com>
	<D5CC2FFB-E56B-41B1-BC70-9DFC41F54988@gmail.com>
	<CAMKF1soVRDxAQ86HPpPMEB9WL142HCWkOHVqXhGQSN9b4290UQ@mail.gmail.com>
	<651EC518-2C02-4A13-8AE7-0D118BCB3719@gmail.com>
	<CAMKF1sp5hQKC3fEd4TnXHnPMjPyEsCmWHOUuHdd4RLMZMZZb0w@mail.gmail.com>
	<50739671-4885-4C82-9360-C3376960B165@gmail.com>
	<3E8B6BA0-C1A9-4861-B1A1-F15BAAB7B3ED@gmail.com>
	<CAMKF1soQ3o7E6h86xbD9Wh8jCGzHEKmvzpwpYXKjePGcQe-+Yg@mail.gmail.com>
	<6047F1EE-6246-490D-BEC3-EE93F40439FE@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Unable to get serial console login prompt - PowerPC 440 Virtex 5 processor
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 14 Aug 2012 08:26:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,

On Aug 14, 2012, at 10:32 AM, Elvis Dowson wrote:

> Some things that I can try are:
>=20
> a. build gcc-4.6.3, eglibc-2.13, binutils-2.22 (from poky/denzil =
branch, to establish a known good build data point)

So gcc-4.6.3, eglibc-2.13, from poky/denzil branch also failed, the same =
as the poky/master branch with gcc-4.6.3, eglibc-2.13. So I guess the =
I'll need to do a diff between the Denx ELDK 5.2.1 release, which is =
based on poky/denzil, and that of the current poky/denzil branch to see =
which recipes are different, and to try and isolate the cause of the =
kernel panics, when trying to run init=3D/bash/sh.

Hopefully, that comparison will yield some clues.

Best regards,

Elvis Dowson=

