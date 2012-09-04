Return-Path: <jack.mitchell@eumx.net>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9261EE0146C
	for <yocto@yoctoproject.org>; Tue,  4 Sep 2012 01:51:24 -0700 (PDT)
Received: from localhost ([127.0.0.1]:50744 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <jack.mitchell@eumx.net>) id 1T8oqx-0003yH-7f
	for yocto@yoctoproject.org; Tue, 04 Sep 2012 08:51:23 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:mime-version:to:subject:references:in-reply-to
	:content-type:content-transfer-encoding; s=default; bh=mb1EdWasx
	9i1Xa/IpKaQjzlC2lU=; b=N3BlfHyyzLHLcY6RyWz1UXA6d7ruh+LIhgnsLR4Jj
	KQeFJsBTcJYkzMg3ut+FkeVnXuEG5VzkJor+np9+vv9bEiBDlrdhOtOPm/cFDlMh
	j7ecehOo97wEBbHAshQZ9Big8urD2vhKYrKX5mFnECOvSLJkIm8l+q0C41Zee8Zl
	9U=
DomainKey-Signature: a=rsa-sha1; c=nofws; d=eumx.net; h=message-id:date
	:from:mime-version:to:subject:references:in-reply-to
	:content-type:content-transfer-encoding; q=dns; s=default; b=BFX
	hqWpq/knU7Rfmx6hCstH8uihyV9WQfCpyQXNyQeHt/Frps6LyQBHpfxCFDWvtH9D
	3nNzCKzQQDRZ5nUMiLaufXry6axC2VVzNfVcDb46rYT4PWEOAb9xRfOpCoNEQWdz
	2YbN9b8RUOHY0Iz8aRt4ZiJNiF8YQuu4ZNzTXnlA=
Received: from [195.171.99.130] (port=56805 helo=[192.168.0.33])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <jack.mitchell@eumx.net>) id 1T8oqx-0003yD-5G
	for yocto@yoctoproject.org; Tue, 04 Sep 2012 08:51:23 +0000
Message-ID: <5045C155.4040906@eumx.net>
Date: Tue, 04 Sep 2012 09:52:37 +0100
From: Jack Mitchell <jack.mitchell@eumx.net>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5044EE55.4050208@communistcode.co.uk>
	<50451A77.1020609@r-finger.com>
	<5045BF44.9000001@communistcode.co.uk>
In-Reply-To: <5045BF44.9000001@communistcode.co.uk>
X-Mailman-Approved-At: Wed, 05 Sep 2012 15:00:21 -0700
Subject: Re: Building a Custom Raspberry Pi Image using OpenEmbedded and Yocto
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
X-List-Received-Date: Tue, 04 Sep 2012 08:51:24 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 04/09/12 09:43, Jack Mitchell wrote:
> On 03/09/12 22:00, Tomas Frydrych wrote:
>> Hi Jack,
>>
>> On 03/09/12 18:52, Jack Mitchell wrote:
>>> As some of you know I run a small Raspberry Pi community site[1] and I
>>> would like to write a follow up to an earlier blog post about preparing
>>> yourself for programming on the Raspberry Pi with the Yocto Project.
>> I don't know if of any use to you, but we have a recipe for a
>> Yocto-based image for a UPnP audio player, which can be built for the
>> RPi, in Guacamayo[1].
>>
>> Tomas
>>
>> [1] https://github.com/Guacamayo/meta-guacamayo
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> Hi Tomas,
>
> That looks like an interesting layer. I have seen it pop up here and 
> there but have never investigated it properly. Once this post is out 
> the door and I have started experimenting with .
other new image builds and applications I may be in touch!
>
> Cheers,
>


