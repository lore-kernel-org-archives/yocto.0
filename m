Return-Path: <Rick.Johnston@arris.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 85A7AE00DCA; Wed, 28 Feb 2018 13:39:58 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.104 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 955 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Feb 2018 13:39:54 PST
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0104.outbound.protection.outlook.com [104.47.34.104])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2868BE00843
	for <yocto@yoctoproject.org>; Wed, 28 Feb 2018 13:39:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=arris.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=+BrpBmhB3YpALF/NfKcUB5iBxq95/yKqDyEr9Vn1MN4=;
	b=a0XBIvCRVAeBpyDz28nqguyLIBK2hS7pK4utE6dEa1+aUGoSNSm4bRiiwgoZ1/MZwIcxOcBLLMZQmmQTgpU+atI3hO7jrrU/6hVPrL6U1tIJluWWlw4Jk0lBEtH3Uxi0xFnMrmUcN3cq/kM65XEew4j8Xc0TcgXgZsiY0NaDtbQ=
Received: from BN6PR0101CA0027.prod.exchangelabs.com (2603:10b6:405:2a::40) by
	CY4PR01MB2807.prod.exchangelabs.com (2603:10b6:903:e0::13) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P256) id 15.20.527.15;
	Wed, 28 Feb 2018 21:23:57 +0000
Received: from BN3NAM01FT035.eop-nam01.prod.protection.outlook.com
	(2a01:111:f400:7e41::205) by BN6PR0101CA0027.outlook.office365.com
	(2603:10b6:405:2a::40) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.548.13 via
	Frontend Transport; Wed, 28 Feb 2018 21:23:57 +0000
Authentication-Results: spf=pass (sender IP is 216.234.144.41)
	smtp.mailfrom=arris.com; yoctoproject.org;
	dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=bestguesspass action=none
	header.from=arris.com;
Received-SPF: Pass (protection.outlook.com: domain of arris.com designates
	216.234.144.41 as permitted sender) receiver=protection.outlook.com;
	client-ip=216.234.144.41; helo=webmail.arris.com;
Received: from webmail.arris.com (216.234.144.41) by
	BN3NAM01FT035.mail.protection.outlook.com (10.152.67.159) with
	Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA_P384) id
	15.20.527.18 via Frontend Transport; Wed, 28 Feb 2018 21:23:56 +0000
Received: from HPAEXCAS1.ARRS.ARRISI.com (10.35.200.204) by
	ATLOWA2.ARRS.ARRISI.com (10.2.131.253) with Microsoft SMTP Server (TLS)
	id 14.3.266.1; Wed, 28 Feb 2018 16:23:49 -0500
Received: from HPAEXMBX2.ARRS.ARRISI.com ([fe80::1081:8ac:2153:76a]) by
	HPAEXCAS1.ARRS.ARRISI.com ([fe80::b16f:176c:da65:dfe%12]) with mapi id
	14.03.0266.001; Wed, 28 Feb 2018 16:23:49 -0500
