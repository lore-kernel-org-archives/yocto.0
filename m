Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D8DEE00CEC; Wed,  8 Jun 2016 04:31:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9191CE00CE5
	for <yocto@yoctoproject.org>; Wed,  8 Jun 2016 04:31:01 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u58BUgeA014533; Wed, 8 Jun 2016 12:30:42 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id Pl9ityUEbHFm; Wed,  8 Jun 2016 12:30:42 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u58BUaS8014528
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Wed, 8 Jun 2016 12:30:37 +0100
Message-ID: <1465385436.13979.97.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
Date: Wed, 08 Jun 2016 12:30:36 +0100
In-Reply-To: <1804687.ljF0T5WDxz@peggleto-mobl.ger.corp.intel.com>
References: <575456D5.4080800@mlbassoc.com>
	<2350549.ml0Nc00s8v@peggleto-mobl.ger.corp.intel.com>
	<1465338026.13979.88.camel@linuxfoundation.org>
	<1804687.ljF0T5WDxz@peggleto-mobl.ger.corp.intel.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org, Gary Thomas <gary@mlbassoc.com>
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
X-List-Received-Date: Wed, 08 Jun 2016 11:31:06 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2016-06-08 at 20:59 +1200, Paul Eggleton wrote:
> On Tue, 07 Jun 2016 23:20:26 Richard Purdie wrote:
> > On Wed, 2016-06-08 at 09:24 +1200, Paul Eggleton wrote:
> > > On Tue, 07 Jun 2016 17:20:12 Burton, Ross wrote:
> > > > On 7 June 2016 at 17:02, Burton, Ross <ross.burton@intel.com>
> > > > wrote:
> > > > > It means the hash calculated my the bitbake master was
> > > > > different
> > > > > to the hash calculated when the worker started up.  This
> > > > > usually means
> > > > > that you're using something like ${TIME} in the recipe but
> > > > > not marking 
> > > > > it appropriatly so the cache ignores it.  Do you have a base
> > > > > -files
> > > > > bbappend that writes a timestamp?
> > > > 
> > > > The always wise Joshua reminds me that if your DISTRO_VERSION
> > > > contains ${DATETIME} then this happens.  If you're doing this
> > > > then
> > > > you'll want to set [vardepsexclude] on DISTRO_VERSION to stop
> > > > the
> > > > DATETIME from getting into the cache (or not put the current
> > > > date/time
> > > > into the distro version).
> > > 
> > > I think we need to handle this situation better - if it's really
> > > worth producing an error about then it's worth producing an error
> > > message
> > > that people can actually understand, particularly as it's
> > > recently added
> > > validation.
> > 
> > It was silently running into problems due to this all along but not
> > reporting it. Its now reporting it which is better than silently
> > things
> > behaving strangely.
> 
> What are the actual consequences in a situation like this where we 
> have something like ${DATETIME} in another variable referenced by the
> task?

A mismatch means the cached internal values bitbake is using on the
cooker/server side don't match what the worker is actually doing. Its
hard to say for sure exactly what impact that would have.

If for example its in a do_build task, it means that some invalid data
may be written out to the do_build sigdata file and confuse later build
analysis based on those files. You can usually tell such a file by the
fact its named with one hash name but when you compute the value from
the entries in the file, you get a different hash.

If its a more important task like do_install, it could mean something
doesn't rerun when it should, or vice versa and the effect of a corrupt
sidinfo/sigdata is more significant.

With the changes to error in these cases, we get to know about cases of
mismatch and we went and fixed the majority of causes of these. I
believe those mismatches were in part at fault for things like diffsigs
not working as expected in some cases.

> I haven't looked at all of the code involved (and that's probably the
> root of my problem) but I don't quite understand how this is coming
> about. DATE and TIME are supposed to be determined at the start of
> the build and explicitly passed to the worker, so they don't change
> during the build. What am I missing?

Bitbake computes the hashes at parse time and caches them. At run time,
it then builds a new data store in the worker. These errors come about
when the values in the cache from parsing don't match the runtime
execution environment.
 
> > Its very hard for bitbake to know why the hashes differ, it only
> > knows
> > the values afterwards and hence that they've changed, the
> > information
> > about how that hash was constructed is not present in any of
> > bitbake's
> > caches. That implies to have better messages we need to write out
> > more
> > data.
> > 
> > I did add a patch to make bitbake write out data to allow
> > reconstruction of basehash (which is part of taskhash). Sadly the
> > parsing performance was diabolical (10 times slower). I think that
> > could perhaps be improved if the files don't require an atomic move
> > during creation but I haven't had time to look further at it.
> > 
> > So whilst I do agree, what is the price people are willing to pay
> > to
> > have those better messages?
> 
> Clearly a 10x slowdown is unacceptable, hopefully we can find another
> way of 
> dealing with this. I guess if we're able to do nothing else a brief 
> explanation of what to look for (i.e. variables that might change
> with time) 
> in the error message would be helpful, but I hope we can do better
> than that.

So do I, its a time problem on my part to look into it. As mentioned
above, I believe this problem was meaning diffsigs was unreliable and
it was having other unknown impact on builds rebuilding when they
shouldn't or vice versa. I believe those are important to fix. We need
better sstate hash debugging/telemetry but exactly how to do this
without performance impact remains to be seen. I'm continue to think on
it (along with too many other issues) but am open to ideas.

Cheers,

Richard

