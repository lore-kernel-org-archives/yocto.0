Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 73B57E00B78; Tue, 17 Jun 2014 06:55:09 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4C70CE00B5C
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 06:54:51 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 17 Jun 2014 06:54:50 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,494,1400050800"; d="scan'208";a="556799293"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jun 2014 06:50:27 -0700
Received: from orsmsx153.amr.corp.intel.com (10.22.226.247) by
	ORSMSX107.amr.corp.intel.com (10.22.240.5) with Microsoft SMTP Server
	(TLS) id 14.3.123.3; Tue, 17 Jun 2014 06:50:26 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.105]) by
	ORSMSX153.amr.corp.intel.com ([169.254.12.243]) with mapi id
	14.03.0123.003; Tue, 17 Jun 2014 06:50:26 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] any plans on more carefully distinguishing docbook
	markup in yocto docs?
Thread-Index: AQHPiit8FZM81QgOjk2tWuRPriOHhJt1UZtg
Date: Tue, 17 Jun 2014 13:50:26 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FA8BC2@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1406170847080.31619@localhost>
In-Reply-To: <alpine.LFD.2.11.1406170847080.31619@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: any plans on more carefully distinguishing docbook markup in yocto docs?
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
X-List-Received-Date: Tue, 17 Jun 2014 13:55:09 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I could look at this... low on the priority list right now though but good =
point.

Thanks,=20
Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Tuesday, June 17, 2014 5:51 AM
>To: Yocto discussion list
>Subject: [yocto] any plans on more carefully distinguishing docbook markup=
 in
>yocto docs?
>
>
>  i'm sure i asked this once before, but is there any long-term plan for m=
ore
>carefully marking up the yocto docs semantically? as in, most things that
>represent filenames or variables or commands or code are simply tagged as
><filename>, even when this is not really appropriate.
>
>  to be semantically precise, one should be more carefully selecting among
>tags such as <filename>, <varname>, <command>, <code> and so on.
>for now, i suspect the rendering toolchain wouldn't change what's eventual=
ly
>produced, but in the future, i think more careful markup would allow the
>generation of much prettier docs.
>
>  thoughts?
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

