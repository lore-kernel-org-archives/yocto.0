Return-Path: <winfried.dobbe@xmsnet.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BDC0E00A49; Thu, 15 Oct 2015 06:51:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.2 required=5.0 tests=BAYES_05,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [37.251.0.169 listed in list.dnswl.org]
	* -0.5 BAYES_05 BODY: Bayes spam probability is 1 to 5%
	*      [score: 0.0192]
X-Greylist: delayed 387 seconds by postgrey-1.32 at yocto-www;
	Thu, 15 Oct 2015 06:51:05 PDT
Received: from smtp2.ispfabriek.nl (smtp2.ispfabriek.nl [37.251.0.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48A9EE00473
	for <yocto@yoctoproject.org>; Thu, 15 Oct 2015 06:51:05 -0700 (PDT)
Received: from localhost (unknown [10.3.1.68])
	by smtp2.ispfabriek.nl (Postfix) with ESMTP id BF3E643611;
	Thu, 15 Oct 2015 13:44:35 +0000 (UTC)
X-Virus-Scanned: amavisd-new at ispfabriek.nl
Received: from smtp2.ispfabriek.nl ([10.3.1.141])
	by localhost (mailscan2.ispfabriek.nl [10.3.1.68]) (amavisd-new,
	port 10026)
	with ESMTP id S1aPKxSGJQke; Thu, 15 Oct 2015 15:44:23 +0200 (CEST)
Received: from webmail.xmsnet.nl (unknown [37.251.0.164])
	(Authenticated sender: winfried.dobbe@xmsnet.nl)
	by smtp2.ispfabriek.nl (Postfix) with ESMTPA id E2AF043607;
	Thu, 15 Oct 2015 15:44:22 +0200 (CEST)
Received: from 193.172.204.20 by webmail.xmsnet.nl with HTTP;
	Thu, 15 Oct 2015 15:44:22 +0200
Message-ID: <1d2fa93691cbe45f921e507c15f78dca.squirrel@webmail.xmsnet.nl>
In-Reply-To: <CAP2S6e4fF+JnZOhcyve8ACOWaNxbR6ZFLoyozR-4h57BOtiWCw@mail.gmail.com>
References: <CAP2S6e4fF+JnZOhcyve8ACOWaNxbR6ZFLoyozR-4h57BOtiWCw@mail.gmail.com>
Date: Thu, 15 Oct 2015 15:44:22 +0200
From: winfried.dobbe@xmsnet.nl
To: yocto@yoctoproject.org
User-Agent: SquirrelMail/1.4.22
MIME-Version: 1.0
X-Priority: 3 (Normal)
Importance: Normal
Subject: Re: how to deploy gdbserver ?
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
X-List-Received-Date: Thu, 15 Oct 2015 13:51:09 -0000
Content-Type: text/plain;charset=iso-8859-1
Content-Transfer-Encoding: 8bit

> Hi everyone,
>
> I want to be able to debug my target machine (raspberrypi) remotely
> through
> qtcretor on host.
>
> I can't seem to find a way to deploy the gdbserver software though.
> I built the gdb-cross-arm but don't see any gdbserver on the target with
> hob (poky 1.7.2) ?
>
> What am I missing ?

When I build my image with

EXTRA_IMAGE_FEATURES += "tools-debug"

both gdb and gdbserver are installed in the target rootfs. Remote
debugging worked out-of-the-box with QtCreator.





