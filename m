Return-Path: <f@rtfs.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EF09E0095C; Tue, 18 Sep 2018 14:07:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 445 seconds by postgrey-1.32 at yocto-www;
	Tue, 18 Sep 2018 14:07:51 PDT
Received: from mail.rsk6.de (h1435773.stratoserver.net [85.214.108.125])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4060E0090A
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 14:07:51 -0700 (PDT)
Received: from yoga (ipbcc04aa7.dynamic.kabel-deutschland.de [188.192.74.167])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128
	bits)) (No client certificate requested)
	by mail.rsk6.de (Postfix) with ESMTPSA id ADB2A2526906
	for <yocto@yoctoproject.org>; Tue, 18 Sep 2018 23:00:24 +0200 (CEST)
Message-ID: <1537304423.12258.18.camel@rtfs.org>
From: Fabian Sturm <f@rtfs.org>
To: yocto@yoctoproject.org
Date: Tue, 18 Sep 2018 23:00:23 +0200
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
Subject: Native yocto compile in docker container without cross compile
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
X-List-Received-Date: Tue, 18 Sep 2018 21:07:53 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Hi, 

I am wondering, there does not seem to be any information about native
compile of projects in a Yocto docker container. It seems that most of
the people use cross compile even though that imho is not necessary if
your target is x86 too. So here is what I want to do:

- Create a docker container with Yocto Linux, possibly same as the
target image
- Install gcc, cmake, autotools etc. in the docker container
- Run the docker container on a vanilla Ubuntu Linux
- Run build jobs in this docker container directly

Rational. I have several projects with fully functioning build systems,
e.g. make, cmake or autotools which I need to compile for different
platforms, e.g. Windows, Ubuntu Linux and Yocto Linux. I now don't want
to write recipes just for the Yocto cross compile which I need to
additionally maintain and I also don't want to make the original build
systems cross compile aware. This can soon get really hard if the build
system generates intermediate binaries that are called in the build
itself and if it is not prepared for this.
Since my target and host platform are both x86 I do not see the need
for a cross compile anyways. Usually it is necessary since the target
platform might be a very slow ARM system that can't handle all the
builds itself. But I do not have this limitation.

With such a solution my original build systems should still be able to
run unmodified. Within the docker container the environment would be
almost the same as in an Ubuntu Linux. The compiler can be accessed
without any cross compile settings and any intermediate binaries can
also be directly executed etc.

If there are some fundamental reasons why this is a bad idea, I would
like to know. I also would appreciate any tips on how to create such a
docker image. Usually my Yocto image for the target would not contain a
compiler or make tool. So I need a way to add those after the fact.


Thanks a lot!
Fabian


