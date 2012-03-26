Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 879D0E013DA
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 02:24:17 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2Q9O7pm023795;
	Mon, 26 Mar 2012 10:24:07 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 20450-03; Mon, 26 Mar 2012 10:24:03 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2Q9Nw1L023789
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Mon, 26 Mar 2012 10:23:59 +0100
Message-ID: <1332753838.28414.98.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Seebach <peter.seebach@windriver.com>
Date: Mon, 26 Mar 2012 10:23:58 +0100
In-Reply-To: <20120326024325.2dfd0f59@wrlaptop>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop>
	<1537192.Q99X1xdoal@helios> <20120323174506.5634af61@wrlaptop>
	<1332609315.28414.19.camel@ted> <20120326024325.2dfd0f59@wrlaptop>
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
X-List-Received-Date: Mon, 26 Mar 2012 09:24:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2012-03-26 at 02:43 -0500, Peter Seebach wrote:
> On Sat, 24 Mar 2012 17:15:15 +0000
> Richard Purdie <richard.purdie@linuxfoundation.org> wrote:
> 
> > This implies that once we enable pseudo for a child, there is some
> > change in the parent which persists.
> 
> Hmm.
> 
> Is the parent running with pseudo loaded?  If it were, then I would
> expect this -- pseudo does some environment magic that can affect the
> parent, and also cause it to stash values for later restoration.

BitBake always runs with pseudo loaded but disabled. When we fork a
child, we decide whether to enable it or not and setup the environment
to either bring pseudo to life, or unload it from memory entirely.

It sounds to me like our enable/disable code confuses the heck out of
pseudo in the parent environment, likely overwriting a stashed value
which it needs to be able to find itself again (prefix/localstate).

Obviously we can change the way we manipulate the environment although
that isn't entirely straightforward as we need to ensure the pseudo
paths don't leak into sstate package checksums for example.

Cheers,

Richard




