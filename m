Return-Path: <raffo@cdi.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE42EE0095D; Tue, 16 Jun 2015 16:58:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.9 required=5.0 tests=BAYES_00,RDNS_DYNAMIC
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  1.0 RDNS_DYNAMIC Delivered to internal network by host with
	*      dynamic-looking rDNS
Received: from zimbra.cdi.com (dsl093-172-033.pit1.dsl.speakeasy.net
	[66.93.172.33])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 97827E00496
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 16:58:07 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by zimbra.cdi.com (Postfix) with ESMTP id DFA2A661CA2
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 19:58:06 -0400 (EDT)
X-Virus-Scanned: amavisd-new at zimbra.cdi.com
Received: from zimbra.cdi.com ([127.0.0.1])
	by localhost (zimbra.cdi.com [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 0tbQlUZ77xMM for <yocto@yoctoproject.org>;
	Tue, 16 Jun 2015 19:58:06 -0400 (EDT)
Received: from zimbra.cdi.com (zimbra.cdi.com [10.150.232.226])
	by zimbra.cdi.com (Postfix) with ESMTP id 5D579661B99
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 19:58:06 -0400 (EDT)
Date: Tue, 16 Jun 2015 19:58:06 -0400 (EDT)
From: "Rafael E. Herrera" <raffo@cdi.com>
To: yocto@yoctoproject.org
Message-ID: <1368563895.1209459.1434499086050.JavaMail.root@cdi.com>
In-Reply-To: <916583299.1209439.1434497967761.JavaMail.root@cdi.com>
MIME-Version: 1.0
X-Originating-IP: [10.150.232.1]
X-Mailer: Zimbra 7.2.7_GA_2942 (ZimbraWebClient - GC43 (Linux)/7.2.7_GA_2942)
Subject: Help using bitbake to compile a custom package.
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
X-List-Received-Date: Tue, 16 Jun 2015 23:58:11 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

Hello,

I'm trying to port an in-house piece of software in my Yocto tree. I managed to create a rudimentary recipe file that grabs the tar ball from the local disk and attempts to compile using:

host $ bitbake -f -c compile example

From the output I infer that the tar ball got unpacked and a make executed in the source code tree.

However, my build fails because a number of libraries are missing. 

For example, the libuuid library seems not to be found. How do I verify that this library is available in my Yocto tree? 

If not, how to determine what recipe do I need to build to get it installed?

How do I make sure that the header files for the library are also installed?

I'm assuming that once a library is built using the right bitbake recipe, it is available to the code that calls it. If not, how is that configured?

Thank you,

Rafael 

