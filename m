Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A295FE0084F; Tue, 28 Oct 2014 07:17:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [83.145.59.142 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Tue, 28 Oct 2014 07:17:18 PDT
Received: from STOEXHUB01.domain01.net (STOEXHUB01.domain01.net
	[83.145.59.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A906CE00848
	for <yocto@yoctoproject.org>; Tue, 28 Oct 2014 07:17:18 -0700 (PDT)
Received: from ad.chargestorm.se (81.232.163.241) by STOEXHUB01.domain01.net
	(10.12.10.1) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Tue, 28 Oct 2014 15:16:10 +0100
Date: Tue, 28 Oct 2014 15:15:39 +0100
From: Anders Darander <anders@chargestorm.se>
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20141028141539.GG7577@ad.chargestorm.se>
Mail-Followup-To: Gary Thomas <gary@mlbassoc.com>,
	Yocto Project <yocto@yoctoproject.org>
References: <544FA23A.6050502@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <544FA23A.6050502@mlbassoc.com>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Packaging problem
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
X-List-Received-Date: Tue, 28 Oct 2014 14:17:22 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Gary Thomas <gary@mlbassoc.com> [141028 15:06]:
> I'm trying to split out some tests from a packages by adding these lines the recipe:
>    PACKAGES += " ${PN}-tests"
>    FILES_${PN}-tests = "${libdir}/python*/site-packages/matplotlib/test*"
>    RDEPENDS_${PN}-tests += " python-nose"
...
> It all looks correct to me, but the -tests package is empty.

I'd guess that the files get picked up in ${PN}, right?

If so, you'll likely need to prepend PACKAGES instead of appending to
it: 
PACKAGES =+ " ${PN}-tests"

The first package in PACKAGES that can grab a file will do that...

Hopefully this will help you...

Cheers,
Anders
-- 
Anders Darander
ChargeStorm AB / eStorm AB

