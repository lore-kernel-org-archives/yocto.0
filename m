Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7FD2AE009BB; Fri, 15 May 2015 09:59:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-vn0-f51.google.com (mail-vn0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F0909E0095F
	for <yocto@yoctoproject.org>; Fri, 15 May 2015 09:59:42 -0700 (PDT)
Received: by vnbf62 with SMTP id f62so688399vnb.7
	for <yocto@yoctoproject.org>; Fri, 15 May 2015 09:59:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to
	:content-type;
	bh=a1GjVyZq4qHw1zKnPOTBjHdfYXVczWD6hdfxqt96mZo=;
	b=loGYXI8TLaMGOc5AT/eHXqlCMn1nQHTbMinlaKHJLWzY0gYeyyl8HXhvwZi/xh0uie
	bfkvRPBGaNbPWqWj5y+x8l6CLriF02uHfr0wKtXcZiJv7r1xjXThgJr6hfdy2PncMNqm
	hBxie4AjRmUAxmufI4nlk0wqIPG9cd16tXqgFYjCRL/SiQN+pAst1q8D4oNrNTVFpr5/
	QWSt2DGHkqG0f79cr4MaxrWe9Vuq/DVUGrZh8C+jeLW0K3p9eMF8K8f9twAbxKbsTyMf
	EqzHZY+thei6dS94TpQbVZ/PurdN0e/VRtThEZBe2Ncp0vZeeLh7sOSw0RgH4hUd2oo9
	vwzQ==
X-Gm-Message-State: ALoCoQnb1NeOnr7qT/hlHdW+/JTNyRcRXiNaHf2CeS4/zaPLq8OqqwNOtOrI7s184mG4B2J1SSv/
MIME-Version: 1.0
X-Received: by 10.52.246.38 with SMTP id xt6mr9035220vdc.89.1431709181652;
	Fri, 15 May 2015 09:59:41 -0700 (PDT)
Received: by 10.52.233.105 with HTTP; Fri, 15 May 2015 09:59:41 -0700 (PDT)
Date: Fri, 15 May 2015 17:59:41 +0100
Message-ID: <CAPhnLPBNGoN1qcoffjsmpfMHtEYGX_z79vVHz5-0jzdj1gCTRw@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	yocto-announce@yoctoproject.org
Subject: [ANNOUNCEMENT] Luna Eclipse Plugin for Yocto Project 1.8 "fido" released
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
X-List-Received-Date: Fri, 15 May 2015 16:59:45 -0000
Content-Type: text/plain; charset=UTF-8

Hello,

We are pleased to announce an out of band release of the Yocto Project
Eclipse "Luna" plugin for the Yocto Project "fido" 1.8 release.
Downloads are available at our eclipse repository at:

http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/eclipse-poky-luna-fido-13.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8/eclipse-poky-luna-fido-13.0.0.tar.bz2

The eclipse repository for this release is at:

http://downloads.yoctoproject.org/releases/eclipse-plugin/1.8/luna/

The test run data is available at:
https://bugzilla.yoctoproject.org/tr_show_run.cgi?run_id=3912

Sincerely,

Elizabeth Flanagan
Yocto Project
Build and Release

---------------------
yocto-1.8 Errata
---------------------
Release Name: eclipse-poky-luna-fido-13.0.0
Branch: fido
Tag: luna/fido-13.0.0
Hash: 0d8f1238c99e0371f3158ac8318a5067
md5: 7c7292f5cb2893be4d0313b471e45f989b41ea44
Download Locations:
http://downloads.yoctoproject.org/releases/yocto/yocto-1.8/eclipse-poky-luna-fido-13.0.0.tar.bz2
http://mirrors.kernel.org/yocto/yocto/yocto-1.8/eclipse-poky-luna-fido-13.0.0.tar.bz2

-- 
Elizabeth Flanagan
Yocto Project
Build and Release

