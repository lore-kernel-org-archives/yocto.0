Return-Path: <sscott@san.rr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 69EC1E00A0C; Fri,  5 Oct 2018 22:17:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [107.14.166.232 listed in list.dnswl.org]
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Fri, 05 Oct 2018 22:17:31 PDT
Received: from cdptpa-cmomta02.email.rr.com (cdptpa-outbound-snat.email.rr.com
	[107.14.166.232])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 23EF8E0097D
	for <yocto@yoctoproject.org>; Fri,  5 Oct 2018 22:17:31 -0700 (PDT)
Received: from boobie ([75.80.138.87]) by cmsmtp with ESMTP
	id 8ex1g72vxgKPo8ex3gpNLQ; Sat, 06 Oct 2018 05:16:30 +0000
From: "Steve Scott" <sscott@san.rr.com>
To: <yocto@yoctoproject.org>
Date: Fri, 5 Oct 2018 22:16:35 -0700
Message-ID: <001201d45d33$c247aee0$46d70ca0$@san.rr.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdRdL81nUvKzxSbUQge2cfkGtbj4VA==
X-CMAE-Envelope: MS4wfIASiU7F40cclkoAFFUjgObfadKhZFyT0PFMTJQWtTv63xrWkY9fUaSawU7d9qxj224bvrAhlOKVsyYqbibhJbA+HSz7w4DgTE63Nst7XN+LoalNzQSS
	M1b0G/j0fv4QbiKCw7WF03BLNQawyBKHkYmLj4TcphU/aoOCVPSd1Jf33Usle5SXHpxmZoXtHOunfA==
Subject: how to install files in nativesdk
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: sscott@san.rr.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 06 Oct 2018 05:17:32 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

Hi:

I'm a list newbie, so let me know if this should be posted somewhere else.

I am able to generate a standard SDK with native and target
sysroots. The target sysroot has header files for my custom
libraries. The header files are generally installed in
<path-to-sdk-target-sysroot>/usr/include/  

We use cmake and googletest running on the *host* for testing some of
our libraries. So I need to build googletest and the test apps using the
host (x86_64) tools. The test apps need to include the target's library
header files.

I tried specifying the SDK's *target* usr/include as an include directory to
the compiler, but files in this tree preempted the standard compiler (g++)
system include files. I can avoid this problem by installing the library
header files under the SDK's native sysroot; i.e. in 
<path-to-sdk-native-sysroot>/usr/include/ 
and setting this directory as an include directory on the compiler
command line.

However, I cannot grok how to get these files into the SDK's native
tree. It seems related to  
   BBCLASSEXTEND = "native nativesdk"
but I'm just chasing my tail trying to figure out the magic incantation.

Does anyone know how to do this? Or is there a better approach?

Thanks.

-steve scott





