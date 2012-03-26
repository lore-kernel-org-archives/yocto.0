Return-Path: <Peter.Seebach@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C0185E011D1
	for <yocto@yoctoproject.org>; Mon, 26 Mar 2012 13:41:41 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id q2QKfc2x011933
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Mon, 26 Mar 2012 13:41:39 -0700 (PDT)
Received: from wrlaptop (172.25.40.226) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Mon, 26 Mar 2012 13:41:39 -0700
Date: Mon, 26 Mar 2012 15:41:37 -0500
From: Peter Seebach <peter.seebach@windriver.com>
To: Richard Purdie <richard.purdie@linuxfoundation.org>
Message-ID: <20120326154137.4e613c70@wrlaptop>
In-Reply-To: <1332609315.28414.19.camel@ted>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop> <1537192.Q99X1xdoal@helios>
	<20120323174506.5634af61@wrlaptop> <1332609315.28414.19.camel@ted>
X-Mailer: Claws Mail 3.7.8 (GTK+ 2.24.4; x86_64-pc-linux-gnu)
MIME-Version: 1.0
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
X-List-Received-Date: Mon, 26 Mar 2012 20:41:42 -0000
Content-Type: text/plain; charset="US-ASCII"
Content-Transfer-Encoding: 7bit

Oh, nevermind, I just realized:  We use antimagic as the implementation
goo for PSEUDO_DISABLED.

So a call to os.popen() from a program which has PSEUDO_DISABLED set is
going to think it's in antimagic mode.

And suddenly, the trick is revealed:

os.popen() is bypassing all the runqueue stuff which is trying to
ensure that the environment is in a valid state.  So if bitbake code
calls os.popen(), it may behave weirdly, for the same reason that any
other direct invocation of fork() or system() or whatnot would behave
weirdly -- because bitbake is running with pseudo in a strange state.

So I think the thing is:

Because bitbake is running with PSEUDO_DISABLED, any child process that
is not explicitly set to either enable or unload pseudo is going to be
running under pseudo, with PSEUDO_DISABLED.  And that means we need to
ensure that PSEUDO_PREFIX stays set, because we need that even when
pseudo is disabled.  (It's used during some of the initial setup
sanity checks.)

-s
-- 
Listen, get this.  Nobody with a good compiler needs to be justified.

