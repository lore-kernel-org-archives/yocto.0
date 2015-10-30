Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A71DBE00B7D; Fri, 30 Oct 2015 09:49:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.1.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7998AE00B70
	for <yocto@yoctoproject.org>; Fri, 30 Oct 2015 09:48:58 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.15.2/8.15.1) with ESMTPS id t9UGmtI5008779
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 30 Oct 2015 09:48:55 -0700 (PDT)
Received: from Marks-MacBook-Pro.local (172.25.36.227) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Fri, 30 Oct 2015 09:48:54 -0700
To: Maninder Singh <maninder1.s@samsung.com>
References: <1446187819-28223-1-git-send-email-maninder1.s@samsung.com>
	<563371CA.2010708@windriver.com>
From: Mark Hatle <mark.hatle@windriver.com>
X-Enigmail-Draft-Status: N1110
Organization: Wind River Systems
Message-ID: <56339F75.6070503@windriver.com>
Date: Fri, 30 Oct 2015 11:48:53 -0500
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <563371CA.2010708@windriver.com>
Cc: Vaneet Narang <v.narang@samsung.com>, ajeet.y@samsung.com,
	yocto@yoctoproject.org, doha.hwang@samsung.com,
	hakbong5.lee@samsung.com, pankaj.m@samsung.com
Subject: Re: [PATCH 1/1] prelink: AARCH64 support added
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
X-List-Received-Date: Fri, 30 Oct 2015 16:49:03 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 8bit

I've applied you patch to a new 'cross_prelink_aarch64' branch for testing.

A few notes:

I cleaned up some white space issues.  This might have been a result of the
mailer -- I'm not sure.

I had to change:

R_AARCH64_TLS_DTPMOD64 to R_AARCH64_TLS_DTPMOD
R_AARCH64_TLS_DTPREL64 to R_AARCH64_TLS_DTREL
R_AARCH64_TLS_TPREL64 to R_AARCH64_TLS_TPREL

From what I can find, the names of these symbols were modified in:

https://sourceware.org/ml/libc-alpha/2014-11/msg00455.html

I found another note that the aarch64 ABI has gone through a few revisions where
the notation has come back -- but glibc has not yet re-introduced it to it's
'elf.h' file.


Now for the testing part.  Running the testsuite (make check), I'm getting a
number of failures.

I'm running the tests on a YP 2.0 based system, with two patches applied to
glibc.  The one that should fix the prelink load address issue, and the other
that should fix the ld.so interface.

The results of the 'make check' are:

============================================================================
Testsuite summary for
============================================================================
# TOTAL: 47
# PASS:  4
# SKIP:  6
# XFAIL: 0
# FAIL:  37
# XPASS: 0
# ERROR: 0

Of the fails, the 'tls*' tests cause kernel back traces on my system.
(Definitely not good.)

'ifunc' tests were skipped as as aarch64 does not have a definition in ifunc.h

The other failures can be classified as:

- unprelink failed (input and output were not identical)
- execution of the prelinked code failed

I'd suggest start working through the issues in the testsuite...

--Mark

On 10/30/15 8:34 AM, Mark Hatle wrote:
> Was the work below based on any existing work (such as arch-arm.c)?  We found a
> bug yesterday in the "arm_prelink_conflict_rela" on ARM, a previous hunk for
> handling ifuncs was missed.
> 
> See:
> http://git.yoctoproject.org/cgit/cgit.cgi/prelink-cross/commit/?h=cross_prelink_staging&id=927979bbd115eeb8a75db3231906ef6aca4c4eb6
> 
> Also we really need to add a test case for ifunc processing to the testsuite.
> Look at testsuite/ifunc.h.
> 
> Otherwise, we're likely to experience some breakage in ifunc processing in the
> future.
> 
> Thank you for the contribution.  I'll be looking at it soon and try running it.
> 
> --Mark
> 


