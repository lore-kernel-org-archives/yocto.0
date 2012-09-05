Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7D1BDE01385
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 08:29:21 -0700 (PDT)
Received: from localhost ([127.0.0.1]:53170 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T9HXc-0000NX-Em
	for yocto@yoctoproject.org; Wed, 05 Sep 2012 15:29:20 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=msuPnXqNc5wjzVCl4KL8Q/AU7vI=; b=ja91u/p4we4ToF24EH8ABrsnMb2S
	fH8oBfV6SUXquzZEmGLGtfR2kvT5Lk51dUeSwJTFAwqzfYXVrfwAjh9Uw35+ocPI
	38BDFmJIZ+RzIbEN3W4zQk+31dYOrQbJPJf5HKojOBbirFtjArRK9z0cI++fZP2T
	Ea6fRgdcGUi/T6U=
Received: from [195.171.99.130] (port=24665 helo=[192.168.0.33])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T9HXc-0000NT-CM
	for yocto@yoctoproject.org; Wed, 05 Sep 2012 15:29:20 +0000
Message-ID: <50477015.7010603@communistcode.co.uk>
Date: Wed, 05 Sep 2012 16:30:29 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <5044EE55.4050208@communistcode.co.uk>
	<50451A77.1020609@r-finger.com>
	<50472249.1010009@communistcode.co.uk>
	<CAHUNapQmyBhDVfCHD2H2JO1NmSN6atW1XO7uQr+sH-nGJKgiKg@mail.gmail.com>
In-Reply-To: <CAHUNapQmyBhDVfCHD2H2JO1NmSN6atW1XO7uQr+sH-nGJKgiKg@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Sep 2012 15:29:21 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/09/12 16:20, Trevor Woerner wrote:
> On Wed, Sep 5, 2012 at 5:58 AM, Jack Mitchell <ml@communistcode.co.uk> wrote:
>> This is now livefor anyone interested.
>> http://www.pimpmypi.com/blog/blogPost.php?blogPostID=7
> Shouldn't the instructions include a step adding the meta-raspberrypi
> layer to conf/bblayers.conf?

Well spotted Trevor! Fixed and amended.

Thanks,

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


