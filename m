Return-Path: <joe@deserted.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 203FDE00B74; Thu, 29 May 2014 05:13:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.172 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-ie0-f172.google.com (unknown [209.85.223.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7D56E00B6A
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 05:12:53 -0700 (PDT)
Received: by mail-ie0-f172.google.com with SMTP id tp5so180970ieb.3
	for <yocto@yoctoproject.org>; Thu, 29 May 2014 05:12:52 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=Cfho8biqLuLrwfQxfxlZLTYWhqQT44x03ebkC7xnOwc=;
	b=lQ0HsfZ3DC/0ZLgPI+ywuvtlpQ5nE23NnsNTFQbTw+hwsjMf3J2dEKiEpMk+kVmOLU
	r/v8nch5SMf640CIVY4FXQWQNJ8Rx4ukZ3VgW7b1tW/njbPt49ZY0J1QPVRiNXmzwgg7
	MEoAog0giszdBLt0A7zDuOnQzuq8LleSWGk0BcG42LMz4XAflOEOYrTOSjF4lX1Qkrl9
	ZmPAj7Wa2ZJP59HB+ZBJxzcGGFEsJ4O953WV9X5EjiKSKrk6kOaPnCLRw6d/SY/5rOoF
	w9hYecIiWDqaSM9aUl2kU8uTm1mYPjNaZrLsCId8YgGskgU8uhIY/PfRHYIQC8MsQlne
	M9GA==
X-Gm-Message-State: ALoCoQlENICdOzyJwmB22O6ASqX4achOOW66j5Y4aNsDf/HhGAG1+kU4zbw/aK2M/CdVP37urWWa
MIME-Version: 1.0
X-Received: by 10.50.46.100 with SMTP id u4mr9735808igm.23.1401365572871; Thu,
	29 May 2014 05:12:52 -0700 (PDT)
Received: by 10.42.81.130 with HTTP; Thu, 29 May 2014 05:12:52 -0700 (PDT)
In-Reply-To: <DDB0C57E45663A458C5CACB7B5688BC21D6A4280@SESTOEX04.enea.se>
References: <1401329473-23967-1-git-send-email-joe@deserted.net>
	<DDB0C57E45663A458C5CACB7B5688BC21D6A4280@SESTOEX04.enea.se>
Date: Thu, 29 May 2014 08:12:52 -0400
Message-ID: <CANBf+V3PXYAd3RKew8h4ej61MzRVDV8X78Lhtc6OT8Z0oGjXGw@mail.gmail.com>
From: Joe MacDonald <joe@deserted.net>
To: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Daniel Bornaz <Daniel.Bornaz@enea.com>
Subject: Re: [meta-cgl][PATCH 0/2] cosmetic updates
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
X-List-Received-Date: Thu, 29 May 2014 12:13:01 -0000
Content-Type: text/plain; charset=UTF-8

Hey Alex,

On Thu, May 29, 2014 at 7:02 AM, Alexandru Vaduva
<Alexandru.Vaduva@enea.com> wrote:
> For the moment we are preparing a release for Enea Linux, and we are fully booked.
> After the release we will try to make all the needed steps for the meta-cgl layer:
> That means proper information about the layers, maintainers and put in place all the needed procedures.
> All this information will be made publically available.
>
> Thanks for your interest Joe, I personally agree with your suggestions, hope to continue the collaboration.

Okay.  So should I interpret that to mean that you're not currently
interested in patches against the meta-cgl layer at
git://git.enea.com/linux/meta-cgl?  I understand the realities of
scheduling a release of a Linux distro, but if you are still able to
collect and discuss / merge changes, I'll continue to kick the tires a
bit.

-J.

>
>
> Alex
>
> -----Original Message-----
> From: Joe MacDonald [mailto:joe@deserted.net]
> Sent: Thursday, May 29, 2014 5:11 AM
> To: Valentin Cobelea; Alexandru Vaduva
> Cc: yocto@yoctoproject.org
> Subject: [meta-cgl][PATCH 0/2] cosmetic updates
>
> I'm just taking a look now at meta-cgl and gearing up to do some submissions to it.  I've been working from:
>
>    git://git.enea.com/linux/meta-cgl
>
> which hasn't seen much activity recently, but it seems to still be the authoritative source.  I apologize if I'm working from an out-of-date tree.
>
> For starters, if I could make a request, any chance we could get the README file updated with instructions on where you'd like to see patches go, so I don't unnecessarily spam the list?  :-)
>
> -J.



-- 
Joe MacDonald
:wq

