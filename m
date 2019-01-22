Return-Path: <sscott@san.rr.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C74A9E00B3F; Mon, 21 Jan 2019 17:00:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [107.14.166.229 listed in list.dnswl.org]
X-Greylist: delayed 60 seconds by postgrey-1.32 at yocto-www;
	Mon, 21 Jan 2019 17:00:46 PST
Received: from cdptpa-cmomta01.email.rr.com (cdptpa-outbound-snat.email.rr.com
	[107.14.166.229])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 24698E0090E
	for <yocto@yoctoproject.org>; Mon, 21 Jan 2019 17:00:46 -0800 (PST)
Received: from boobie ([75.80.138.87]) by cmsmtp with ESMTP
	id lkPngqJK5qF78lkPpg32um; Tue, 22 Jan 2019 00:59:45 +0000
From: "Steve Scott" <sscott@san.rr.com>
To: <yocto@yoctoproject.org>
Date: Mon, 21 Jan 2019 16:59:45 -0800
Message-ID: <00b301d4b1ed$c5d03870$5170a950$@san.rr.com>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdSx7MsuxYYEqfoTT4i9XTqhEYU+Bg==
X-CMAE-Envelope: MS4wfDPJoDKJKnYWXU1nDN2NxrnFq8IHs36MMA/ozgwHneYnfTbqM2DHwCAq8vRvM9/OiA7soeYH0WTAvpcv9DvGj5WM2AbndsE+PanieaAEJL645gnBjvW0
	/4FFsFexicqRg4Wpg6x9crQS5754/bFVvxnww7sRgq27AWr49jT4fTv9
Subject: nativesdk questions
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
X-List-Received-Date: Tue, 22 Jan 2019 01:00:46 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: en-us

Hi all:

I am using the jethro (2.0.1) version of yocto.

I added a shared library (foo.so) to our native sdk build by putting
    BBCLASSEXTEND = "nativesdk"
in the foo.bb recipe, then 
    TOOLCHAIN_HOST_TASK_append += " nativesdk-foo  nativesdk-foo-dev "
in our rootfs image recipe.

This had the effect of not only including my library and its header files,
but also a huge number of other
header files in my native sdk's
.../sysroots/x86_64-pokysdk-linux/usr/include
that weren't there previously. It looks like they are the header files for
the components of the GNU C library.

Questions:
1. What is causing all these additional header files to show up in my native
sdk usr/include directory?
2. Is there some way to turn this off?
3. Is the native toolchain  included in the native sdk (the cross compiler
tools
     are there, but I didn't see the native ones).
4. If the native toolchain isn't in the native sdk, how do I find the native
tool chain inside the Yocto tree?

Thanks.

-steve



