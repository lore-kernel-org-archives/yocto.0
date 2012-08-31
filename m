Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E9F09E0074B
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 02:08:42 -0700 (PDT)
Received: from localhost ([127.0.0.1]:52643 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7NDW-0007zd-3u
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 09:08:42 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=aw4ZkwE7uVdIw6Z6as0WTH4OU+I=; b=c6nT8/qXDdzWWC0kgK+yKFlqDB/U
	uZe3cgpLgb3kyIRiJ++0V4fjssrP5bUUYL5a+SUWBNNedgX0YZ02IYz4/0zDjm5j
	IHhXcEsvBWQ1VZvdGJXBDQd5yUVyK1RJzWQn29kZuGwEvUqM8x428NSUiCi/Ujm7
	qMxK/hLYPmpsJDQ=
Received: from [195.171.99.130] (port=5802 helo=[192.168.0.33])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7NDW-0007za-1j
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 09:08:42 +0000
Message-ID: <50407F73.5060308@communistcode.co.uk>
Date: Fri, 31 Aug 2012 10:10:11 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5040751B.2070900@communistcode.co.uk> <1800372.7lpHqO07Rq@helios>
	<50407985.7000108@communistcode.co.uk>
	<50407DDE.8070208@r-finger.com>
In-Reply-To: <50407DDE.8070208@r-finger.com>
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
X-List-Received-Date: Fri, 31 Aug 2012 09:08:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 31/08/12 10:03, Tomas Frydrych wrote:
> On 31/08/12 09:44, Jack Mitchell wrote:
>> My BBMASK is:
>>
>>     BBMASK =
>>    
>> "meta-raspberrypi/recipes-multimedia/libav|meta-raspberrypi/recipes-core/systemd"
> I think it matches against full paths, so try:
>
> ".*/meta-raspberrypi/recipes-multimedia/libav|.*/meta-raspberrypi/recipes-core/systemd"
>
> Tomas

Thanks for the suggestion but unfortunately no dice. It was working 
about a week ago with this BBMASK...The only big change I can see is 
that omxplayer now depends in libav, but I have tried just masking the 
whole recipes-multimedia path with the same result, so I don't it's that.

>
>>
>>
>>
>> Does this BBMASK not cover:
>>
>>    
>> /home/jack/Projects/poky-rasp/meta-raspberrypi/recipes-multimedia/libav/libav_0.7.4.bbappend
>>
>>
>>
>> Cheers,
>>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


