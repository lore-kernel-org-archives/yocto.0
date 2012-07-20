Return-Path: <jfabernathy@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D854DE00282
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 13:35:38 -0700 (PDT)
Received: by vcbfl11 with SMTP id fl11so4155640vcb.35
	for <yocto@yoctoproject.org>; Fri, 20 Jul 2012 13:35:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding;
	bh=Sn1MuE3uXsXESqNl/GeKe4cfnGfpVO+NbVU7nXPY0gM=;
	b=fdZJl4D4xikwwvINPQMw6nxC8Y5bLEIXqrCR/nj2chD50/rmPl/fbVq9ULOihflIOy
	/xkMU/NLLWyAHjQqgHzIMqRobdh/7axyKmgZyfz4a5Q+MvUk7WPZjebIVRmioIRJCv4F
	v30yS4q6WNrYShHVYdeC4lLwG2vkSXHwNLhtupNfIyZ1OnlJ+62WMXhYYWKYOv6M1PbL
	Tg1GA50iHCg2VSPzjzmKSDxafqLIl7qcXm4XlWhtQ6BnFnACMbBUxyVRjx3bAw9lmtpA
	M/AB0+WEE+0C55Y1X2x9G53zG0Qjucq4b09gK7Wb1S5VX3skMmMW0mlgpHyWnJE6tKFC
	Tkfw==
Received: by 10.52.240.178 with SMTP id wb18mr4905583vdc.100.1342816538040;
	Fri, 20 Jul 2012 13:35:38 -0700 (PDT)
Received: from [10.0.1.54] (nc-184-4-39-191.dhcp.embarqhsd.net. [184.4.39.191])
	by mx.google.com with ESMTPS id l9sm3832480vdw.14.2012.07.20.13.35.37
	(version=SSLv3 cipher=OTHER); Fri, 20 Jul 2012 13:35:37 -0700 (PDT)
Message-ID: <5009C119.3070801@gmail.com>
Date: Fri, 20 Jul 2012 16:35:37 -0400
From: Jim Abernathy <jfabernathy@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:14.0) Gecko/20120714 Thunderbird/14.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5009BB61.5010605@gmail.com> <5009BFAB.9040801@intel.com>
In-Reply-To: <5009BFAB.9040801@intel.com>
Subject: Re: nothing building under denzil-7.0.1
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
X-List-Received-Date: Fri, 20 Jul 2012 20:35:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/20/2012 04:29 PM, Scott Garman wrote:
> On 07/20/2012 01:11 PM, Jim Abernathy wrote:
>> There must be some basic thing I'm missing.  Nothing that I used to
>> build under denzil 7.0 will now build under denzil 7.0.1 or tracking the
>> denzil branch.  Are all the BSPs required to be updated to 7.0.1 before
>> you can run?
>>
>> I'd thought I'd check before I post a bunch of log files.
>>
>> I just downloaded the poky 7.0.1 tarball and cd'ed to that untarred
>> directory and untarred the 7.0 Intel BSPs.
>>
>> There must be a step I'm missing.  otherwise this would not have gotten
>> thru testing before deployment.
>>
>> Jim A
>
> Hi Jim,
>
> We need more specific information about the error(s) you're seeing. 
> We've done extensive QA with 7.0.1 and meta-intel, so I imagine there 
> must be a step you've forgotten.
>
> For example, you are using the denzil branch of meta-intel, right?
>
> Scott
>

I think it maybe that old problem with the n450 SRCREC being blank in 
the linux-yocto bbappend file.  Obviously that BSP didn't get fixed 
before 7.0.1 was deployed.  I'll put in the ones I used to patch in and 
see if it works.

Jim A



