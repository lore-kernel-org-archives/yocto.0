Return-Path: <ross.burton@intel.com>
Received: from mail-qa0-f52.google.com (mail-qa0-f52.google.com
	[209.85.216.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C622E006AD
	for <yocto@yoctoproject.org>; Fri,  7 Feb 2014 02:08:57 -0800 (PST)
Received: by mail-qa0-f52.google.com with SMTP id j15so4812788qaq.39
	for <yocto@yoctoproject.org>; Fri, 07 Feb 2014 02:08:55 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=2DuzKkjLlLTt4cnKzHid4YvJ/0MlfZggxwH9pDz454w=;
	b=NCO3efaHv5twYdFax15VcjizqCUNYmIkEqnz7uFwi/x4iItziG39tzz8eDXFRBcIIr
	0f++jQjO62baqjKLD7Vhiab7A/ojoychfOsuZ6c4AXNsop53wnIEbqPCigPNs+AVyk0W
	RSJH1ujBTpYbDqsuKnosWTf0oN2IhxAiaJw4qIr2kVPSiIvWiyGrkdkOqfY5a6+R1UYJ
	dFS1j7T2cAW2OZ9gEI8B+OnaCLPC7otvWPg7Z9Yc0H1MNMHUJ6PGE6056ctydBML/Wkh
	lOR540hhHc94p88l3h8S2kMWSK1AVxRKKxa+Y3gywU4lawKzXJWrOmgz2jI90PwvIEo7
	5RVQ==
X-Gm-Message-State: ALoCoQkA7BP/cEFACTqVyNcK0K46mEQpSuh2Jexf3FbGTT4t33xUekMgW+Ckw3ZtM5acMKXd1bXu
X-Received: by 10.229.193.136 with SMTP id du8mr3166523qcb.11.1391767733220;
	Fri, 07 Feb 2014 02:08:53 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Fri, 7 Feb 2014 02:08:33 -0800 (PST)
In-Reply-To: <1391766483.4155.33.camel@sestows129.enea.se>
References: <1391766483.4155.33.camel@sestows129.enea.se>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 7 Feb 2014 10:08:33 +0000
Message-ID: <CAJTo0LbQ4Yo5x64TtkA2vgWw8eTDNq=+S3BevpVEuuAo-s072A@mail.gmail.com>
To: Adrian Dudau <Adrian.Dudau@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: release branches and package upgrades
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
X-List-Received-Date: Fri, 07 Feb 2014 10:09:05 -0000
Content-Type: text/plain; charset=UTF-8

On 7 February 2014 09:47, Adrian Dudau <Adrian.Dudau@enea.com> wrote:
> I would like to understand Yocto Project's policy on the
> release/maintenance branches (dora,dylan etc). My understanding was that
> these were considered stable branches and only bugfixes and general
> fixes that would not affect functionality were merged onto them.
>
> However, lately, we identified patches that upgrade package versions and
> introduced some problems in our distro. We had a hard time identifying
> the source of these problems, since we expected the maintenance branch
> not to change in this way.
>
> Here are a couple of these patches as example in poky/dora branch:
> 50574e41b882c3f2633f69486593eaea54d8e554
> 63335c87c1904287cdd5fd28d0ad6a73e985f2a4
>
> My question is: are patches like these normal and should we expect to
> get version upgrades for packages on the maintenance branches as well?

Your understanding of the policy is correct.  Version upgrades have
happened in exceptional circumstances (say, a security fix which is
very hard to backport).  Robert should explain the rationale for those
upgrades.

Ross

