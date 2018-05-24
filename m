Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 51490E00B57; Thu, 24 May 2018 01:16:19 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9943E00A38
	for <yocto@yoctoproject.org>; Thu, 24 May 2018 01:16:17 -0700 (PDT)
Received: from ted ([192.168.3.30]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w4O8FlEc021348
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NOT); Thu, 24 May 2018 09:15:58 +0100
Message-ID: <1527149747.16911.57.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto <yocto@yoctoproject.org>
Date: Thu, 24 May 2018 09:15:47 +0100
X-Mailer: Evolution 3.18.5.2-0ubuntu3.2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Cc: otavio@ossystems.com.br, aaron.chun.yew.chan@intel.com
Subject: Release Candidate Build for yocto-2.4.3.rc2 now available.
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
X-List-Received-Date: Thu, 24 May 2018 08:16:19 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

A release candidate build for yocto-2.4.3.rc2 is now available at:


    https://autobuilder.yocto.io/pub/releases/yocto-2.4.3.rc2


Please begin QA on this build as soon as possible.


Build hash information: 
meta-intel : f66ce51d059d291a441d896854be8db70de5a554 
meta-qt4 : e290738759ef3f39c9e079eaa9b606a62107e5ba 
meta-mingw : 1cc620b38f6f30a0bdd181783297998fe073387f 
meta-qt3 : 8ef7261a331e0869a0461ab2fb44e39980cedc02 
meta-gplv2 : f875c60ecd6f30793b80a431a2423c4b98e51548 
poky : 7e7ee662f5dea4d090293045f7498093322802cc 

This is an automated message from The Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder

