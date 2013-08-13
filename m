Return-Path: <gley-yocto@m.gmane.org>
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B776BE01405
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 01:15:53 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1V99lb-00023C-T3
	for yocto@yoctoproject.org; Tue, 13 Aug 2013 10:15:47 +0200
Received: from 213.249.12.88 ([213.249.12.88])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 10:15:47 +0200
Received: from gmane by 213.249.12.88 with local (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 10:15:47 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Robert Berger <gmane@reliableembeddedsystems.com>
Date: Tue, 13 Aug 2013 11:15:36 +0300
Message-ID: <5209EB28.40200@reliableembeddedsystems.com>
References: <CAPhnLPBbv232S0htae3WvEJ2A8UWRWH4Aj7og-bRGySkOqu+tA@mail.gmail.com>
	<3217805.kYDiUIXKQu@helios>
	<20130812091145.GE12589@sestofb10.enea.se>
	<3375908.sLNS3qEgcB@helios>
	<20130812113011.GF12589@sestofb10.enea.se>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 213.249.12.88
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
In-Reply-To: <20130812113011.GF12589@sestofb10.enea.se>
Cc: Paul Eggleton
	<public-paul.eggleton-VuQAYsv1563Yd54FQh9/CA@plane.gmane.org>,
	public-yocto-EtnWKYl6rD/WsZ/bQMPhNw@plane.gmane.org
Subject: Re: [Announcement] Yocto Project 1.5 Milestone 3 now available.
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
X-List-Received-Date: Tue, 13 Aug 2013 08:15:57 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 8bit

Hi,

On 08/12/2013 02:30 PM, Björn Stenberg wrote:
> Paul Eggleton wrote:
>> Right, that's what we would be aiming for. Perhaps you could talk a little
>> bit about how you manage your hardware testing and any additional software
>> and scripts you make use of there?
> 
> We run our tests from buildbot, using an expect script 

I currently run my tests manually, but the plan was to implement
something in expect as well, since this seems to be made exactly for
this kind of stuff.

... but instead of something proprietary I would rather prefer to have a
generic solution where "the community" solves problems together with me.

> to allocate the right serial port (and wait if it is busy), fetch the built files, unpack the rootfs to an NFS disk, reset the board, tftp the kernel and dtb, boot the kernel and start the test suite.
> 
> A line-based timeout is used for for the test suites, meaning that the timeout is reset for each new line of output. This allows us to handle very long-running test cases while still being able detect hung tests rather quickly.
> 
> Multiple images and test suites are built and ran in parallell, which is why the script waits for the serial port. One of the test suites we run is ptest-runner.
> 
> The output of all tests is parsed and stored in a database, cross-referenced with the buildbot build info. We have written an extension to the buildbot web interface presenting the test results as they relate to each build.
> 

Are your scripts available somewhere to give it a try? Do they integrate
into autobuilder?

Regards,

Robert




..."German programmers tend to take it as a personal insult when a fault
is detected in code that they have written." - Debora Weber-Wulff
weberwu@tfh-berlin.de [comp.risks 16.94]

My public pgp key is available,at:
http://pgp.mit.edu:11371/pks/lookup?op=get&search=0x90320BF1



