Return-Path: <eas@sw-optimization.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1486EE00E07; Wed,  8 Nov 2017 07:56:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [81.19.149.126 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx16lb.world4you.com (mx16lb.world4you.com [81.19.149.126])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0190E00D4E
	for <yocto@yoctoproject.org>; Wed,  8 Nov 2017 07:56:21 -0800 (PST)
Received: from [81.19.149.44] (helo=webmail.world4you.com)
	by mx16lb.world4you.com with esmtpa (Exim 4.84_2)
	(envelope-from <eas@sw-optimization.com>)
	id 1eCSiC-0000Ss-G7; Wed, 08 Nov 2017 16:56:20 +0100
MIME-Version: 1.0
Date: Wed, 08 Nov 2017 16:56:20 +0100
From: Eric Schwarz <eas@sw-optimization.com>
To: Jerry Lian <jerry.lian@gmail.com>
In-Reply-To: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
References: <CAE0QtjPDdktSRp6JSUtc_wmxxw5J4fTmP_29PrBEZ8bGo2uBig@mail.gmail.com>
Message-ID: <7b91c698b1dd25c12d10792fa298e48c@sw-optimization.com>
X-Sender: eas@sw-optimization.com
User-Agent: World4You Webmail
X-SA-Do-Not-Run: Yes
X-AV-Do-Run: Yes
X-SA-Exim-Connect-IP: 81.19.149.44
X-SA-Exim-Mail-From: eas@sw-optimization.com
X-SA-Exim-Scanned: No (on mx16lb.world4you.com);
	SAEximRunCond expanded to false
Cc: yocto@yoctoproject.org
Subject: Re: Annoying "rerun to fix" bug for bitbake: task failed, but rerun can fix it.
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
X-List-Received-Date: Wed, 08 Nov 2017 15:56:40 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

Most likely a dependency problem of the package which fails w/ exit code 
1.
Check the dependencies in the recipe and w/ Yocto's bitbake it self.

Cheers
Eric

Am 08.11.2017 16:49, schrieb Jerry Lian:

> I am not sure whether it is a bug or an error: * Quite often, bitbake 
> will fail before finishing, with message like: ... task failed with 
> exit code 1... * But if you rerun bitbake, it will continue to build. * 
> So sometimes I have to rerun many times for finish one build ---- 
> annoying! (by the way, my CPU can run 16 threads)
> 
> Any idea to clear this annoying bug? thanks.

