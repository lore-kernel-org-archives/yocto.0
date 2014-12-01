Return-Path: <incnews@jenslucius.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A3829E00872; Mon,  1 Dec 2014 07:51:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [81.169.146.217 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 373 seconds by postgrey-1.32 at yocto-www;
	Mon, 01 Dec 2014 07:51:54 PST
Received: from mo4-p00-ob.smtp.rzone.de (mo4-p00-ob.smtp.rzone.de
	[81.169.146.217])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 769A2E0030B
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 07:51:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; t=1417449112; l=993;
	s=domk; d=jenslucius.de;
	h=Content-Transfer-Encoding:Content-Type:Subject:To:MIME-Version:From:
	Date; bh=rd8Buai6Ml9FeQXjfztK3Z3AoB0=;
	b=wn1LRvf55Wl/lAjh3vWE/qqE5Me6Irb+MU3wXvqsIxosGZFIYTM/IorhomnnHcswFS2
	uxd2fTlxi8DODu2VpA6ZQMQQcVxQtbDk+oIrjF0UeY+kbeminSE6HI5L0Uu8DasN4dJg0
	cuJhQYTPbqri5NxlKUMiVafpG25FF0hE544=
X-RZG-AUTH: :JWIHe0W/aN/Hg12BLSzL3z7LlaxFnIKmofguyxtBBEzwL1PfgREHsiFrwQXmuti4
X-RZG-CLASS-ID: mo00
Received: from [192.168.2.12] (p5B0E3657.dip0.t-ipconnect.de [91.14.54.87])
	by smtp.strato.de (RZmta 36.2 DYNA|AUTH)
	with ESMTPSA id 3005c3qB1FjcZuo
	(using TLSv1 with cipher DHE-RSA-AES256-SHA (256/256 bits))
	(Client did not present a certificate) for <yocto@yoctoproject.org>;
	Mon, 1 Dec 2014 16:45:38 +0100 (CET)
Message-ID: <547C8D29.9060007@jenslucius.de>
Date: Mon, 01 Dec 2014 16:45:45 +0100
From: Jens Lucius <incnews@jenslucius.de>
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Custom recipe not working with 1.7.0 any more
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
X-List-Received-Date: Mon, 01 Dec 2014 15:51:56 -0000
Content-Type: text/plain; charset=ISO-8859-15; format=flowed
Content-Transfer-Encoding: 7bit

Hello,

I am building pjsip with a custom receipe and up until now everything 
worked fine.

I was building this layer in 1.5.x and 1.6.x, I tried to build my layer 
in 1.7.0 now and had to change a few minor things with other recipes, 
but my pjsip receipe is not working any more.

First problem are these lines:

do_configure_prepend () {
         echo "#define PJMEDIA_AUDIO_DEV_HAS_ALSA       1" > 
pjlib/include/pj/config_site.h
         echo "#define PJMEDIA_AUDIO_DEV_HAS_PORTAUDIO  0" >> 
pjlib/include/pj/config_site.h
}

Does complain about not finding the directory. Seems the work is not 
done from within the work directory any more?

I fixed the path with a ${S} but then I ran into the next issue:

The content of the configure command is a "./aconfigure" which is also 
not working any more (because we are in the wrong dir?).

If I work around that, I get the next error. Does anyone know what 
change introduced this and how it can be fixed (or not)?

Thanks,

Jens Lucius


