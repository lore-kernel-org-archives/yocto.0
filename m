Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0B3C6E0121A
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2012 01:27:46 -0800 (PST)
Received: from [192.168.0.48] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id 4624925563
	for <yocto@yoctoproject.org>; Mon, 16 Jan 2012 08:48:17 +0000 (GMT)
Message-ID: <4F13ED64.8020308@communistcode.co.uk>
Date: Mon, 16 Jan 2012 09:27:00 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4F106990.7080208@gmail.com>
In-Reply-To: <4F106990.7080208@gmail.com>
Subject: Re: question on poky and git interaction
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
X-List-Received-Date: Mon, 16 Jan 2012 09:27:47 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 13/01/12 17:27, Jim Abernathy wrote:
> under the poky directory you git checkout of the branch you want to 
> work with, then you clone meta-intel and within that directory you 
> checkout a branch.  if you needed to use git for you personal project, 
> you can't put it at the same meta-intel level, right? Only one per 
> directory??? I would guess that you'd need to create your personal git 
> clone below meta-intel; something like meta-jima.
>
> Does this sound correct??
>
> Jim A
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
Hi Jim,

This is indeed how I manage my extra package files and anything else 
poky needs. Any other interesting input would be good to hear though!

Slightly off-topic, with meta-intel and then checking out branches to 
get specific machines, do you do global work in master, machine specific 
work in the branches, and then merge out from master to the branches to 
keep them all in sync?

Cheers,
Jack.

