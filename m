Return-Path: <bevenson@melinkcorp.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8F151E00848; Thu,  8 Dec 2016 12:04:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.34.135 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 866 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 Dec 2016 12:04:53 PST
Received: from NAM01-BY2-obe.outbound.protection.outlook.com
	(mail-by2nam01on0135.outbound.protection.outlook.com [104.47.34.135])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E7508E00546
	for <yocto@yoctoproject.org>; Thu,  8 Dec 2016 12:04:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=Melink.onmicrosoft.com; s=selector1-melinkcorp-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=9SpaPjJoZ3PqBI1Bb5c/W98WyLN+ZfCwasTL1PUs1oA=;
	b=HeMznCBpkdqLC0j/lMbUoVS7vm1V08LmJYjzb/U4mrCST99Wp9mhf39de/FukYPbsH8z64WXAC2cBLtfufCFabJuharwUWrOS0kQErQlhll3218qVbktC3fcOi3l0jti16ysHSZbxa3Z6YodWZh6uczqzFJfVol0ksxYMilyYek=
Received: from DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) by
	DM5PR05MB2954.namprd05.prod.outlook.com (10.168.176.142) with Microsoft
	SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.771.4; Thu, 8 Dec 2016 19:50:26 +0000
Received: from DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) by
	DM5PR05MB2954.namprd05.prod.outlook.com ([10.168.176.142]) with mapi id
	15.01.0771.010; Thu, 8 Dec 2016 19:50:26 +0000
From: Bryan Evenson <bevenson@melinkcorp.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: Can't enable reverse debugging
Thread-Index: AdJRh7s3U+ajT5gsR0y6A3ueaaSV7A==
Date: Thu, 8 Dec 2016 19:50:25 +0000
Message-ID: <DM5PR05MB29540B30AC5BD787AE4D7310BB840@DM5PR05MB2954.namprd05.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: spf=none (sender IP is )
	smtp.mailfrom=bevenson@melinkcorp.com; 
x-originating-ip: [98.100.91.242]
x-ms-office365-filtering-correlation-id: 7c053180-3096-4acd-e7d3-08d41fa37482
x-microsoft-antispam: UriScan:;BCL:0;PCL:0;RULEID:(22001);SRVR:DM5PR05MB2954;
x-microsoft-exchange-diagnostics: 1; DM5PR05MB2954;
	7:3ivLp3juMzoh6P6eg7Sz0nHXryp/omfRlyHEo+l71gRl0Xrvs3X9P4E11RFmmgwf/OAEZiu0rbes4qiyAK3qatU4wgX08Tb3aojBGi4IvfQwRJ6R7SYaMHJMqnrl1OIJdjuO9BDEdy1c0eURxlmHzEgm4IS07Sdp6m97Kd9CTDiRhA/BXlD/q2yzU5S7n5c7UkGr4JejsJoIdHy8vmiIO8uRks4/PGsB3a9CcYYbgerDHD6l8K3mO6Hc7KY8k/Ly+01+Q3hu35L3WPVfcTsoQ77OjB3JkGEP986rQjPgz2ZaI/qQ6kPVDtDraRrylWZx2OmMS1uZmVmQ6EWpWV9meoH8TDbkcJSJb/dkApf2CndQCMmQ3iMA2/6IWQa2ZyZQKoalrcnXNbtkP7JZFS0G0KGWCg7VTish4QF/T7okoOoeU0ysaKL3W3PnbjS0BCkSFihJxo7qrUjJwIHtgwZB7A==
x-microsoft-antispam-prvs: <DM5PR05MB2954F4573D2C89DAC22777DDBB840@DM5PR05MB2954.namprd05.prod.outlook.com>
x-exchange-antispam-report-test: UriScan:;
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(6040375)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6041248)(20161123555025)(20161123562025)(20161123564025)(20161123560025)(6072148);
	SRVR:DM5PR05MB2954; BCL:0; PCL:0; RULEID:; SRVR:DM5PR05MB2954; 
x-forefront-prvs: 0150F3F97D
x-forefront-antispam-report: SFV:NSPM;
	SFS:(10019020)(6009001)(7916002)(39450400003)(189002)(199003)(101416001)(66066001)(50986999)(33656002)(54356999)(6916009)(110136003)(7696004)(3280700002)(450100001)(3660700001)(76576001)(5660300001)(92566002)(105586002)(99286002)(106356001)(122556002)(38730400001)(2351001)(1730700003)(9686002)(8936002)(2900100001)(2501003)(305945005)(3480700004)(86362001)(81166006)(2906002)(6116002)(68736007)(102836003)(97736004)(107886002)(74316002)(81156014)(3846002)(7736002)(6506006)(8676002)(77096006)(5640700002)(189998001)(6436002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DM5PR05MB2954;
	H:DM5PR05MB2954.namprd05.prod.outlook.com; FPR:; SPF:None;
	PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
received-spf: None (protection.outlook.com: melinkcorp.com does not designate
	permitted sender hosts)
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-OriginatorOrg: melinkcorp.com
X-MS-Exchange-CrossTenant-originalarrivaltime: 08 Dec 2016 19:50:25.8476 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Hosted
X-MS-Exchange-CrossTenant-id: d06db0f9-efcc-42b5-9f8c-c934a01c9bfd
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DM5PR05MB2954
Subject: Can't enable reverse debugging
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
X-List-Received-Date: Thu, 08 Dec 2016 20:04:57 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm on poky/dizzy and I'm getting a segementation fault in my application t=
hat I think may be related to a buffer overflow.  I'm using the Eclipse plu=
g-in (on Eclipse Kepler) to debug on the hardware with GDB.  I'm trying to =
enable reverse debugging but I have not had any success and I'm looking for=
 some help.

My target processor is an SAM9G25 (ARM926EJ-S core).  I have been able to d=
ebug through Eclipse on the target hardware without issue.  I tried enablin=
g Reverse Debugging by going to Window->Customize Perspective...->Command G=
roups Availability and selecting "Reverse Debugging".  Now there is a "Reve=
rse Toggle" button on my toolbar, but it is always grayed out whether I hav=
e a debug session running or not.  I have also tried entering the command "=
record" from the GDB console after my program breaks at main.  When I run t=
he program, I get the error message "Process record: failed to record execu=
tion log".

Is there something that I'm missing from my build steps or some Eclipse plu=
gin that I may be missing that is causing issues for reverse debugging?  Or=
 is there some hardware requirement that my system may not meet?

Thanks,
Bryan

