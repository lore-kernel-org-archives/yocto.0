Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D3CA3E01423
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 14:53:47 -0700 (PDT)
Received: from localhost ([127.0.0.1]:42916 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T9NXe-0002uu-TQ
	for yocto@yoctoproject.org; Wed, 05 Sep 2012 21:53:46 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:cc:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=h/TqRKNNerOfoedeNkAeSvq4ci4=; b=om5vSw+0PGtgS1c8fnE0nxNs/BZI
	JZ8sfwM7/TV0y2BY6sfclSAqYTqhS09KKgySKsh3FiHsTN4FQhkIgdFJ/ia+vz8F
	X2umtvVlhPEgxQECScBU0hfr6FXRKTo3Rl/+GLR2JG2wSko7DLEoV0CWiipsiXN+
	bce5+WdCA7BVl0M=
Received: from cpc2-cmbg15-2-0-cust171.5-4.cable.virginmedia.com
	([86.26.12.172]:54090 helo=[192.168.1.113])
	by eumx.net with esmtpsa (TLS1.0:DHE_RSA_AES_256_CBC_SHA1:32)
	(Exim 4.72) (envelope-from <ml@communistcode.co.uk>)
	id 1T9NXe-0002ur-R1
	for yocto@yoctoproject.org; Wed, 05 Sep 2012 21:53:46 +0000
Message-ID: <5047C9E8.4030604@communistcode.co.uk>
Date: Wed, 05 Sep 2012 22:53:44 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:15.0) Gecko/20120824 Thunderbird/15.0
MIME-Version: 1.0
CC: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <5044EE55.4050208@communistcode.co.uk>
	<50451A77.1020609@r-finger.com>
	<50472249.1010009@communistcode.co.uk>
	<CAHUNapQmyBhDVfCHD2H2JO1NmSN6atW1XO7uQr+sH-nGJKgiKg@mail.gmail.com>
	<50477015.7010603@communistcode.co.uk>
	<CAHUNapTnkzJtpfeXeqpTqB1yHd43gOwWFNpDnGZqQDU-fWPUUg@mail.gmail.com>
In-Reply-To: <CAHUNapTnkzJtpfeXeqpTqB1yHd43gOwWFNpDnGZqQDU-fWPUUg@mail.gmail.com>
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
X-List-Received-Date: Wed, 05 Sep 2012 21:53:48 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/09/2012 18:13, Trevor Woerner wrote:
> I also found that I had to add:
>
>      BB_DANGLINGAPPENDS_WARNONLY = "yes"
>
> at the end of my conf/local.conf since I received a:
>
>      ERROR: No recipes available for:
>        /home/trevor/devel/yocto/raspi/poky/meta-raspberrypi/recipes-multimedia/libav/libav_0.7.4.bbappend
>
> the first time I tried baking (even when using the exact commits for
> both poky and meta-raspberrypi as specified in the instructions).
> Maybe it's just me?

Correct again Trevor, I've added the appropriate BBMASK required!

Thanks for taking the time to go over it all.

Cheers,
Jack

