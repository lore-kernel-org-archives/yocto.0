Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CAF28E00C64; Tue, 17 Jun 2014 06:57:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-5.0 required=5.0 tests=RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AE17FE00C52
	for <yocto@yoctoproject.org>; Tue, 17 Jun 2014 06:56:08 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 17 Jun 2014 06:56:08 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,494,1400050800"; d="scan'208";a="556800450"
Received: from orsmsx107.amr.corp.intel.com ([10.22.240.5])
	by fmsmga002.fm.intel.com with ESMTP; 17 Jun 2014 06:53:09 -0700
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.105]) by
	ORSMSX107.amr.corp.intel.com ([169.254.1.159]) with mapi id
	14.03.0123.003; Tue, 17 Jun 2014 06:52:52 -0700
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] should yocto ref manual variable glossary include
	bitbake variables?
Thread-Index: AQHPiiTPJ+5294BdnkeWmoH9+5EXqZt1Uhfg
Date: Tue, 17 Jun 2014 13:52:52 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237983FA8BD6@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1406170800160.30459@localhost>
In-Reply-To: <alpine.LFD.2.11.1406170800160.30459@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: should yocto ref manual variable glossary include bitbake variables?
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
X-List-Received-Date: Tue, 17 Jun 2014 13:57:04 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

These two glossaries are not replicates of each other by design.  You might=
 notice also that some definitions for the same variable differ as well.  T=
he intent is to have the variables in ref-manual be specific (if possible) =
for YP and the ones in bitbake-user-manual to be specific for that context.

Scott

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Tuesday, June 17, 2014 5:03 AM
>To: Yocto discussion list
>Subject: [yocto] should yocto ref manual variable glossary include bitbake
>variables?
>
>
>  more pedantry -- reading both the bitbake user manual and the yocto
>reference manual variable glossaries:
>
>http://www.yoctoproject.org/docs/latest/bitbake-user-manual/bitbake-
>user-manual.html#ref-variables-glossary
>http://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#ref-
>variables-glos
>
>and i notice, as a single example, the first mentions the variable
>ASSUME_PROVIDED while the second does not. is this deliberate? is there an
>explicit distinguishing of variables that belong to different layers of th=
e build
>system across the variable glossaries in different manuals?
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

