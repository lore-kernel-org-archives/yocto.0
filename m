Return-Path: <scott.m.rifenbark@intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D414DE017C8
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 06:35:24 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by fmsmga101.fm.intel.com with ESMTP; 06 Nov 2013 06:35:24 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.93,647,1378882800"; d="scan'208";a="423162294"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by fmsmga001.fm.intel.com with ESMTP; 06 Nov 2013 06:35:21 -0800
Received: from orsmsx115.amr.corp.intel.com (10.22.240.11) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Wed, 6 Nov 2013 06:35:21 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.126]) by
	ORSMSX115.amr.corp.intel.com ([10.22.240.11]) with mapi id
	14.03.0123.003; Wed, 6 Nov 2013 06:35:21 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] ref manual, sections 2.3.[67], ambiguity with "-b"
	option to bitbake
Thread-Index: AQHO2gY8tt2vgiuYbE+ZrlXh1g3tDZoYRbcg
Date: Wed, 6 Nov 2013 14:35:20 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983F44A97@ORSMSX101.amr.corp.intel.com>
References: <alpine.DEB.2.02.1311050359160.8486@oneiric>
In-Reply-To: <alpine.DEB.2.02.1311050359160.8486@oneiric>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.138]
MIME-Version: 1.0
Subject: Re: ref manual, sections 2.3.[67], ambiguity with "-b" option to bitbake
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
X-List-Received-Date: Wed, 06 Nov 2013 14:35:26 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Robert,=20

I think section 2.3.7 cut corners when it said "If you want to show the env=
ironment resulting from parsing a single recipe, use the -b reciename form.=
"  My guess is that it should say ".... use the -b <somepath/somefile.bb>."

Someone on the maillist correct me if this is a bad assumption.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Tuesday, November 05, 2013 1:05 AM
>To: Yocto discussion list
>Subject: [yocto] ref manual, sections 2.3.[67], ambiguity with "-b" option=
 to
>bitbake
>
>
>  section 2.3.6 of ref manual explains that bitbake "-b" option refers spe=
cifically
>to a recipe *file*:
>
>"If you really want to build a specific .bb file, you can use the command =
form
>bitbake -b <somepath/somefile.bb>."
>
>but the very next section uses "-b" in the context of a simple recipe
>*name* when combining it with "-e":
>
>"You can use the -e BitBake option to display the resulting environment fo=
r a
>configuration when you do not specify a package or for a specific package
>when you do specify the package. If you want to show the environment
>resulting from parsing a single recipe, use the -b recipename form."
>
>  that suggests i could run something like:
>
>$ bitbake -e -b zlib
>
>which seems to work. clarification? is "-b" meant to refer to a simple rec=
ipe
>*name* when used in the context of "-e"?
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
>_______________________________________________
>yocto mailing list
>yocto@yoctoproject.org
>https://lists.yoctoproject.org/listinfo/yocto

