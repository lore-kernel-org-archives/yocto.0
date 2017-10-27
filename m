Return-Path: <Bastian.Ruppert@sewerin.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 49358E00D42; Fri, 27 Oct 2017 03:02:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [77.75.200.26 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from Exchange.sewerin.de (gate.sewerin.de [77.75.200.26])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DAA2E00D40
	for <yocto@yoctoproject.org>; Fri, 27 Oct 2017 03:02:04 -0700 (PDT)
Received: from Exchange.sewerin.de (10.1.1.60) by Exchange.sewerin.de
	(10.1.1.60) with Microsoft SMTP Server (TLS) id 15.0.995.29;
	Fri, 27 Oct 2017 12:02:01 +0200
Received: from Exchange.sewerin.de ([fe80::341e:d2bb:d599:a236]) by
	Exchange.sewerin.de ([fe80::341e:d2bb:d599:a236%12]) with mapi id
	15.00.0995.028; Fri, 27 Oct 2017 12:02:01 +0200
From: Bastian Ruppert <Bastian.Ruppert@sewerin.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to disable dropbear start on boot
Thread-Index: AdNPCpmqDqxSgALvS5WK10NLcf8CaQ==
Date: Fri, 27 Oct 2017 10:02:00 +0000
Message-ID: <f8e370f5c3c34e589d624557ec2fcb1f@Exchange.sewerin.de>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.1.5.170]
x-gfi-smtp-submission: 1
x-gfi-smtp-hellodomain: Exchange.sewerin.de
x-gfi-smtp-remoteip: 10.1.1.60
MIME-Version: 1.0
Subject: Re: How to disable dropbear start on boot
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
X-List-Received-Date: Fri, 27 Oct 2017 10:02:07 -0000
Content-Language: de-DE
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

> How to disable dropbear start on boot?

Perhaps changes on INITSCRIPT_PARAMS in the original recipe are possible.

> And what ist the preferred way to change DROPBEAR_RSAKEY_DEFAULT?

Using devtool and modify the orig recipe is possible.



