Return-Path: <davidsmoot@gmail.com>
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 375CEE005B4
	for <yocto@yoctoproject.org>; Tue,  6 Dec 2011 15:05:09 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by ggnv2 with SMTP id v2so9118598ggn.35
	for <yocto@yoctoproject.org>; Tue, 06 Dec 2011 15:05:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=content-type:mime-version:subject:from:in-reply-to:date
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=dCR5qH4jcb7N5fTISAIXVRI7S9WwrJKOxrekC15beBk=;
	b=O18oGdWArYvR/yH19lPX4AVJKFExcYVIEisvD+xNagaQct476oII+iX5Bpdki1lokl
	QPac1mh3SJxg2H1HLuqtyLaH1qvLwvJRpZ+oV5e3xt3uemAmFDxNBIHFu7kl2VgBAdGP
	KlyrHLdt7Q5bDn1fZGOLXvEnzYdrf2MME4vEA=
Received: by 10.236.161.103 with SMTP id v67mr23338849yhk.87.1323212708682;
	Tue, 06 Dec 2011 15:05:08 -0800 (PST)
Received: from [192.168.1.97] (70-139-182-143.lightspeed.hstntx.sbcglobal.net.
	[70.139.182.143])
	by mx.google.com with ESMTPS id 11sm53151265anp.13.2011.12.06.15.05.06
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 06 Dec 2011 15:05:07 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1084)
From: David Smoot <davidsmoot@gmail.com>
In-Reply-To: <1408073.zz37vY4uZy@helios>
Date: Tue, 6 Dec 2011 17:05:04 -0600
Message-Id: <D418456A-7191-4E3E-9924-9087484B4C87@gmail.com>
References: <1408073.zz37vY4uZy@helios>
To: yocto@yoctoproject.org
X-Mailer: Apple Mail (2.1084)
Subject: Re: Sanity tested distributions list
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
X-List-Received-Date: Tue, 06 Dec 2011 23:05:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

=20
On Dec 6, 2011, at 9:43 AM, Paul Eggleton wrote:

Hi all,

We had some discussions [1] [2] about this last cycle but I don't feel =
we=20
reached a proper conclusion on the list of tested distributions we want =
to set=20
(SANITY_TESTED_DISTROS) and I assume we want to support a few more =
distros=20
(latest versions of Fedora & Ubuntu, presumably?). I'd like to update =
and re-
post the patch [3] so we can close bug #1096 [4] but for that we need to =
agree=20
on the list.

Thanks,
Paul

[1] =
https://lists.yoctoproject.org/pipermail/yocto/2011-August/004699.html

[2] http://article.gmane.org/gmane.linux.embedded.poky/6959

[3] http://git.yoctoproject.org/cgit/cgit.cgi/poky-
contrib/log/?h=3Dpaule/sanity-distros

[4] http://bugzilla.pokylinux.org/show_bug.cgi?id=3D1096

--=20

Paul Eggleton
Intel Open Source Technology Centre
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

You may not be looking for anecdotal build data but I imagine I'm one of =
the few building on FC 16.

Through an unintentional upgrade (don't ask), I have built and tested =
the following combinations to boot on actual hardware built on a Fedora =
Core 16 host:

On a Routerstation Pro:
Core image minimal
Core image basic
Core image base (both USB Root file system and SD root file system)
demo-image-mediatomb (but mediatomb itself segfaults in initialization)

On a Beagleboard
Core Image Sato (with Linksys USB network adapter functioning)
demo-image-mediatomb (mediatomb does not segfault).

I'm having some trouble on the Atom platform but I think it is operator =
error, not host platform.

David



David Smoot
davidsmoot@gmail.com




