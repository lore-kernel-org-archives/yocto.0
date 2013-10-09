Return-Path: <trevor.woerner@linaro.org>
Received: from mail-ea0-f172.google.com (mail-ea0-f172.google.com
	[209.85.215.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1D572E016C8
	for <yocto@yoctoproject.org>; Wed,  9 Oct 2013 06:11:40 -0700 (PDT)
Received: by mail-ea0-f172.google.com with SMTP id r16so397836ead.17
	for <yocto@yoctoproject.org>; Wed, 09 Oct 2013 06:11:39 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:content-type;
	bh=khMzIae7Av9vf7l1osNTEAm95QgfmXqsFIA6XigSPKM=;
	b=esOsghd4gdEVr6Je7wSsad7zLFgmgMjG4XcQtuvz7dtCufTnNacdeNDRfuBEDqaCTH
	Pyqym/jqymYgRnSIhYh8vByA5RxkymN1UXZsdKVCxoh0yLze73mFck+HnPb2TT+mWSyY
	CXX1vOD6OB1puCxw/ogKwO6pkgp1bk97Srm6Mafz1CDkA3T9ES9irxHznt18jK4TdSO2
	gdy0KEZ27v6kyXBAX3MqEU4Ps6ZbQju+dtwnFPWTRbJmUfn29vR6KnbIf0o2s7LqyTwr
	tqvCMkCMHplvwqRJ/IKN9fjgEyQeqv3BW1OM7WqNiHaic+QAF6gfTWAEWeeXgd0bq1wr
	zF0g==
X-Gm-Message-State: ALoCoQklKsNkJPvXDbLOezpVUAOeUabFZ4MMpSXLFOzDbyW+sjaF68oS8h6LAG+RzwqFdBnb2LW3
MIME-Version: 1.0
X-Received: by 10.15.94.201 with SMTP id bb49mr11625634eeb.23.1381324299694;
	Wed, 09 Oct 2013 06:11:39 -0700 (PDT)
Received: by 10.14.117.67 with HTTP; Wed, 9 Oct 2013 06:11:39 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1310090638350.32355@oneiric>
References: <alpine.DEB.2.02.1310090638350.32355@oneiric>
Date: Wed, 9 Oct 2013 09:11:39 -0400
Message-ID: <CALmOhgnnFUp64O0BmPqA-AWazRdSqa8OJ10z7p4x1gYo_jNEvg@mail.gmail.com>
From: Trevor Woerner <trevor.woerner@linaro.org>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: clarification on what packages are *truly* needed for a yocto build?
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
X-List-Received-Date: Wed, 09 Oct 2013 13:11:41 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 9 October 2013 06:45, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> (for example, i would assume
> that, in any current distro, git would certainly be safe, no?)


The safety of a utility is only one consideration, feature-set is another.

