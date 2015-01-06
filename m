Return-Path: <scott.m.rifenbark@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F098E005B4; Tue,  6 Jan 2015 07:15:40 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FE93E002F9
	for <yocto@yoctoproject.org>; Tue,  6 Jan 2015 07:15:34 -0800 (PST)
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga101.jf.intel.com with ESMTP; 06 Jan 2015 07:15:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.07,708,1413270000"; d="scan'208";a="647038048"
Received: from orsmsx103.amr.corp.intel.com ([10.22.225.130])
	by fmsmga001.fm.intel.com with ESMTP; 06 Jan 2015 07:15:32 -0800
Received: from orsmsx111.amr.corp.intel.com (10.22.240.12) by
	ORSMSX103.amr.corp.intel.com (10.22.225.130) with Microsoft SMTP Server
	(TLS) id 14.3.195.1; Tue, 6 Jan 2015 07:15:31 -0800
Received: from orsmsx101.amr.corp.intel.com ([169.254.8.116]) by
	ORSMSX111.amr.corp.intel.com ([169.254.11.27]) with mapi id
	14.03.0195.001; Tue, 6 Jan 2015 07:15:31 -0800
From: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>, Yocto discussion list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] current dev manual possibly links to out-of-date wiki
	page(s)
Thread-Index: AQHQKOJzMckCWMtiPUa6J34CH6hyzZyzNIRw
Date: Tue, 6 Jan 2015 15:15:30 +0000
Message-ID: <41DEA4B02DBDEF40A0F3B6D0DDB1237988E91CAB@ORSMSX101.amr.corp.intel.com>
References: <alpine.LFD.2.11.1501050718160.7372@localhost>
In-Reply-To: <alpine.LFD.2.11.1501050718160.7372@localhost>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.22.254.139]
MIME-Version: 1.0
Subject: Re: current dev manual possibly links to out-of-date wiki	page(s)
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
X-List-Received-Date: Tue, 06 Jan 2015 15:15:40 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I updated the wording in the manual to indicate that the target wiki pages =
have helpful but possibly dated information. =20

>-----Original Message-----
>From: yocto-bounces@yoctoproject.org [mailto:yocto-
>bounces@yoctoproject.org] On Behalf Of Robert P. J. Day
>Sent: Monday, January 05, 2015 4:23 AM
>To: Yocto discussion list
>Subject: [yocto] current dev manual possibly links to out-of-date wiki pag=
e(s)
>
>
>  section 4.1.1, dev manual:
>
>"Finally, there is a wiki page write up of the example also located here t=
hat
>you might find helpful."
>^^^^
>
>  that link takes one here:
>
>https://wiki.yoctoproject.org/wiki/Transcript:_creating_one_generic_Atom_
>BSP_from_another
>
>and while it's not fatal to link to older wiki material, it does read as o=
dd to link
>to a wiki page that, in its very opening, admits that its content might no=
t be
>current.
>
>  in addition, *that* wiki page quickly links here:
>
>https://wiki.yoctoproject.org/wiki/Yocto_BSP_Tools_Documentation
>
>which again admits that its content is to be obsoleted by the official BSP
>Guide.
>
>  in any event, i'll leave it to someone else to decide on the efficacy of=
 having
>official docs link to potentially transient wiki pages.
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

