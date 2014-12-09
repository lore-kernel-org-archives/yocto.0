Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6DE16E0095D; Tue,  9 Dec 2014 10:07:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
Received: from mail-vc0-f179.google.com (mail-vc0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24D02E0083A
	for <yocto@yoctoproject.org>; Tue,  9 Dec 2014 10:07:10 -0800 (PST)
Received: by mail-vc0-f179.google.com with SMTP id le20so562600vcb.10
	for <yocto@yoctoproject.org>; Tue, 09 Dec 2014 10:07:10 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=QogojTuQ1k7XbCa2lk/jSsuQcEHiyluD7wMkrwfRtuA=;
	b=KfRizxS6nB9vSOdS/puj6atN3Ot6DRhfPJLcC1PBfsy6Vnk+ajAh3OfhM/+ILkEFbB
	iowYX9oC76FQtlJlaoDPMBLAoVxojm0zaNQU90OOeiBG08+yBmctCbSJ4vP3O6y0DpGt
	zOS5Rxd8J/T2oDPsI5Nvmuh+0y6JZV8RXRPYTka0zWNPxxnweIcZPQ8Ah6JrI29U8VlI
	qp4YTPhGoxfw5lrqwphGirfj0E8JMz67x4aGN1GCz1x2/t9emsGptME88KTx2pmwAfVn
	ZnRr6wi+PJkkGCD2QZrmr+XuAGhkBe9BlLJ+kNglb170yq7waEdqcz+6dhsgaP9/OgVH
	qYUw==
X-Gm-Message-State: ALoCoQmpmYSCf+jn4zVfmKq/hHS9RodRX9s157kEqPwD55sinW93n9VJIei7RTOkXVmYN+VJUUWm
MIME-Version: 1.0
X-Received: by 10.220.3.71 with SMTP id 7mr1821622vcm.56.1418148430005; Tue,
	09 Dec 2014 10:07:10 -0800 (PST)
Received: by 10.52.244.44 with HTTP; Tue, 9 Dec 2014 10:07:09 -0800 (PST)
In-Reply-To: <CAJ2CSBtOSTYuXDyn885Z2o-h05Rob-R2Q6CB85BEJVbXhtcdjw@mail.gmail.com>
References: <CAJ2CSBtOSTYuXDyn885Z2o-h05Rob-R2Q6CB85BEJVbXhtcdjw@mail.gmail.com>
Date: Tue, 9 Dec 2014 10:07:09 -0800
Message-ID: <CAPhnLPAJhemtHnbRQcfQrJc--xjgqS47MkA96YPKFwaBueYM0w@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Damian, Alexandru" <alexandru.damian@intel.com>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	Paul Eggleton <paul.eggleton@linux.intel.com>
Subject: Re: RFC - enable toaster on the autobuilder
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
X-List-Received-Date: Tue, 09 Dec 2014 18:07:25 -0000
Content-Type: text/plain; charset=UTF-8

A few initial comments.

TOASTER_UPLOADURL needs to be added to
config/autobuilder.conf.example. It would also be nice if it was added
to docs. Please set it to a localhost URL and comment it out for the
time being.

Also, can we make it TOASTER_UPLOAD_URL. It matches my naming
convention for config strings a bit closer.

If toaster needs buildhistory, I'm going to have to do some work on
getting buildhistory to setup automatically on an autobuilder install
(or at least document how to do it).

-b

On Tue, Dec 9, 2014 at 8:42 AM, Damian, Alexandru
<alexandru.damian@intel.com> wrote:
> Hello,
>
> I'm sending a patchset to enable Toaster logging for the autobuilder - can
> you please review and comment ?
>
> I have pending Bitbake patchset (poky-contrib:adamian/devel-settings)
> Bitbake that adds two toaster-on-autobuilder related features:
> 1. build event logging flag (-w) will write an UI event log file
> 2. toaster end point that receives a log file over a HTTP POST request and
> loads the data in the toaster database
>
> Based on this approach, I've created an autobuilder patchset that enables 1.
> at all times, and 2. uploads the data to a Toaster server if such server is
> specified in the build configuration
>
> Can you please review:
>
> poky-contrib: adamian/autobuilder-enable-toaster
>
>
> Thanks,
> Alex
>
> --
> Alex Damian
> Yocto Project
> SSG / OTC
>
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

