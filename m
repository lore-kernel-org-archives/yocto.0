Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F0BB1E0082F; Wed, 29 Oct 2014 06:50:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00, DKIM_ADSP_CUSTOM_MED,
	FREEMAIL_FROM,NML_ADSP_CUSTOM_MED,RCVD_IN_DNSWL_LOW,SPF_HELO_PASS
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (marc.szymkowiak91[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.0 DKIM_ADSP_CUSTOM_MED No valid author signature, adsp_override is
	*      CUSTOM_MED
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.9 NML_ADSP_CUSTOM_MED ADSP custom_med hit,
	and not from a mailing list
Received: from plane.gmane.org (plane.gmane.org [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9648BE007C0
	for <yocto@yoctoproject.org>; Wed, 29 Oct 2014 06:50:06 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1XjTdS-0007a5-OS
	for yocto@yoctoproject.org; Wed, 29 Oct 2014 14:50:03 +0100
Received: from r1.office.abatplus.de ([109.233.138.66])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 29 Oct 2014 14:50:02 +0100
Received: from marc.szymkowiak91 by r1.office.abatplus.de with local (Gmexim
	0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Wed, 29 Oct 2014 14:50:02 +0100
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Marc <marc.szymkowiak91@googlemail.com>
Date: Wed, 29 Oct 2014 13:46:56 +0000 (UTC)
Message-ID: <loom.20141029T144602-493@post.gmane.org>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: sea.gmane.org
User-Agent: Loom/3.14 (http://gmane.org/)
X-Loom-IP: 109.233.138.66 (Mozilla/5.0 (Windows NT 6.1; WOW64;
	rv:32.0) Gecko/20100101 Firefox/32.0)
Subject: Error with vServer
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
X-List-Received-Date: Wed, 29 Oct 2014 13:50:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: 7bit

i try to build an Image with yoctos poky on my vserver (Ubuntu 14.04 LTS
minimal - Vserver 64bit)

With my own pc with the same ubuntu version i don't have any problems to
build the image, but on my vserver i get a lot of errors like this one:

ERROR: Execution of event handler 'run_buildstats' failed
Traceback (most recent call last):
  File "run_buildstats(e)", line 85, in
run_buildstats(e=<bb.build.TaskSucceeded object at 0x7f5f79df6c10>)
  File "buildstats.bbclass", line 2, in get_device(e=<bb.build.TaskSucceeded
object at 0x7f5f79df6c10>)
IOError: [Errno 2] No such file or directory:
'/home/yocto/yocto/poky/build-hd/tmp/buildstats//.device'

What can i do?



