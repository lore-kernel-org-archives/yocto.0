Return-Path: <mschepers@telspandata.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95793E00CF1; Fri, 17 Nov 2017 09:21:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.32.61 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 65485 seconds by postgrey-1.32 at yocto-www;
	Fri, 17 Nov 2017 09:21:35 PST
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-sn1nam01on0061.outbound.protection.outlook.com [104.47.32.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E98D1E00CEC
	for <yocto@yoctoproject.org>; Fri, 17 Nov 2017 09:21:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=telspandata.onmicrosoft.com; s=selector1-telspandata-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=S4+Z1B7SPaHb3qb9x1KuBxNLUCSsYdhLaoAvEy4H5QY=;
	b=rrNCc5NT+EZ6t0X7sF3k83jvjc91bI3aW4HY2NIBZ7eXxkYBtBH7L8foCeaEcZWgKW+CxscX74M0bYY5xJdgNHCL/wEDUoZmg2VoSJfIgd8tKZeDpmbqmVkNQhIWvYDV7ITO5y65L9EEBa2XOBFKFZ+eRUTMRTxlEzH2joST6xw=
Received: from CY4PR04MB1177.namprd04.prod.outlook.com (10.173.194.7) by
	CY4PR04MB1175.namprd04.prod.outlook.com (10.173.193.142) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id
	15.20.218.12; Fri, 17 Nov 2017 17:07:31 +0000
Received: from CY4PR04MB1177.namprd04.prod.outlook.com ([10.173.194.7]) by
	CY4PR04MB1177.namprd04.prod.outlook.com ([10.173.194.7]) with mapi id
	15.20.0218.015; Fri, 17 Nov 2017 17:07:31 +0000
From: Matt Schepers <mschepers@telspandata.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: [yocto] Trying to filter out 2 strings from EXTRA_OECONF, why
	doesn't this work?
Thread-Index: AQHTXyq0cMM2sCYbvkWrsQLgw6PpgKMYJggAgACnfRE=
Date: Fri, 17 Nov 2017 17:07:31 +0000
Message-ID: <CY4PR04MB11771D245B90CAEE11F2A508B02F0@CY4PR04MB1177.namprd04.prod.outlook.com>
References: <CY4PR04MB11772AED5F3BDE6D4259158AB02E0@CY4PR04MB1177.namprd04.prod.outlook.com>,
	<1a2f7573-f74b-b2f0-3efc-0223f17e4f11@linux.intel.com>
In-Reply-To: <1a2f7573-f74b-b2f0-3efc-0223f17e4f11@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=mschepers@telspandata.com; 
x-originating-ip: [96.69.169.201]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; CY4PR04MB1175;
	6:Gkw1ZIlAtPi+INz+2eSwvTIvuCvbB4oWPDYuXdfatlLOa49chdKGa44DDQR75VZpyoSnSxUpo/OnKXUZgyfQjSkM3X0NHNxl2mXLulhMwL404ROqgBLh3TWzdkuy2w24YH314d2Wcq3rK47xKkLQTXAureiRqRaHi7bnN0xnCWwuT93sTT3uuSzcXYnNYYWC3fSXgd3gv4yCs+/MJMGFAwXtoFHCJDD5xZErb7UReeQTEUHYuUq+Y5suxXjzpxLziRyKlF26MFE5KelDlFfF9akbC7RIiUEr/APALPZFjmHcS6ZNyYJnAmuOnY1TxiI/EktzAIKrvnswbEZh3NMh6PiGoZco3rHV71//0NTkz+o=;
	5:nJDcK+9HkS4LdfX+bSkRCT+vZ4+HMjcP+DwriexUmqsQHquIOHqfSBI9dXkM0wUQTpZdbzTgohcIXKt1/7kctZbY34LNPJJ2XlyJPW/Y2JEbG8OEc9I73EhweXapfWWGrsZbMxQiAIllhtmUnIw7Awfn63KgYToABxvoehtOU6s=;
	24:sLnkwImDRIKdoZ7T/0fSYST1UttMyB3eCrilOHvz41kKHJdcvEeVeYzElCD8f329mMrtEN5tTGxpPZK3hz9bH74emciKpIo35E0JMIUh2wE=;
	7:8XzxK069NtK84+qRsVzT1s0JB9S9MYbPMuarz4C0tHFHeoFUPX6CME1gLUjQ4pkMeAyc0Gnl6UE5wB9QUKeh0BrfF+hg3VU1siY6SUeJIpxLGGJOkQUw254zUI8u8rgwjrxmiQ2j+wUOaoG60YlOGKuG9Th9YgENopx46Pd1LkvlhfRyIbRjsgeYeDTbIQQe4KHAfER3Udsrd1/RpS4pp3l5eHJ5KXjZVcMFb42Gc7K/htbP7jwpwLUQ32CpXs+A
x-ms-exchange-antispam-srfa-diagnostics: SSOS;
x-ms-office365-filtering-correlation-id: 14097f1a-0d2d-4704-6f95-08d52dddb068
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(22001)(4534020)(4602075)(4603075)(4627115)(201702281549075)(2017052603199);
	SRVR:CY4PR04MB1175; 
x-ms-traffictypediagnostic: CY4PR04MB1175:
x-microsoft-antispam-prvs: <CY4PR04MB117552AAFB8C7398B278E984B02F0@CY4PR04MB1175.namprd04.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:(228905959029699);
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(6040450)(2401047)(5005006)(8121501046)(10201501046)(93006095)(93001095)(100000703101)(100105400095)(3231022)(3002001)(6041248)(20161123555025)(201703131423075)(201702281528075)(201703061421075)(201703061406153)(20161123562025)(20161123558100)(20161123564025)(2016111802025)(20161123560025)(6043046)(6072148)(201708071742011)(100000704101)(100105200095)(100000705101)(100105500095);
	SRVR:CY4PR04MB1175; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:CY4PR04MB1175; 
x-forefront-prvs: 049486C505
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10009020)(979002)(6009001)(376002)(346002)(39830400002)(24454002)(189002)(199003)(3280700002)(8676002)(316002)(99286004)(2501003)(2906002)(3660700001)(76176999)(54356999)(50986999)(97736004)(7736002)(8936002)(33656002)(229853002)(305945005)(81156014)(81166006)(66066001)(53546010)(189998001)(101416001)(110136005)(74316002)(5660300001)(102836003)(6506006)(53936002)(2900100001)(6116002)(3846002)(86362001)(6246003)(105586002)(14454004)(77096006)(7696004)(9686003)(106356001)(478600001)(55016002)(6436002)(2950100002)(25786009)(68736007)(969003)(989001)(999001)(1009001)(1019001);
	DIR:OUT; SFP:1101; SCL:1; SRVR:CY4PR04MB1175;
	H:CY4PR04MB1177.namprd04.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: telspandata.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: telspandata.com
