Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15F42E00750; Mon,  9 Mar 2015 11:31:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW,SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (snoopp.5.20[at]hotmail.fr)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4686BE003FA
	for <yocto@yoctoproject.org>; Mon,  9 Mar 2015 11:31:09 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1YV2SJ-0007lb-N6
	for yocto@yoctoproject.org; Mon, 09 Mar 2015 19:31:07 +0100
Received: from rng31-2-88-169-200-32.fbx.proxad.net ([88.169.200.32])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 19:31:07 +0100
Received: from snoopp.5.20 by rng31-2-88-169-200-32.fbx.proxad.net with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Mon, 09 Mar 2015 19:31:07 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Kfrell <snoopp.5.20@hotmail.fr>
Date: Mon, 9 Mar 2015 18:30:59 +0000 (UTC)
Message-ID: <loom.20150309T192445-878@post.gmane.org>
References: <loom.20150309T171019-54@post.gmane.org>
	<CAJTo0LZSqxRZ7uyQ42rtuuqfrzjn2wr8+5Fvb2paxa5WhA9fvg@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 88.169.200.32 (Mozilla/5.0 (X11; Ubuntu; Linux x86_64;
	rv:35.0) Gecko/20100101 Firefox/35.0)
Subject: Re: Adding new library to yocto project
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
X-List-Received-Date: Mon, 09 Mar 2015 18:31:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

Burton, Ross <ross.burton@...> writes:

> 
> 
> 
> On 9 March 2015 at 16:50, Kfrell
<snoopp.5.20@hotmail.fr> wrote:I added
"libxerces" to my bb image by using IMAGE_INSTALL += " libxerces".
> Then, I try to build my image thru bitbake my-image-test and eveything is
> done correctly but libxerces returns some errors :
> 
> Packages containing libraries get renamed (by default) depending on the
library name, so just because you called the recipe "libxerces" doesn't mean
the resulting package is called that.
> 
> Have a look in tmp/work/[machine]/libxerces/deploy-* for the packages that
were actually generated, it's probably something like libxerces-c.
> 
> Ross
> 
> 

I had a look in this directory but under
tmp/work/[machine]/libxerces/3.1.1-r1 there is only three folders named
xerces-c-3.1.1, licence-destdir and temp. I checked under
tmp/work/deploy/ipk and nothing is actually created.

I have the following errors :

ERROR: This autoconf log indicates errors, it looked at host include and/or
library paths while determining system capabilities.
Rerun configure task after fixing this.
build/tmp/work/oe-linux-gnueabi/libxerces/3.1.1-r1/xerces-c-3.1.1'
ERROR: Function failed: do_qa_configure 
ERROR: Logfile of failure stored
in:build/tmp/work/oe-linux-gnueabi/libxerces/3.1.1-r1/temp/log.do_configure.21943
ERROR: Task 541




