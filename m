Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22BB8E00596
	for <yocto@yoctoproject.org>; Sat, 24 Mar 2012 10:41:54 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2OHfovT009252;
	Sat, 24 Mar 2012 17:41:50 GMT
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 05689-07; Sat, 24 Mar 2012 17:41:46 +0000 (GMT)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id q2OHfewR009245
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Sat, 24 Mar 2012 17:41:41 GMT
Message-ID: <1332610903.28414.24.camel@ted>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Peter Seebach <peter.seebach@windriver.com>
Date: Sat, 24 Mar 2012 17:41:43 +0000
In-Reply-To: <1332609315.28414.19.camel@ted>
References: <2046170.9fCjTlmZqN@helios> <1332472886.1765.1.camel@dongxiao-osel>
	<20120323021635.5b4fc048@wrlaptop>
	<1537192.Q99X1xdoal@helios> <20120323174506.5634af61@wrlaptop>
	<1332609315.28414.19.camel@ted>
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
X-List-Received-Date: Sat, 24 Mar 2012 17:41:55 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sat, 2012-03-24 at 17:15 +0000, Richard Purdie wrote:
> What puzzles me is we get this value from  envbackup[key] =
> os.environ.get("PSEUDO_PREFIX") so its already not in the environment.
> 
> So basically if we read "PSEUDO_PREFIX" from the environment we get
> nothing. If we unset the value back to being "nothing", things break.
> 
> This would imply we have some other issue going on here somewhere...

I've discovered that if I add:

        os.environ["PSEUDO_PREFIX"]  = "/media/build1/poky/build/tmp/sysroots/x86_64-linux/usr"
        os.environ["PSEUDO_LOCALSTATEDIR"]  = "/media/build1/poky/build/tmp/work/i586-poky-linux/bzip2-1.0.6-r5/pseudo/"
        del os.environ["PSEUDO_PREFIX"]
        del os.environ["PSEUDO_LOCALSTATEDIR"]

to the top of fork_off_task(), then "bitbake bzip2 -c compile -f" will
start to fail with the pseudo error like the install/package case.

One or the other of the above on their own doesn't do this. Funky.

Cheers,

Richard


