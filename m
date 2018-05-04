Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B9540E00C50; Fri,  4 May 2018 05:55:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.67 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f67.google.com (mail-wm0-f67.google.com [74.125.82.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 788CBE00C25
	for <yocto@yoctoproject.org>; Fri,  4 May 2018 05:55:25 -0700 (PDT)
Received: by mail-wm0-f67.google.com with SMTP id l1-v6so4627786wmb.2
	for <yocto@yoctoproject.org>; Fri, 04 May 2018 05:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GVqy2caQCUc6uwh5TH5to6HVnUKuPvoEq7yBo8HYg8E=;
	b=b04Et9ayfvLotM53MRt7BzRZLo+MshiqxQeWDGLUxsRSzVI1BnMU3RAywf1V5lvFAX
	Mf2/N+izwmJ1kV5mT9OweXdgjCddp2BkgxPxi6Dw9ibub0OFO2ixHLLqt+bZ4tezjPmO
	AXDh/CFVqBSsAmGpaAeMn3iD7l45Ta7l9tlVpu9qc+eVz7VlL+80qS1lq7qzD3VhUgwR
	2YZbH0OC9gIG83Di+kqI+b+owqfnXoFZ2ZFmv+BhwTqPLaObns7+I3E1woi3MEokMIlR
	BNq1D6+L8S4tV2wxjcUCj2s85CXCkAl99wmE3wgsEZTN1Dx9GENhDZm3dGkSL3+DVTdE
	U5tw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GVqy2caQCUc6uwh5TH5to6HVnUKuPvoEq7yBo8HYg8E=;
	b=fNXBP/bM7aTHjCzJNsC8dPDD3ZyqYOdWAegXKhjCzCbSqXQ3PR2xFNH79RXoBB/Dg3
	tDwypIEyCWbsNlVvHp6+vC/cClaWlp09AzdK4BG/r+78WaA/mHVoFqD8phdYseLIJtBu
	k2CUsaqhnQFN61+6vRArtO8TWqz7tVWQmrmv4arTJzuqGZyy62mBmNGYyy/7nH7saabT
	WFZ3PBZCuU2XlY7cCGZxHS4+azBRWqdyEfbw4/ReT9IIX+LDkwC/f3Y2rcCE9vlNj84f
	TJVjlJPw2zLSMZsC3eapLT5LJZp68OiP/pnqwjIYRbjFjDWP3B2cS6EZ8tCTCF5F8Oya
	7v7w==
X-Gm-Message-State: ALQs6tC0AXyB5In6lqZuKUYNGsbkwnWNWWk4KgkokccpUfKWncyCukfQ
	+llxbR7wxpKRsp8UJ+vFHL+r3mMKskhsvQmFfymz
X-Google-Smtp-Source: AB8JxZo1FC5OLQP1UxaNlZVtYdBq+QuuYS45UkltNsXDvbZNpWSPyrXc5+dp5f9u7GQtmN9PLdudYE4cu0jlIKNG9NM=
X-Received: by 10.28.18.71 with SMTP id 68mr16326885wms.74.1525438524325; Fri,
	04 May 2018 05:55:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.39.68 with HTTP; Fri, 4 May 2018 05:55:23 -0700 (PDT)
In-Reply-To: <ecb1ab50-450e-8e77-b3af-191313296602@linux.intel.com>
References: <CAJO0J4gxf0ahVGCoV64Y_Z_cGtw4OiakWkSLbu2u4WB_CHzehQ@mail.gmail.com>
	<70e7860b-5b9f-45c7-5436-73859b0d3706@linux.intel.com>
	<CAJO0J4gz6SVhknSgPM0mGqpDR_vqsrdmNaHiXAfR4TbuxTu04Q@mail.gmail.com>
	<ecb1ab50-450e-8e77-b3af-191313296602@linux.intel.com>
From: Paulo Neves <ptsneves@gmail.com>
Date: Fri, 4 May 2018 14:55:23 +0200
Message-ID: <CAJO0J4gwwaGCOH-YnGuJ=a63wzQ9PkSQOaH4fd3fPKWSiQq07Q@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: ROOTFS_RPM_DEBUG undocumented
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
X-List-Received-Date: Fri, 04 May 2018 12:55:26 -0000
Content-Type: text/plain; charset="UTF-8"

Ouch you are right. Damn me for using pyro still?
After applying this patch I will report on the remaining issues.

On Fri, May 4, 2018 at 2:41 PM, Alexander Kanavin
<alexander.kanavin@linux.intel.com> wrote:
> On 05/04/2018 03:42 PM, Paulo Neves wrote:
>>
>> I will propose a patch with a default bb.debug, and always have the
>> verbose on dnf. Let's see how it affects the performance. I cannot
>> test this in a docker container because of the problems described
>> below:
>>
>> In the mean time I found what was happening with my slow do_rootfs. I
>> was running bitbake with RPM packaging in a docker instance. It seems
>> there is a problem with RPM/dnf in bitbake where it is extremely slow
>> inside a docker container (1 file per second). After changing to IPK
>> packages everything went smoothly.
>>
>> Others have had the same problem[1]. I will later report this to
>> openembedded mailing list as this effectively makes RPM unusable in a
>> container. I will also provide a Dockerfile to reproduce this problem.
>>
>> [1] https://github.com/moby/moby/issues/23137#issuecomment-359097008
>
>
> No need to report. We have already fixed this and reported upstream:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky/tree/meta/recipes-devtools/rpm/files/0001-Revert-Set-FD_CLOEXEC-on-opened-files-before-exec-fr.patch
>
> https://bugzilla.redhat.com/show_bug.cgi?id=1537564
>
>
> Alex

