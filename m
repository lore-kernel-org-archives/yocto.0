Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f180.google.com (mail-ve0-f180.google.com
	[209.85.128.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D347CE00B90
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 14:30:50 -0700 (PDT)
Received: by mail-ve0-f180.google.com with SMTP id jz11so3012329veb.39
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 14:30:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=6q3cwhPmsjHssB8XVps9GwPo2uyBryUmbTHLq2c8LTE=;
	b=LYElacpaZ9uoI74ad2MlsHpBwfkZF415jmG1lFdL2O69bwWc+rdP96KEWjGo0CbvEc
	gDEgutOsTdcVZG4MDnpAFG9itGe2Zod2TQcEaDLAQVtDEkzVrADLwu422HijpsQI7ZK2
	NtTy9BrJVRQfGa2FlcQSY//f7vXBQGpscVJNbEKvdRrr2ABAjaN5MYzwQS1A1xyQaGqW
	9wDLGEF+t8uTq7Dk8wJ5Z9HF2dPMFAHiNJ/q5tZQVv+rnLsl+EpfcHwd8A6ot0fE88Oa
	gT1FFEyMQRtJff7xOiw14C/9CQrh9sV918Kdh3pnLFYGuSdhSJ1ahQSfdL/73xeYtIFw
	FK0g==
X-Gm-Message-State: ALoCoQl2k4pBfAd1U4d8h7SStRRbkh/K8pb/FA5zJrD/qU1TbhY1ijym7VsrCEjfqq7a6EXW9K6X
MIME-Version: 1.0
X-Received: by 10.220.95.139 with SMTP id d11mr14063777vcn.21.1395869449970;
	Wed, 26 Mar 2014 14:30:49 -0700 (PDT)
Received: by 10.52.173.69 with HTTP; Wed, 26 Mar 2014 14:30:49 -0700 (PDT)
In-Reply-To: <CAP9ODKqAh9Jb2E8DyBFQuwe91ndAGF5zJr1VAHKdfK=SrRxdDQ@mail.gmail.com>
References: <CAPhnLPAJy5Lxbxfrh_RV-fOeoEyaXy8jZR6go2VdP=unHToFPw@mail.gmail.com>
	<CAP9ODKqAh9Jb2E8DyBFQuwe91ndAGF5zJr1VAHKdfK=SrRxdDQ@mail.gmail.com>
Date: Wed, 26 Mar 2014 14:30:49 -0700
Message-ID: <CAPhnLPDwbCTBNg4aPHqYpakMwEz-wCyBYD-fr_ap97JC1fDWfg@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Otavio Salvador <otavio@ossystems.com.br>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Reducing nightly/release build artifacts.
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
X-List-Received-Date: Wed, 26 Mar 2014 21:30:54 -0000
Content-Type: text/plain; charset=ISO-8859-1

A list of exactly what files you use for QA would be grand.

We can use http://autobuilder.yoctoproject.org/pub/nightly/20140326-1/
as our base.

-b

On Wed, Mar 26, 2014 at 2:22 PM, Otavio Salvador
<otavio@ossystems.com.br> wrote:
> Hello Beth,
>
> On Wed, Mar 26, 2014 at 6:14 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
>> I'd like to start looking at reducing the number of artifacts we're
>> releasing both for our nightly builds (which is at 250,000 artifacts
>> and .25 TB!) and releases.
>>
>> What I'm thinking is this:
>>
>> Reduce nightly:
>> - Reduce ADT-REPO to just qemu* arches for all builds
>> - If every QA team could provide me a list of what files they actually
>> need I could reduce the published artifacts to *just* what is needed.
>>
>> Reduce releases:
>> - Reduce ADT-REPO to just qemu
>> - Don't release ipk/rpm/debs. Continue to release ipks through ADT
>> - Don't release machines outside of BSP tarball /binary directory
>>
>> If folks who do QA could get me a list of all the files they use, we
>> can start removing excess artifacts. I know this is a balance, but I'd
>> really like us to start targeting our release artifacts to just the
>> things we need.
>
> I fully agree on that.
>
> Is there anything you need specifically from me?
>
> --
> Otavio Salvador                             O.S. Systems
> http://www.ossystems.com.br        http://code.ossystems.com.br
> Mobile: +55 (53) 9981-7854            Mobile: +1 (347) 903-9750



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

