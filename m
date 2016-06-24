Return-Path: <bernhard@bdick.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BFBC2E00D1F; Fri, 24 Jun 2016 07:08:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.8 required=5.0 tests=BAYES_50 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.4895]
X-Greylist: delayed 2520 seconds by postgrey-1.32 at yocto-www;
	Fri, 24 Jun 2016 07:08:32 PDT
Received: from mail.bdick.de (mail.bdick.de [151.80.246.202])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 69ED3E00C10
	for <yocto@yoctoproject.org>; Fri, 24 Jun 2016 07:08:32 -0700 (PDT)
Received: from [129.217.187.174] (helo=MATDT023)
	by mail.bdick.de with esmtpsa (TLS1.0:ECDHE_RSA_AES_256_CBC_SHA1:256)
	(Exim 4.84_2) (envelope-from <bernhard@bdick.de>) id 1bGR7u-0008EM-JB
	for yocto@yoctoproject.org; Fri, 24 Jun 2016 15:26:31 +0200
From: "Bernhard Dick" <bernhard@bdick.de>
To: <yocto@yoctoproject.org>
Date: Fri, 24 Jun 2016 15:26:30 +0200
Message-ID: <00d301d1ce1c$04d04820$0e70d860$@bdick.de>
MIME-Version: 1.0
X-Mailer: Microsoft Outlook 15.0
Thread-Index: AdHOG3jZhlJnIe1cRNmy/xDIsWSXhw==
Subject: [meta-java] How is the version string in openjdk/openjre built
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
X-List-Received-Date: Fri, 24 Jun 2016 14:08:34 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit
Content-Language: de

Hi,

currently I'm facing a small problem with the meta-java package. I have
applications that check the version string of java for specific releases.
The string from java -version built with the meta-java package however does
not include that but results in 1.8.0-native or 1.8.0-internal.
So I wanted to fix it and include the release number. However, maybe due to
I'm quite new with the openembedded build system, I cannot find, where the
version is changed within the layer, I also do not see where the -native or
-internal string is coming from. It appears later within the MILESTONE
variable of the build config. Can you help me on this topic?
  Regards
    Bernhard Dick



