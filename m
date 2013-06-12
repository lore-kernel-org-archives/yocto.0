Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-vb0-f50.google.com (mail-vb0-f50.google.com
	[209.85.212.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7F48BE01560
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 00:12:36 -0700 (PDT)
Received: by mail-vb0-f50.google.com with SMTP id w16so5818080vbb.37
	for <yocto@yoctoproject.org>; Wed, 12 Jun 2013 00:12:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type:x-gm-message-state;
	bh=VxYpkpjxRVsCok8w2ZoD0g8/aP4C72Bp+YvraiNsSzw=;
	b=jf9UiWMCCchF8/keBrk8t6UKtnFGBKGSn9gSwZLU3JoyA2MQEYuP530Y7zKi+8t4zn
	lFC2f6leZOUdjwtsXHm0KyfcKByUNjbTm0KefczDnAcrlUNtBMVe6NTHHqg1Bj4Y3ALL
	r02k70WFNe7boDOK8S3uIi+4AxCa2LPbIA5OJz40Ykbfxf5mOLyZf9DOnBiv5PQM7GSg
	TMg9Fae6SlQ9cBVtl3nOqG4ERwgrvLJG3AeKPSrSvVbCjh7HFZM2fCB+953AYdhhsY98
	PjoiAXQHMddAJMH7BpnCRmvV5AfdU/eQXUhZ+2q7ZoAKINtNrJJPaMBNanpf1naq1DfU
	ahFQ==
MIME-Version: 1.0
X-Received: by 10.58.221.134 with SMTP id qe6mr9328839vec.2.1371021155308;
	Wed, 12 Jun 2013 00:12:35 -0700 (PDT)
Received: by 10.52.114.170 with HTTP; Wed, 12 Jun 2013 00:12:35 -0700 (PDT)
In-Reply-To: <CAPhnLPCzaAVuvYVL6Nxaa4guH5nyNN4ME6KFkJNvo4+zW=Cvuw@mail.gmail.com>
References: <CAPhnLPBgTbb2m+L=DSr9p8ta7gm5OsR2-N4OeXkoo31_YHTx4A@mail.gmail.com>
	<CAPhnLPCzaAVuvYVL6Nxaa4guH5nyNN4ME6KFkJNvo4+zW=Cvuw@mail.gmail.com>
Date: Wed, 12 Jun 2013 00:12:35 -0700
Message-ID: <CAPhnLPBfwYOnp7rZuR8j3D8oAyQQZCTg+SLjSM77M7OA6U_c2Q@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: yocto@yoctoproject.org, Zhao Yi <yi.zhao@windriver.com>, 
	Alexandru C Georgescu <alexandru.c.georgescu@intel.com>,
	Otavio Salvador <otavio@ossystems.com.br>
X-Gm-Message-State: ALoCoQnlz80v5DuKNQ+pde04nMAQUkEAITCaDp3ZSQjKiZo6SsJxgE7UdQB+ucAM28gycSv2Hjah
Subject: Re: 1.4.1 rc1 available for testing
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
X-List-Received-Date: Wed, 12 Jun 2013 07:12:38 -0000
Content-Type: text/plain; charset=ISO-8859-1

Ok, we have the start of a build.

The issue was due to not being able to checkout bitbake during the
nightly-oecore build because we had set the branch to dylan (which
doesn't exist).

The new location (with what should be the same git hashes) is at:

http://autobuilder.yoctoproject.org/pub/nightly/20130612-5

This should only take a few hours to build out, so please check back
in about 3 hours as there should be a fair amount of artifacts to
begin testing.

-b

On Tue, Jun 11, 2013 at 11:33 PM, Flanagan, Elizabeth
<elizabeth.flanagan@intel.com> wrote:
> Folks....
>
> We're going to respin this due to some autobuilder issues. I'll send
> out a mail in a bit to update you on the status/location. If you've
> begun testing, please stop and wait for this build.
>
> -b
>
> On Tue, Jun 11, 2013 at 6:15 PM, Flanagan, Elizabeth
> <elizabeth.flanagan@intel.com> wrote:
>> All, we've begun a spin of 1.4.1. This is the first release candidate.
>> Unfortunately, a minor issue has occurred with the eclipse-plugin, so
>> that will have to be rebuilt once the build run ends (as we may have
>> to bring the buildbot slave down to fix it)
>>
>> The artifacts should be available in a few hours. Please begin testing
>> as they are available.
>>
>> Location: http://autobuilder.yoctoproject.org/pub/nightly/20130611-2
>>
>> meta-fsl-arm    d31a4e85673874dbc6b42bb5d1e8496810c574cc
>> meta-fsl-ppc    51252492cdda18eb3838b1c3108217a59243ba2a
>> meta-intel      048def7bae8e3e1a11c91f5071f99bdcf8e6dd16
>> meta-minnow     0d428f867ffdf83dd35803c7318180751ddb096f
>> meta-qt3        4c27cce6688aa39852f3cba5e7b80ec279019605
>> poky    73f103bf9b2cdf985464dc53bf4f1cfd71d4531f
>>
>> I'll have the eclipse-plugin hash when we build it out.
>>
>> -b
>>
>> --
>> Elizabeth Flanagan
>> Yocto Project
>> Build and Release
>
>
>
> --
> Elizabeth Flanagan
> Yocto Project
> Build and Release



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

