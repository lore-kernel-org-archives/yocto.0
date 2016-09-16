Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3CD78E00C88; Fri, 16 Sep 2016 07:24:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E90E1E00C7A
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 07:24:35 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id l132so2832579wmf.1
	for <yocto@yoctoproject.org>; Fri, 16 Sep 2016 07:24:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Is1lOgmhip5t8ayN/bOknSbodpPD8Syecin797KbwyQ=;
	b=IbhOkCZIBD/BKmLHgPaxO2l0181n6jlbYbn1eyQWXROS8nqpXjR8dX+D4SfCzDjmd9
	J8A6XyLc7GzOsMq0jNyHtMBG1kilURZUXO3grPIr5sOC/hyPz8+t5lZ9eHHNJmsA7aVo
	VvFFn0XCefJDKtsOsX2neboEJ7JaEdIDf+SzRLNKzy653IMeHM7rd6hMmzlYBqUBKKA0
	ajf8o98ak0IUEw0oKVH54fvylKZ1OWT67c4OpYQ5q/Hu7WWv3fECQWJ0bY/dxIXaQTuq
	balrQVPeUYYKrzAaQHwAf0F2/tq+nAEVQcseo59gFlUfHPexYN9JS/CyOcUXAcxG/8LV
	HoEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Is1lOgmhip5t8ayN/bOknSbodpPD8Syecin797KbwyQ=;
	b=dHxUxwlUsRgoxFqAe+0tEZ3r+Gpe7TVspXIBjZANJ3MvnqEOWi2cgmTaEgTDqmUhUo
	6XHgvgwedBr8hc0DtIPiiMi5o+Ie5+LBw0M9FvkmRmtYCQ/uibsda1XCmFbGbx0SCZQ8
	IuqWhuRk9XRmm1BaD+oTZITJLMu2duEqSMNbTnSWGUPLTdJXQCeQBVhaYpRkUPk1bT5E
	Js/pdfaJ0IAVBtsqTrr7uUbPhK6OhqsYL9POpJS5frLegO99mRcDDDrCwmbuxqmblFyt
	NIE6nadgyXSlVRF/psmWcAAGr7TF7JE0LfgjMH2GAVZvcUU085MxT4C5dpdrCcIyj3al
	vUmQ==
X-Gm-Message-State: AE9vXwM5ShyzWLGdQVWqQ6UJmhveDQCJ8b91jKuFIMTSLiEfy/JI0tDEbiV4+OgptYrWbV+QsgsrxqoqYK+0LA==
X-Received: by 10.28.70.6 with SMTP id t6mr7851770wma.53.1474035874428; Fri,
	16 Sep 2016 07:24:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.184.208 with HTTP; Fri, 16 Sep 2016 07:24:34 -0700 (PDT)
In-Reply-To: <1474027656.2923.0.camel@linux.intel.com>
References: <1474002500-29602-1-git-send-email-tracy.graydon@intel.com>
	<1474027656.2923.0.camel@linux.intel.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Fri, 16 Sep 2016 07:24:34 -0700
Message-ID: <CA+n--H_scFqtfah2QPxJfZON+wGDW3=O-T3ZVPXtz0+5527sFQ@mail.gmail.com>
To: Joshua Lock <joshua.g.lock@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [yocto-autobuilder][PATCH] /buildset-config.controller/eclipse-plugin-*
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
X-List-Received-Date: Fri, 16 Sep 2016 14:24:40 -0000
Content-Type: text/plain; charset=UTF-8

Also, buildset-config.controller/nightly.conf needs to be edited and
the rule for luna removed.

    -Bill

On Fri, Sep 16, 2016 at 5:07 AM, Joshua Lock
<joshua.g.lock@linux.intel.com> wrote:
> On Thu, 2016-09-15 at 22:08 -0700, Graydon, Tracy wrote:
>> We are no longer supporting kepler or luna. Remove the build set for
>> those and
>> remove luna from yoctoAB.conf.
>
> Pushed to master, thanks!
>
>>
>> Signed-off-by: Graydon, Tracy <tracy.graydon@intel.com>
>> ---
>>  buildset-config.controller/eclipse-plugin-kepler.conf | 10 -------
>> ---
>>  buildset-config.controller/eclipse-plugin-luna.conf   | 11 -------
>> ----
>>  buildset-config.controller/yoctoAB.conf               |  1 -
>>  3 files changed, 22 deletions(-)
>>  delete mode 100644 buildset-config.controller/eclipse-plugin-
>> kepler.conf
>>  delete mode 100644 buildset-config.controller/eclipse-plugin-
>> luna.conf
>>
>> diff --git a/buildset-config.controller/eclipse-plugin-kepler.conf
>> b/buildset-config.controller/eclipse-plugin-kepler.conf
>> deleted file mode 100644
>> index 9948852..0000000
>> --- a/buildset-config.controller/eclipse-plugin-kepler.conf
>> +++ /dev/null
>> @@ -1,10 +0,0 @@
>> -[eclipse-plugin-kepler]
>> -builders: 'example-worker'
>> -repos: [{'eclipse-poky-kepler':
>> -            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
>> -             'branch':'kepler-master'}}]
>> -steps: [{'SetDest':{}},
>> -        {'CheckOutLayers': {}},
>> -        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-
>> kepler'}},
>> -        {'PublishLayerTarballs':{}},
>> -        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-
>> kepler']}}]
>> diff --git a/buildset-config.controller/eclipse-plugin-luna.conf
>> b/buildset-config.controller/eclipse-plugin-luna.conf
>> deleted file mode 100644
>> index d745af3..0000000
>> --- a/buildset-config.controller/eclipse-plugin-luna.conf
>> +++ /dev/null
>> @@ -1,11 +0,0 @@
>> -[eclipse-plugin-luna]
>> -builders: 'example-worker'
>> -repos: [{'eclipse-poky-luna':
>> -            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
>> -             'branch':'luna-master' }}]
>> -steps: [{'SetDest':{}},
>> -        {'CheckOutLayers': {}},
>> -        {'BuildEclipsePlugin': {'eclipsedir': 'eclipse-poky-luna'}},
>> -        {'PublishLayerTarballs':{}},
>> -        {'PublishArtifacts': {'artifacts': ['eclipse-plugin-
>> luna']}}]
>> -
>> diff --git a/buildset-config.controller/yoctoAB.conf b/buildset-
>> config.controller/yoctoAB.conf
>> index fe9750b..309a5ab 100644
>> --- a/buildset-config.controller/yoctoAB.conf
>> +++ b/buildset-config.controller/yoctoAB.conf
>> @@ -1,6 +1,5 @@
>>  [BuildSets]
>>  order: ['nightly', 'eclipse-plugin-neon', 'eclipse-plugin-mars',
>> -        'eclipse-plugin-luna',
>>          'nightly-arm', 'nightly-arm64', 'nightly-arm-lsb',
>>          'nightly-mips', 'nightly-mips64', 'nightly-mips-lsb',
>>          'nightly-ppc', 'nightly-ppc-lsb', 'nightly-no-x11',
>> --
>> 2.7.0
>>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

