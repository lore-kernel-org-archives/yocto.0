Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 16C39E00B68; Fri, 16 May 2014 05:04:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RDNS_NONE autolearn=no
	version=3.3.1
X-Spam-HAM-Report: * 1.3 RDNS_NONE Delivered to internal network by a host
	with no rDNS
Received: from STOEXHUB02.domain01.net (unknown [83.145.59.143])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48EBAE00975
	for <yocto@yoctoproject.org>; Fri, 16 May 2014 05:04:26 -0700 (PDT)
Received: from ad.chargestorm.se (213.114.64.43) by stoexhub02.domain01.net
	(10.12.10.2) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Fri, 16 May 2014 14:04:25 +0200
Date: Fri, 16 May 2014 14:04:21 +0200
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20140516120420.GA3995@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <ll4sg1$jb0$1@ger.gmane.org>
MIME-Version: 1.0
In-Reply-To: <ll4sg1$jb0$1@ger.gmane.org>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
X-GFI-SMTP-Submission: 1
Subject: Re: Help with building app recipe
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
X-List-Received-Date: Fri, 16 May 2014 12:04:31 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Neuer User <auslands-kv@gmx.de> [140516 13:24]:

> require recipes-qt/qt5/qt5.inc
> ------------------------------------------------------------------------


> It is WIP, so e.g. the license is stil wrong.

> The package depends on Qt5 and Python3.

In that case, I would have expected to see 

inherit python3native qmake5 

in your recipe.

> I am currently experiencing two (rather small) problems:

> 1.) the configure step does not find "python3-config". It is located in
> tmp/sysroots/i686-linux/usr/bin/python3-native

I haven't used python3 in combination with OE yet. Though, this should
likely have been handled by
inherit python3native

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

