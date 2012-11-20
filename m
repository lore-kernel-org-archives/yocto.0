Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A88F5E0141C
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 06:56:34 -0800 (PST)
Received: from mail-ia0-f200.google.com ([209.85.210.200])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 20 Nov 2012 06:56:33 -0800
Received: by mail-ia0-f200.google.com with SMTP id x26so12832399iak.11
	for <yocto@yoctoproject.org>; Tue, 20 Nov 2012 06:56:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=dbCttamXKtucNf+qVBCC2nlGR/sg4JTDuRRfY/fx2oQ=;
	b=MJwkaw7FnAIVWN9cF355OrMdcq6U2nTtudB7eWtE3FQNLHoQ+gGXtDV/yKcfX5/6/L
	o5ujrKe78BNeWzxF55NJB8ZnamD72QrjaRz1AbfrG0nv3BKSFPxlDbmY89Mg6uBJAdna
	S4DuIROQMmOs+mx55Os/YSbnGgq9WUR2PKzCfD4AQxJ0uSWWYuZRBLlA7h+MV4Vanm2W
	2f/NlYDR3+PFACr1d6mjmTqu7ZVYUj7qTsGZY8sSiKzl5DR+XTViKMERqMeoVvwbJLu5
	3oSR2vnKk2E70dqGlJ2f3xIeD7rWCmG6WvxUJnM8Et/8VQynQCznEiPNGK7JHopvzJiu
	nyVA==
Received: by 10.50.5.236 with SMTP id v12mr10424493igv.6.1353423392468;
	Tue, 20 Nov 2012 06:56:32 -0800 (PST)
Received: by 10.50.5.236 with SMTP id v12mr10424487igv.6.1353423392322; Tue,
	20 Nov 2012 06:56:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.58.197 with HTTP; Tue, 20 Nov 2012 06:56:09 -0800 (PST)
In-Reply-To: <1433587.ZVlnfl7M25@helios>
References: <cover.1353354792.git.kevin.strasser@linux.intel.com>
	<0a89eef85ff8ed361ac5a3e2f8fca6869670d74c.1353354792.git.kevin.strasser@linux.intel.com>
	<1433587.ZVlnfl7M25@helios>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 20 Nov 2012 14:56:09 +0000
Message-ID: <CAJTo0LY=TOBK_S_gNP9_BTS9Eua+XZDXS7eATVn7HKSCUJWqnQ@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQkObFhVs9NePlqYS8omaya8k50glmm/RlqAu7s5/bYH+02cw5RXo3TMV9OWPQaClMJO/VFWDcOX5N9hO3ByU5tayEMz0SgJrBi7MMVVzJQiOb6Fsw764/4WjMjIdwOEIDUNikU5rdK0X5rYcIsUwgQPeF+j7w==
Cc: yocto@yoctoproject.org
Subject: Re: [meta-baryon][PATCH 1/3] packagegroup-core-tools: exclude packages that depend on x11
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
X-List-Received-Date: Tue, 20 Nov 2012 14:56:34 -0000
Content-Type: text/plain; charset=UTF-8

On 20 November 2012 14:39, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> On Monday 19 November 2012 12:20:27 Kevin Strasser wrote:
>> Signed-off-by: Kevin Strasser <kevin.strasser@linux.intel.com>
>> ---
>>  .../packagegroup-core-tools-profile.bbappend       |   15 +++++++++++++++
>>  .../packagegroup-core-tools-testapps.bbappend      |   12 ++++++++++++
>>  2 files changed, 27 insertions(+)
>>  create mode 100644
>> recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend create
>> mode 100644
>> recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend
>>
>> diff --git
>> a/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
>> b/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend new
>> file mode 100644
>> index 0000000..0d13a45
>> --- /dev/null
>> +++ b/recipes-core/packagegroups/packagegroup-core-tools-profile.bbappend
>> @@ -0,0 +1,15 @@
>> +# Only include packages that are useful on a headless device
>> +
>> +PROFILETOOLS = " \
>> +    oprofile \
>> +    oprofileui-server \
>> +    powertop \
>> +    lttng-control \
>> +    "
>> +
>> +RRECOMMENDS_${PN} = " \
>> +    perf \
>> +    trace-cmd \
>> +    kernel-module-oprofile \
>> +    blktrace \
>> +    "
>> diff --git
>> a/recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend
>> b/recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend new
>> file mode 100644
>> index 0000000..86c7eb5
>> --- /dev/null
>> +++ b/recipes-core/packagegroups/packagegroup-core-tools-testapps.bbappend
>> @@ -0,0 +1,12 @@
>> +# Only include packages that are useful on a headless device
>> +
>> +RDEPENDS_${PN} = " \
>> +    blktool \
>> +    tslib-calibrate \
>> +    tslib-tests \
>> +    lrzsz \
>> +    ${KEXECTOOLS} \
>> +    alsa-utils-amixer \
>> +    alsa-utils-aplay \
>> +    ltp \
>> +    "
>
> This would work, but in this instance I think it would be better if we fixed
> the packagegroup-core-tools-* recipes in OE-Core so that the items that
> require X11 are only included when x11 is in DISTRO_FEATURES, rather than
> making the change here.

Isn't this what Jack Mitchell's commit (poky
627fd60c8c01bbc14ad375f6aa195469eab73d86) did, which make sysprof
optional on X11?

Ross

