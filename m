Return-Path: <stefan.hofmann@mobserve.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3B4F1E00777; Thu, 17 Jul 2014 05:03:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.237.133.75 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from wp306.webpack.hosteurope.de (wp306.webpack.hosteurope.de
	[80.237.133.75])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F37A4E006B9
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 05:02:59 -0700 (PDT)
Received: from [217.17.193.50] (helo=stefans-mini.m2b.intern); authenticated
	by wp306.webpack.hosteurope.de running ExIM with esmtpsa
	(TLS1.0:RSA_AES_128_CBC_SHA1:16)
	id 1X7kOn-0005st-GH; Thu, 17 Jul 2014 14:02:57 +0200
From: Stefan Hofmann <stefan.hofmann@mobserve.de>
Message-Id: <E06A35C4-2DA6-4BB6-81CC-EFEEE53A54EF@mobserve.de>
Date: Thu, 17 Jul 2014 14:02:55 +0200
To: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-bounce-key: webpack.hosteurope.de; stefan.hofmann@mobserve.de; 1405598582;
	ec030984; 
Subject: How to access the sysroot from CMake
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
X-List-Received-Date: Thu, 17 Jul 2014 12:03:05 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi !

I have a package, which installs a VAPI-file in =
/usr/share/${PN}/${PN}.vapi. These files are required by the =
Vala-compiler (C#-like language for GObject) to interface with C-Code. =
However I cannot access it from a dependent package. What is the correct =
way to access files installed by other packages ? I cannot find anything =
in the documentation. Is it possible to do that from CMake too ?

Thank you very much & best regards
Stefan


