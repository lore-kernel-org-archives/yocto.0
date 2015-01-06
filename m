Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 34B7BE005B4; Tue,  6 Jan 2015 07:45:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5C83E002F9
	for <yocto@yoctoproject.org>; Tue,  6 Jan 2015 07:45:26 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga102.jf.intel.com with ESMTP; 06 Jan 2015 07:42:52 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,708,1413270000"; d="scan'208";a="633231181"
Received: from orsmsx110.amr.corp.intel.com ([10.22.240.8])
	by orsmga001.jf.intel.com with ESMTP; 06 Jan 2015 07:45:15 -0800
Received: from orsmsx158.amr.corp.intel.com (10.22.240.20) by
	ORSMSX110.amr.corp.intel.com (10.22.240.8) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Tue, 6 Jan 2015 07:45:15 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX158.amr.corp.intel.com ([169.254.10.218]) with mapi id
	14.03.0195.001; Tue, 6 Jan 2015 07:45:14 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] dev manual contains obsolete ref to QT_SQL_DRIVER_FLAGS
Thread-Index: AQHQKPLTpQikt3De/Ea2yWPhbmueipyzPYHQ
Date: Tue, 6 Jan 2015 15:45:13 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E91D20@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1501050916390.14368@localhost>
In-Reply-To: <alpine.LFD.2.11.1501050916390.14368@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: dev manual contains obsolete ref to QT_SQL_DRIVER_FLAGS
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
X-List-Received-Date: Tue, 06 Jan 2015 15:45:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Investigating if there is a substitute example to illustrate the point.

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Monday, January 05, 2015 6:20 AM
>To: Yocto discussion list
>Subject: [yocto] dev manual contains obsolete ref to QT_SQL_DRIVER_FLAGS
>
>
>  observation: current dev manual, sec 5.1.3.2, provides an example for
>bbappend files:
>
>"For example, consider how support plug-ins for the Qt 4 database are
>configured. The Source Directory does not have MySQL or PostgreSQL.
>However, OpenEmbedded's layer meta-oe does. Consequently, meta-oe
>uses append files to modify the QT_SQL_DRIVER_FLAGS variable to enable
>the appropriate plug-ins. This variable was added to the qt4.inc include f=
ile in
>the Source Directory specifically to allow the meta-oe layer to be able to
>control which plug-ins are built."
>
>  but the meta-oe content related to this variable appears to have been
>removed some time ago:
>
>commit 64c6887ca19d2ce52e538186c93163dddf68438f
>Author: Paul Eggleton <paul.eggleton@linux.intel.com>
>Date:   Wed Apr 10 15:57:59 2013 +0000
>
>    qt4: remove bbappend content
>
>    These changes to Qt's configuration need to be applied in distro layer=
s,
>    not in meta-oe.
>
>so someone should probably come up with a different example of that.
>
>rday
>
>--
>
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                        http://crashcourse.ca
>
>Twitter:                                       http://twitter.com/rpjday
>LinkedIn:                               http://ca.linkedin.com/in/rpjday
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
>--
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

