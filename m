Return-Path: <opensource@keylevel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F5C9E003FA; Fri, 18 Jul 2014 14:29:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [84.234.17.171 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 1779 seconds by postgrey-1.32 at yocto-www;
	Fri, 18 Jul 2014 14:29:09 PDT
Received: from hosting.adsl24.co.uk (hosting.adsl24.co.uk [84.234.17.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 28143E00342
	for <yocto@yoctoproject.org>; Fri, 18 Jul 2014 14:29:09 -0700 (PDT)
Received: from [109.224.171.0] (port=25743
	helo=macbook-pro.durham.keylevel.com)
	by hosting.adsl24.co.uk with esmtpsa (TLSv1:AES128-SHA:128)
	(Exim 4.82) (envelope-from <opensource@keylevel.com>)
	id 1X8FFX-0004E1-6u
	for yocto@yoctoproject.org; Fri, 18 Jul 2014 21:59:27 +0100
From: Chris Tapp <opensource@keylevel.com>
Message-Id: <D628D33F-1776-4BEA-8D2B-3F98CB94B921@keylevel.com>
Date: Fri, 18 Jul 2014 21:59:26 +0100
To: Yocto Project <yocto@yoctoproject.org>
Mime-Version: 1.0 (Mac OS X Mail 7.3 \(1878.6\))
X-Mailer: Apple Mail (2.1878.6)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hosting.adsl24.co.uk
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Get-Message-Sender-Via: hosting.adsl24.co.uk: authenticated_id:
	mail@keylevel.adsl24.co.uk
Subject: core-image-x11 screen resolution
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
X-List-Received-Date: Fri, 18 Jul 2014 21:29:12 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Is there an easy/quick way to set the screen resolution used when =
core-image-x11 starts X?

I.e. something that can be added into local.conf?

Chris Tapp

opensource@keylevel.com
www.keylevel.com


