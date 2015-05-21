Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81A96E009E5; Thu, 21 May 2015 07:30:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAB8EE009C2
	for <yocto@yoctoproject.org>; Thu, 21 May 2015 07:29:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t4LETofu023074; Thu, 21 May 2015 15:29:50 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id pj3afP59Cv9V; Thu, 21 May 2015 15:29:50 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	t4LETHZ6023041
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Thu, 21 May 2015 15:29:45 +0100
Message-ID: <1432218557.12832.23.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Thu, 21 May 2015 15:29:17 +0100
In-Reply-To: <2022355.kJ2gG9TIlz@peggleto-mobl.ger.corp.intel.com>
References: <CABc_YGCU1KaKpSZr24-BO2cDHS-s5qkp1j1U2ri+UCoa-zrc0w@mail.gmail.com>
	<2022355.kJ2gG9TIlz@peggleto-mobl.ger.corp.intel.com>
X-Mailer: Evolution 3.12.10-0ubuntu1~14.10.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: Removing do_compile task and ordering problem
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
X-List-Received-Date: Thu, 21 May 2015 14:30:15 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2015-05-21 at 13:55 +0100, Paul Eggleton wrote:
> Hi Marcin,
> 
> On Thursday 21 May 2015 12:47:05 Marcin Krzemiński wrote:
> > I am writing recipe that inherits from *native*.
> > I removed do_compile task using: *deltask do_compile*
> > When i was ruing bitbake my-recipe all works fine, but when I added recipe
> > to *EXTRA_IMAGEDEPENDS *and run* bitbake core-image-minimal *tasks were
> > reordered in some strange way that task do_install was performed before
> > do_fetch.
> > When I hanged *deltask do_compile *to *do_compile[noexec] = "1" * all went
> > back to normal.
> > I found *deltask *in manual so I do not know, is it a bug or not?
> 
> I suspect this is because all deltask does is delete the task, it does not 
> reconnect the dependency chain such that tasks that depended on the deleted 
> task would depend on the tasks that the deleted task depended upon, so what 
> you get in this case is do_install no longer having any dependencies. To be 
> honest the current behaviour seems reasonable to me, though it is not 
> immediately obvious and ought to be described in the manual. I think in your 
> situation you really do want to set the noexec flag rather than using deltask.

Correct, this is basically the difference between deltask and noexec.
noexec has the behaviour you want in this case and we should clarify in
the manual.

Cheers,

Richard




