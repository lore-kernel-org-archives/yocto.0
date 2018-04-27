Return-Path: <prvs=065568ecf5=alan.levy@plextek.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4238DE009E2; Fri, 27 Apr 2018 07:32:02 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [62.254.222.163 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 169 seconds by postgrey-1.32 at yocto-www;
	Fri, 27 Apr 2018 07:32:00 PDT
Received: from mailgate.plextek.co.uk (mailgate.plextek.co.uk [62.254.222.163])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7260E0073D
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 07:32:00 -0700 (PDT)
Received: from plextek-exch1.plextek.lan ([10.10.0.152]:51196)
	by mailgate.plextek.co.uk with esmtps (TLSv1:AES256-SHA:256)
	(Exim 4.82_1-5b7a7c0-XX) (envelope-from <alan.levy@plextek.com>)
	id 1fC4Mz-0006FE-3D; Fri, 27 Apr 2018 15:29:06 +0100
Received: from PLEXTEK-EXCH1.plextek.lan (10.10.0.152) by
	PLEXTEK-EXCH1.plextek.lan (10.10.0.152) with Microsoft SMTP Server
	(TLS) id 15.0.847.32; Fri, 27 Apr 2018 15:29:05 +0100
Received: from PLEXTEK-EXCH1.plextek.lan ([fe80::35f8:d18b:b59a:bd7e]) by
	PLEXTEK-EXCH1.plextek.lan ([fe80::35f8:d18b:b59a:bd7e%18]) with mapi id
	15.00.0847.030; Fri, 27 Apr 2018 15:29:05 +0100
From: Alan Levy <alan.levy@plextek.com>
To: "alan.martinovic@senic.com" <alan.martinovic@senic.com>
Thread-Topic: yocto Digest, Vol 91, Issue 105
Thread-Index: AQHT3iu2OG3gajc03UyLPWJctnilPKQUqmvw
Date: Fri, 27 Apr 2018 14:29:04 +0000
Message-ID: <0f1698d3d3204902b3a03fa68efb8a15@PLEXTEK-EXCH1.plextek.lan>
References: <mailman.83177.1524835668.15860.yocto@yoctoproject.org>
In-Reply-To: <mailman.83177.1524835668.15860.yocto@yoctoproject.org>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.10.11.254]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto Digest, Vol 91, Issue 105
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
X-List-Received-Date: Fri, 27 Apr 2018 14:32:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

-----Original Message-----

> Date: Fri, 27 Apr 2018 13:38:35 +0200
> From: Alan Martinovic <alan.martinovic@senic.com>
> To: Yocto-mailing-list <yocto@yoctoproject.org>
> Subject: [yocto] Installing a package on the board at runtime
> Message-ID:
>	<CAOT_U5YEgeYdOJxdncO0vXm4OnNLofd6rj8amNiOMZZ_qbzqvw@mail.gmail.com>
> Content-Type: text/plain; charset=3D"UTF-8"
>
> Hey,
> I know there is a method in devtool called devtool deploy-target.
> It's a great thing to install a package on the board at runtime.
>
> Is there something like that available without devtool?
>
>
> A digression:
> Am asking for a non devtool option because it
> seems like devtool is ignoring the patch and config files
> the recipe depends on (can't find any in workspace/sources).
> My particular recipe has a custom build step that
> depends on rendering config file templates (which fails due to missing
> not finding the config file).

Assuming that your target has an Ethernet interface you can use DNF/RPM tog=
ether with a web server such as Apache or IIS to host the package repositor=
y; there are also some more lightweight package managers available.

ALAN LEVY, Lead Consultant, Embedded Systems

Plextek Consulting, The Plextek Building, London Road, Great Chesterford, S=
affron Walden, CB10 1NY, UK
T: +44 (0) 1799 533200    E: alan.levy@plextek.com  W: www.plextek.com