From: "Johnston, Rick" <Rick.Johnston@arris.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Unable to generate licenses
Thread-Index: AdOw2hJkwfaLL/qhT/SXfUbctNWBpw==
Date: Wed, 28 Feb 2018 21:23:48 +0000
Message-ID: <DB5FD66572D216479865BC7D751451430228F92B7C@HPAEXMBX2.ARRS.ARRISI.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.2.192.194]
MIME-Version: 1.0
X-EOPAttributedMessage: 0
X-MS-Office365-Filtering-HT: Tenant
X-Forefront-Antispam-Report: CIP:216.234.144.41; IPV:NLI; CTRY:US; EFV:NLI;
	SFV:NSPM;
	SFS:(10019020)(39380400002)(376002)(39860400002)(346002)(396003)(2980300002)(438002)(374574003)(505004003)(189003)(199004)(336011)(8676002)(81166006)(5250100002)(81156014)(106466001)(260700001)(3480700004)(2920100001)(5890100001)(2900100001)(33656002)(1730700003)(3846002)(68736007)(14454004)(551944002)(2351001)(102836004)(7736002)(8936002)(790700001)(606006)(84326002)(72206003)(478600001)(106002)(2501003)(97736004)(86362001)(316002)(6116002)(69596002)(7696005)(2906002)(53386004)(15974865002)(5660300001)(26005)(5640700003)(55846006)(16586007)(236005)(186003)(54896002)(6306002)(9686003)(6916009)(53936002)(356003)(55016002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:CY4PR01MB2807;
	H:webmail.arris.com; FPR:; SPF:Pass; PTR:InfoDomainNonexistent;
	MX:1; A:1; LANG:en; 
X-Microsoft-Exchange-Diagnostics: 1; BN3NAM01FT035;
	1:VWimknAm1I3HUuWborz+IRL36Z59SDeQW++7sZzCTcIyf0kFgFK/T5zLJvzg93CtmztOB6VqASu/fSImxBzAuWqVPIHFlfV2acpKsUbaE9uIK0U7WDFIw+p0WY8TaR09
X-MS-PublicTrafficType: Email
X-MS-Office365-Filtering-Correlation-Id: 5fce29e9-2307-4e36-bdc2-08d57ef19342
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(4652020)(4534165)(4627221)(201703031133081)(201702281549075)(5600026)(4604075)(4608076)(2017052603307)(7153060)(7193020);
	SRVR:CY4PR01MB2807; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2807;
	3:fwveDSvHci1Y3ju+PaxcVxFbbuhTntzjE+W46rJGTmQoiqZL+1YPD5Aufl/BIAKhMp5J0H9V+UhgQcf1Y8gl7iZS2GPa16dbakDV16tYp4mUoZ2KXym2Qb0U+xR+9TSSLGxP5dJ8ySFWGPHZ6XF+a1V/K8N2rSZWZ9WlOb+rkyj2urzwnWgYhBZgLtflwbwSbOLYD05xaqSkDAGOKvHpFVY60tf1R4M3g/YBE47ZwFZCLHi+nn6xTrZ9MlPvzXVSFIPJfUcstUKFsCWwR2SCrtUGuAx2sYtJIXvwxeuoFMdxVDUGUHuO+u8mPRQzesAQ+qALLsh/5Dr1+sBsU4D5/MZlKQexHEbd1n7sVjeHdjw=;
	25:2Fr6p4FITWhtC0Axz2aBO1GhYmvHb9BMwfBYas5pZiV/aPAoDYfu2Fk2+SY/8GIFHSHgRJZrYVppZDO5NzLVKmoaEzbWnBl63RXwUdOsZP+OztLbQbE2C8LHWf5DrNGBiFbyY9SpkSqlMLzJWzT6REA1EblWVEJ1kBSrI+3hMIkBRd+s8sNN6jmii9lA/NbvdOH0q02iDfDH1Em8K6TTrJlcD/CWkjniWIrdfs/K1sls7BblMbq5q09ZN9539L04B/g1xuzLw2mdXfwI/wgHpzIdqod8zyL1JzhJStjABFKczIPFuQgdusx3Py3iqytjazRgK6LmMTMa76r80+c1dg==
X-MS-TrafficTypeDiagnostic: CY4PR01MB2807:
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2807;
	31:OqnltiG94vebalQAm5GnqxHQN7wHkfKseiM1BV6/zZWtAyWckC2p0DD5YKn+ANAyUZjsKF2i8Cw/HQ1FHhrpXdHlKpmFIiDFbucN3EOj5xa7dyH/+YySsDqVt4xL1RocK73269AMnm3YskkRSZgIgVdxQDpu6hFc1b4FfKfOsCFCyV/tbZWUH80DW2w7GZHgYMOjyYz4GXS3SG5WCSWMUXGHSrvPotK1Kuptu3priBs=;
	20:zDskrdm4YMyzTi1PF8c6fM+XOeAWIZWkU72zqdVHcOT6tdhqtgg+afLgu9vxIXcz2a0M+pzwbTl89gJKmr5+eu45XOg0B32dkmCcBzrNW1abMUq8Hwea3d/vs/JtbLH/ChTt9YOnNOpZkyMsIlz7UL4A1FyXX+pCUlEVeKMAROl1FnBfGUXqNi2/Tdv4VOHikuwIiStf1Gwy5aVrmzUmtYNGpqNhpffZpWN9qqrWzflLnWS1EN1SEoLqWVvI/dCZqtEppUnw/i2QfdiQP4v7ZI2munJ1IYxvoZ5lul3QOKfVBHG7KCtzRTScsSXrJgv7kqw/Z4sKDCwQ/2WEMGVvO60Ucne70DqpZU3QaYrq7LiiSp6cH//WU6/dRFoOqLnFcp3m4b1hL8eaOV4AogQNnP31gue2vcuhbE6wcsvb8aFkIwOmjJMmyxw4KuUPXzw7WSJ3Y7YurRipyslFSnKXpliM9pDfX1muNWieUJ6H3l6GasabJpIfudT0DSdzTznv
X-Microsoft-Antispam-PRVS: <CY4PR01MB28076ECD6C04D6CA0EB08DE1F6C70@CY4PR01MB2807.prod.exchangelabs.com>
X-Exchange-Antispam-Report-Test: UriScan:(28532068793085)(243850608770193)(21748063052155); 
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(8211001083)(6040501)(2401047)(8121501046)(5005006)(93006095)(93004095)(3002001)(3231220)(944501161)(10201501046)(6055026)(6041288)(20161123560045)(20161123562045)(20161123564045)(201703131423095)(201702281528075)(20161123555045)(201703061421075)(201703061406153)(20161123558120)(6072148)(201708071742011);
	SRVR:CY4PR01MB2807; BCL:0; PCL:0; RULEID:; SRVR:CY4PR01MB2807; 
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2807;
	4:XIt8Eop5+qUBRA4pCfNcNX6/tiz9M43gBJghx8w5P0I4HgqdDpeA8clj1gud4s/xMuJyDcocZqffJHnwuDW5LodciOy2PQlB2NUxqnNs0BwTSvZYO4liwPdRtyxUchOKIKIQkCTH5M3S5M3yq5m+euBY8ldjmpBKbO10DOZW5mt9udGjXrXxprkmd7vsRlof9UL1Ygd4q5ax/8WcV6scqQcu2tjiNXswsSFx/oNGrRi4wPBbcgjH39NQ1IngKr274wi/PP53phdGQX4cVHwus00V46C7I4UX+ymlVgw1JHydfnBE+RmIIXx1xwWpeNyNfyRFVNgYbFCq2mlMz3DD+SdgFH8wlq/uzn2uVF7qP2KFKrSnjavI8r6tV9qB4DtS
X-Forefront-PRVS: 0597911EE1
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; CY4PR01MB2807;
	23:HE2pQLkOcOHVluwFD9wdTvEkuvLNpbSOVv6eZQTJS?=
	=?us-ascii?Q?QMpQdLNhR3GxVRaeUz82SU4ddYrYU2K1KDZdEtRnzPywA84x+A+ZjBpYuuTd?=
	=?us-ascii?Q?19+5fJW/JLUVoDX16L80YwyQkME0A51XboN/BYHSOcc7MtMFpZHjUKKDLuiu?=
	=?us-ascii?Q?awZZCyKb82kYSC/QDcVOxh+ugFtE/Kql+4H5oY4uLIwXsYrZDlAFHMWr6cQP?=
	=?us-ascii?Q?sB7GvWIK6ABralfc9D9uT6WWWxWipJmCxQqOecDWCic8kWEdtbTPt9ZVJdog?=
	=?us-ascii?Q?k2xvJ1FShQEK1nY8HyeMCAmzbgSir6jpqQ2OPWkde3CBtGdOyrbQ4AuW8PPo?=
	=?us-ascii?Q?NTx1AiRLR68x+jupiLh08+npNHQ0cBr743Brg9E1uGL2QCeMm+IJ9LRrVMta?=
	=?us-ascii?Q?2q+qngOOWUstGwi1V8LEmLt3NaZksjot818QseY7sFKfUXYTfo2ES5dgOr3E?=
	=?us-ascii?Q?Ihrs5OpkzyO90r/VdPttVg/1RPSa3MwM+0orRDphojIYrNnjmszvl2vPJ9KA?=
	=?us-ascii?Q?AtXvJduBTPQ1FbhO39rGGLZa3Y1y+pJQGff6ndL88J/v3rYXoaixsRXnuwKC?=
	=?us-ascii?Q?AaPsp0+YfnDpLhffiV1XP1k45a0ceTjAW7wh5yEzIQSEQB6PtDV1qSHEYl5Z?=
	=?us-ascii?Q?rqKKrSsIRhkardYzF/tGFISc+R2lAPdswjb3k7VzzlKxQAgRqiPSNAJTMvdc?=
	=?us-ascii?Q?n9VG4RqiKRmGJo9C6UFtYaOdbfBtxstmbYqdpb2IVeZcTsKSS9GYEgjpRzdn?=
	=?us-ascii?Q?WnoMaqFYqSbT6xCAeJuzzA2FhZ0QW8jvSwTvHQ1sttG8X/kNLJxXZCQGXTeU?=
	=?us-ascii?Q?LeB8o7tHAP66648NpyqTd4A3nqNRuKzY4hrdiUdirvnAiKImutxk6aqaRmsB?=
	=?us-ascii?Q?NZrYeu9TnwDiKIG3PglM/zo5NXWCDsaf/IFwrTmL6wJT9IqRGHwmfYbeqWG4?=
	=?us-ascii?Q?NBdohHLZf6tjtKCYNz3Wt2lLJq32zbj/gNvUJOcwads+QUCdQOLrzvx9CjYk?=
	=?us-ascii?Q?OC4yDUA9LeWOVTO0Hgy8I5jrWw3CQzz+7HXcV63DF5CAauocJ3bobIuap69U?=
	=?us-ascii?Q?0fAQie5HGa62aKCs7e1Mg9cMEDEjPM8139+ZP/RIHKiDG64EVcXqgRxA7+7r?=
	=?us-ascii?Q?+vWiz2PIwocwLQxFdxr65mSUFmdGOYZuWYJOEz7rZxZcWRR2l0F16BPlASlm?=
	=?us-ascii?Q?MXjWN1r3Bs/TFT7xZF1CGBzMQWDpl5pCmF33KYLFnNNMKpFxMBdS35s+aWs7?=
	=?us-ascii?Q?QzknIxOwhNxRuxC2KlXMf/jR05xEWply+eW68brfo/hHYVF0MYoYBKOmnmQp?=
	=?us-ascii?Q?lBNOZtWaF3A6y2XrVsuTBbwqNogxBzKYUF/mujM7Uhuo+kgKkvOWdHT3NAkF?=
	=?us-ascii?Q?Eg8xxaamAGq9hrJKlSeNtEo9hdWabWJeQ3N0bJdRLd0baO/AeVQ6/r3EYir8?=
	=?us-ascii?Q?EZXe3IKMg=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; CY4PR01MB2807;
	6:K967Q2e5vvKYaFT18xuQZVFx4FD3ospMCAnmvhW0F6POnbOj1Ef3Y7p45HK0Vioc6jIf+91zpysDRr1+bCNKC551z0cacT2hlAqngJ1BnfBE+wCO3mvIT96DFIv4b0XGN7ilJzdeKhZPUN6ijOP48A/7OQU31blfFg/kyIUjoRGiK4pH56r9dz8pgctT4Gob8X8XP3pj70fvgHBd8LnfpniEvxIKJoCz3qZ2lasJf2KkasGD/O44BuJJ3oiS/Bhw/ja0m/1/4UCI8FtfWF0p0emlusWPEkkBlGH+TjJEnzTj3I/gILIWULPFtEZlK0YOG6w/dg9xrei96a5QoqpOsWg/AUtgr+w1VAoMVoHRXhA=;
	5:RL7lp/S82TDhZbQxcsUY9EDwLxkqs9KSQWIGvmPx9gvKST3jlfQzVFAdL9CHVd5CWK633Vf1xBOaI8FtVMio7IlN40ibsFVWXTyE+uTqja8gf1TK1Eys6Vd21YTIWWHgZi3abzFcK4Qny2Kc5lsuOhTPgWY43SrEOlISY+vKPP4=;
	24:2ZvrMyugvA4xEka5PfgG1jCQeowj9W77gdOphPxPkRQHn03yvYKRLAobXMwzIUHmPasFC9rjy2TGGpyA9QcHDsaBJPxJmoqQqjNZ5FqsIq4=;
	7:L3RvkC/2tHNzjUvmgnm7bW1thXqnDUgLtO6rbmTqdJrZg5yBI+N/dbyXGoCvl82hbzg2iEhDfuA/S9jS/SX/mOlaqbe/SWA6hpdjThooZFzM22Lf7Dm+4tbeMchKItgS43K7imbyjKXlToNMpoOhhl5UpTG78q6jAsFuFe862VrXfVutiM/SFHMHBjrm0/hBjAL/WNrUy77+3QU5agP/39b60rZcfcsPEt1DRjiMu+W7HXBQwoQ2cwMYncbIDJQb
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-OriginatorOrg: arris.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 28 Feb 2018 21:23:56.1885 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: 5fce29e9-2307-4e36-bdc2-08d57ef19342
X-MS-Exchange-CrossTenant-Id: f27929ad-e554-4d55-837a-c561519c3091
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=f27929ad-e554-4d55-837a-c561519c3091;
	Ip=[216.234.144.41]; Helo=[webmail.arris.com]
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: CY4PR01MB2807
X-Mailman-Approved-At: Mon, 05 Mar 2018 08:08:54 -0800
Subject: Unable to generate licenses
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
X-List-Received-Date: Wed, 28 Feb 2018 21:39:58 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_DB5FD66572D216479865BC7D751451430228F92B7CHPAEXMBX2ARRS_"

--_000_DB5FD66572D216479865BC7D751451430228F92B7CHPAEXMBX2ARRS_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm using bitbake version 1.28 and trying to get the license manifest for m=
y project.  I've made the changes described in "Maintaining Open Source Lic=
ense Compliance During Your Product's Lifecycle" of the Mega-Manual and als=
o tried adding "inherit license" to my recipe, but while I do get the licen=
se directories generated, there's never any data.  I also tried "-c populat=
e_lic" to no avail.

Is there another trick necessary to get this output?

RICK JOHNSTON
Staff SW Engineer
ARRIS

o: +1 978-614-2404
e: rick.johnston@arris.com<mailto:rick.johnston@arris.com>
w: www.arrisi.com<http://www.arrisi.com>

Follow our blog: www.arriseverywhere.com<http://www.arriseverywhere.com>

This electronic transmission (and any attached document) is for the sole us=
e of the individual or entity to whom it is addressed.  It is confidential =
and may be attorney-client privileged.  In any event the Sender reserves, t=
o the fullest extent, any "legal advice privilege".  Any further distributi=
on or copying of this message is strictly prohibited.  If you received this=
 message in error, please notify the Sender immediately and destroy the att=
ached message (and all attached documents).


--_000_DB5FD66572D216479865BC7D751451430228F92B7CHPAEXMBX2ARRS_
Content-Type: text/html; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D"urn:schemas-microsoft-com:vml" xmlns:o=3D"urn:schemas-micr=
osoft-com:office:office" xmlns:w=3D"urn:schemas-microsoft-com:office:word" =
xmlns:m=3D"http://schemas.microsoft.com/office/2004/12/omml" xmlns=3D"http:=
//www.w3.org/TR/REC-html40">
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Dus-ascii"=
>
<meta name=3D"Generator" content=3D"Microsoft Word 15 (filtered medium)">
<style><!--
/* Font Definitions */
@font-face
	{font-family:"Cambria Math";
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
@font-face
	{font-family:"Century Gothic";
	panose-1:2 11 5 2 2 2 2 2 2 4;}
@font-face
	{font-family:"Open Sans Light";}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0in;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:"Calibri",sans-serif;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
span.EmailStyle17
	{mso-style-type:personal-compose;
	font-family:"Calibri",sans-serif;
	color:windowtext;}
.MsoChpDefault
	{mso-style-type:export-only;}
@page WordSection1
	{size:8.5in 11.0in;
	margin:1.0in 1.0in 1.0in 1.0in;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D"edit" spidmax=3D"1026" />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D"edit">
<o:idmap v:ext=3D"edit" data=3D"1" />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"WordSection1">
<p class=3D"MsoNormal">I&#8217;m using bitbake version 1.28 and trying to g=
et the license manifest for my project.&nbsp; I&#8217;ve made the changes d=
escribed in &#8220;Maintaining Open Source License Compliance During Your P=
roduct's Lifecycle&#8221; of the Mega-Manual and also tried adding
 &#8220;inherit license&#8221; to my recipe, but while I do get the license=
 directories generated, there&#8217;s never any data.&nbsp; I also tried &#=
8220;-c populate_lic&#8221; to no avail.<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal">Is there another trick necessary to get this output?=
<o:p></o:p></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif;color:#ED7D31">RICK</span><span style=3D"font=
-size:10.5pt;font-family:&quot;Century Gothic&quot;,sans-serif;color:black"=
>&nbsp;</span><span style=3D"font-size:10.5pt;font-family:&quot;Century Got=
hic&quot;,sans-serif;color:#ED7D31">JOHNSTON</span><span style=3D"font-size=
:10.5pt;font-family:&quot;Century Gothic&quot;,sans-serif"><o:p></o:p></spa=
n></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif;color:black">Staff SW Engineer</span><span st=
yle=3D"font-size:10.5pt;font-family:&quot;Century Gothic&quot;,sans-serif">=
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif;color:#ED7D31">ARRIS<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif;color:black">&nbsp;</span><span style=3D"font=
-size:10.5pt;font-family:&quot;Century Gothic&quot;,sans-serif"><o:p></o:p>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif;color:#ED7D31">o: &#43;1 978-614-2404</span><=
span style=3D"font-size:10.5pt;font-family:&quot;Century Gothic&quot;,sans-=
serif"><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif;color:black">e:&nbsp;</span><span style=3D"fo=
nt-size:10.5pt;font-family:&quot;Century Gothic&quot;,sans-serif"><a href=
=3D"mailto:rick.johnston@arris.com"><span style=3D"color:blue">rick.johnsto=
n@arris.com</span></a><span style=3D"color:black">
</span><o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif;color:black">w:&nbsp;</span><span style=3D"fo=
nt-size:12.0pt;font-family:&quot;Times New Roman&quot;,serif"><a href=3D"ht=
tp://www.arrisi.com"><span style=3D"font-size:10.5pt;font-family:&quot;Cent=
ury Gothic&quot;,sans-serif;color:blue">www.arrisi.com</span></a></span><sp=
an style=3D"font-size:10.5pt;font-family:&quot;Century Gothic&quot;,sans-se=
rif;color:black">
</span><span style=3D"font-size:10.5pt;font-family:&quot;Century Gothic&quo=
t;,sans-serif">&nbsp;<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif">Follow our blog:
</span><span style=3D"font-size:12.0pt;font-family:&quot;Times New Roman&qu=
ot;,serif"><a href=3D"http://www.arriseverywhere.com"><span style=3D"font-s=
ize:10.5pt;font-family:&quot;Century Gothic&quot;,sans-serif;color:blue">ww=
w.arriseverywhere.com</span></a></span><span style=3D"font-size:10.5pt;font=
-family:&quot;Century Gothic&quot;,sans-serif">
<o:p></o:p></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10.5pt;font-family:&quot;Ce=
ntury Gothic&quot;,sans-serif"><o:p>&nbsp;</o:p></span></p>
<p class=3D"MsoNormal" style=3D"text-align:justify"><span style=3D"font-siz=
e:7.5pt;font-family:&quot;Century Gothic&quot;,sans-serif">This electronic =
transmission (and any attached document) is for the sole use of the individ=
ual or entity to whom it is addressed.&nbsp; It is confidential
 and may be attorney-client privileged.&nbsp; In any event the Sender reser=
ves, to the fullest extent, any &quot;legal advice privilege&quot;.&nbsp; A=
ny further distribution or copying of this message is strictly prohibited.&=
nbsp; If you received this message in error, please notify
 the Sender immediately and destroy the attached message (and all attached =
documents).<o:p></o:p></span></p>
<p class=3D"MsoNormal"><o:p>&nbsp;</o:p></p>
</div>
</body>
</html>

--_000_DB5FD66572D216479865BC7D751451430228F92B7CHPAEXMBX2ARRS_--
