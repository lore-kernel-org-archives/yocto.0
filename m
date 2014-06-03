Return-Path: <insop.song@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9AE97E00A2F; Mon,  2 Jun 2014 17:26:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (insop.song[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.169 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5E50BE00985
	for <yocto@yoctoproject.org>; Mon,  2 Jun 2014 17:26:29 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id u56so6033691wes.28
	for <yocto@yoctoproject.org>; Mon, 02 Jun 2014 17:26:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4Fr81lsLryAcCpdsk8ppL7u5QLxKLPbenph7WDjgWaU=;
	b=Y0BKCQv7NlEL3NQqUONpneF3irRbuP+O4gBc/TywpAv8AdhBQmwY7/13lxdH8dabA0
	av0ncgD4s34u4A7v4XOsWltx/7ml6kGbYF1cLzelmzvIZ+JFWNQ6wzK23s/cnjlJdUpZ
	xdP2n4vFb/QvdOJ3YZNKMFw5BCDRtTu70Bv3Zvl4OS5XK47Oka6Lu2/6GuMDWZFFFb7G
	9fkHxJYLYEDdIJRdb3D/a0KlwHMgpnat6t778CCvHgg7M7tGUUOYEpW2nWwmHCvhDAId
	q/hGoyRnGdcMOFK0m5s2bLTfPJ+jJ/+3gOxaXNAFAYot0RSn8L2ie6UN/N3KwSMyFTI+
	BWQA==
X-Received: by 10.180.90.145 with SMTP id bw17mr27156294wib.43.1401755188731; 
	Mon, 02 Jun 2014 17:26:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.194.89.5 with HTTP; Mon, 2 Jun 2014 17:26:08 -0700 (PDT)
In-Reply-To: <20140602230303.GH7521@gmail.com>
References: <CACzyEJ-RYx+jw9Brqf5kGDivLFJGpD2ZWDRyMbqES=VsTNrWcQ@mail.gmail.com>
	<20140602230303.GH7521@gmail.com>
From: Insop Song <insop.song@gmail.com>
Date: Mon, 2 Jun 2014 17:26:08 -0700
Message-ID: <CACzyEJ-6+L9XjqcsmDovCDzj+MWy8YNoSoGXXbAFYgxcX598gg@mail.gmail.com>
To: Paul Barker <paul@paulbarker.me.uk>
Cc: Yocto Project Discussion <yocto@yoctoproject.org>
Subject: Re: [yocto and jenkins]
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
X-List-Received-Date: Tue, 03 Jun 2014 00:26:32 -0000
Content-Type: text/plain; charset=UTF-8

Thank you very much Paul.

Setting "export BB_ENV_EXTRAWHITE=${BUILD_NUMBER}" fixed the issue.

Regards,

Insop

On Mon, Jun 2, 2014 at 4:03 PM, Paul Barker <paul@paulbarker.me.uk> wrote:
> On Mon, Jun 02, 2014 at 03:38:43PM -0700, Insop Song wrote:
>> All,
>>
>> I've been building yocto using jenkins.
>>
>> I want to include yocto's build environment variable "BUILD_NUMBER" to
>> yocto's kernel.
>>
>> 1, I've tried this in one of my conf file, add
>>
>> GS_SDK_VERSION = "GS-SDK-V1.5-${BUILD_NUMBER}"
>>
>> But ${BUILD_NUMBER} is not expended
>>
>>
>> 2, I've looked at Keon's example from
>> https://git.linaro.org/openembedded/jenkins-setup.git
>>
>> I've put the following in conf/local.conf
>>
>> JENKINS_BUILD_NUMBER = "`echo ${BUILD_NUMBER}`"
>>
>> Then add GS_SDK_VERSION = "GS-SDK-V1.5-${JENKINS_BUILD_NUMBER}"
>>
>> It still doesn't expand.
>>
>> So my question is
>>
>> - how to include environment variable to yocto's running?
>
> As a guess, bitbake is ignoring the value of the BUILD_NUMBER environment
> variable. You can add the variable to BB_ENV_EXTRAWHITE but you need to do so
> outside of bitbake as the value needs to be set when bitbake starts
> (BB_ENV_EXTRAWHITE is an environment variable).
>
> Googling BB_ENV_EXTRAWHITE should provide more information.
>
> --
> Paul Barker
>
> Email: paul@paulbarker.me.uk
> http://www.paulbarker.me.uk

