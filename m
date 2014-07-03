Return-Path: <khczarnowski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7ECFDE006EF; Thu,  3 Jul 2014 02:29:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (khczarnowski[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F26D9E006C4
	for <yocto@yoctoproject.org>; Thu,  3 Jul 2014 02:29:15 -0700 (PDT)
Received: by mail-ie0-f169.google.com with SMTP id rl12so1659540iec.14
	for <yocto@yoctoproject.org>; Thu, 03 Jul 2014 02:29:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=WLHuRubC29fK8B/aQRlb5Aqyj9c9Nr9LoMziCx7K6s8=;
	b=coCIcYi/C9L19SqW8bYAVUDHtB1Mi0MsTyEF8eg6pk/0W5h9W1gezfNUeuhRHpaBp7
	K1Ymn52FVMXuyvoSd1cKSv3WZiF7916GGDjFD2EOG4GOIuHZ9QmI73x832dt0N7+qRuA
	DnxTwDAnQifoVSWaSM2Lt5mk+5Si+RnyHfVaVGy+BWwPe06ZMQAAyaDoPUkD9BOaBl57
	bmWADfBtbfRnh/mltBtLtPEbh2Ocj+SjNrT5A3DmnGXokB5EkcLCeFfucUUUu+ta0F1+
	cr8L8jgZuw8JrR+MZgdb9Hw2f/5g6zOsWp9fC0ZrzWFaTiau6B3gZ4t9F5tT2ZLMfltV
	fRfA==
MIME-Version: 1.0
X-Received: by 10.50.134.135 with SMTP id pk7mr55010948igb.31.1404379754621;
	Thu, 03 Jul 2014 02:29:14 -0700 (PDT)
Received: by 10.50.43.200 with HTTP; Thu, 3 Jul 2014 02:29:14 -0700 (PDT)
In-Reply-To: <CAHqFTYrB7go_riLD6Lb-_0y=YRL6+vDY+hnCK_EZU8sxdVMkeQ@mail.gmail.com>
References: <CAHqFTYrB7go_riLD6Lb-_0y=YRL6+vDY+hnCK_EZU8sxdVMkeQ@mail.gmail.com>
Date: Thu, 3 Jul 2014 11:29:14 +0200
Message-ID: <CAHqFTYpkE=EsNeuUG3v07DkGHz=DZEXCGNr7CE8FsDX_GzH-tg@mail.gmail.com>
From: Krzysztof Czarnowski <khczarnowski@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: git://git.yoctoproject.org/poky issues, meta-clanton_v1.0.0, from behind firewall
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 03 Jul 2014 09:29:30 -0000
Content-Type: text/plain; charset=UTF-8

Sorry for the noise.
Finally resolved by finding a "SOCKS5 proxy" (luckily there was one
available) and changing -Xconnect to -X5. For some reason the HTTP
proxy wasn't good enough.
Regards,
Krzysztof


On Mon, Jun 30, 2014 at 7:14 PM, Krzysztof Czarnowski
<khczarnowski@gmail.com> wrote:
> Hello,
>
> A newbie question, maybe a faq, but I've searched... Sorry if I've
> missed something...
>
> I'm trying to build Galileo BSP, and in particular
> meta-clanton_v1.0.0. My dev machine is behind firewall, but I've read
> the howto:
> https://wiki.yoctoproject.org/wiki/Working_Behind_a_Network_Proxy
> checked that the following netcat command:
> /bin/nc -X connect -x $PROXY:$PORT git.yoctoproject.org 9418
> opens the connection and configured git to use it.
>
> But still I get the following failure when I run setup.sh
> """
> $ ./setup.sh
> Running: git init
> Initialized empty Git repository in
> ./poky/.git/
> Running: git remote add origin git://git.yoctoproject.org/poky
> Running: git fetch origin --depth=3 tags/dylan-9.0.2:tags/dylan-9.0.2
> fatal: Could not read from remote repository.
> Please make sure you have the correct access rights
> and the repository exists.
> """
> So I understand that I reach the remote repository, but still for some
> reason can't read it..
>
> What do I miss? Anyone's experienced similar issues?
> Regards,
> Krzysztof
>
> P.S.
> The dev system is Ubuntu server 13.10.
> $ uname -a
> Linux kczarnow-lxdev 3.11.0-12-generic #19-Ubuntu SMP Wed Oct 9
> 16:20:46 UTC 2013 x86_64 x86_64 x86_64 GNU/Linux

