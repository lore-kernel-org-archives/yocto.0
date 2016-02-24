Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DB7AE00D99; Wed, 24 Feb 2016 08:53:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pa0-f44.google.com (mail-pa0-f44.google.com
	[209.85.220.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBED4E00D09
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 08:50:49 -0800 (PST)
Received: by mail-pa0-f44.google.com with SMTP id fy10so15362791pac.1
	for <yocto@yoctoproject.org>; Wed, 24 Feb 2016 08:50:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-type:content-transfer-encoding;
	bh=nUm3Cq5fiPhf5YdNgi8uQ8xp+w4DcuVRAIUeXz+YCLs=;
	b=vkzh+NBgI7x5Ito6ttcc2b3bUs3SXGyFAQjgH50tsgTs2MVSWR3qP0aSbYSrQEovSU
	+UxqOHRAkwJn4uepx+5X3PMBlZiKWXFM1BkM8AhiG4zwg2JlTXvFCCE6t4as5BQx1/JY
	YQiooyt49ftG4vNbL1UODncNOfhBL5L2yI9C+GSkkdPLzl3LuYnNM/aKnJ6nxuLQ3yjd
	vwUcfk8963WisJf1h/GKoAJHR/DVLnnYEWcdImqQOS+zPDB+BJWz+9TkPxsutLI8Ywvp
	6yOPLECuaA7syIpQDPr7HwHWBdJktWKZwz4HL7kHRgaqRkDxgJUawPg//Lsogx3v1lIX
	PVxw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-type
	:content-transfer-encoding;
	bh=nUm3Cq5fiPhf5YdNgi8uQ8xp+w4DcuVRAIUeXz+YCLs=;
	b=EB9TPKh+sWFNZOQEENiL/KTTsp6eFYPdB1wolk+RTc1a+ObsEvWZUY+EZTAY3N26A3
	DBC8OboF4H7lL/IyB0tY/JVT/JW+yxoWfRU3ZKF1FfwE/fh5tz39mZmDRxykbsrmNAeA
	KE+vLa7al0qnqnaikrl2E4qmLadFjtzQ+HXAV6dW4hnFfglhOW917VWftbyQ8/74HELB
	+tqGd/HJeLNo5HG2fcP0WWlb1A5ium0BlznvBA2spnPyA5ONoX5wgaJXspXYqDZzdWsQ
	U3Pu9DCfkEX/rUBrafNxITUl9vQQprJlJUe9JeHiQbC1YRcubCHzfZa3gwt7x3jLYglq
	p27Q==
X-Gm-Message-State: AG10YOQefstK4Ktu/oJPTZ0xU26UAVwlAH2SxqwZ/u7yicWIYls5xXjwzOPqkZJD+kE8Eg==
X-Received: by 10.66.62.229 with SMTP id b5mr57073437pas.114.1456332649310;
	Wed, 24 Feb 2016 08:50:49 -0800 (PST)
Received: from ?IPv6:2601:202:4000:1239:19b5:9f2e:548a:2a85?
	([2601:202:4000:1239:19b5:9f2e:548a:2a85])
	by smtp.googlemail.com with ESMTPSA id
	qh8sm6248617pac.40.2016.02.24.08.50.47
	(version=TLSv1/SSLv3 cipher=OTHER);
	Wed, 24 Feb 2016 08:50:47 -0800 (PST)
To: Mark Hatle <mark.hatle@windriver.com>, yocto@yoctoproject.org
References: <1456255515.10581.2.camel@sierrawireless.com>
	<CAMKF1srU_Ewx1HzMHv+AQNhHeoy3b1L1bRvBaZ8556a8+7NLew@mail.gmail.com>
	<56CCD461.1060505@windriver.com>
	<1456267969.27839.3.camel@sierrawireless.com>
	<56CCF5E8.3000005@gmail.com> <56CDDC73.1000000@windriver.com>
From: akuster808 <akuster808@gmail.com>
Message-ID: <56CDDF64.3080508@gmail.com>
Date: Wed, 24 Feb 2016 08:50:44 -0800
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <56CDDC73.1000000@windriver.com>
Subject: Re: Does CVE-2015-7547 affect eglibc?
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
X-List-Received-Date: Wed, 24 Feb 2016 16:53:21 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit



On 02/24/2016 08:38 AM, Mark Hatle wrote:
> On 2/23/16 6:14 PM, akuster808 wrote:
>>
>>
>> On 02/23/2016 02:52 PM, Darcy Watkins wrote:
>>> On Tue, 2016-02-23 at 13:51 -0800, Mark Hatle wrote:
>>>> On 2/23/16 1:53 PM, Khem Raj wrote:
>>>>> On Tue, Feb 23, 2016 at 2:25 PM, Darcy Watkins
>>>>>> CVE-2015-7547 glibc vulnerability has been published as affecting glibc
>>>>>> since ver 2.9 (fixed in 2.23 and patched in 2.22 and 2.21).
>>>>>>
>>>>>> Anyone know if we need the same security fixes in eglibc?
>>>>>
>>>>> yes you do. Eglibc was nothing but glibc+few fixes.
>>>>
>>>> Yes this affects all eglibc version 2.9 and newer up to glibc 2.23.
>>>>
>>>> As far as I'm aware, this affects all Yocto Project versions up to 2.0.
>>>
>>> I will be interested in knowing which Yocto Project versions will
>>> receive the fixes. 
>>
>> Master, 2.0 and 1.8 all have the fixes.
>> How far back do we go in matters like this?
> 
> Official support is current (in development) and the last two releases.  So up
> to about a year and a half of support.
> 
> After this point, it becomes community support.  This really means, if someone
> in the community wants to continue support past the YP's support guidelines they
> are welcome to do so -- but there won't be any official releases, only checkins
> to the repository.

much better explanation than mine.

thanks,
Armin
> 
> We have done this on some OpenSSL fixes in the past, but it was based on
> specific requests and people submitting the fixes to be included with older
> versions.
> 
>> 1.7 (dizzy) I plan on doing soon. beyond that I do not know. those are
>> all community supported.
>>
>> - armin
>>>
>>> Thanks in advance!
>>>
>>>> (The patch referenced by the security announcement applies to all of the
>>>> versions of glibc I've needed to apply it to for my customers.  A few per-line
>>>> tweaks might be necessary, but it was fairly easy.)
>>>
>>>
> 

