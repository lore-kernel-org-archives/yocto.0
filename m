Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f182.google.com (mail-we0-f182.google.com
	[74.125.82.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C401BE01472
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 04:44:33 -0700 (PDT)
Received: by mail-we0-f182.google.com with SMTP id r46so1246045wey.27
	for <yocto@yoctoproject.org>; Fri, 03 May 2013 04:44:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=pu37dVFKQegXbmjZSbfIlHgIdrwm6oLlNagmUm4UYOI=;
	b=lgyq9AAnQurdinvH8LC7PVafMYHACj0qSMAiy5qG6AZbG0DqQsPLyOY6+acZA7mheP
	kPLJF3HwVvD5PVE1DY+498AsSjyEDLA9brFxbJnLQr64kYBZvDlS2WIFv9dTNnPYmpil
	R/KFJBp/3frB2+AwXxpuSTJdhV0U8JlggZLzws6wGpg3t22p6lgA2yJHy4FrP74/WDAq
	KT5vLhqeuhBrUXNun96wK6WU3dPrBLWGSm0eSjy1uZwbQMk1c+TWtxhcDJ7J8aQx7OYI
	jKfF3p391s834D8jihEEHcbypp9Yj4GBbgD6weA0E8BDUYDTQzPHSQp8dgtJ9Xru6g7s
	U9mA==
MIME-Version: 1.0
X-Received: by 10.194.109.227 with SMTP id hv3mr13211558wjb.32.1367581224132; 
	Fri, 03 May 2013 04:40:24 -0700 (PDT)
Received: by 10.194.5.132 with HTTP; Fri, 3 May 2013 04:40:24 -0700 (PDT)
In-Reply-To: <2435942.LYTrJQCOfG@helios>
References: <5181AF9F.8040702@gmail.com> <1370035.2iCAacKgHz@helios>
	<CAE_REAsbEPTn_x6bwJgUe2sXci_KEwCJA+E4R9Lx6QFwO4-nDw@mail.gmail.com>
	<2435942.LYTrJQCOfG@helios>
Date: Fri, 3 May 2013 07:40:24 -0400
Message-ID: <CAHUNapTFABWCNOLf4=iiBuTEMtxim-KZAbMVbstW+u3925X_8Q@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: bash specific syntax in bbclass files
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
X-List-Received-Date: Fri, 03 May 2013 11:44:34 -0000
Content-Type: text/plain; charset=ISO-8859-1

If every other distribution, over the next year, switched to python-3
as their default, but (instead of updating) future versions of Ubuntu
installed a symlink called python-3 pointing back to python-2, would
that hold back Yocto from adopting python-3-isms too?

It's sad how Ubuntu has so effectively killed the adoption of all
features of bash (the default shell on many Linux distributions)
introduced in the last 10 years by masquerading their crippled shell
as "bash". And it's even sadder to see how so many projects, in
response, have simply said "let's write all our shell scripts in
original Bourne shell syntax" as a result.



Disclaimer: I didn't write the shell code in question, so please don't
assume I'm "taking this personally". I'm just making a general
observation.

