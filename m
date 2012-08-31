Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A001E004AB
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 01:43:26 -0700 (PDT)
Received: from localhost ([127.0.0.1]:33599 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7Mp3-00079f-7c
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 08:43:25 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=QhiRSo+EkRL57e+pKs01S3GzhQk=; b=slRCBmsLFPj0qjbtqcPbAwBUZVEb
	uLltewLu7cf61PiUPJa+qZZhqH9J4yKAcoVqIrcmFkW2NTCBUKP5sCelB9CmQ8Df
	ujcyObG+m0BlBX8iMx/AutVJYf84d1bJJhcEs9o0p3MNiXMr8RJuj6MhcUDonUhL
	a+nVK1cMtBtKtfo=
Received: from [195.171.99.130] (port=2926 helo=[192.168.0.33])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7Mp3-00079c-2t
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 08:43:25 +0000
Message-ID: <50407985.7000108@communistcode.co.uk>
Date: Fri, 31 Aug 2012 09:44:53 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <5040751B.2070900@communistcode.co.uk> <1800372.7lpHqO07Rq@helios>
In-Reply-To: <1800372.7lpHqO07Rq@helios>
Subject: Re: meta-raspberry pi libav bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: ml@communistcode.co.uk
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 31 Aug 2012 08:43:26 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 31/08/12 09:30, Paul Eggleton wrote:
> On Friday 31 August 2012 09:26:03 Jack Mitchell wrote:
>> I'm attempting to build for the Raspberry Pi again today and I have hit
>> a problem with libav. I have it BBMASK'ed in my local.conf however it
>> seems the recipe still gets sanity checked and can't find the recipe to
>> go with the bbappend so it fails.
> If it's still being in any way considered by the build system when parsing
> actually starts, it's not properly BBMASKed. Check that your regex is valid.
>
> Cheers,
> Paul
>

So my error is:

    Pseudo is not present but is required, building this first before
    the main build
    Parsing recipes: 100% |#########################################|
    Time: 00:02:43
    Parsing of 828 .bb files complete (0 cached, 828 parsed). 1124
    targets, 46 skipped, 1 masked, 0 errors.
    ERROR: No recipes available for:
    /home/jack/Projects/poky-rasp/meta-raspberrypi/recipes-multimedia/libav/libav_0.7.4.bbappend
    ERROR: Command execution failed: Exited with 1

    Summary: There were 2 ERROR messages shown, returning a non-zero
    exit code.



My BBMASK is:

    BBMASK =
    "meta-raspberrypi/recipes-multimedia/libav|meta-raspberrypi/recipes-core/systemd"



Does this BBMASK not cover:

    /home/jack/Projects/poky-rasp/meta-raspberrypi/recipes-multimedia/libav/libav_0.7.4.bbappend


Cheers,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


