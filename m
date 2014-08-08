Return-Path: <pierre-yves.mordret@st.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DE4AFE0076B; Fri,  8 Aug 2014 06:21:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [62.209.51.94 listed in list.dnswl.org]
Received: from mx07-00178001.pphosted.com (mx07-00178001.pphosted.com
	[62.209.51.94])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 43DB6E0074B
	for <yocto@yoctoproject.org>; Fri,  8 Aug 2014 06:21:22 -0700 (PDT)
Received: from pps.filterd (m0046670.ppops.net [127.0.0.1])
	by mx07-00178001.pphosted.com (8.14.5/8.14.5) with SMTP id
	s78DKBL5001914; Fri, 8 Aug 2014 15:21:18 +0200
Received: from beta.dmz-eu.st.com (beta.dmz-eu.st.com [164.129.1.35])
	by mx07-00178001.pphosted.com with ESMTP id 1nmtg8hb0a-1
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NOT);
	Fri, 08 Aug 2014 15:21:18 +0200
Received: from zeta.dmz-eu.st.com (zeta.dmz-eu.st.com [164.129.230.9])
	by beta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 7DE1131;
	Fri,  8 Aug 2014 13:21:12 +0000 (GMT)
Received: from Webmail-eu.st.com (safex1hubcas4.st.com [10.75.90.69])
	by zeta.dmz-eu.st.com (STMicroelectronics) with ESMTP id 0CFC7166DF;
	Fri,  8 Aug 2014 13:21:16 +0000 (GMT)
Received: from SAFEX1MAIL5.st.com ([10.75.90.28]) by Safex1hubcas4.st.com
	([10.75.90.69]) with mapi; Fri, 8 Aug 2014 15:21:15 +0200
From: Pierre Yves MORDRET <pierre-yves.mordret@st.com>
To: Mark Hatle <mark.hatle@windriver.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Fri, 8 Aug 2014 15:21:14 +0200
Thread-Topic: [yocto] Installing Application Development SDK hangs when
	using "screen"
Thread-Index: Ac+yW1MhYheLfc4MSLi/mmwDXOG3yAAsAZag
Message-ID: <888B7DC5D4899F46A9721989283666969C1E56EE49@SAFEX1MAIL5.st.com>
References: <888B7DC5D4899F46A9721989283666969C1E56EE1B@SAFEX1MAIL5.st.com>
	<53E3A6DE.7010500@windriver.com>
In-Reply-To: <53E3A6DE.7010500@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
X-Proofpoint-Virus-Version: vendor=fsecure engine=2.50.10432:5.12.52, 1.0.27,
	0.0.0000
	definitions=2014-08-08_04:2014-08-08, 2014-08-08,
	1970-01-01 signatures=0
Subject: Re: Installing Application Development SDK hangs when using "screen"
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
X-List-Received-Date: Fri, 08 Aug 2014 13:21:32 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Hi Mark,

This is on Daisy branch. On Dylan branch I didn't experience such trouble. =
It came up with Daisy.

Regards

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Mark Hatle
> Sent: jeudi 7 ao=FBt 2014 12:19
> To: yocto@yoctoproject.org
> Subject: Re: [yocto] Installing Application Development SDK hangs when
> using "screen"
>=20
> On 8/7/14, 8:59 AM, Pierre Yves MORDRET wrote:
> > Hi there,
> >
> > I have a tricky issue to sort out. I'm using a build server(Ubuntu 12.0=
4 LTS)
> for building my Yocto project and Application Dev SDK (bitbake -c
> populate_sdk).
> > On this build server I 'm used to using "screen" tool. Using "screen" a=
nd
> bitbake at the same time seems to have no issues.
> >
> > However when installing the App. Dev. SDK via self-installer, it hangs =
every
> time after a while. The culprit seems to be "screen".
> > If I am IN a "screen" session OR I am OUT "screen" session but there is=
 a
> running screen session that belongs to me, it hangs.
> >
> > Did someone experience such trouble ? Any ideas ?
>=20
> I've seen some terminal failures in the past, but it's always been due to
> overwriting in-place terminal files.
>=20
> I've not seen anything on a new SDK installation.
>=20
> Which branch of the Yocto Project are you using?
>=20
> --Mark
>=20
> > Thanks in advance
> > Pierre-Yves
> >
> >
> >
> >
> >
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

