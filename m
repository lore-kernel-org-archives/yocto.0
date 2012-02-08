Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8102AE01372
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 01:18:06 -0800 (PST)
Received: from [192.168.0.52] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id C2B6E27FB6
	for <yocto@yoctoproject.org>; Wed,  8 Feb 2012 08:45:28 +0000 (GMT)
Message-ID: <4F323DAB.1020204@communistcode.co.uk>
Date: Wed, 08 Feb 2012 09:17:31 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:10.0) Gecko/20120205 Thunderbird/10.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <752F5B12-4CCB-4C62-A1DE-61EA5BD21CE9@keylevel.com>
	<4F31C75B.2090703@linux.intel.com>
	<CAFZh4h9k1WCBaOoqZ0cU0bwtNmL0f=543bxuOOtN_uCuGLWGbA@mail.gmail.com>
In-Reply-To: <CAFZh4h9k1WCBaOoqZ0cU0bwtNmL0f=543bxuOOtN_uCuGLWGbA@mail.gmail.com>
Subject: Re: Raspberry Pi
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
X-List-Received-Date: Wed, 08 Feb 2012 09:18:06 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 08/02/12 02:36, Brian Hutchinson wrote:
> On Tue, Feb 7, 2012 at 7:52 PM, Joshua Lock<josh@linux.intel.com>  wrote:
>> Somehow they managed to convince Broadcom to release a datasheet for the
>> SoC: http://www.raspberrypi.org/archives/615
> One of my friends sent me a funny quote he saw today:
>
> "The most amazing thing about this device is the ability to download a
> Broadcom spec sheet without a pile of signed NDA's, 4 months of
> negotiations, and not having to talk to a single lawyer.  Way more
> impressive than a $35 Linux board! :D"
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Very impressive indeed. I run a Raspberry Pi website at the moment, and 
in due course I plan on (attempting) to write a BSP for Yocto and maybe 
do a blog post on setting up quemuarm so people can play with a cross 
compile toolchain and learn how to use yocto in the process.

However, have you seen the kernel sources? Very slapdash in places, 
someone is going to spend a lot of time if they wish to get them 
upstream, they didn't even release them as patches, just as a source 
tree... tut tut.

