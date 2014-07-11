Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5DE7EE00342; Fri, 11 Jul 2014 12:19:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qc0-f182.google.com (mail-qc0-f182.google.com
	[209.85.216.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1FD1CE002F9
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 12:19:49 -0700 (PDT)
Received: by mail-qc0-f182.google.com with SMTP id r5so587949qcx.41
	for <yocto@yoctoproject.org>; Fri, 11 Jul 2014 12:19:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=PMrTNvGiORd9yDI5iNEp5fsJSMUiftbCWbaKtH+7wPo=;
	b=B3a3Xgp2z4aoaQDEPPt4uclnWl/mGQ9xp/qf5q8rhBapaubSdJkdnoxD1OrGiP1jA5
	J2H+Sx7bWTd2vbkGNPD9hsGY9rD1XmK5KQkGNf9hJscWO/UYx3Bhs2++3pj76VCqiU98
	k2hULpSCc69ktS+sS28PQtf1ws02gfp87NPdtYDn/iJsRiBmwhnNxXSSa530WuQ5J5nb
	mhb1x2osOjy5Fp3HWU5mBmDrEkdV5hlyOJRUKxzYHy6/idTMbXW2/ECdBzn3gWI+yB77
	WLcNFlGHkFbwdLg+OVGZiGb462NhJNde/pbcR4TIsDO7HCGKQRmKwAGgZCpZVk+TNVE5
	yaig==
X-Gm-Message-State: ALoCoQmeNp2TRDdVXlu/z2xWgoCd9vCK4tqfKGqgKpvjD+nheteRngJTxGt4smaWr08YxwhAoeGU
X-Received: by 10.140.81.209 with SMTP id f75mr1513552qgd.60.1405106388765;
	Fri, 11 Jul 2014 12:19:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.99 with HTTP; Fri, 11 Jul 2014 12:19:28 -0700 (PDT)
In-Reply-To: <CAF_dkJDiZopad1JGwpk-JJPoQFtOpB1PenH2MWAcSj5nqCP0Ng@mail.gmail.com>
References: <CAF_dkJC121L=5shvVvOebHJRodDRRrRqNxo1dBvbgCVP2bLrCQ@mail.gmail.com>
	<CAF_dkJDiZopad1JGwpk-JJPoQFtOpB1PenH2MWAcSj5nqCP0Ng@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 11 Jul 2014 20:19:28 +0100
Message-ID: <CAJTo0LZHs4jN7=9N+25pRm8uRR80snV4oH_mVegbx1gOmzPcYw@mail.gmail.com>
To: Patrick Doyle <wpdster@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Is it possible to prevent a package from updating the shared state cache?
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
X-List-Received-Date: Fri, 11 Jul 2014 19:19:53 -0000
Content-Type: text/plain; charset=UTF-8

On 11 July 2014 17:00, Patrick Doyle <wpdster@gmail.com> wrote:
> (I
> wanted to build from a different bzr repository and didn't want to
> "contaminate" my sstate cache, or even worse, confuse it with a
> different version of revsion 1234 from the other repository)

Ouch, I'd forgotten that bzr revisions were not unique.  Is there a
way of making revisions globally unique, and should we switch the
packages to use those instead of local revisions?

Ross

