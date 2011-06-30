Return-Path: <sgw@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8DA3B4C8009D
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2011 18:55:33 -0500 (CDT)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga102.fm.intel.com with ESMTP; 30 Jun 2011 16:55:33 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.65,455,1304319600"; d="scan'208";a="24971616"
Received: from swold-mobl.jf.intel.com (HELO [10.24.82.35]) ([10.24.82.35])
	by fmsmga001.fm.intel.com with ESMTP; 30 Jun 2011 16:55:32 -0700
Message-ID: <4E0D0CEE.1000907@linux.intel.com>
Date: Thu, 30 Jun 2011 16:55:26 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: NiQingliang <niqingliang@insigma.com.cn>
References: <1309399927.1876.7.camel@localhost.localdomain>	<1865303E0DED764181A9D882DEF65FB6A1F4FC67BD@shsmsx502.ccr.corp.intel.com>	<1309400982.1876.10.camel@localhost.localdomain>	<1865303E0DED764181A9D882DEF65FB6A1F4FC67BF@shsmsx502.ccr.corp.intel.com>
	<1309403903.24059.8.camel@localhost.localdomain>
In-Reply-To: <1309403903.24059.8.camel@localhost.localdomain>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dependency gui problem
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
X-List-Received-Date: Thu, 30 Jun 2011 23:55:33 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 06/29/2011 08:18 PM, NiQingliang wrote:
> I have added "-DDD -v", after close window "loading cache" manually, the
> bitbake exited, and then I can see some DEBUG info on shell, but there
> is no clue.
>
> how to dig out where it hangs:-(
>

Can you capture the log and send it.  I noticed you are running on 
ArchLinux, can you confirm which version of Python you are using and 
which version of Poky you have?

You have to be using 2.6 or 2.7 Python.

Sau!

> On Thu, 2011-06-30 at 10:57 +0800, Cui, Dexuan wrote:
>> NiQingliang wrote:
>>> once builded, is after executed "bitbake core-image-minimal" and
>>> generated the final image.
>> I tried that just now on recent poky.git's master branch but can't reproduce the issue. :-(
>> You may need to dig out where it hangs...
>>
>>> On Thu, 2011-06-30 at 10:18 +0800, Cui, Dexuan wrote:
>>>> , and set env, follow cmd works normally.
>>>>> bitbake -g -u depexp core-image-minimal
>>>>>
>>>>> but once builded, the cmd works abnormal, the symptom like that:
>>>>> What does "once builded" mean?
>>
>> Thanks,
>> -- Dexuan
>

