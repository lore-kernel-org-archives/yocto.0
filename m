Return-Path: <matteo.pampolini@selex-es.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73FA7E0047F; Mon, 13 Jul 2015 09:19:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [151.89.31.197 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from sesgepumx004.selex-es.com (sesgepumx004.selex-es.com
	[151.89.31.197])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35B0FE00942
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 09:19:01 -0700 (PDT)
Received: from sesgepumx004.selex-es.com (localhost [127.0.0.1])
	by localhost (Postfix) with SMTP id 6E127410A7;
	Mon, 13 Jul 2015 18:19:00 +0200 (CEST)
Received: from sesgepwmx002.ses.priv (unknown [151.89.46.20])
	by sesgepumx004.selex-es.com (Postfix) with ESMTPS id 6587041098;
	Mon, 13 Jul 2015 18:19:00 +0200 (CEST)
Received: from sxgepvslc001.exch4-sophos.priv (151.89.31.207) by
	SESGEPWMX002.ses.priv (151.89.46.20) with Microsoft SMTP Server id
	14.3.248.2; Mon, 13 Jul 2015 18:19:00 +0200
Received: from sxgepvslc001.exch4-sophos.priv (localhost [127.0.0.1])	by
	localhost (Postfix) with SMTP id 0C3BF43054;
	Mon, 13 Jul 2015 18:19:00 +0200 (CEST)
Received: from sxgepvslc010.servizi.elsag.it (sxgepvslc010 [10.70.199.10])	by
	sxgepvslc001.exch4-sophos.priv (Postfix) with ESMTP id C31814302A;
	Mon, 13 Jul 2015 18:18:59 +0200 (CEST)
Received: from SXGEPVSWC069.cs4.priv (unknown [10.70.196.29])	by
	sxgepvslc010.servizi.elsag.it (Postfix) with ESMTP id BEF8660714;
	Mon, 13 Jul 2015 18:18:59 +0200 (CEST)
Received: from SXGEPVSWC069.cs4.priv (10.70.196.29) by SXGEPVSWC069.cs4.priv
	(10.70.196.29) with Microsoft SMTP Server (TLS) id 15.0.995.29;
	Mon, 13 Jul 2015 18:18:55 +0200
Received: from SXGEPVSWC069.cs4.priv ([fe80::b829:faea:bee7:5b64]) by
	SXGEPVSWC069.cs4.priv ([fe80::b829:faea:bee7:5b64%12]) with mapi id
	15.00.0995.028; Mon, 13 Jul 2015 18:18:55 +0200
From: Pampolini Matteo <matteo.pampolini@selex-es.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>, Leonardo Sandoval
	<leonardo.sandoval.gonzalez@linux.intel.com>
Thread-Topic: [yocto] Which is the best strategy to customize Qt configuration?
Thread-Index: AQHQvXaRbv/oZSkFIESXjA0SnTQsbp3ZkRlNgAABoW8=
Date: Mon, 13 Jul 2015 16:18:55 +0000
Message-ID: <1436804334217.6373@selex-es.com>
References: <1436797408174.67011@selex-es.com>
	<55A3DDA1.8020100@linux.intel.com>,
	<22658_1436803637_55A3E234_22658_12077_1_10339148.fJj1pddUcL@peggleto-mobl.ger.corp.intel.com>
In-Reply-To: <22658_1436803637_55A3E234_22658_12077_1_10339148.fJj1pddUcL@peggleto-mobl.ger.corp.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.70.194.133]
MIME-Version: 1.0
X-PMX-Version: 6.0.3.2322014, Antispam-Engine: 2.7.2.2107409,
	Antispam-Data: 2015.7.13.160916
