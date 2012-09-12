Return-Path: <scott.a.garman@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 40227E00348
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 14:59:25 -0700 (PDT)
Received: from mail-pz0-f48.google.com ([209.85.210.48])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 12 Sep 2012 14:59:24 -0700
Received: by dadz8 with SMTP id z8so1662755dad.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 14:59:24 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding
	:x-gm-message-state;
	bh=nbjwFU9Wg0CUdNR6VY+vDkmdnTKa3/G7lFRiP08TayY=;
	b=mwHZl5n1fzR9FUxrqjGNplRNHzB7WKxdb34vSLQ73CZKNpf+FfJ8IGZQ4btvlADj0N
	jjFsmUYcPThrpj019zaaIXmfi9zUAerE0U8nes7BbKX2qA1Qbxn0HFfgnqVwIn6INBW+
	49W9EZcQavvSXFJW0vs2xuQ4AAmZcNLJ6bAwXwtUTHy+5sXfEuskkX+SDvs5M0+4ACTm
	LP1pDpf3mTJ1o+tuCliNxrWLfndy7u8V4WD4yTfPtr3A7PLvWWK/rmHPP1XLUE9kdK/y
	pVvD5O1NMJ23zbLoiYhBVgQ3wV3LMTfXF4dxKhDLgmJYNqJVJnGS/tXNoLgbPWHDhhl+
	ITig==
Received: by 10.68.224.71 with SMTP id ra7mr807765pbc.154.1347487164445;
	Wed, 12 Sep 2012 14:59:24 -0700 (PDT)
Received: from [10.0.99.24] (208.176.205.99.ptr.us.xo.net. [208.176.205.99])
	by mx.google.com with ESMTPS id uh7sm12034650pbc.35.2012.09.12.14.59.22
	(version=SSLv3 cipher=OTHER); Wed, 12 Sep 2012 14:59:23 -0700 (PDT)
Message-ID: <505105B8.4060203@intel.com>
Date: Wed, 12 Sep 2012 14:59:20 -0700
From: Scott Garman <scott.a.garman@intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120827 Thunderbird/15.0
MIME-Version: 1.0
To: Paul Eggleton <paul.eggleton@linux.intel.com>
References: <CA+gsK-qoz4u6OZV+FZN+LZq2AOgw5RajOW6DCJOnXbZGecva1w@mail.gmail.com>
	<5050D2CF.3000006@intel.com> <1732336.2HUq7qo8OI@helios>
In-Reply-To: <1732336.2HUq7qo8OI@helios>
X-Gm-Message-State: ALoCoQlj9lbgHU8Es1aKvpPil9fXjyHj0Ku6dntH4mbii2yrEM+wVlGv+CSGAkXTTRJl86g67iEl
Cc: yocto@yoctoproject.org
Subject: Re: [linux-yocto] 'bitbake linux-yocto' after 'bitbake linux-yocto -c compile -f' does not create image
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
X-List-Received-Date: Wed, 12 Sep 2012 21:59:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 09/12/2012 01:25 PM, Paul Eggleton wrote:
> On Wednesday 12 September 2012 11:22:07 Scott Garman wrote:
>> On 09/12/2012 08:06 AM, Rudolf Streif wrote:
>>> In Denil modifying kernel parameters and doing
>>>
>>> bitbake linux-yocto -c compile -f
>>> bitbake linux-yocto
>>>
>>> worked perfectly fine. The tasks after compile were rerun and the new
>>> kernel copied to tmp/deploy/images
>>>
>>> In Edison 7.0.1 this does not seem to work anymore. The tasks do not
>>> rerun and the kernel image is not deployed.
>>>
>>> What has changed? Why does it not work anymore?
>>
>> This was a bug that was introduced in 7.0.1. I have included a patch
>> series in my testing branch that is intended to go into the denzil
>> branch soon:
>>
>> d7b818b bitbake: refactor out codeparser cache into a separate class
>> 66123b9 classes/cml1: ensure -c menuconfig forces a rebuild next time
>> 5bd11a9 bitbake: bitbake: ensure -f causes dependent tasks to be re-run
>> 8b8be74 bitbake: implement checksums for local files in SRC_URI
>
> We need to be very careful which patches we backport. In particular that last
> patch 8b8be74 should not be backported - it's new functionality, requires
> support in the metadata to work, and led to several further cleanup patches
> for the metadata to avoid warnings being raised.

I agree with the need to be conservative about backporting new features 
into point-releases. In this case I was given a list from someone of 
which patches were needed to resolve the menuconfig issue, and I didn't 
question it.

I will make a note to try removing 8b8be74 before I submit my final pull 
request to denzil - this almost certainly won't happen this week due to 
conference craziness.

Scott

-- 
Scott Garman
Embedded Linux Engineer - Yocto Project
Intel Open Source Technology Center

