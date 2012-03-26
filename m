Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 73A84E013E3
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 09:47:45 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2QGlbdF031296;
	Mon, 26 Mar 2012 17:47:37 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 29204-03; Mon, 26 Mar 2012 17:47:33 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2QGlUq7031290
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 26 Mar 2012 17:47:31 +0100
Message-ID: <1332780449.28414.122.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Seebach <peter.seebach@windriver.com>
Date: Mon, 26 Mar 2012 17:47:29 +0100
In-Reply-To: <20120326114405.59b3eacc@wrlaptop>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop>
	<1537192.Q99X1xdoal@helios> <20120323174506.5634af61@wrlaptop>
	<1332609315.28414.19.camel@ted> <1332610903.28414.24.camel@ted>
	<20120326114405.59b3eacc@wrlaptop>
X-Mailer: Evolution 3.2.2- 
Mime-Version: 1.0
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Subject: Re: pseudo interaction issue
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
X-List-Received-Date: Mon, 26 Mar 2012 16:47:46 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-03-26 at 11:44 -0500, Peter Seebach wrote:
> On Sat, 24 Mar 2012 17:41:43 +0000
> Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
> 
> > One or the other of the above on their own doesn't do this. Funky.
> 
> That's very strange.  I wouldn't have expected LOCALSTATEDIR to have
> any effect either way; it might change how pseudo runs, but it shouldn't
> affect whether it's being enabled.
> 
> If we are starting with pseudo loaded, I'm pretty sure it's unsafe to
> unset PSEUDO_PREFIX ever.  After a fork(), pseudo will still be in
> memory, and if PSEUDO_PREFIX is unset, Bad Things Happen.

This is pretty much what we do at the moment, it gets unset after we
load. Pseudo is of course disabled at this point.

I guess we just got lucky to this point and avoided "Bad Things"?

Cheers,

Richard



