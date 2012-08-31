Return-Path: <ml@communistcode.co.uk>
Received: from eumx.net (eumx.net [91.82.101.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ED51CE0074B
	for <yocto@yoctoproject.org>; Fri, 31 Aug 2012 02:26:55 -0700 (PDT)
Received: from localhost ([127.0.0.1]:56925 helo=eumx.net)
	by eumx.net with esmtp (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7NV8-00005W-WB
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 09:26:55 +0000
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=eumx.net; h=message-id
	:date:from:reply-to:mime-version:to:subject:references
	:in-reply-to:content-type:content-transfer-encoding; s=default;
	bh=KtsxECVWZuTArO/v1qG7owubYqs=; b=ba4wuDYBBQ0BUYM3SzjpIOWrnaX8
	eE311BBDVQ/cQsI17dacpN8t/Pq8ya0mmoug++OzVUNmYbB1lMXZ8ZCf1nuJVBz3
	xGTx2+LJLnzHt4l/enHuDFO7KsIE9qfvfRwXBFuxOawToLrJ/m9yf/n/gTG539wz
	hmq06R+pDv/l4As=
Received: from [195.171.99.130] (port=7674 helo=[192.168.0.33])
	by eumx.net with esmtpa (Exim 4.72)
	(envelope-from <ml@communistcode.co.uk>) id 1T7NV8-00005Q-U1
	for yocto@yoctoproject.org; Fri, 31 Aug 2012 09:26:54 +0000
Message-ID: <504083B8.7050102@communistcode.co.uk>
Date: Fri, 31 Aug 2012 10:28:24 +0100
From: Jack Mitchell <ml@communistcode.co.uk>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:15.0) Gecko/20120828 Thunderbird/15.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5040751B.2070900@communistcode.co.uk> <1800372.7lpHqO07Rq@helios>
	<50407985.7000108@communistcode.co.uk>
	<50407DDE.8070208@r-finger.com>
	<50407F73.5060308@communistcode.co.uk>
	<5040814D.8030106@r-finger.com>
	<CAK18fxG=VeHuVgoOz9zpe-am+NCPodAVVecDNFgzDTAtNAFFHw@mail.gmail.com>
In-Reply-To: <CAK18fxG=VeHuVgoOz9zpe-am+NCPodAVVecDNFgzDTAtNAFFHw@mail.gmail.com>
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
X-List-Received-Date: Fri, 31 Aug 2012 09:26:56 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 31/08/12 10:20, Andrei Gherzan wrote:
> On Fri, Aug 31, 2012 at 12:18 PM, Tomas Frydrych 
> <tf+lists.yocto@r-finger.com <mailto:tf+lists.yocto@r-finger.com>>wrote:
>
>     On 31/08/12 10:10, Jack Mitchell wrote:
>     > Thanks for the suggestion but unfortunately no dice. It was working
>     > about a week ago with this BBMASK...The only big change I can see is
>     > that omxplayer now depends in libav, but I have tried just
>     masking the
>     > whole recipes-multimedia path with the same result, so I don't
>     it's that.
>
>
>     I think the poky-raspberrypi.conf is overriding your BBMASK and it no
>     longer masks out libav, see
>     https://github.com/djwillis/meta-raspberrypi/commit/3e0cf999e8fe547a52cb8af28eefdf0f8482daba
>
>
> yes. BBMASK is set in distro conf. I will fix it. Wait a sec.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

Cheers Andrei, that fixed the parsing issue!

-- 

   Jack Mitchell (jack@embed.me.uk)
   Embedded Systems Engineer
   http://www.embed.me.uk

--


