Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 44F63E00AE4; Fri, 29 Jan 2016 20:00:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 59A84E00AAF
	for <yocto@yoctoproject.org>; Fri, 29 Jan 2016 20:00:55 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 3C87068A019; Sat, 30 Jan 2016 04:00:52 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id D3CEF68A019;
	Sat, 30 Jan 2016 04:00:51 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 896706740031;
	Sat, 30 Jan 2016 05:00:51 +0100 (CET)
To: yocto@yoctoproject.org
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56AC3573.8080706@mlbassoc.com>
Date: Sat, 30 Jan 2016 05:00:51 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
Subject: Resolving multiple providers
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
X-List-Received-Date: Sat, 30 Jan 2016 04:00:57 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

Trying to build openjdk-7 from meta-java and I get this warning:
   NOTE: multiple providers are available for runtime java2-runtime (cacao, openjre-8, jamvm, openjdk-7-jre, openjdk-8)
   NOTE: consider defining a PREFERRED_PROVIDER entry to match java2-runtime
I tried to add PREFERRED_PROVIDER for java2-runtime:
   $ grep ^PRE conf/local.conf
   PREFERRED_PROVIDER_virtual/java-initial-native = "cacao-initial-native"
   PREFERRED_PROVIDER_virtual/java-native = "jamvm-native"
   PREFERRED_PROVIDER_virtual/javac-native = "ecj-bootstrap-native"
   PREFERRED_PROVIDER_java2-runtime = "openjdk-7-jre"

However, I still get the warning.  What am I missing?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

