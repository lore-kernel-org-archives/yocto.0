Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E214AE0146C
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 01:42:35 -0700 (PDT)
Received: from localhost ([127.0.0.1]:57219 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T8oiQ-0003gw-SY
	for yocto@yoctoproject.org; Tue, 04 Sep 2012 08:42:34 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=ZQ+TpqZUKeui0uLjT+Peqiww430=; b=G7FgiKHX8eFzLAVHAtWVNPWGs04Z
	PN1deSE4bHi09bHEuvp0Hq9cNvh8ZzEKuWfUFXyL0Ynfv7tME4RUldBSXU58q34n
	Cx/4hjfhTsnM1YQRs3Cs+B51tOdeFGXLDVky3AXITApBNKPFboKYHbkgG8PDS5ei
	UgxcEdvIEkNSz/o=
Received: from [195.171.99.130] (port=16551 helo=[192.168.0.33])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T8oiQ-0003gs-Q5
	for yocto@yoctoproject.org; Tue, 04 Sep 2012 08:42:34 +0000
Message-ID: <5045BF44.9000001@communistcode.co.uk>
Date: Tue, 04 Sep 2012 09:43:48 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5044EE55.4050208@communistcode.co.uk>
	<50451A77.1020609@r-finger.com>
In-Reply-To: <50451A77.1020609@r-finger.com>
Subject: Re: Building a Custom Raspberry Pi Image using OpenEmbedded and Yocto
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
X-List-Received-Date: Tue, 04 Sep 2012 08:42:36 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 03/09/12 22:00, Tomas Frydrych wrote:
> Hi Jack,
>
> On 03/09/12 18:52, Jack Mitchell wrote:
>> As some of you know I run a small Raspberry Pi community site[1] and I
>> would like to write a follow up to an earlier blog post about preparing
>> yourself for programming on the Raspberry Pi with the Yocto Project.
> I don't know if of any use to you, but we have a recipe for a
> Yocto-based image for a UPnP audio player, which can be built for the
> RPi, in Guacamayo[1].
>
> Tomas
>
> [1] https://github.com/Guacamayo/meta-guacamayo
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Hi Tomas,

That looks like an interesting layer. I have seen it pop up here and 
there but have never investigated it properly. Once this post is out the 
door and I have started experimenting with .

Cheers,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


