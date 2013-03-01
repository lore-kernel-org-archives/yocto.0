Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f173.google.com (mail-ve0-f173.google.com
	[209.85.128.173]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 4E956E01456
	for <yocto@yoctoproject.org>; Fri,  1 Mar 2013 15:08:51 -0800 (PST)
Received: by mail-ve0-f173.google.com with SMTP id oz10so3376706veb.18
	for <yocto@yoctoproject.org>; Fri, 01 Mar 2013 15:08:50 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=mA3BlTIgtJ9NfITs4PhkpML7uqa1FEhGrDjIM6UMvFc=;
	b=nmlSMG6n7IA+fkhfutrRGg2L9IK2GuWNc29k/isXxT7BiYlU2n7StCajmah6SzxKxL
	x7hYPt53AHWx6UU2HvmAh8jS+/fhX+GcHz5se4q4Lo3ql5uT7MgbZPxI4bfehuUl3evK
	GaeWgXBi/hWy0EAv797POHACkIoa7JuZ0TGMiO3luxqWLNEs2+eM9Pmt/WRAf55ibgpA
	rt4Q1VUfm4iJVZ1ZyJXrFsaF1B8kI8f5gMQUhyOSdAbquQxfVepsgaoVXiLRZ01SZw+Q
	J0+KhHRdTkYOrBfw98m68rTqZTnMfZF3fv37tKOWjAzvZ2qIxSz7X1U4tDcW13FjDKeY
	mt8g==
X-Received: by 10.220.149.147 with SMTP id t19mr4665201vcv.36.1362179330373;
	Fri, 01 Mar 2013 15:08:50 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.219.195 with HTTP; Fri, 1 Mar 2013 15:08:30 -0800 (PST)
In-Reply-To: <20130301215324.GU3279@jama>
References: <7E680CB2A76BB8438D08CF13C09FC53A70EF1ED1@ORSMSX101.amr.corp.intel.com>
	<20130301215324.GU3279@jama>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 1 Mar 2013 23:08:30 +0000
Message-ID: <CAJTo0LZuw_va=yjLyRZ=mWCNMVDvwe0_fYB23ckbvuZ=irgqaA@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
X-Gm-Message-State: ALoCoQmzIEoIXi110o4NFhUE8SWw9azMKaCO1K14dWu4s3fvp93x0aMvODnIlr/F9NB35E7SuOm7
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Minutes: Yocto Project 1.4 M4 release readiness discussion
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
X-List-Received-Date: Fri, 01 Mar 2013 23:08:51 -0000
Content-Type: text/plain; charset=UTF-8

On 1 March 2013 21:53, Martin Jansa <martin.jansa@gmail.com> wrote:
> I think it would be good to finish discussion in thread
> [OE-core] RFE: make the init manager an image feature (again)
> and resolve systemd situation asap, otherwise we're risking
> meta-openembedded release or quality of such release.

I'm working on a series that implements roughly what I proposed
(systemd and sysvinit features not mutually exclusive, but no separate
-sysv or -systemd packages) and hope to have it on the list next week
- this week has been slow going as we've had a family cold do the
rounds.

Any contributions of coding are always welcome, obviously.

Ross

