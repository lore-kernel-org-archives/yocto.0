Return-Path: <mark.hatle@windriver.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AE9BE00B20; Thu, 26 Nov 2015 06:48:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.2 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_MED
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -2.3 RCVD_IN_DNSWL_MED RBL: Sender listed at
	http://www.dnswl.org/, *      medium trust
	*      [147.11.146.13 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBA70E00ADF
	for <yocto@yoctoproject.org>; Thu, 26 Nov 2015 06:48:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.15.2/8.15.1) with ESMTPS id tAQEmk9p010302
	(version=TLSv1 cipher=AES128-SHA bits=128 verify=FAIL);
	Thu, 26 Nov 2015 06:48:46 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.3.248.2; Thu, 26 Nov 2015 06:48:46 -0800
To: Maninder Singh <maninder1.s@samsung.com>
References: <1448524880-31492-1-git-send-email-maninder1.s@samsung.com>
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
Message-ID: <56571BCC.7090706@windriver.com>
Date: Thu, 26 Nov 2015 08:48:44 -0600
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.11; rv:38.0)
	Gecko/20100101 Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <1448524880-31492-1-git-send-email-maninder1.s@samsung.com>
Cc: hakbong5.lee@samsung.com, yocto@yoctoproject.org, doha.hwang@samsung.com,
	ajeet.y@samsung.com, akhilesh.k@samsung.com, pankaj.m@samsung.com
Subject: Re: [prelink-cross][PATCH 0/2] aarch64 fixes reported by testsuite failures
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
X-List-Received-Date: Thu, 26 Nov 2015 14:48:54 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Transfer-Encoding: 7bit

Thank you.  I'm going to try to get this and the previous set of pending patches
merged in the next day or so.

I'll let everyone know when the next test version is ready.

--Mark

On 11/26/15 2:01 AM, Maninder Singh wrote:
> aarch64 fixes reported by testsuite failures
> 
> To work this we need to copy all required system libs
> in testsuite directory, and at our set-up we copied
> below libs:-
> 1. ld-linux-aarch64.so.1
> 2. libc.so.6
> 3. libgcc_s.so.1
> 4. libm.so.6
> 5. libstdc++.so.6
> 
> root# make check
> make  check-TESTS
> make[1]: Entering directory 'prelink-cross/testsuite'
> make[2]: Entering directory 'prelink-cross/testsuite'
> SKIP: movelibs.sh
> PASS: reloc1.sh
> PASS: reloc2.sh
> PASS: reloc3.sh
> SKIP: reloc4.sh
> SKIP: reloc5.sh
> PASS: reloc6.sh
> PASS: reloc7.sh
> PASS: reloc8.sh
> PASS: reloc9.sh
> PASS: reloc10.sh
> PASS: reloc11.sh
> PASS: shuffle1.sh
> PASS: shuffle2.sh
> PASS: shuffle3.sh
> PASS: shuffle4.sh
> PASS: shuffle5.sh
> PASS: shuffle6.sh
> PASS: shuffle7.sh
> PASS: shuffle8.sh
> PASS: shuffle9.sh
> PASS: undo1.sh
> PASS: layout1.sh
> PASS: layout2.sh
> FAIL: unprel1.sh
> PASS: tls1.sh
> PASS: tls2.sh
> PASS: tls3.sh
> PASS: tls4.sh
> PASS: tls5.sh
> PASS: tls6.sh
> PASS: tls7.sh
> PASS: cxx1.sh
> PASS: cxx2.sh
> PASS: cxx3.sh
> FAIL: quick1.sh
> FAIL: quick2.sh
> FAIL: quick3.sh
> PASS: cycle1.sh
> PASS: cycle2.sh
> FAIL: deps1.sh
> FAIL: deps2.sh
> SKIP: ifunc1.sh
> SKIP: ifunc2.sh
> SKIP: ifunc3.sh
> PASS: undosyslibs.sh
> FAIL: preload1.sh
> ============================================================================
> Testsuite summary for
> ============================================================================
> # TOTAL: 47
> # PASS:  34
> # SKIP:  6
> # XFAIL: 0
> # FAIL:  7
> # XPASS: 0
> # ERROR: 0
> 
> Maninder Singh (2):
>   testsuite: fixes in testsuite according to aarch64
>   src/arch-aarch64.c:testsuite failure fixes in aarch64
> 
>  src/arch-aarch64.c  |    7 ++++---
>  testsuite/reloc2.sh |    2 +-
>  testsuite/reloc8.sh |    2 +-
>  testsuite/reloc9.sh |    2 +-
>  testsuite/tls3.sh   |    2 +-
>  5 files changed, 8 insertions(+), 7 deletions(-)
> 


