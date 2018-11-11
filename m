Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4AE63E00872; Sun, 11 Nov 2018 13:18:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (akuster808[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.195 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-pf1-f195.google.com (mail-pf1-f195.google.com
	[209.85.210.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2D5F4E00754
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2018 13:18:45 -0800 (PST)
Received: by mail-pf1-f195.google.com with SMTP id u10-v6so3274323pfn.9
	for <yocto@yoctoproject.org>; Sun, 11 Nov 2018 13:18:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:cc:references:from:openpgp:autocrypt:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding
	:content-language;
	bh=26Zxsfj+P8zxW23BVeRdR9ALpW1fZhQBx3Ihf8gIE40=;
	b=UGB9Z2Li8/neT7tDNB/Ue1WytpuuyghaGtE6hbM+WCxPEY4731jVpZ7IEF9S3RhBnh
	Q+LXElYLnHpYCnvJWd9dj1bzK55942aVEAqHToPHuMVjEy78FVBznN/ZUF8Q3hbGhQNk
	rfXJiKkmKgIQNZIBwhoH2mg6+rZgjg+7m7fvfGBY87AgbH3OQ6ABXUGTeNeN6HsiyN9g
	CdkTZRx72pQqcIgrB5ZHLVOUlyWFUAKE9lYsiArDFErg94nGcDjo9qsnVOXRcqfx7Tqr
	KIl/19KPvIVHfabdGrUxAwxnx8S6MKHWwEQOcEgX+hPpLONdxiszHwp5q1TprGof/36Z
	uUCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:cc:references:from:openpgp:autocrypt
	:message-id:date:user-agent:mime-version:in-reply-to
	:content-transfer-encoding:content-language;
	bh=26Zxsfj+P8zxW23BVeRdR9ALpW1fZhQBx3Ihf8gIE40=;
	b=r/exhvOKQN7mzRaoUUsIKNvSak5fuTEdW+ARUiGGNXpZPct2vN03m9GDEWlZsY6qzQ
	FO7jN/fHpLvQWSSLPB6xwei0NQOIgD8sg7nMeE5KwaE3Rd90Rz5Boa1REhUlgDtzVNIx
	3Q/dJzPUqk8n9t2y1Nmv9vCkkvzAbPZjbKf11GR8Kz4wfyd00AZ42PDT/46ATW9qa6no
	dHFGqgnITmDLJ7Y38DOT/RiYUXQdiQc7SxhCrito802YlXL68QdJsrFS2V0heh0boVRJ
	r0AJzVLfGiLW6ksfAEYe6MCwcdj0RmAaHg5weEPkyFVa9mGta5EDT1OsIBysswVizNmS
	I6Jg==
X-Gm-Message-State: AGRZ1gKL5hkUyN2sekDwwPxVX71jLIF9Je7ajQgby48OoZNu1ZUcizH/
	p+jQU7ndIB59yupR72qSC9g=
X-Google-Smtp-Source: AJdET5f1WThe47livVPitlAWiOnvzd2ty/gnBBa5BxNac5y35EkUYIs/pd/0ku6TMT3Ge5u4jFaRWA==
X-Received: by 2002:a62:6547:: with SMTP id
	z68-v6mr17162992pfb.169.1541971124633; 
	Sun, 11 Nov 2018 13:18:44 -0800 (PST)
Received: from ?IPv6:2601:202:4180:c33:7077:6962:50cb:42de?
	([2601:202:4180:c33:7077:6962:50cb:42de])
	by smtp.gmail.com with ESMTPSA id
	t12-v6sm767684pfj.181.2018.11.11.13.18.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 11 Nov 2018 13:18:44 -0800 (PST)
To: richard.purdie@linuxfoundation.org,
	"Jain, Sangeeta" <sangeeta.jain@intel.com>,
	"Jolley, Stephen K" <stephen.k.jolley@intel.com>,
	"Eggleton, Paul" <paul.eggleton@intel.com>,
	"Graydon, Tracy" <tracy.graydon@intel.com>,
	"Erway, Tracey M" <tracey.m.erway@intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <015AB11D45F2C442929CB2765DAE738634CE695E@PGSMSX110.gar.corp.intel.com>
	<124f711a167575c2d5ee6a98f465e3afd5d090f6.camel@linuxfoundation.org>
	<8446b502-4dfc-676b-fcf1-d1de1d8eb004@gmail.com>
	<807aea9c7fd062e1fc6a0d77b2b51166b61b619d.camel@linuxfoundation.org>
From: akuster808 <akuster808@gmail.com>
Openpgp: preference=signencrypt
Autocrypt: addr=akuster808@gmail.com; prefer-encrypt=mutual; keydata=
	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
	8CS2NxU=
Message-ID: <c69ffc7a-dd3e-0282-493f-b0d6994e3f28@gmail.com>
Date: Sun, 11 Nov 2018 13:18:42 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.2.1
MIME-Version: 1.0
In-Reply-To: <807aea9c7fd062e1fc6a0d77b2b51166b61b619d.camel@linuxfoundation.org>
Cc: "Kirkiris, Nectar" <nectar.kirkiris@intel.com>
Subject: Re: QA cycle report for 2.6 M4 RC1
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
X-List-Received-Date: Sun, 11 Nov 2018 21:18:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit
Content-Language: en-US


On 11/11/18 2:21 AM, richard.purdie@linuxfoundation.org wrote:
> On Sat, 2018-11-10 at 10:02 -0800, akuster808 wrote:
>> On 11/10/18 8:25 AM, richard.purdie@linuxfoundation.org wrote:
>>> On Fri, 2018-11-09 at 09:24 +0000, Jain, Sangeeta wrote:
>>>> This is the full report for 2.6 M4 RC1: 
>>>> https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1
>>> Thanks Sangeeta and team!
>>>
>>> Now we have the QA report for YP 2.6 M4 rc1 (Final 2.6) we need to make
>>> a release go or nogo decision. To do this we have the following:
>>>  
>>> QA Report: https://wiki.yoctoproject.org/wiki/WW44_-_2018-10-30_-_Full_Test_Cycle_2.6_M4_RC1
>>> Release Criteria: https://wiki.yoctoproject.org/wiki/Yocto_Project_v2.6_Status#Milestone_4.2FFinal_-_Target_Oct._26.2C_2018
>>>
>>> We'd be happy to take representations from members and the community to
>>> help reach that decision.
>> Regarding. 
>> Bug 12991 - [2.6 M4 RC1][Build-Appliance] Bitbake build-appliance-
>> image getting failed during building image due to webkitgtk package
>> Does it mean the Build-Appliance is non functioning ?  It was broken
>> at the Sumo release time as well. Should it be dropped as the release
>> criteria?
> Build-appliance is a tricky test as it tests multiple things, roughly:
>
> * vmdk images under vmware
> * the web browser
> * toaster
> * whether we can self host (build poky within poky)
>
> The fact the webkit recipe failed to build may be due to several
> reasons:
>
> * random race type condition
> * lack of memory in the VM
> * phase of the moon
> * other things
>
> I'm not convinced its a release blocker, or that it invalidates the b-a 
> test, or that it would even reproduce. If it does reproduce that would
> be more interesting and easier to debug.

ok, but is the b-a functional  in 2.6?

- armin

>
> I do think we're going to have to split up the b-a test in 2.7 so that
> even if its not manual QA'd, we can automatically test some pieces of
> what it covers.
>
> Cheers,
>
> Richard
>
>

