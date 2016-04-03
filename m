Return-Path: <Manish.Jaggi@caviumnetworks.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B4D8AE0078E; Sat,  2 Apr 2016 19:35:21 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [65.55.169.79 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from na01-bl2-obe.outbound.protection.outlook.com
	(mail-bl2on0079.outbound.protection.outlook.com [65.55.169.79])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93232E006C7
	for <yocto@yoctoproject.org>; Sat,  2 Apr 2016 19:35:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=CAVIUMNETWORKS.onmicrosoft.com; s=selector1-caviumnetworks-com;
	h=From:To:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=6Ng/kIOqyb7m4DtbGmU8Ixg1LSk8qthfiyHkKPq90cE=;
	b=ncu6lCLV2DxgFJrGoLt9N2NoV556g/Lx8Gdywf0FyfCpHtmQVzD3nmh5aWFN75Uok39IAp1lUEsjTRVSLYQOo1+eAGcLh6Z2AsKEzD8h2Ptc96fyN9tGt5JtwXAtmJgfDH77oDkn9Bd5RDt1Qf9bEFHlKDORkRx7gGjpmVuaJLU=
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) by
	BY1PR0701MB1594.namprd07.prod.outlook.com (10.162.110.148) with
	Microsoft
	SMTP Server (TLS) id 15.1.447.15; Sun, 3 Apr 2016 02:02:26 +0000
Received: from BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) by
	BY1PR0701MB1594.namprd07.prod.outlook.com ([10.162.110.148]) with
	mapi id 15.01.0447.027; Sun, 3 Apr 2016 02:02:26 +0000
From: "Jaggi, Manish" <Manish.Jaggi@caviumnetworks.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] [Query] Process of Up-streaming a new meta layer
Thread-Index: AQHRhQ+3qK3K+J+xxE65zXXT6RN/u59zYxqAgAQsLbQ=
Date: Sun, 3 Apr 2016 02:02:26 +0000
Message-ID: <BY1PR0701MB15940CE8F8F0B26D38BD6770E19C0@BY1PR0701MB1594.namprd07.prod.outlook.com>
References: <BY1PR0701MB15940BD220DBA10E21250F6AE1810@BY1PR0701MB1594.namprd07.prod.outlook.com>,
	<56FCF95D.4040700@linux.intel.com>
In-Reply-To: <56FCF95D.4040700@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: linux.intel.com; dkim=none (message not signed)
	header.d=none;linux.intel.com; dmarc=none action=none
	header.from=caviumnetworks.com;
x-originating-ip: [132.245.63.229]
x-ms-office365-filtering-correlation-id: 550b4724-a492-4e5e-7c06-08d35b64014e
x-microsoft-exchange-diagnostics: 1; BY1PR0701MB1594;
	5:4PsWNanbsoPX6puVvtL5Buwc3Q5FTTVVYLw9JxmJ0C2oHntKJSOPPbz+lIZzSRlPVyZlQG40CGXId19CY22yZaZcFZjkkhE5KJsxql/VWoAkFN2tfbhgShM09WuA9/XNhOMQFNSleM5teXQWHVaJaA==;
	24:HxeJzSlEiCc0JodRd6Mm/Jl0QBOdxLxUSnt3DEVpqAlSX/+s4b4rRGGtA1ULk/hOnI5gVBeeJpKlAZWe4miwWQ8r7jpaf4s9ZPzYrvurRps=
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:;SRVR:BY1PR0701MB1594;
x-microsoft-antispam-prvs: <BY1PR0701MB159414676441B1731A9C3BBCE19C0@BY1PR0701MB1594.namprd07.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046);
	SRVR:BY1PR0701MB1594; BCL:0; PCL:0; RULEID:;
	SRVR:BY1PR0701MB1594; 
x-forefront-prvs: 09011458FC
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(6009001)(377454003)(24454002)(92566002)(86362001)(587094005)(122556002)(11100500001)(81166005)(5003600100002)(50986999)(10400500002)(76176999)(54356999)(15975445007)(77096005)(2900100001)(2950100001)(99286002)(5002640100001)(106116001)(74316001)(107886002)(33656002)(76576001)(1096002)(5004730100002)(66066001)(1220700001)(6116002)(102836003)(3846002)(16601075003)(2906002)(5001770100001)(189998001)(5008740100001)(586003)(19580405001)(19580395003)(2501003)(3660700001)(3280700002);
	DIR:OUT; SFP:1101; SCL:1; SRVR:BY1PR0701MB1594;
	H:BY1PR0701MB1594.namprd07.prod.outlook.com; FPR:; SPF:None;
	MLV:sfv; LANG:en; 
spamdiagnosticoutput: 1:23
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: caviumnetworks.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 03 Apr 2016 02:02:26.3647 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 711e4ccf-2e9b-4bcf-a551-4094005b6194
X-MS-Exchange-Transport-CrossTenantHeadersStamped: BY1PR0701MB1594
X-Mailman-Approved-At: Mon, 04 Apr 2016 09:47:40 -0700
Subject: Re: [Query] Process of Up-streaming a new meta layer
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
X-List-Received-Date: Sun, 03 Apr 2016 02:35:21 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

_______________________________________
>From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on b=
ehalf of Alexander Kanavin <alexander.kanavin@linux.intel.com>
>Sent: Thursday, March 31, 2016 3:48 PM
>To: yocto@yoctoproject.org
>Subject: Re: [yocto] [Query] Process of Up-streaming a new meta layer

>>On 03/23/2016 04:24 PM, Jaggi, Manish wrote:

>> What is the process of upstreaming a new meta layer ?
>> The layer is specific to cavium thunderx and it can be named as meta-cav=
ium
>>
>> Is this the correct mailing list to upstream ?
>
>You need to publish the layer somewhere public (e.g. github), and then

how to publish the layer to git.yoctoproject.org instead of github ?

>fill out the form at http://layers.openembedded.org so it's added to the
>layer index.
>
>Alex

--
_______________________________________________
yocto mailing list
yocto@yoctoproject.org
https://lists.yoctoproject.org/listinfo/yocto

