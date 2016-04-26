Return-Path: <Manish.Jaggi@caviumnetworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7C00FE00C43; Tue, 26 Apr 2016 00:46:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.93 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0093.outbound.protection.outlook.com [65.55.169.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08703E0093B
	for <yocto@yoctoproject.org>; Tue, 26 Apr 2016 00:46:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-caviumnetworks-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=M18K1O3SNbsX7d6RnrkzT+oKqRNIrTGuGZRkOXYJL9g=;
	b=sct+0biQpARtCkBvgq27QqUO7lty1vxP3qf/Z7Xwh1VcVR9E/auBNE3ZIxMxJCzY9UevIFWwrtDORpe5SZ3jmqd/Q+/sHzAqWgXvxXqmlnKDwXXeuY9YE3ytW9zdu6m4V5LRjeQO7RCotIrcfegaRNuwvFWlvDYznRcV7GuFCjs=
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) by
	BY1PR0701MB1596.namprd07.prod.outlook.com (10.162.110.15) with
	Microsoft SMTP
	Server (TLS) id 15.1.466.19; Tue, 26 Apr 2016 07:46:10 +0000
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) by
	BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) with
	mapi id 15.01.0466.025; Tue, 26 Apr 2016 07:46:10 +0000
From: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
To: Zhenhua Luo <zhenhua.luo@nxp.com>, Bruce Ashfield
	<bruce.ashfield@windriver.com>, "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] Fetcher failure: Unable to find revision
	2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from
	upstream
Thread-Index: AQHRnvYtSwgidqLbqEOk4YMTyaEoK5+aw4aAgAAXEwKAABkHgIAAfDKzgAAUD4CAAFlhUIAABAoQ
Date: Tue, 26 Apr 2016 07:46:10 +0000
Message-ID: <BY1PR0701MB1594F778B7CFB72B01F05428E1630@BY1PR0701MB1594.namprd07.prod.outlook.com>
References: <BY1PR0701MB1594FEBCBD9F70D587587878E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<CAJTo0LY9Vtas26+M_Zq2fzREkpqXLD-uNOtXpJbzN8_9it=1Pg@mail.gmail.com>
	<BY1PR0701MB159480B842DF78C33DA2A161E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<571E553D.4070200@windriver.com>
	<BY1PR0701MB1594282E92D12DA005739343E1630@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<571ECE3F.60200@windriver.com>,
	<AM2PR04MB06746613022C5864C46200D6EE630@AM2PR04MB0674.eurprd04.prod.outlook.com>
In-Reply-To: <AM2PR04MB06746613022C5864C46200D6EE630@AM2PR04MB0674.eurprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=caviumnetworks.com;
x-originating-ip: [64.2.3.194]
x-ms-office365-filtering-correlation-id: 4ba09e1c-d3f5-4dbd-e1cb-08d36da6d5a9
x-microsoft-exchange-diagnostics: 1; BY1PR0701MB1596;
	5:RXF44w4/ptKDCQ4hc+0XaOoP/QFcVmrmyKA32Yq5SMd5fn3HEPF478jKM2F/mF0hMs9R6dTve6Elx25K3HO1r8OXgAqJZJeuXgt2Vuw5BN8oarfEef835JpH7mq8SCuDQIJTI5DOr8mPcRUjq8CrsSilAfAoxMJgDTsTip1vbZZsnafAHOYFdTT9JxbLDkHp;
	24:r0lYYxi/jXNnuVvvoGq24Fxp6nPKi96U9IIPqbZpOT2GyRgbbcXwq3diqGki3Bj3RXtsMoCUtm6j+EqBpzptfe6+vjoj4bVJvdLUkkr4q3s=;
	7:OEs/wPphci+5E91D0AXfKNTb4RLXfgtJNmIqLUdOiEp5pnkKK2c9DR6fgs5CLknr0R5vWTztd7j1aqj0uY6ijZlgtXpAYSLIJhK9pAV0BC7ACnDWtc1uPFrO8RADaZh29ujA/2R8GGkDY0YN0ylpsoBjZBYUd7hdS3kD8F6rN+4epJx7YSs4ORMCiqQH76mHmHdm/lrjHk5jMO2XunfAt4gBYb1QppxpnEHtsdDz7xQ=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0701MB1596;
x-microsoft-antispam-prvs: <BY1PR0701MB1596FAE3D3D7F897CF95CAD1E1630@BY1PR0701MB1596.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BY1PR0701MB1596; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1596; 
x-forefront-prvs: 0924C6A0D5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(24454002)(377424004)(13464003)(377454003)(3900700001)(2906002)(586003)(2900100001)(2950100001)(3846002)(102836003)(4326007)(6116002)(19580395003)(3280700002)(189998001)(19580405001)(76576001)(3660700001)(81166005)(5001770100001)(1220700001)(1096002)(77096005)(74316001)(86362001)(15975445007)(9686002)(5003600100002)(5002640100001)(87936001)(5004730100002)(54356999)(76176999)(50986999)(5008740100001)(92566002)(33656002)(11100500001)(122556002)(66066001)(93886004)(99286002)(106116001)(10400500002)(15760500001)(7059030)(37363001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR0701MB1596;
	H:BY1PR0701MB1594.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: caviumnetworks.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2016 07:46:10.3707 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 711e4ccf-2e9b-4bcf-a551-4094005b6194
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1596
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
X-List-Received-Date: Tue, 26 Apr 2016 07:46:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks,

It worked with standards/base branch.=20

Regards,
Manish Jaggi

________________________________________
From: Zhenhua Luo <zhenhua.luo@nxp.com>
Sent: Tuesday, April 26, 2016 1:02 PM
To: Bruce Ashfield; Jaggi, Manish; Burton, Ross
Cc: yocto@yoctoproject.org
Subject: RE: [yocto] Fetcher failure: Unable to find revision 2134d97aa3a7c=
e38bb51f933f2e20cafde371085 in branch master even from upstream

If the SHA exists in a tag instead of any branch, you can use nobranch para=
meter, refer to http://git.yoctoproject.org/cgit.cgi/poky/tree/bitbake/lib/=
bb/fetch2/git.py?id=3Dc4bcaa3f7ceac346af1555fff2b526ceeac92a54#n47.


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
>
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
>
> It's on standard/base. master is left as the initial branch point of the =
repository.
> When LTSI is available, I tend to update master, but since 4.4 has no LTS=
I
> content, I leave master alone.
>
> Also note: I'm currently not pushing and -stable updates to that tree, si=
nce I'm
> temporarily frozen for the yocto 2.1 release.
>
>
> >
> > A clone and check from tag works manually, but when bitbake fetches it,=
 it
> throws error as bitbake is not able to find the commit on master branch.
> > How to fix thisk
>
> don't use master, use standard/base as the branch.
>
> Bruce
>
> >
> > Bruce
> >
> >>
> >>
> >> Ross
> >>
> >>
> >
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

