Return-Path: <richard.purdie@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7048EE00B57; Thu, 24 May 2018 06:33:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.6 required=5.0 tests=BAYES_00,RCVD_IN_RP_RNBL
	autolearn=no version=3.3.1
X-Spam-HAM-Report: *  1.3 RCVD_IN_RP_RNBL RBL: Relay in RNBL,
	*      https://senderscore.org/blacklistlookup/
	*      [87.81.244.161 listed in bl.score.senderscore.com]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 07B0EE00A38
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 06:33:16 -0700 (PDT)
Received: from ted (5751f4a1.skybroadband.com [87.81.244.161])
	(authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w4ODWu3v026785
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Thu, 24 May 2018 14:32:57 +0100
Received: from richard by ted with local (Exim 4.86_2)
	(envelope-from <richard.purdie@intel.com>)
	id 1fLqMM-0004fI-Oq; Thu, 24 May 2018 14:32:50 +0100
Message-ID: <1527168770.16911.59.camel@intel.com>
From: Richard Purdie <richard.purdie@intel.com>
To: yocto <yocto@yoctoproject.org>
Date: Thu, 24 May 2018 14:32:50 +0100
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Cc: otavio@ossystems.com.br, aaron.chun.yew.chan@intel.com
Subject: Release Candidate Build for yocto-2.2.4.rc1 now available.
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
X-List-Received-Date: Thu, 24 May 2018 13:33:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

A release candidate build for yocto-2.2.4.rc1 is now available at:


=C2=A0=C2=A0=C2=A0=C2=A0https://autobuilder.yocto.io/pub/releases/yocto-2.2=
.4.rc1


Please begin QA on this build as soon as possible.


Build hash information:=C2=A0
meta-intel : c781510a5a6b45e60cc32b6614ddcce3f1452121=C2=A0
meta-qt4 : f389368dc86e745df14cab9eeb9a94bc02bd273e=C2=A0
meta-mingw : f5f676d9ee9f8e205363eace7a846a0360998634=C2=A0
meta-qt3 : f33b73a9563f2dfdfd0ee37b61d65d90197a456f=C2=A0
meta-gplv2 : d7687d404bbc9ba3f44ec43ea8828d9071033513=C2=A0
poky : df76669bdd70aa0d903c4211dde731221c7e756d=C2=A0

This is an automated message from\nThe Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder

