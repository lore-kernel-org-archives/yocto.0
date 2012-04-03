Return-Path: <b.hutchman@gmail.com>
Received: from mail-bk0-f48.google.com (mail-bk0-f48.google.com
	[209.85.214.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48226E0044D
	for <yocto@yoctoproject.org>; Tue,  3 Apr 2012 10:34:22 -0700 (PDT)
Received: by bkcji17 with SMTP id ji17so4979534bkc.35
	for <yocto@yoctoproject.org>; Tue, 03 Apr 2012 10:34:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+XlYuFJv+K0s84UPWqgs8Tl+Xhdp/Zoj2RN1CpAbkfQ=;
	b=GljfHcvVgle3tRy2t3MHcJ8Czsdtgdsk6CCYxdMnZgJU1/A6ethiJkAySlFI1huxvw
	ReUF609HIUwrcO17Qejo1hZZFQdGqohwFgPerLDGKPlY58AW1XHxPW2MDtB+PV5YRmJY
	L86qBrr42cEa2RsMU+EWQr+BZYSeluY9dSc6d5Mu5Id1oBAlALmVqRLQ2MzLcV6kgXhe
	zuFY2Sj9aeNzEfhsEZJKnTqZLBv84z/dEU+GXIcPYT7Wt9urQa/WXiXdZ/6qKyMbTJus
	ghwzXxmt2Ny17ZR7ASFIuvymeuw9I4BH3n8DRIorsplZu5wIT5kYGjV5aw1UuHM72BvT
	Lp3g==
MIME-Version: 1.0
Received: by 10.204.148.89 with SMTP id o25mr5878996bkv.52.1333474461058; Tue,
	03 Apr 2012 10:34:21 -0700 (PDT)
Received: by 10.204.130.209 with HTTP; Tue, 3 Apr 2012 10:34:20 -0700 (PDT)
In-Reply-To: <CABcZANnBGC_uhsO0aE-U3s8QjYGP+1JDupdqoTPW=XpNcOEcFA@mail.gmail.com>
References: <95AC7E09-D28F-46CE-A49B-30719BB50B1B@dominion.thruhere.net>
	<4F765C0D.4000902@linux.intel.com>
	<8986DA27-376D-447E-A9CF-5BEF1B309961@dominion.thruhere.net>
	<4F766B84.9080505@linux.intel.com>
	<20120402171356.GE4829@bill-the-cat>
	<4F7B1EBD.1030500@linux.intel.com>
	<20120403162541.GB3943@jama.jama.net>
	<4F7B261B.1090101@linux.intel.com>
	<20120403164432.GC3943@jama.jama.net>
	<4F7B2E9C.7040600@linux.intel.com>
	<20120403171540.GF4816@bill-the-cat>
	<CABcZANnBGC_uhsO0aE-U3s8QjYGP+1JDupdqoTPW=XpNcOEcFA@mail.gmail.com>
Date: Tue, 3 Apr 2012 13:34:20 -0400
Message-ID: <CAFZh4h947zMXK54SdSiHKFdo3eNXuCQtm3Wjk2g+t4zTBLbesw@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
To: Chris Larson <clarson@kergoth.com>
Cc: yocto@yoctoproject.org, Darren Hart <dvhart@linux.intel.com>
Subject: Re: Moving angstrom under the yocto banner
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
X-List-Received-Date: Tue, 03 Apr 2012 17:34:22 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 3, 2012 at 1:26 PM, Chris Larson <clarson@kergoth.com> wrote:
> I really don't see what the issue is here. If you want a stable
> branch, we can look into creating such a thing upstream, though I'm
> personally of the opinion that master should remain release-quality,
> and make better use of feature branches, potentially a
> next/integration branch for forthcoming features, than trying to
> cherry pick onto a "stable" branch. There's nothing poky's structure
> provides that can't also be provided via branching policy in the
> individual repositories.

I like what Chris said.  I vote for this.  It is standard SCM
practice.  All development goes on in a branch.  Integration on
another branch.  When good enough, it is merged to master and tagged
as a milestone release.

Regards,

Brian

