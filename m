Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA1FEE01567
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 23:33:05 -0700 (PDT)
Received: by mail-ve0-f179.google.com with SMTP id d10so6362246vea.38
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 23:33:04 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=EhtERAgki4NZ7Hxtd4NouqfWTA9Ksn2oopcKfn+eW9c=;
	b=PRmfwDj1OaMGPybMV6v6jYUOm1w1wWO1ZWmaM0I0CPr9ElnDCh5YDv+SHHBXEcNOeE
	ksrYW8J7qF7qefRVBegxvcRnwMTRWz+dh4EkGv+YMV5D6buuiztijDeLNt28Uyq7juNd
	IJCjdvM/OEKKl7sxqcsmD1tS9czEH7TL0d3AO8aSi4UxmnCEgXBb5+yQZF0fRDM6QNsd
	VK+EDQi8CnvpxjpogMedMnkewdAofMES4MNSHXQumKbXwL/MxcGiL4rYvfWwAatxRYRD
	W1YCC7thQb3q5qbKXi3LgKpIFv6O4MwhBJ/H4OmQfgUbhACassx6Wd36lj/qBl0FxvUD
	vI/g==
MIME-Version: 1.0
X-Received: by 10.52.0.130 with SMTP id 2mr7779324vde.97.1371018784832; Tue,
	11 Jun 2013 23:33:04 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Tue, 11 Jun 2013 23:33:04 -0700 (PDT)
In-Reply-To: <CAPhnLPBgTbb2m+L=DSr9p8ta7gm5OsR2-N4OeXkoo31_YHTx4A@mail.gmail.com>
References: <CAPhnLPBgTbb2m+L=DSr9p8ta7gm5OsR2-N4OeXkoo31_YHTx4A@mail.gmail.com>
Date: Tue, 11 Jun 2013 23:33:04 -0700
Message-ID: <CAPhnLPCzaAVuvYVL6Nxaa4guH5nyNN4ME6KFkJNvo4+zW=Cvuw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, Zhao Yi <yi.zhao@windriver.com>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>
X-Gm-Message-State: ALoCoQmflT0F0cp/r59UaHTKNDVv4GG4p2l+UOxDJ4vUStxtWhUYfJwYRMdCpNZzgpfH/NzgQ2s/
Subject: Re: 1.4.1 rc1 available for testing
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
X-List-Received-Date: Wed, 12 Jun 2013 06:33:06 -0000
Content-Type: text/plain; charset=ISO-8859-1

Folks....

We're going to respin this due to some autobuilder issues. I'll send
out a mail in a bit to update you on the status/location. If you've
begun testing, please stop and wait for this build.

-b

On Tue, Jun 11, 2013 at 6:15 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> All, we've begun a spin of 1.4.1. This is the first release candidate.
> Unfortunately, a minor issue has occurred with the eclipse-plugin, so
> that will have to be rebuilt once the build run ends (as we may have
> to bring the buildbot slave down to fix it)
>
> The artifacts should be available in a few hours. Please begin testing
> as they are available.
>
> Location: http://autobuilder.yoctoproject.org/pub/nightly/20130611-2
>
> meta-fsl-arm    d31a4e85673874dbc6b42bb5d1e8496810c574cc
> meta-fsl-ppc    51252492cdda18eb3838b1c3108217a59243ba2a
> meta-intel      048def7bae8e3e1a11c91f5071f99bdcf8e6dd16
> meta-minnow     0d428f867ffdf83dd35803c7318180751ddb096f
> meta-qt3        4c27cce6688aa39852f3cba5e7b80ec279019605
> poky    73f103bf9b2cdf985464dc53bf4f1cfd71d4531f
>
> I'll have the eclipse-plugin hash when we build it out.
>
> -b
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

