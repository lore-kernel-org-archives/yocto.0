Return-Path: <zhenhua.luo@nxp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 324E3E00D06; Tue, 26 Apr 2016 00:47:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [157.55.234.63 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from emea01-db3-obe.outbound.protection.outlook.com
	(mail-db3on0063.outbound.protection.outlook.com [157.55.234.63])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4759DE00CEC
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 00:47:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=NXP1.onmicrosoft.com; 
	s=selector1-nxp-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=6gYRnGXpCyu7RZRJqiodTwl2yCqJ7yDow0g67rZtoOI=;
	b=MpUtlEJ06/8JdFvrwrbxyq8N53RR9jxPoZEgJh2pX2s40N0SJSKzePvFVa7KFfXa9qJ9AX1bYbsZVbagjLeA6VHpFyp/6ip+wDRZIkuQmgQw437E/884haop8eMH8gprO8nLC263QKLN3hvMjRvE+Qi9/ZgaRlq3YEVWjUM5PvE=
Received: from AM2PR04MB0674.eurprd04.prod.outlook.com (10.160.54.142) by
	AM2PR04MB0674.eurprd04.prod.outlook.com (10.160.54.142) with Microsoft
	SMTP Server (TLS) id 15.1.466.19; Tue, 26 Apr 2016 07:32:38 +0000
Received: from AM2PR04MB0674.eurprd04.prod.outlook.com ([10.160.54.142]) by
	AM2PR04MB0674.eurprd04.prod.outlook.com ([10.160.54.142]) with mapi id
	15.01.0466.025; Tue, 26 Apr 2016 07:32:38 +0000
From: Zhenhua Luo <zhenhua.luo@nxp.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "Jaggi, Manish"
	<Manish.Jaggi@caviumnetworks.com>, "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Fetcher failure: Unable to find revision
	2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from
	upstream
Thread-Index: AQHRnvYtSwgidqLbqEOk4YMTyaEoK5+aw4aAgAAXEwKAABkHgIAAfDKzgAAUD4CAAFlhUA==
Date: Tue, 26 Apr 2016 07:32:38 +0000
Message-ID: <AM2PR04MB06746613022C5864C46200D6EE630@AM2PR04MB0674.eurprd04.prod.outlook.com>
References: <BY1PR0701MB1594FEBCBD9F70D587587878E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<CAJTo0LY9Vtas26+M_Zq2fzREkpqXLD-uNOtXpJbzN8_9it=1Pg@mail.gmail.com>
	<BY1PR0701MB159480B842DF78C33DA2A161E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<571E553D.4070200@windriver.com>
	<BY1PR0701MB1594282E92D12DA005739343E1630@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<571ECE3F.60200@windriver.com>
In-Reply-To: <571ECE3F.60200@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: windriver.com; dkim=none (message not signed)
	header.d=none; windriver.com; dmarc=none action=none header.from=nxp.com;
x-originating-ip: [199.59.226.141]
x-ms-office365-filtering-correlation-id: 2f2b165d-682a-4b34-9fe9-08d36da4f18c
x-microsoft-exchange-diagnostics: 1; AM2PR04MB0674;
	5:f7QZUTde6QDXFed9qonS9v2U4XGcTawM/X9nytLdunTFW1in6bzE9sDL+bh05Z///5P2qkvwm9bJcTBbjHQ5K+CguvbnUZfVWEwN6iqwiUox9PeJF2dRoISwod1vrP2kdlpU233+7E2VBrVXoDluhho61+QMdaFHoU4NPGIDrezMP0xSNi4u4L8DGVdkp/fu;
	24:E/pQQXmQ8/0x+bch16tvuWYAbyeHbQPZnfs2ybyo/jt5l+GkLfIJ7/cV1tunjvfJkvXR45m+SV3CyGT3YA77Uworhm47IvWpkCcOv4wG9TI=;
	7:SgykdISguvWOWH2mBSnwSgjaZ/vLWeSC2+0/G3XuBEBcfI//LHkqepbW9sda3cklxrLlsieLAWOnActRiETMKfA8qYXDGDBIbXKlj0rmqwesqqpnfXabVtKXX6B8/GWbQXlOg+Vl9UxbxZqGTCYcS/2YiG5xB08ExOhU5Z0QZG04XtD9D6UjID1wtwRjHmRmH8e5BODX+9hXMc5Mp4zFstT+DzdabYbNHTVSNA/CT0U=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:AM2PR04MB0674;
x-microsoft-antispam-prvs: <AM2PR04MB067444F9C2319003CD540118EE630@AM2PR04MB0674.eurprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(601004)(2401047)(5005006)(8121501046)(10201501046)(3002001)(6055026);
	SRVR:AM2PR04MB0674; BCL:0; PCL:0; RULEID:; SRVR:AM2PR04MB0674; 
x-forefront-prvs: 0924C6A0D5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(24454002)(377424004)(13464003)(377454003)(2906002)(3900700001)(3660700001)(5008740100001)(54356999)(3846002)(102836003)(1220700001)(6116002)(189998001)(1096002)(586003)(9686002)(122556002)(81166005)(3280700002)(19580395003)(33656002)(92566002)(2900100001)(11100500001)(2950100001)(19580405001)(86362001)(15975445007)(10400500002)(5003600100002)(5001770100001)(76576001)(5004730100002)(66066001)(77096005)(5002640100001)(50986999)(74316001)(87936001)(76176999)(106116001)(93886004)(4326007)(37363001)(15760500001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:AM2PR04MB0674;
	H:AM2PR04MB0674.eurprd04.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: nxp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2016 07:32:38.1929 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 686ea1d3-bc2b-4c6f-a92c-d99c5c301635
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM2PR04MB0674
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Fetcher failure: Unable to find revision 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from upstream
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
X-List-Received-Date: Tue, 26 Apr 2016 07:47:55 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

If the SHA exists in a tag instead of any branch, you can use nobranch para=
meter, refer to http://git.yoctoproject.org/cgit.cgi/poky/tree/bitbake/lib/=
bb/fetch2/git.py?id=3Dc4bcaa3f7ceac346af1555fff2b526ceeac92a54#n47.=20


Best Regards,

Zhenhua

> -----Original Message-----
> From: yocto-bounces@yoctoproject.org [mailto:yocto-
> bounces@yoctoproject.org] On Behalf Of Bruce Ashfield
> Sent: Tuesday, April 26, 2016 10:11 AM
> To: Jaggi, Manish <Manish.Jaggi@caviumnetworks.com>; Burton, Ross
> <ross.burton@intel.com>
> Cc: yocto@yoctoproject.org
> Subject: Re: [yocto] Fetcher failure: Unable to find revision
> 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from
> upstream
>=20
> On 2016-04-25 9:05 PM, Jaggi, Manish wrote:
> >
> > ________________________________________
> > From: Bruce Ashfield [bruce.ashfield@windriver.com]
> > Sent: Monday, April 25, 2016 11:04 PM
> > To: Jaggi, Manish; Burton, Ross
> > Cc: yocto@yoctoproject.org
> > Subject: Re: [yocto] Fetcher failure: Unable to find revision
> > 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from
> > upstream
> >
> > On 2016-04-25 12:10 PM, Jaggi, Manish wrote:
> >>
> >> ---------------------------------------------------------------------
> >> ---
> >> *From:* Burton, Ross <ross.burton@intel.com>
> >> *Sent:* Monday, April 25, 2016 8:12 PM
> >> *To:* Jaggi, Manish
> >> *Cc:* yocto@yoctoproject.org
> >> *Subject:* Re: [yocto] Fetcher failure: Unable to find revision
> >> 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from
> >> upstream
> >>
> >> On 25 April 2016 at 14:30, Jaggi, Manish
> >> <Manish.Jaggi@caviumnetworks.com
> >> <mailto:Manish.Jaggi@caviumnetworks.com>> wrote:
> >>
> >>      It seems the revid / tag is not on any branch
> >>      git branch  --contains 2134d97aa3a7ce38bb51f933f2e20cafde371085
> >>      returns nothing.
> >>
> >>      How to fix this issue ?
> >>
> >>
> >> You probably want to use git branch -r --contains 213... as otherwise
> >> git branch will only list local branches.  The web UI says that this
> >> commit exists on master though...
> >>
> >> [Manish] Same output with -r.
> >> Can you please share the link of web ui. As per the error it is not
> >> on master branch.
> >
> > linux-yoct-dev and linux-yocto-4.4 are different trees.
> > linux-yocto-dev tracks the latest mainline kernel, not -stable.
> >
> > So if you are looking for 4.4.3 on linux-yocto-dev, you aren't going
> > to find it.
> >
> > [Manish] the 4.4.3 tag is also not on master branch of the 4.4 tree.
> > http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/tag/?h=3Dstan=
d
> > ard/base&id=3Dv4.4.3
> > The master is 4.4
>=20
> It's on standard/base. master is left as the initial branch point of the =
repository.
> When LTSI is available, I tend to update master, but since 4.4 has no LTS=
I
> content, I leave master alone.
>=20
> Also note: I'm currently not pushing and -stable updates to that tree, si=
nce I'm
> temporarily frozen for the yocto 2.1 release.
>=20
>=20
> >
> > A clone and check from tag works manually, but when bitbake fetches it,=
 it
> throws error as bitbake is not able to find the commit on master branch.
> > How to fix thisk
>=20
> don't use master, use standard/base as the branch.
>=20
> Bruce
>=20
> >
> > Bruce
> >
> >>
> >>
> >> Ross
> >>
> >>
> >
>=20
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

