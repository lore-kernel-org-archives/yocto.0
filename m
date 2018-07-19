Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C3B27E010F6; Thu, 19 Jul 2018 02:59:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,RCVD_IN_RP_RNBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [87.81.244.161 listed in bl.score.senderscore.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 925A0E00C8B
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 02:59:10 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w6J9x3hU015810
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Thu, 19 Jul 2018 10:59:04 +0100
Message-ID: <3dbc737d1cc637b7c881a6f580ed90ba09ffd8d5.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Uwe Geuder <jrswdnan22@snkmail.com>, yocto@yoctoproject.org
Date: Thu, 19 Jul 2018 10:59:03 +0100
In-Reply-To: <87d0vn60yi.fsf@snkmail.com>
References: <87va9jw1me.fsf@snkmail.com>
	<823e9e2b6aac4afad307982d4757494e91a481db.camel@linuxfoundation.org>
	<87d0vn60yi.fsf@snkmail.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: Why can diffsigs take sometimes really looooong?
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
X-List-Received-Date: Thu, 19 Jul 2018 09:59:12 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Mon, 2018-07-16 at 11:26 +0300, Uwe Geuder wrote:
> On Sun, Jul 15, 2018 at 1:38 PM, Richard Purdie  wrote:
> > On Fri, 2018-07-13 at 19:18 +0300, Uwe Geuder wrote:
> > > At times I find the diffsigs command useful/educational to
> > > understand
> > > what is going on in my build.
> > > 
> > > $ bitbake-diffsigs -t myimage do_image
> > > 
> > > Often the result is shown in no time. However, recently I got
> > > some
> > > cases were it takes 150 (!) minutes to show a simple difference
> > > (1
> > > line
> > > changed in do_install of systemd).
> > > 
> > > In comparision building after that change (with sstate) takes
> > > some 10
> > > minutes. And building everything from scratch (no sstate) takes
> > > just
> > > a
> > > bit over 50 minutes on the same machine.
> > > 
> > > Of course the build can make good use of my 8 cores / 16 threads,
> > > whereas diffsigs seems to run in only 1 core. Still, shouldn't
> > > every
> > > build calculate all the dependencies, so running diffsigs should
> > > only
> > > be
> > > a small fraction of that work?
> > > 
> > > Is there a natural explanation why diffsigs can sometimes be so
> > > slow?
> > > Just curious to understand what is going on there.
> > > 
> > > I am on Rocko 2.4.3 if that makes a difference.
> > 
> > Is your sstate directory on something slow like NFS?
> > 
> 
> No, it is on the same ext4 as the rest of my build area. Backed by an
> Intel NVMe flash drive, so hopefully that is of reasonable quality...
> 
> Here is the output of the time command from a new "record" diffsigs
> run
> shortly after my first posting
> 
> > real    244m8.594s
> > user    137m21.897s
> > sys     8m17.606s
> 
> So there is already more than 2 hours of CPU usage. Because diffsigs
> seems to be single threaded, that is a lower bound even with the best
> filesystem/disk.
> 
> This build environment has been in use in development work for a
> couple of days. So there are many different signatures. But that
> should not make any significant difference if I compare just the 2
> last ones, should it?
> 
> When I had such a long run for the first time I first thought I had
> run in an endless loop. strace showed that the same files were opened
> again and again. However, in the end the command completed. I haven't
> made an effort yet to understand the pattern how it opens these
> files.
> 
> For clean builds with no previous sstate I need "only" something like
> 
> > real	54m53.939s
> > user 3268446 - 103936 = 3164510 = 527m25.10s
> > system 820431 - 1345 = 136m30.86s
> 
> (These numbers are from overlayfs over ext4 on the same disk. Don't
> have
> any numbers without the additional overlayfs handy right now.
> According
> to experience the additional overlayfs leads to very similar wall
> times,
> just significant extra system CPU time)

Based on the above info, it seems there is something scaling badly in
whatever algorithm that code is using :(

I don't remember much about that code in particular, I do know I've
never been happy with its chances of successfully reporting what the
user actually wanted to know. Its been on my todo list for a while to
go back and try and create a command which actually gives the user the
information they wanted but there have been other more pressing
issues...

I'd certainly be interested in understanding where the current code is
scaling badly...

Cheers,

Richard




