Return-Path: <matteo.pampolini@selex-es.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3034DE008D4; Tue, 14 Jul 2015 06:02:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [151.89.31.197 listed in list.dnswl.org]
Received: from sesgepumx004.selex-es.com (sesgepumx004.selex-es.com
	[151.89.31.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3040E0086E
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2015 06:02:50 -0700 (PDT)
Received: from sesgepumx004.selex-es.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id A36124115E;
	Tue, 14 Jul 2015 15:02:48 +0200 (CEST)
Received: from sesgepwmx002.ses.priv (unknown [151.89.46.20])
	by sesgepumx004.selex-es.com (Postfix) with ESMTPS id 9ABF141134;
	Tue, 14 Jul 2015 15:02:48 +0200 (CEST)
Received: from sxgepvslc001.exch4-sophos.priv (151.89.31.207) by
	SESGEPWMX002.ses.priv (151.89.46.20) with Microsoft SMTP Server id
	14.3.248.2; Tue, 14 Jul 2015 15:02:48 +0200
Received: from sxgepvslc001.exch4-sophos.priv (localhost [127.0.0.1])	by
	localhost (Postfix) with SMTP id 31F0843287;
	Tue, 14 Jul 2015 15:02:48 +0200 (CEST)
Received: from sxgepvslc009.servizi.elsag.it (sxgepvslc009 [10.70.199.9])	by
	sxgepvslc001.exch4-sophos.priv (Postfix) with ESMTP id B36EC4320C;
	Tue, 14 Jul 2015 15:02:47 +0200 (CEST)
Received: from SXGEPVSWC067.cs4.priv (unknown [10.70.196.27])	by
	sxgepvslc009.servizi.elsag.it (Postfix) with ESMTP id AF25160709;
	Tue, 14 Jul 2015 15:02:47 +0200 (CEST)
Received: from SXGEPVSWC069.cs4.priv (10.70.196.29) by SXGEPVSWC067.cs4.priv
	(10.70.196.27) with Microsoft SMTP Server (TLS) id 15.0.995.29;
	Tue, 14 Jul 2015 15:02:39 +0200
Received: from SXGEPVSWC069.cs4.priv ([fe80::b829:faea:bee7:5b64]) by
	SXGEPVSWC069.cs4.priv ([fe80::b829:faea:bee7:5b64%12]) with mapi id
	15.00.0995.028; Tue, 14 Jul 2015 15:02:39 +0200
From: Pampolini Matteo <matteo.pampolini@selex-es.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Martin Jansa
	<martin.jansa@gmail.com>
Thread-Topic: [yocto] Which is the best strategy to customize Qt configuration?
Thread-Index: AQHQvXaRbv/oZSkFIESXjA0SnTQsbp3anSYMgABSd30=
Date: Tue, 14 Jul 2015 13:02:39 +0000
Message-ID: <1436878960200.45188@selex-es.com>
References: <1436797408174.67011@selex-es.com>
	<10339162.sO6SsRz4fR@peggleto-mobl.ger.corp.intel.com>
	<20150713180442.GB2407@jama>,
	<15988_1436861200_55A4C310_15988_12931_1_59871636.IPlF15pPhG@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <15988_1436861200_55A4C310_15988_12931_1_59871636.IPlF15pPhG@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.70.194.133]
MIME-Version: 1.0
X-PMX-Version: 6.0.3.2322014, Antispam-Engine: 2.7.2.2107409,
	Antispam-Data: 2015.7.14.125116
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
	HTML_00_01 0.05, HTML_00_10 0.05, BODYTEXTP_SIZE_3000_LESS 0,
	BODY_SIZE_1600_1699 0, BODY_SIZE_2000_LESS 0,
	BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, NO_URI_HTTPS 0,
	WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0,
	__ANY_URI 0, __BOUNCE_CHALLENGE_SUBJ 0,
	__BOUNCE_NDR_SUBJ_EXEMPT 0, __CT 0, __CTE 0, __CT_TEXT_PLAIN 0,
	__FORWARDED_MSG 0, __FW_1LN_BOT_MSGID 0, __HAS_FROM 0,
	__HAS_MSGID 0, __HAS_XOIP 0, __IN_REP_TO 0, __MIME_TEXT_ONLY 0,
	__MIME_VERSION 0, __SANE_MSGID 0, __SUBJ_ALPHA_NEGATE 0,
	__TO_MALFORMED_2 0, __URI_NO_PATH 0, __URI_NO_WWW 0, __URI_NS '
X-Seen-By: sesgepumx004.servizi.elsag.it
MXOUTGOING: yes
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Which is the best strategy to customize Qt configuration?
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
X-List-Received-Date: Tue, 14 Jul 2015 13:02:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Many many thanks to all of you for your support, I tried what you suggested=
 and it works fine!=0A=
=0A=
Regards, Matteo=0A=
________________________________________=0A=
From: Paul Eggleton <paul.eggleton@linux.intel.com>=0A=
Sent: Tuesday, July 14, 2015 10:06 AM=0A=
To: Martin Jansa=0A=
Cc: Pampolini Matteo; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Which is the best strategy to customize Qt configurati=
on?=0A=
=0A=
On Monday 13 July 2015 20:04:42 Martin Jansa wrote:=0A=
> On Mon, Jul 13, 2015 at 05:38:59PM +0100, Paul Eggleton wrote:=0A=
> > On Monday 13 July 2015 16:18:55 Pampolini Matteo wrote:=0A=
> > > It was also my idea to override QT_PHONON variable inside my .bbappen=
d=0A=
> > > file, but the fact is that this does not prevent BitBake from=0A=
> > > downloading and compiling glib/gstreamer.=0A=
> > >=0A=
> > > In my first hack, when I modified the original qt.inc file, I had to=
=0A=
> > > make=0A=
> > > both changes, DEPENDS variable for BitBake and QT_PHONON for Qt itsel=
f.=0A=
> > >=0A=
> > > As I wrote in my answer to Leonardo the issue is: how can I override =
the=0A=
> > > value of DEPENDS variable in my own layer, if possible?=0A=
> >=0A=
> > You can set DEPENDS in the qt4-x11-free bbappend just as with any other=
=0A=
> > variable. In this instance you could use the _remove operator e.g.=0A=
> >=0A=
> > DEPENDS_remove =3D "gstreamer gst-plugins-base"=0A=
>=0A=
> Will this work if gstreamer gst-plugins-base aren't next to each other=0A=
> in DEPENDS?=0A=
=0A=
Yes, it will. Try it ;)=0A=
=0A=
Cheers,=0A=
Paul=0A=
=0A=
--=0A=
=0A=
Paul Eggleton=0A=
Intel Open Source Technology Centre=0A=

