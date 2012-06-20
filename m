Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BB5EE00723
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 08:56:22 -0700 (PDT)
Received: by eaab16 with SMTP id b16so3162816eaa.35
	for <yocto@yoctoproject.org>; Wed, 20 Jun 2012 08:56:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=Pedw2FZJke3rnkD+WURajv3k4qILlm81DFJyObSTGKs=;
	b=sD0D2C399LTBZmuRZkXV6SK9nCOU4LiSA9URH1F/RiWFr3+mQeyL+jhDQPhECnOqj1
	fhkjwcqZAs3erRW50Kf1ybh7ZQEjsADrpHKF0E5QOd56mG2MM3/0AcPnGtoO/TD9r7ch
	7z8WIIGudhoq5avBVc+6p4230M+/zleHtXXnsc02w/S2rc5xMyi1uBoCQFvsFmfyIJ7v
	lvLJMZoQMpNVygUOmv6xuUwuKlkKFRfsJ2V87csUwPOPItKMvJCwtf4BaNn3OAHkPd4N
	U5ly/If0zC2asfO4U+6xZwhi3L1i1m3BpM3O46NUzlVPJOeV54rvXhWC6iw4whQTi3hI
	Jaqg==
Received: by 10.14.95.138 with SMTP id p10mr5389861eef.110.1340207781434; Wed,
	20 Jun 2012 08:56:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.219.71 with HTTP; Wed, 20 Jun 2012 08:55:51 -0700 (PDT)
In-Reply-To: <4FE1F0EB.9060806@linux.intel.com>
References: <E16513A01CAAFF40B65178C63CE45EEC1914D426@IRSMSX102.ger.corp.intel.com>
	<4FE109C4.1010906@linux.intel.com>
	<CAJTo0Lb3kD-LsZkAbgqkgN82E2wN61C5yEZBDu80D3VA1jzf5g@mail.gmail.com>
	<CAMKF1spPQ2nJqJPj7fG0rWKqQ1v0xZoahx03a8W66yXzKCcSsA@mail.gmail.com>
	<4FE1F0EB.9060806@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 20 Jun 2012 08:55:51 -0700
Message-ID: <CAMKF1srBqTWfaywsy+qtL668GcNEJqWDgTiykLqp34H48f_CXA@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: VERIFIED vs CLOSED in yocto bugzilla
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
X-List-Received-Date: Wed, 20 Jun 2012 15:56:22 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Jun 20, 2012 at 8:48 AM, Saul Wold <sgw@linux.intel.com> wrote:
> The bug verification is the responsibility of the submitter, not the
> assignee/owner.

ok, in some workflows verified is owned by testting/qa person, I was
assuming that
when testing validates the bug fix it sets the state to verified and
owner back to original
submitter.

what you describe then verified and closed are almost same in yocto's
bug flow so one
can be traded for other or different meaning assigned to say closed.

