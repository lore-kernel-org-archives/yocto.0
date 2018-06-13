Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77E33E02E49; Wed, 13 Jun 2018 04:16:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 432B2E02434
	for <yocto@yoctoproject.org>; Wed, 13 Jun 2018 04:16:37 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w5DBGLKL017721
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Wed, 13 Jun 2018 12:16:22 +0100
Message-ID: <548642b9952b93938fd81a7dcced7bdeae3feb40.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: yocto@yoctoproject.org
Date: Wed, 13 Jun 2018 12:16:21 +0100
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Cc: otavio@ossystems.com.br, aaron.chun.yew.chan@intel.com
Subject: Release Candidate Build for yocto-2.6_M1.rc1 now available.
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
X-List-Received-Date: Wed, 13 Jun 2018 11:16:56 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

A release candidate build for yocto-2.6_M1.rc1 is now available at:


    https://autobuilder.yocto.io/pub/releases/yocto-2.6_M1.rc1


Please begin QA on this build as soon as possible.


Build hash information: 
meta-intel : fec5d45ec3978d4b7c9649bee45fe58f914bcee4 
meta-qt4 : 8e791c40140460825956430ba86b6266fdec0a93 
meta-mingw : 46b1bfd8ef26dd9c778504143d4dea2fbe2ce90f 
meta-qt3 : 02f273cba6c25f5cf20cb66d8a417a83772c3179 
meta-gplv2 : d7687d404bbc9ba3f44ec43ea8828d9071033513 
poky : ddbd7b0cd6580ee26e11aa87e426fb294b372d64 

This is an automated message from\nThe Yocto Project Autobuilder
Git: git://git.yoctoproject.org/yocto-autobuilder