X-PMX-Spam: Gauge=IIIIIIII, Probability=8%, Report='
	HTML_00_01 0.05, HTML_00_10 0.05, BODY_SIZE_3000_3999 0,
	BODY_SIZE_5000_LESS 0, BODY_SIZE_7000_LESS 0, NO_URI_HTTPS 0,
	WEBMAIL_SOURCE 0, WEBMAIL_XOIP 0, WEBMAIL_X_IP_HDR 0,
	__ANY_URI 0, __BOUNCE_CHALLENGE_SUBJ 0,
	__BOUNCE_NDR_SUBJ_EXEMPT 0, __CP_MEDIA_BODY 0, __CT 0, __CTE 0,
	__CT_TEXT_PLAIN 0, __FORWARDED_MSG 0, __HAS_FROM 0,
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
X-List-Received-Date: Mon, 13 Jul 2015 16:19:25 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks Paul.=0A=
=0A=
It was also my idea to override QT_PHONON variable inside my .bbappend file=
, but the fact is that this does not prevent BitBake from downloading and c=
ompiling glib/gstreamer.=0A=
=0A=
In my first hack, when I modified the original qt.inc file, I had to make b=
oth changes, DEPENDS variable for BitBake and QT_PHONON for Qt itself.=0A=
=0A=
As I wrote in my answer to Leonardo the issue is: how can I override the va=
lue of DEPENDS variable in my own layer, if possible?=0A=
=0A=
Matteo=0A=
________________________________________=0A=
From: Paul Eggleton <paul.eggleton@linux.intel.com>=0A=
Sent: Monday, July 13, 2015 6:05 PM=0A=
To: Pampolini Matteo; Leonardo Sandoval=0A=
Cc: yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Which is the best strategy to customize Qt configurati=
on?=0A=
=0A=
On Monday 13 July 2015 10:47:45 Leonardo Sandoval wrote:=0A=
> On 07/13/2015 09:23 AM, Pampolini Matteo wrote:=0A=
> > I'm involved in a project that requires a very customized Linux=0A=
> > installation and I think Yocto is the best choice for this purpose.=0A=
> >=0A=
> > I was able to build and run some images from Poky 1.8 reference and now=
=0A=
> > I'm trying to create my own one, with a custom configuration of Qt for=
=0A=
> > X11.=0A=
> >=0A=
> > In particular I would like to remove Phonon support to avoid=0A=
> > GStreamer/GLib dependencies: the quickest (and bad) solution was to=0A=
> > modify meta/recipes-qt/qt4/qt4.inc file and it works, of course.=0A=
> >=0A=
> > But in order to follow Yocto guidelines and learn the right approach, I=
=0A=
> > would like to create a new layer and, with proper use of .bbappend file=
s,=0A=
> > create my own Qt custom configuration.=0A=
>=0A=
> For this point, you can create a new layer and inside a new image file.=
=0A=
> This image will basically inherit the one you want, then you need to=0A=
> remove the specific recipe. A possible way to remove it is though=0A=
> IMAGE_INSTALL_remove =3D "<pkg to remove">=0A=
=0A=
That doesn't really help with Qt configuration - you can't change any of th=
at=0A=
at the image level.=0A=
=0A=
The way to set this properly is to look at how qt4.inc is structured - note=
=0A=
that the -phonon / -no-phonon option for example is set through a variable=
=0A=
QT_PHONON. There are several different ways you could set this:=0A=
=0A=
1) Use a bbappend on the qt4-x11-free recipe that sets=0A=
QT_PHONON =3D "-no-phonon"=0A=
=0A=
2) Set it from your distro config (or some include file from there) using=
=0A=
QT_PHONON_pn-qt4-x11-free =3D "-no-phonon"=0A=
=0A=
3) Since this variable specifically is being set in the .inc file with ?=3D=
 and is=0A=
reasonably well namespaced (i.e. has a name which is unlikely to clash with=
=0A=
variables used in other recipes for a different purpose), you could=0A=
alternatively just set it from your distro config simply as=0A=
QT_PHONON =3D "-no-phonon"=0A=
=0A=
Cheers,=0A=
Paul=0A=
=0A=
--=0A=
=0A=
Paul Eggleton=0A=
Intel Open Source Technology Centre=0A=

