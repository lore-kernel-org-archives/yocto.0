Return-Path: <agikling@lasx.com>
Received: from mx.cbeyond.com (mx.cbeyond.com [66.180.96.58])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E2B3AE0044A
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2012 10:20:04 -0700 (PDT)
X-SBRS: 5.3
X-HAT: Sender Group CBEYOND_SYSTEMS, Policy $CBEYOND_RELAY applied.
X-Hostname: imx01dal.sys.cbeyond.net
X-IronPort-Anti-Spam-Filtered: true
X-IronPort-Anti-Spam-Result: Ap4BAEvTfU9CtGAbmWdsb2JhbABFuREBAQEBAQgLCwcUJ4IQOlEBCDZCJgEEG4gGmWGhFY93YwSpIg
X-IronPort-AV: E=Sophos;i="4.75,377,1330923600"; d="scan'208";a="392833459"
Received: from exchange.cbeyondonline.net (HELO hub404dal.mmeprod.cbeyond)
	([66.180.96.27])
	by mx.cbeyond.com with ESMTP; 05 Apr 2012 13:20:04 -0400
Received: from EXMBX05.mmeprod.cbeyond ([192.168.13.77]) by
	hub404dal.mmeprod.cbeyond ([192.168.13.102]) with mapi; Thu, 5 Apr 2012
	13:20:04 -0400
From: Andy Gikling <agikling@lasx.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Thu, 5 Apr 2012 13:20:03 -0400
Thread-Topic: Eclipse-ADT-build-error (Lu, Lianhao)
Thread-Index: Ac0TT8ALRUiFMwj0SB6ySamwZczMlw==
Message-ID: <23FC35CD1508674EBB20455EB700B1B4BCE870A7EE@EXMBX05.mmeprod.cbeyond>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Re: Eclipse-ADT-build-error (Lu, Lianhao)
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 05 Apr 2012 17:20:05 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Lu, Lianhao,

I've recently confirmed the same type/class of error(s).  I've had all the =
ADT building working before which is the interesting thing.  I tried to mov=
e from Yocto 1.1 to Yocto 1.1.1 and that's when it started happening.  I be=
lieve it has to do with a mis-version of Yocto ADT and the prebuilt toolcha=
in you down download from the site - or something of that nature.

This evening I'll probably have a chance to explore further exactly what's =
happening and what I've tested.

Thanks,=20

~Andy Gikling

