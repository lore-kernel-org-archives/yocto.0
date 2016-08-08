Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F165DE00CF0; Sun,  7 Aug 2016 23:28:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 57590E00CB5
	for <yocto@yoctoproject.org>; Sun,  7 Aug 2016 23:28:35 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u786STX7018968; Mon, 8 Aug 2016 07:28:29 +0100
Received: from dan.rpsys.net ([127.0.0.1])
	by localhost (dan.rpsys.net [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id 9kyqI4jYGk4J; Mon,  8 Aug 2016 07:28:29 +0100 (BST)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.14.4/8.14.4/Debian-4.1ubuntu1) with ESMTP id
	u786SPFw018965
	(version=TLSv1/SSLv3 cipher=AES128-GCM-SHA256 bits=128 verify=NOT);
	Mon, 8 Aug 2016 07:28:26 +0100
Message-ID: <1470637705.8166.29.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Khem Raj <raj.khem@gmail.com>, OE-core
	<openembedded-core@lists.openembedded.org>, OpenEmbedded Devel List
	<openembedded-devel@lists.openembedded.org>, Yocto Discussion Mailing List
	<yocto@yoctoproject.org>
Date: Mon, 08 Aug 2016 07:28:25 +0100
In-Reply-To: <CC61EFE1-5F39-4848-AD71-8E9C8DEC43C8@gmail.com>
References: <CC61EFE1-5F39-4848-AD71-8E9C8DEC43C8@gmail.com>
X-Mailer: Evolution 3.16.5-1ubuntu3.1 
Mime-Version: 1.0
Subject: Re: [OE-core] [RFT] binutils 2.27
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
X-List-Received-Date: Mon, 08 Aug 2016 06:28:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2016-08-07 at 01:39 -0700, Khem Raj wrote:
> I have put together upgrade for binutils 2.27 here ( kraj/master
> branch )
> 
> https://github.com/kraj/openembedded-core/commit/b98f5761d2285ffd773e
> c6ecb901b799302ebd6b
> 
> I have started bunch of test builds. but I would appreciate any help
> in testing it out in your
> environments and report any issues you see.

I ran this through the autobuilder:

bitbake world shows issues in libunwind (from gold?):

https://autobuilder.yoctoproject.org/main/builders/nightly-world/builds
/889/steps/BuildImages/logs/stdio

bitbake world with no x11 also shows it:

https://autobuilder.yoctoproject.org/main/builders/nightly-no-x11/build
s/231/steps/BuildImages/logs/stdio

Other than that, things don't seem too bad though.

Cheers,

Richard



