Return-Path: <Manish.Jaggi@caviumnetworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5B9F6E00B97; Mon, 25 Apr 2016 18:05:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.73 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0073.outbound.protection.outlook.com [65.55.169.73])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84479E00B70
	for <yocto@yoctoproject.org>; Mon, 25 Apr 2016 18:05:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-caviumnetworks-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=eT8dQux/7+aeplPEhDGwffyCeoV24GnOM0HaW+XDh+k=;
	b=Zhyu7ELyunBXm51oPGOOxsS3hVY2rWe4xcnnL+kSwwpXNAOpFhOxiqqSd33EmsCYrzQBNa7tGh6dwtx8MfJDz/HCjPHOIuglXu9bmZs1H7lKMcWUYAqUBliBjCIQvVRjKtdlBJ9btpqj/1l6rzqUpBVJtaho6usfzo/H07HjjoA=
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) by
	BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) with
	Microsoft
	SMTP Server (TLS) id 15.1.466.19; Tue, 26 Apr 2016 01:05:11 +0000
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) by
	BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) with
	mapi id 15.01.0466.025; Tue, 26 Apr 2016 01:05:11 +0000
From: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>, "Burton, Ross"
	<ross.burton@intel.com>
Thread-Topic: [yocto] Fetcher failure: Unable to find revision
	2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from
	upstream
Thread-Index: AQHRnvYtSwgidqLbqEOk4YMTyaEoK5+aw4aAgAAXEwKAABkHgIAAfDKz
Date: Tue, 26 Apr 2016 01:05:11 +0000
Message-ID: <BY1PR0701MB1594282E92D12DA005739343E1630@BY1PR0701MB1594.namprd07.prod.outlook.com>
References: <BY1PR0701MB1594FEBCBD9F70D587587878E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>
	<CAJTo0LY9Vtas26+M_Zq2fzREkpqXLD-uNOtXpJbzN8_9it=1Pg@mail.gmail.com>
	<BY1PR0701MB159480B842DF78C33DA2A161E1620@BY1PR0701MB1594.namprd07.prod.outlook.com>,
	<571E553D.4070200@windriver.com>
In-Reply-To: <571E553D.4070200@windriver.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: windriver.com; dkim=none (message not signed)
	header.d=none;windriver.com; dmarc=none action=none
	header.from=caviumnetworks.com;
x-originating-ip: [115.252.123.89]
x-ms-office365-filtering-correlation-id: ffe9f38c-871d-45b0-5b8a-08d36d6ed169
x-microsoft-exchange-diagnostics: 1; BY1PR0701MB1594;
	5:zTSwlYgvm0XLAZi8Kpa/LSDYE8/9mHFM9BMNcwFwQnCmpAntLwtV1j5uFS/AYNXQMDng17HWNfNWkV6jfGvCwaG9B0WC1Z4h3qsI0BhgzZpdbm/jNWvdtauAljzWhfML0EbSJfItpt2o+j+28g/jALBcxwU2WOg6zTA5923uz1zpNauKTlkIUcS9RsGJ+LNn;
	24:fImvJTdFNWsuZS1YURbyTG3/0jUxqnrvyp17NA9ZNjUmR4h7pqbCLr+OXitcM9DJoZO2IjtABemkEqvjYAIONNkMx5grVra/XiZD4dZNvRI=;
	7:cXsT1StPvCbfaN4v0mstRduLva37sM107/WdGJDYem81B0jTxwFu4dDYMWrinxH7EPraab1Mbwfl8Bta4d/G5ZhhV2rXnr9XcEFcAMrReIZW7oSAhUOwk5i9hHiD0B0j3Q4drDpq12L+7SQ3Ybs111iy2dK0+SjBc43byp+4hFZOohShGBkcmfUY5tpPyn0g3pmG2zZw+ZeghkEOYVU/K/M6EQP8Z63S0gQCsIa336Y=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0701MB1594;
x-microsoft-antispam-prvs: <BY1PR0701MB1594E6B543CA0A5E3EE9634DE1630@BY1PR0701MB1594.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(9101521072)(601004)(2401047)(8121501046)(5005006)(10201501046)(3002001);
	SRVR:BY1PR0701MB1594; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1594; 
x-forefront-prvs: 0924C6A0D5
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(24454002)(377454003)(377424004)(10400500002)(33656002)(92566002)(3280700002)(99286002)(5001770100001)(3900700001)(50986999)(81166005)(5008740100001)(5002640100001)(19580395003)(19580405001)(2900100001)(5004730100002)(11100500001)(76576001)(15975445007)(3660700001)(76176999)(66066001)(54356999)(2950100001)(9686002)(189998001)(106116001)(77096005)(102836003)(3846002)(6116002)(2906002)(87936001)(586003)(1096002)(1220700001)(5003600100002)(74316001)(93886004)(122556002)(86362001)(586874002)(15760500001)(37363001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR0701MB1594;
	H:BY1PR0701MB1594.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: caviumnetworks.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 26 Apr 2016 01:05:11.4357 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 711e4ccf-2e9b-4bcf-a551-4094005b6194
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1594
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
X-List-Received-Date: Tue, 26 Apr 2016 01:05:17 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable


________________________________________
From: Bruce Ashfield [bruce.ashfield@windriver.com]
Sent: Monday, April 25, 2016 11:04 PM
To: Jaggi, Manish; Burton, Ross
Cc: yocto@yoctoproject.org
Subject: Re: [yocto] Fetcher failure: Unable to find revision 2134d97aa3a7c=
e38bb51f933f2e20cafde371085 in branch master even from upstream

On 2016-04-25 12:10 PM, Jaggi, Manish wrote:
>
> ------------------------------------------------------------------------
> *From:* Burton, Ross <ross.burton@intel.com>
> *Sent:* Monday, April 25, 2016 8:12 PM
> *To:* Jaggi, Manish
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Fetcher failure: Unable to find revision
> 2134d97aa3a7ce38bb51f933f2e20cafde371085 in branch master even from
> upstream
>
> On 25 April 2016 at 14:30, Jaggi, Manish
> <Manish.Jaggi@caviumnetworks.com
> <mailto:Manish.Jaggi@caviumnetworks.com>> wrote:
>
>     It seems the revid / tag is not on any branch
>     git branch  --contains 2134d97aa3a7ce38bb51f933f2e20cafde371085
>     returns nothing.
>
>     How to fix this issue ?
>
>
> You probably want to use git branch -r --contains 213... as otherwise
> git branch will only list local branches.  The web UI says that this
> commit exists on master though...
>
> [Manish] Same output with -r.
> Can you please share the link of web ui. As per the error it is not on
> master branch.

linux-yoct-dev and linux-yocto-4.4 are different trees. linux-yocto-dev
tracks the latest mainline kernel, not -stable.

So if you are looking for 4.4.3 on linux-yocto-dev, you aren't going
to find it.

[Manish] the 4.4.3 tag is also not on master branch of the 4.4 tree.=20
http://git.yoctoproject.org/cgit/cgit.cgi/linux-yocto-4.4/tag/?h=3Dstandard=
/base&id=3Dv4.4.3
The master is 4.4=20

A clone and check from tag works manually, but when bitbake fetches it, it =
throws error as bitbake is not able to find the commit on master branch.
How to fix thisk

Bruce

>
>
> Ross
>
>


