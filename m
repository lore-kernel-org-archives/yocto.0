Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81853E0079B; Fri, 25 Jul 2014 05:45:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.49 listed in list.dnswl.org]
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8FE51E00736
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 05:45:07 -0700 (PDT)
Received: by mail-qa0-f49.google.com with SMTP id dc16so4489978qab.36
	for <yocto@yoctoproject.org>; Fri, 25 Jul 2014 05:45:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=s+bR1eezI70T8kIDHpIlJi9ORDPPh2ggJwKUdozx4BA=;
	b=lSCBtdNmQZzR7A/P0gR1+/n0WqFsRhCISqxE+2CmeUsIPzc6jveG0deOxjkLcV2OO3
	NyuWCxx857K1LFcGrvi7f84jglvRRsKPzSOdwbcW0b8XGW+PbqSRrojCZPifptZ+MmvF
	gGXWtX/Kb0U4xTp3xkD6QyuX1xLiUlC4AWtA/7dcTWQyZds4zvhKy+9K49tXaMcaUNvi
	6dzzoodqwBr0FkCjTsyEgSMdJu31Q2sDWqXxvq7oypOFMeGzX7dc0k665EKjv8Wl0/x0
	k5f3LwkFGQRpUiUriClp9ZCPDFPuxycuKgykMXhMbfXyPC7jPs2sDotagrm6QXYHuFZR
	OmlQ==
X-Gm-Message-State: ALoCoQmhDGbBQVp7pJdGqUcUEIkJqAufT79LBpDdz8sP09+Yw0Fm6ciSk7OyQdHJMU/oM7sjOhdo
X-Received: by 10.224.111.195 with SMTP id t3mr20052737qap.17.1406292307219;
	Fri, 25 Jul 2014 05:45:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Fri, 25 Jul 2014 05:44:47 -0700 (PDT)
In-Reply-To: <CAB0rWFmPk8Xgz1W-3iALbrJTa0-PUP1=yOMaqWQ70XXxANkTUQ@mail.gmail.com>
References: <loom.20140724T152609-283@post.gmane.org>
	<CAJTo0LYSeA7veq+3ROTU6zUh02Cn3M_7io=d6PxzTSvXj7KowA@mail.gmail.com>
	<CAB0rWFmPk8Xgz1W-3iALbrJTa0-PUP1=yOMaqWQ70XXxANkTUQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 25 Jul 2014 13:44:47 +0100
Message-ID: <CAJTo0Lb8T5F_aeEHsRyn81V6Fbq3879mpOFEfi+s6vj+6eAMRg@mail.gmail.com>
To: Anoop Babu <babu.anoop@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bitbake error for rpm-native -- do compile failed
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
X-List-Received-Date: Fri, 25 Jul 2014 12:45:14 -0000
Content-Type: text/plain; charset=UTF-8

On 25 July 2014 13:42, Anoop Babu <babu.anoop@gmail.com> wrote:
> My apologies for pushing all issues to yocto forum. Can you please let me
> know the meta-tizen  forum.

As far as I'm aware you'll have to email the maintainers directly.

> I had started bitbake procedure after cloning below mentioned repo
>
> git clone ssh://${YOUR_TIZEN_ID}@review.tizen.org:29418/scm/bb/meta-tizen
>
> Today did a fetch from tizen branch. I saw lot of changes being pulled in.
> But unfortunately the rpm-native compile issue did not goaway.

I can confirm that they re-introduced this bug, I've reported it to them.

Ross

