Return-Path: <ml@communistcode.co.uk>
Received: from tinyArch.localdomain (unknown [78.110.170.148])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A897FE0030F
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 04:02:14 -0800 (PST)
Received: from [192.168.0.16] (unknown [195.171.99.130])
	by tinyArch.localdomain (Postfix) with ESMTPSA id AABF826A2E
	for <yocto@yoctoproject.org>; Thu, 26 Jan 2012 11:48:15 +0000 (GMT)
Message-ID: <4F21409C.9080807@communistcode.co.uk>
Date: Thu, 26 Jan 2012 12:01:32 +0000
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111224 Thunderbird/9.0.1
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <4F2133BB.8090408@communistcode.co.uk>
	<43D8289B-2551-43ED-AC5F-5C571A22990E@beagleboard.org>
In-Reply-To: <43D8289B-2551-43ED-AC5F-5C571A22990E@beagleboard.org>
Subject: Re: BeagleBone with meta-ti layer
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
X-List-Received-Date: Thu, 26 Jan 2012 12:02:14 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 26/01/12 12:00, Koen Kooi wrote:
> Op 26 jan. 2012, om 12:06 heeft Jack Mitchell het volgende geschreven:
>
>> Hello everyone,
>>
>> I will soon be receiving a Beaglebone and I wish to transfer the work I have been doing with Yocto on the Beagleboard over to the Beaglebone, to show my company how the same application codebase can be run different platforms using Linux/Yocto/etc..
>>
>> I have been looking at the meta-ti layer and trying to figure out how it works and how I will integrate it into the yocto build environment, but I thought I would just throw a query out to see if anybody is doing this and if there are any pitfalls I should avoid.
> There's a README in the meta-ti layer, follow the instructions in there.

Hi Koen,

I understand that there is a readme in the meta-ti layer however this 
refers specifically to using Angstrom and associated layers, where as I 
want to build specifically for yocto. So I was looking for pointers for 
abstracting the meta-ti layer form angstrom over to Yocto.

Regards,
Jack.

