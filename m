Return-Path: <winfried.dobbe@xmsnet.nl>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BFB3E00546; Fri, 10 Feb 2017 07:18:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.7 required=5.0 tests=BAYES_40,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [213.197.30.127 listed in list.dnswl.org]
	* -0.0 BAYES_40 BODY: Bayes spam probability is 20 to 40%
	*      [score: 0.2584]
X-Greylist: delayed 907 seconds by postgrey-1.32 at yocto-www;
	Fri, 10 Feb 2017 07:18:44 PST
Received: from smtp-3.concepts.nl (smtp-3.concepts.nl [213.197.30.127])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1A20BE004D8
	for <yocto@yoctoproject.org>; Fri, 10 Feb 2017 07:18:44 -0800 (PST)
Received: from [2001:838:2:1::30:241] (helo=webmail.xmsnet.nl)
	by smtp-3.concepts.nl with esmtp (Exim 4.80.1)
	(envelope-from <winfried.dobbe@xmsnet.nl>)
	id 1ccCjW-0001qu-9t; Fri, 10 Feb 2017 16:03:34 +0100
MIME-Version: 1.0
Date: Fri, 10 Feb 2017 16:05:03 +0100
From: winfried.dobbe@xmsnet.nl
To: Florian Wulff <der_flori@hotmail.de>
Mail-Reply-To: winfried.dobbe@xmsnet.nl
In-Reply-To: <DB6PR0901MB095165B364EBD4494E85F5F8FD440@DB6PR0901MB0951.eurprd09.prod.outlook.com>
References: <DB6PR0901MB095165B364EBD4494E85F5F8FD440@DB6PR0901MB0951.eurprd09.prod.outlook.com>
Message-ID: <aba3154f5651505494a3b9eb53fc0e07@xmsnet.nl>
X-Sender: winfried.dobbe@xmsnet.nl
User-Agent: Roundcube Webmail/1.0.3
X-Concepts-MailScanner-Information: Please contact abuse@concepts.nl for more
	information
X-Concepts-MailScanner-ID: 1ccCjW-0001qu-9t
X-Concepts-MailScanner: Found to be clean
X-Concepts-MailScanner-SpamCheck: 
X-Concepts-MailScanner-From: winfried.dobbe@xmsnet.nl
Cc: yocto@yoctoproject.org
Subject: Re: ld: cannot find -lgcc in glibc 2.24-r0
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: winfried.dobbe@xmsnet.nl
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 10 Feb 2017 15:18:46 -0000
Content-Type: text/plain; charset=US-ASCII;
 format=flowed
Content-Transfer-Encoding: 7bit

> 
> This problem occur when bitbake core-image-minimal-dev or bitbake
> core-image-minimal-dev -c populate_sdk but only for glibc
> 

Did you override variable SDKPATH ? I had the exact same issue last week 
when I tried to include ${TUNE_PKGARCH} in the SDKPATH variable. After 
setting SDKPATH to a simpler value the problem disappeared.

regards,
Winfried

