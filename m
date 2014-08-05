Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14133E007B5; Tue,  5 Aug 2014 12:37:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [208.80.206.84 listed in list.dnswl.org]
Received: from smtp684.redcondor.net (smtp684.redcondor.net [208.80.206.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3053E0030B
	for <yocto@yoctoproject.org>; Tue,  5 Aug 2014 12:37:37 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp684.redcondor.net ({700db0a8-6fb7-4c8b-9b2a-6812225182d8})
	via TCP (outbound) with ESMTPS id 20140805193736018
	for <yocto@yoctoproject.org>; Tue, 05 Aug 2014 19:37:36 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
X-RC-RCPT: <yocto@yoctoproject.org>
Received: from [99.240.204.5] (port=48055 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1XEkY7-0000YM-3E; Tue, 05 Aug 2014 15:37:31 -0400
Date: Tue, 5 Aug 2014 15:37:27 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost
To: Richard Purdie <richard.purdie@linuxfoundation.org>
In-Reply-To: <1407232532.6981.76.camel@ted>
Message-ID: <alpine.LFD.2.11.1408051449500.22646@localhost>
References: <alpine.LFD.2.11.1408050539180.25658@localhost>
	<1407232532.6981.76.camel@ted>
User-Agent: Alpine 2.11 (LFD 23 2013-08-11)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: i assume "ptest" is an all-or-nothing selection, yes?
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
X-List-Received-Date: Tue, 05 Aug 2014 19:37:45 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 5 Aug 2014, Richard Purdie wrote:

> On Tue, 2014-08-05 at 05:40 -0400, Robert P. J. Day wrote:
> >   dev manual, section 5.13.6, clearly implies that ptest is selected
> > either across your build or not at all -- i see no suggestion that you
> > can enable it with, say, package overrides, correct?
>
> Correct.

  i thought as much, just wanted to make sure. and while that might be
obvious to many people, i think a short note at the beginning of that
section wouldn't hurt, but a couple more questions about ptest so i
can make some adjustments all at once, based on what's written here:

http://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html#testing-packages-with-ptest

  toward the end of that section, there is the claim:

"However, you still must add a do_compile_ptest function to build the
test suite. Add a function similar to the following to your recipe:

     do_compile_ptest() {
        oe_runmake buildtest-TESTS
     }


  well, not really ... i did some perusing and there are numerous
ptest-enabled recipes that don't define their own do_compile_ptest()
routine, obviously because the standard compile step handles the
compilation of the test code.

  and, finally, there's this last claim:

"The ptest class automatically copies the file run-ptest to the target
and then runs make install-ptest to run the tests. If this is not
enough, you need to create a do_install_ptest function and make sure
it gets called after the "make install-ptest" completes."

  couple things there. rather than define a do_install_ptest()
routine, i notice a number of recipes simply patch their Makefile to
add the appropriate install-ptest: target, so if one is clever enough
to write the proper Makefile target, one could have a ptest-enabled
recipe with no definition whatsoever of *any* of the do_*_ptest()
routines.

  oh, and about that last claim:

"If this is not enough, you need to create a do_install_ptest function
and make sure it gets called after the "make install-ptest"
completes."

  don't know what you mean by "make sure it gets called ..." since the
code in ptest.bbclass:

        if grep -q install-ptest: Makefile; then
            oe_runmake DESTDIR=${D}${PTEST_PATH} install-ptest
        fi
        do_install_ptest

pretty much guarantees that it will be called -- there is no need for
the developer to "make sure" of it, yes?

  anyway, i think i have a handle on this. any thoughts on the above?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================




