Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 099B8E00C8F; Tue,  7 Jun 2016 15:20:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D535E00C80
	for <yocto@yoctoproject.org>; Tue,  7 Jun 2016 15:20:49 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u57MKUPU009856; Tue, 7 Jun 2016 23:20:30 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 06QWiqnSBlBW; Tue,  7 Jun 2016 23:20:30 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u57MKQB3009852
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Tue, 7 Jun 2016 23:20:27 +0100
Message-ID: <1465338026.13979.88.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, yocto@yoctoproject.org
Date: Tue, 07 Jun 2016 23:20:26 +0100
In-Reply-To: <2350549.ml0Nc00s8v@peggleto-mobl.ger.corp.intel.com>
References: <575456D5.4080800@mlbassoc.com>
	<CAJTo0LYaBXixDk1vzzt=wFtqYzsFQAtanUa3Hgu-CB86kHGdOw@mail.gmail.com>
	<CAJTo0La74HkwkgqQZwECS2ruzSe-guCCBJFG0_u=e1FBT8q3CA@mail.gmail.com>
	<2350549.ml0Nc00s8v@peggleto-mobl.ger.corp.intel.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: Gary Thomas <gary@mlbassoc.com>
Subject: Re: What's this
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
X-List-Received-Date: Tue, 07 Jun 2016 22:20:54 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2016-06-08 at 09:24 +1200, Paul Eggleton wrote:
> On Tue, 07 Jun 2016 17:20:12 Burton, Ross wrote:
> > On 7 June 2016 at 17:02, Burton, Ross <ross.burton@intel.com>
> > wrote:
> > > It means the hash calculated my the bitbake master was different
> > > to the
> > > hash calculated when the worker started up.  This usually means
> > > that
> > > you're
> > > using something like ${TIME} in the recipe but not marking it
> > > appropriatly
> > > so the cache ignores it.  Do you have a base-files bbappend that
> > > writes a
> > > timestamp?
> > 
> > The always wise Joshua reminds me that if your DISTRO_VERSION
> > contains
> > ${DATETIME} then this happens.  If you're doing this then you'll
> > want to
> > set [vardepsexclude] on DISTRO_VERSION to stop the DATETIME from
> > getting
> > into the cache (or not put the current date/time into the distro
> > version).
> 
> I think we need to handle this situation better - if it's really
> worth 
> producing an error about then it's worth producing an error message
> that 
> people can actually understand, particularly as it's recently added 
> validation.

It was silently running into problems due to this all along but not
reporting it. Its now reporting it which is better than silently things
behaving strangely.

Its very hard for bitbake to know why the hashes differ, it only knows
the values afterwards and hence that they've changed, the information
about how that hash was constructed is not present in any of bitbake's
caches. That implies to have better messages we need to write out more
data.

I did add a patch to make bitbake write out data to allow
reconstruction of basehash (which is part of taskhash). Sadly the
parsing performance was diabolical (10 times slower). I think that
could perhaps be improved if the files don't require an atomic move
during creation but I haven't had time to look further at it.

So whilst I do agree, what is the price people are willing to pay to
have those better messages?

Cheers,

Richard