X-MS-Exchange-CrossTenant-Network-Message-Id: 14097f1a-0d2d-4704-6f95-08d52dddb068
X-MS-Exchange-CrossTenant-originalarrivaltime: 17 Nov 2017 17:07:31.1887 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: 980119cc-b60c-4c4d-84e8-5d25446e5dc3
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR04MB1175
Subject: Re: Trying to filter out 2 strings from EXTRA_OECONF, why doesn't this work?
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
X-List-Received-Date: Fri, 17 Nov 2017 17:21:37 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

I ended up completely overriding EXTRA_OECONF in my .bbappend with the conf=
igure flags that I wanted.

I guess I don't understand the order of evaluation in yocto's .bbappend and=
 .bb files. Based on the error I got, problem with double use of  :=3D oper=
ator, it seems that statements in .bbappend files are not evaluated in orde=
r.


________________________________________
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Sent: Friday, November 17, 2017 12:03 AM
To: Matt Schepers; yocto@yoctoproject.org
Subject: Re: [yocto] Trying to filter out 2 strings from EXTRA_OECONF, why =
doesn't this work?

On 11/17/2017 12:37 AM, Matt Schepers wrote:
>      What do I have to do to filter out BOTH configure flags. I realize I=
 can just write a new recipe, but I don't think that's the "correct" answer=
.

The best way to fix this is to modify the original recipe so that all
three options become PACKAGECONFIG-configurable, and submit the patch to
whoever maintains the recipe.

Alex

