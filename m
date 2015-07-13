Return-Path: <matteo.pampolini@selex-es.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2348E00902; Mon, 13 Jul 2015 09:05:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.3 required=5.0 tests=BAYES_00,FSL_MY_NAME_IS,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [151.89.31.197 listed in list.dnswl.org]
	*  2.9 FSL_MY_NAME_IS BODY: My name is ...
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sesgepumx004.selex-es.com (sesgepumx004.selex-es.com
	[151.89.31.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F69FE00A1C
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 09:05:13 -0700 (PDT)
Received: from sesgepumx004.selex-es.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 7AC7041079;
	Mon, 13 Jul 2015 18:05:12 +0200 (CEST)
Received: from sesgepwmx002.ses.priv (unknown [151.89.46.20])
	by sesgepumx004.selex-es.com (Postfix) with ESMTPS id 6F01B4103A;
	Mon, 13 Jul 2015 18:05:12 +0200 (CEST)
Received: from sxgepvslc001.exch4-sophos.priv (151.89.31.208) by
	SESGEPWMX002.ses.priv (151.89.46.20) with Microsoft SMTP Server id
	14.3.248.2; Mon, 13 Jul 2015 18:05:11 +0200
Received: from sxgepvslc001.exch4-sophos.priv (localhost [127.0.0.1])	by
	localhost (Postfix) with SMTP id C890742796;
	Mon, 13 Jul 2015 18:05:11 +0200 (CEST)
Received: from sxgepvslc009.servizi.elsag.it (sxgepvslc009 [10.70.199.9])	by
	sxgepvslc001.exch4-sophos.priv (Postfix) with ESMTP id 757D142772;
	Mon, 13 Jul 2015 18:05:11 +0200 (CEST)
Received: from SXGEPVSWC069.cs4.priv (unknown [10.70.196.29])	by
	sxgepvslc009.servizi.elsag.it (Postfix) with ESMTP id 6F21B60717;
	Mon, 13 Jul 2015 18:05:11 +0200 (CEST)
Received: from SXGEPVSWC069.cs4.priv (10.70.196.29) by SXGEPVSWC069.cs4.priv
	(10.70.196.29) with Microsoft SMTP Server (TLS) id 15.0.995.29;
	Mon, 13 Jul 2015 18:05:09 +0200
Received: from SXGEPVSWC069.cs4.priv ([fe80::b829:faea:bee7:5b64]) by
	SXGEPVSWC069.cs4.priv ([fe80::b829:faea:bee7:5b64%12]) with mapi id
	15.00.0995.028; Mon, 13 Jul 2015 18:05:09 +0200
From: Pampolini Matteo <matteo.pampolini@selex-es.com>
To: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Which is the best strategy to customize Qt configuration?
Thread-Index: AQHQvXaRbv/oZSkFIESXjA0SnTQsbp3ZahGAgAAljrM=
Date: Mon, 13 Jul 2015 16:05:08 +0000
Message-ID: <1436803507811.898@selex-es.com>
References: <1436797408174.67011@selex-es.com>,
	<22658_1436802429_55A3DD7C_22658_11739_1_55A3DDA1.8020100@linux.intel.com>
In-Reply-To: <22658_1436802429_55A3DD7C_22658_11739_1_55A3DDA1.8020100@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.70.194.133]
MIME-Version: 1.0
X-PMX-Version: 6.0.3.2322014, Antispam-Engine: 2.7.2.2107409,
	Antispam-Data: 2015.7.13.155416
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
	HTML_00_01 0.05, HTML_00_10 0.05, SUPERLONG_LINE 0.05,
	BODYTEXTP_SIZE_3000_LESS 0, BODY_SIZE_2000_2999 0,
	BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, NO_URI_HTTPS 0,
	WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0,
	__ANY_URI 0, __BOUNCE_CHALLENGE_SUBJ 0,
	__BOUNCE_NDR_SUBJ_EXEMPT 0, __CP_MEDIA_BODY 0, __CT 0, __CTE 0,
	__CT_TEXT_PLAIN 0, __FORWARDED_MSG 0, __FRAUD_INTRO 0,
	__HAS_FROM 0, __HAS_MSGID 0, __HAS_XOIP 0, __IN_REP_TO 0,
	__MIME_TEXT_ONLY 0, __MIME_VERSION 0, __SANE_MSGID 0,
	__SUBJ_ALPHA_NEGATE 0, __TO_MALFORMED_2 0, __URI_NO_PATH 0,
	__URI_NO_WWW 0, __URI_NS '
X-Seen-By: sesgepumx004.servizi.elsag.it
MXOUTGOING: yes
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
X-List-Received-Date: Mon, 13 Jul 2015 16:05:30 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Many thanks Leonardo.=0A=
=0A=
However I still have some doubts: as far as I understood I should remove th=
e dependencies from glib and gstreamer inside DEPENDS variable as it appear=
s in qt4.inc file, otherwise BitBake, correctly, downloads and compiles the=
m to satisfy Qt requirements, am I right?=0A=
=0A=
If so, how can I avoid this from within my layer?=0A=
=0A=
Regards, Matteo=0A=
________________________________________=0A=
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>=0A=
Sent: Monday, July 13, 2015 5:47 PM=0A=
To: Pampolini Matteo; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Which is the best strategy to customize Qt configurati=
on?=0A=
=0A=
On 07/13/2015 09:23 AM, Pampolini Matteo wrote:=0A=
> Hello everybody,=0A=
>=0A=
>=0A=
> my name is Matteo and I'm writing from Italy.=0A=
>=0A=
>=0A=
> I'm involved in a project that requires a very customized Linux installat=
ion and I think Yocto is the best choice for this purpose.=0A=
>=0A=
>=0A=
> I was able to build and run some images from Poky 1.8 reference and now I=
'm trying to create my own one, with a custom configuration of Qt for X11.=
=0A=
>=0A=
>=0A=
> In particular I would like to remove Phonon support to avoid GStreamer/GL=
ib dependencies: the quickest (and bad) solution was to modify meta/recipes=
-qt/qt4/qt4.inc file and it works, of course.=0A=
>=0A=
>=0A=
> But in order to follow Yocto guidelines and learn the right approach, I w=
ould like to create a new layer and, with proper use of .bbappend files, cr=
eate my own Qt custom configuration.=0A=
>=0A=
=0A=
For this point, you can create a new layer and inside a new image file.=0A=
This image will basically inherit the one you want, then you need to=0A=
remove the specific recipe. A possible way to remove it is though=0A=
IMAGE_INSTALL_remove =3D "<pkg to remove">=0A=
=0A=
>=0A=
> Now I'm in trouble a little bit because I do not exactly now which Qt-rel=
ated files should be included in my layer and how they should relate with t=
he provided ones, may you please help me?=0A=
>=0A=
=0A=
Dependencies can be found using the '-g' bitbake command line. That=0A=
command produces .dot files, and you can parse these to figure out what=0A=
you want.=0A=
=0A=
>=0A=
> Many thanks in advance for your kind support,=0A=
>=0A=
>=0A=
> Matteo=0A=
>=0A=
>=0A=
>=0A=

