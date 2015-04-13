Return-Path: <abhinavbipnesh@avaya.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EF53EE00858; Mon, 13 Apr 2015 11:27:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [198.152.13.100 listed in list.dnswl.org]
Received: from co300216-co-outbound.net.avaya.com
	(co300216-co-outbound.net.avaya.com [198.152.13.100])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 956D4E00830
	for <yocto@yoctoproject.org>; Mon, 13 Apr 2015 11:27:08 -0700 (PDT)
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: ApQFALUJLFXGmAcV/2dsb2JhbABcgmYmgTPEKIg+AoE8TAEBAQEBAX6EIQEBAxIoUQEVFRRCJgEEGxqICAGnW4UFoG8BH492g0+BFgWRDJE9jT4iggMcgVCCM38BAQE
X-IronPort-AV: E=Sophos;i="5.11,571,1422939600"; d="scan'208";a="111915896"
Received: from unknown (HELO co300216-co-erhwest-exch.avaya.com)
	([198.152.7.21]) by co300216-co-outbound.net.avaya.com with ESMTP;
	13 Apr 2015 14:27:07 -0400
X-OutboundMail_SMTP: 1
Received: from unknown (HELO AZ-FFEXHC01.global.avaya.com) ([135.64.58.11])
	by co300216-co-erhwest-out.avaya.com with ESMTP/TLS/AES128-SHA;
	13 Apr 2015 14:27:07 -0400
Received: from AZ-FFEXMB01.global.avaya.com ([fe80::39ee:75fe:e67a:cf4a]) by
	AZ-FFEXHC01.global.avaya.com ([135.64.58.11]) with mapi id
	14.03.0174.001; Mon, 13 Apr 2015 20:27:06 +0200
From: "Bipnesh, Abhinav (Abhinav)" <abhinavbipnesh@avaya.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Yocto Eclipse Plugin
Thread-Index: AdB2F3HM/xMNdG1HR7StQtYHFqtt4Q==
Date: Mon, 13 Apr 2015 18:27:06 +0000
Message-ID: <F38A866CD026F746A3BF0928A84397BE3A39BD12@AZ-FFEXMB01.global.avaya.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [198.152.73.22]
MIME-Version: 1.0
Subject: Yocto Eclipse Plugin
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
X-List-Received-Date: Mon, 13 Apr 2015 18:27:11 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi All,

I am trying to setup the Yocto Eclipse Plugin for Eclipse (Luna release). I=
 am able to install the Juno release plugin for 1.7.1 release. But while co=
nfiguring it I am facing issues as below
1. When I try to provide BitBake directory as part of tool chain I get an e=
rror that need to build meta-ide-support before configuring it.=20
As I did build meta-ide-support before setting up the path as I can see an =
environment file present under <bitbake machine directory>/tmp path.
2. If I select Standard SDK option then it accepts the same i.e. it accept =
environment file present under tmp directory as vaild which I suppose it sh=
ould not do.
3. I already has Makefile based project which I am trying to configure in e=
clipse by selecting Yocto as Toolchain.=20
But when I try to build it I am seeing its using platform GCC instead of Yo=
cto tool chain.=20
How to fix the same as I cant change this project to an CMake based project=
.

Is there as way I can use Kepler plugin instead of Juno as when I try the s=
ame with Luna I am getting dependencies errors.

Thanks,
Abhinav


