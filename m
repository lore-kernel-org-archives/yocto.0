Return-Path: <anders@chargestorm.se>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3EB6CE00B8B; Wed, 14 May 2014 07:02:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.6 required=5.0 tests=RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [83.145.59.142 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 65 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 May 2014 07:02:40 PDT
Received: from STOEXHUB01.domain01.net (unknown [83.145.59.142])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B2078E00B85
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 07:02:40 -0700 (PDT)
Received: from ad.chargestorm.se (213.114.64.43) by STOEXHUB01.domain01.net
	(10.12.10.1) with Microsoft SMTP Server (TLS) id 8.3.279.1;
	Wed, 14 May 2014 16:01:33 +0200
Date: Wed, 14 May 2014 16:01:30 +0200
From: Anders Darander <anders@chargestorm.se>
To: <yocto@yoctoproject.org>
Message-ID: <20140514140129.GC3649@ad.chargestorm.se>
Mail-Followup-To: yocto@yoctoproject.org
References: <lkvpl2$e8q$1@ger.gmane.org>
	<1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>
	<lkvsj2$vof$1@ger.gmane.org>
MIME-Version: 1.0
In-Reply-To: <lkvsj2$vof$1@ger.gmane.org>
X-Accept-Language: sv, en, de
X-GPG-Fingerprint: 5AF0 B2E9 78FE 9D75 D110  6F8F 3E31 84D7 920E 938C
X-GPG-Key-Id: 0x920E938C
X-GPG-Keyserver: hkp://keys.gnupg.net
Organization: ChargeStorm AB
User-Agent: Mutt/1.5.23 (2014-03-12)
Subject: Re: Best way to remove DISTRO_FEATURES?
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
X-List-Received-Date: Wed, 14 May 2014 14:02:50 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

* Neuer User <auslands-kv@gmx.de> [140514 15:56]:
> Well, no, not a one-time job. So I rather added
> DISTRO_FEATURES_remove = " 3g bluetooth irda nfc zeroconf x11 wayland"
> to my image.bb file. Guess, this is then the recommended way to go?

Well, the quick solution is to add that line to local.conf.

The image.bb file is far to late to change the distro configuration.

The better, long term solution would be to define your own distro. Which
really isn't that hard.

Cheers,
Anders

-- 
Anders Darander
ChargeStorm AB / eStorm AB

