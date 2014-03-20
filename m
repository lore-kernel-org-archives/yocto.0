Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F1EDE00B3D
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 14:53:47 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id pa12so1693120veb.1
	for <yocto@yoctoproject.org>; Thu, 20 Mar 2014 14:53:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=3c/Wkk4OGA1LQKdCfDFIGuGV0cdB2PzPqaX/XAggfNc=;
	b=AUf63aYjqp9XD6+FByEOXWObgY1qVbd5E5B1AV5Abgex28YipPUl1aN78FKc3zYuW1
	1ZPGM5EgC6KPadqxzoQDgv65TDMJwj3r0w32PREckggTrt619my99UN1RjQAzKnTvGL3
	7Tg4txotgKA2gz9RPIzVgRoyGWDTqJIsB55xE/fSr8Yz0D9FV6WHrSlE9XMJDtQ03jdk
	CniT9I86cbD62c4YojO9LWD3SowcErM2H9dckBUoIymHk23F845OAl0dGWTFWfBPoSSz
	sp/ZH2hr7sULd6ug0JHMffSxSQEznwCQ2epNfzEn6ly/sAjUafLPUgw4SIPuUJrjkQLa
	5QdA==
X-Gm-Message-State: ALoCoQmwBf1PZgeeBs3F1LpsabuGekeYCtrg972TjW3/aY42bS6p5ve0k3iwFirwN9Y2gfztyOed
MIME-Version: 1.0
X-Received: by 10.58.122.164 with SMTP id lt4mr35183105veb.2.1395352426980;
	Thu, 20 Mar 2014 14:53:46 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Thu, 20 Mar 2014 14:53:46 -0700 (PDT)
In-Reply-To: <CAJTo0Lb0ZGFDErQWzp=mhGJmk9u=UxHbj-K=wEW0pGyxOhqhWg@mail.gmail.com>
References: <cover.1395261635.git.elizabeth.flanagan@intel.com>
	<15d3c57733e746090eb65ea218b2f85435d0972d.1395261635.git.elizabeth.flanagan@intel.com>
	<CAJTo0Lb0ZGFDErQWzp=mhGJmk9u=UxHbj-K=wEW0pGyxOhqhWg@mail.gmail.com>
Date: Thu, 20 Mar 2014 14:53:46 -0700
Message-ID: <CAPhnLPC4-vffcNMArDAEtsTzt-JAPYm-SADPUAbWz0cVLypiOQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [AB PATCH 02/22] yoctogit.py: Fix cp construction from source to build
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
X-List-Received-Date: Thu, 20 Mar 2014 21:53:48 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 20, 2014 at 7:29 AM, Burton, Ross <ross.burton@intel.com> wrote:
> On 19 March 2014 20:51, Elizabeth Flanagan <elizabeth.flanagan@intel.com> wrote:
>> +        if "poky" in self.layername or \
>> +           "oecore" in self.layername or \
>> +           "eclipse" in self.layername:
>
> Do you actually need to do substring comparisons (in vs is) there?  I
> suspect not, so I prefer this idiom as it involves less repetition:
>
> if self.layername in ('poky', 'oecore', 'eclipse')

In this case, yeah, we need a substring comparision, as we need to
support the layer being named eclipse-poky-<branch-name> and
poky/poky-contrib. We need to eventually figure out a better, more
standardized way of indicating the base layer, but until we do and
propagate that change out (as it changes configs), doing it this way
both supports the way people have come to understand what "base" is.

-b

>
> Ross
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

