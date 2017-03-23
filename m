Return-Path: <akuster@mvista.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9EC6E00546; Thu, 23 Mar 2017 12:33:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.41 listed in list.dnswl.org]
Received: from mail-pg0-f41.google.com (mail-pg0-f41.google.com [74.125.83.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 941DEE003E1
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 12:33:23 -0700 (PDT)
Received: by mail-pg0-f41.google.com with SMTP id 21so95434491pgg.1
	for <yocto@yoctoproject.org>; Thu, 23 Mar 2017 12:33:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mvista-com.20150623.gappssmtp.com; s=20150623;
	h=subject:to:references:cc:from:message-id:date:user-agent
	:mime-version:in-reply-to:content-transfer-encoding;
	bh=f55jNZ5s6nScuijzmsnYdL6qEOHCT7z0V28RwTs0EVs=;
	b=yNmZGEzu+1bVsFm/gvbg1pHuG79mKWQQMNwmG892y+tHM1O2a/xuUo3rBCVLNdXYYO
	0Z/ag5V3Vizw3irolRGEMxB7lyCq2rjeguDpuDsarTkFTEbaZ1nL3avPHTV8BqiIbP6l
	D1LuMCa/V3veBleGphm1hwlg5Q8lLOqfKuKy3UFifeosyhcG3DNo3aZTxMBPufOqC+yW
	/tplJvUhnDCwU5dnvWzV1VNk4Rg/vy8gp1n/cn/qGpNWuv1R9QfKnyd33AVS7WzyNogR
	mlh/ya1D2F3Gh7gvyFKkzqHhwsj5tx1mMhPi7yi/pvs+ORy5XEjqOOWm5y1XeBnUD+Sk
	CdZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:cc:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-transfer-encoding;
	bh=f55jNZ5s6nScuijzmsnYdL6qEOHCT7z0V28RwTs0EVs=;
	b=CiJOO4OEFNl7vdQCgpnjgRbEMyC0KjDKyeWuANv+inUJm4O62BsRRdpMiTgT51N6N7
	Onf6ILhehDf8q4mQVBw/4DYAMikGZ0knhlZ2rxE2890dMZ+Is0EXCa3djFP8fvuVydoE
	PpJUkmpQT6g4fH8uU7LUVqrXSOV6W6sVpBT7ftdRvnZXBj6qivvdsfViFxE2r/9sMvYo
	Y7CnCsz+DOiqdnrn8D1vKjWhwTFzHLx0jzqX13J5R+9NX0mrn40RAzBfXJYC/67avfmW
	+Ocztw+/lLtP8WE7uKbzTHCaRs3pGv/bdoyGiRZA7QzbvkTe8O+HT4FYSIkeEl00cith
	HrHg==
X-Gm-Message-State: AFeK/H1OOwHiEFHhDbRSPjkyYmRnJ510hwsLbN540hze8Q3w3jTwWhtofGBptRcouRfeCPvW
X-Received: by 10.84.232.198 with SMTP id x6mr5778464plm.101.1490297602800;
	Thu, 23 Mar 2017 12:33:22 -0700 (PDT)
Received: from [10.22.10.146] (50-233-148-156-static.hfc.comcastbusiness.net.
	[50.233.148.156]) by smtp.gmail.com with ESMTPSA id
	p189sm11820679pfb.128.2017.03.23.12.33.20
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 23 Mar 2017 12:33:21 -0700 (PDT)
To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
References: <461862bc22e146c4839c12eafc7dd9f2@SFA-EX01.SAKURAUS.LOCAL>
	<1800387.CklkhI1oXO@peggleto-mobl.ger.corp.intel.com>
	<6a6dd70f430b4a7c8f7c925d18814be8@SFA-EX01.SAKURAUS.LOCAL>
	<13191224.qIYrFqvWFr@peggleto-mobl.ger.corp.intel.com>
From: akuster <akuster@mvista.com>
Message-ID: <6ffd54ff-01dd-c263-5e44-ca26be3cb9c0@mvista.com>
Date: Thu, 23 Mar 2017 12:33:19 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.7.0
MIME-Version: 1.0
In-Reply-To: <13191224.qIYrFqvWFr@peggleto-mobl.ger.corp.intel.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Morty 2.2.1 build failure
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
X-List-Received-Date: Thu, 23 Mar 2017 19:33:26 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 03/23/2017 12:25 PM, Paul Eggleton wrote:
> That's really bizarre. There shouldn't be anything in a bitbake build that
> could cause anything like this (other than possibly how intensive it is, which
> might trigger out-of-memory or an underlying hardware/software failure).

I usually get my builds to reboot my system when I build on a loptop. I 
have not seen this on a tower style work station. You may want to play 
with the BB_NUMBER_THREADS=# and PARALLEL_MAKE = "-j #" settings in your 
local.conf.

- armin
>
> Assuming the X session is ending is there anything in your ~/.xsession-errors
> or /var/log/Xorg.*.log?
>
> Cheers,
> Paul
>
> On Friday, 24 March 2017 5:58:24 AM NZDT Greg Wilson-Lindberg wrote:
>> Hi Paul,
>>
>> I looked in the logs from the failure yesterday and couldn't find anything,
>> so I restarted the build and it ran for about another 1000 steps before
>> crashing again. I still can't find anything in any of the logs, syslog,
>> kern.log, auth.log, etc.
>>
>> Cheers,
>> Greg
>>
>>> -----Original Message-----
>>> From: Paul Eggleton [mailto:paul.eggleton@linux.intel.com]
>>> Sent: Thursday, March 23, 2017 2:49 AM
>>> To: Greg Wilson-Lindberg <GWilson@sakuraus.com>
>>> Cc: yocto@yoctoproject.org; akuster808 <akuster808@gmail.com>
>>> Subject: Re: [yocto] Morty 2.2.1 build failure
>>>
>>> On Thursday, 23 March 2017 9:23:24 AM NZDT Greg Wilson-Lindberg wrote:
>>>> I tried it again this morning and it did get past the file not found
>>>> error.
>>>> But when it gets above step 4000 somewhere it gets an error that kills
>>>> not just the yocto build but the full login session. I'm left staring
>>>> at the Linux Login screen.
>>> Your machine isn't running out of RAM by any chance, triggering the OOM
>>> killer? Anything indicative in your system logs?
>>>
>>> Cheers,
>>> Paul
>>>
>>> --
>>>
>>> Paul Eggleton
>>> Intel Open Source Technology Centre
>


