Return-Path: <rksyeung@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5A6F0E00A1E; Mon, 23 Apr 2018 04:10:00 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FORGED_HOTMAIL_RCVD2, FREEMAIL_FROM,
	HTML_MESSAGE, 
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rksyeung[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust *      [40.92.2.71 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 43385 seconds by postgrey-1.32 at yocto-www;
	Mon, 23 Apr 2018 04:09:57 PDT
Received: from NAM01-SN1-obe.outbound.protection.outlook.com
	(mail-oln040092002071.outbound.protection.outlook.com [40.92.2.71])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 517B0E008A2
	for <yocto@yoctoproject.org>; Mon, 23 Apr 2018 04:09:57 -0700 (PDT)
Received: from BY2NAM01HT109.eop-nam01.prod.protection.outlook.com
	(2a01:111:e400:7e42::318) by
	SN1NAM01HT111.eop-nam01.prod.protection.outlook.com
	(2a01:111:e400:7e40::304) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.696.11;
	Sun, 22 Apr 2018 21:33:37 +0000
Received: from SN1NAM01HT110.eop-nam01.prod.protection.outlook.com
	(2a01:111:e400:7e40::505) by
	BY2NAM01HT109.eop-nam01.prod.protection.outlook.com
	(2a01:111:e400:7e42::318) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.20.696.11;
	Sun, 22 Apr 2018 07:37:47 +0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=nrDX/qSwoSBtUJ5wQV/mmOxAfjWGqZYAWqmfPXLFn6Q=;
	b=lihd5v82Yr3PYfohLHb3lYS/ufOrMc/q0HFIFkLhYtjctJIyQ08kIaG7Gq8/nFLmRuJKqrdyyg5tQ+3Jtoq2sNCzmpBHcRDihHf2bt+49iIvoEv8W4Zi7lOWKEhLqdDm6aLrP9/Y+n9shniunYxmq7hysHgp1AoqP88SCknXlbJbjWjgj0XL2Ipklf3iO7ZL3jIcDk6R/RkOsWQ7UAlU031VUP4cBABhcuLM3NfDFPmnXV17EEUSiB6wlX32NEsuTXN+AkaQJgS7nKbivY1cNR9d5AuitFoud4sDyM74YKVpjoGYIR5vPB0zLqLY8UptFuE9wzoExOBN/L7tNKQFIg==
Received: from SN1NAM01FT042.eop-nam01.prod.protection.outlook.com
	(10.152.64.55) by SN1NAM01HT110.eop-nam01.prod.protection.outlook.com
	(10.152.65.249) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id 15.20.696.11;
	Sun, 22 Apr 2018 05:23:54 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com (10.152.64.58) by
	SN1NAM01FT042.mail.protection.outlook.com (10.152.65.205) with
	Microsoft SMTP
	Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384) id
	15.20.696.11 via Frontend Transport; Sun, 22 Apr 2018 05:23:54 +0000
Received: from MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8]) by
	MWHPR19MB1183.namprd19.prod.outlook.com
	([fe80::5125:a765:f3d4:40f8%18]) with mapi id 15.20.0696.013;
	Sun, 22 Apr 2018 05:23:54 +0000
From: Raymond Yeung <rksyeung@hotmail.com>
To: William Mills <wmills@ti.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Linux Files needed for PXE network boot
Thread-Index: AQHT1bpx3ngPGcU8okapyJig9EgOd6QHT4bzgAAC7yaAAUPgAIAAkZFpgAMdYIw=
Date: Sun, 22 Apr 2018 05:23:54 +0000
Message-ID: <MWHPR19MB1183485938FB53711770201CC58A0@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <MWHPR19MB1183563A0DFAFC6B7313C25CC5B00@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183C61B954575D9F17CA1BEC5B50@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11839D60DD5DADD1573F4291C5B50@MWHPR19MB1183.namprd19.prod.outlook.com>,
	<876a79a0-f419-9cbb-3dce-3de77113c525@ti.com>,
	<MWHPR19MB1183CB8761F21E7D2AEF3258C5B40@MWHPR19MB1183.namprd19.prod.outlook.com>
In-Reply-To: <MWHPR19MB1183CB8761F21E7D2AEF3258C5B40@MWHPR19MB1183.namprd19.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-incomingtopheadermarker: OriginalChecksum:13DF2499CA94CF5A06289AB2A03EC388017783EEEAA014B12C8E3CBC004C8D91;
	UpperCasedChecksum:86155B7E72401C4B9D217BEA9DB039EA56FBBDA7B6A43C5FEF38E700889BC54A;
	SizeAsReceived:7566; Count:46
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [3M3fUc+RkGfDJy+2WnO9EG/zCE6REOlBgyzwh22IDBBOVLBmOL3pmO006lVzIoRS]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; SN1NAM01HT110;
	7:JJln2BqRHR9iCUrLx0Ouk32lSvMxkGESh12TKNuDkuGHgSaD/A60G2F5eXrkH2E19EYePpDupo1TLMruxuP3vOGvAYcXZqGoHSSCmS9nogvz0/6z+OSwJDd6I4W9XDiAeIQyjLR6JFslkO3Yk/WcXbl/vVoPgDQ5xt3hx4RPvs6Rbm1/hkClloElFV5OuWKui8fNTwYxgOzMFDUyv9vxadQaxLiKdGthQZchx5unM7iGHIarOgklNIQLvLYtPQQV
x-incomingheadercount: 46
x-eopattributedmessage: 0
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(7020095)(201702061078)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322404)(1601125374)(1603101448)(1701031045);
	SRVR:SN1NAM01HT110; 
X-MS-TrafficTypeDiagnostic: SN1NAM01HT110:|SN1NAM01HT110:|BY2NAM01HT109:|BY2NAM01HT109:|SN1NAM01HT111:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0; RULEID:(444000031);
	SRVR:SN1NAM01HT110; BCL:0; PCL:0; RULEID:; SRVR:SN1NAM01HT110; 
x-forefront-prvs: 0650714AAA
x-forefront-antispam-report: SFV:NSPM; SFS:(7070007)(98901004); DIR:OUT;
	SFP:1901; SCL:1; SRVR:SN1NAM01HT110;
	H:MWHPR19MB1183.namprd19.prod.outlook.com; FPR:; SPF:None; LANG:;
x-microsoft-antispam-message-info: gD6IOsMDEEiK0MIsceU70tlidiVG1/66380mY14i/1g6v5eEDJzbnAh78OMEqoRAxzX/0JdYZQKoSNtmhGhnH314Aq67bjKw+rU4itzxgdJFa5EfTDmvdA9UiSaN2WSa8xgEzt7/Nwg0mkIRg3UkSX8+hSRSl6fl4pN2A3CyfjPLk7ivSmJwq2vyEFAHuR/g
MIME-Version: 1.0
X-MS-Office365-Filtering-Correlation-Id: 1f733574-92c3-4b40-e6e8-08d5a8113dd2
X-MS-Exchange-CrossTenant-RMS-PersistedConsumerOrg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-Network-Message-Id: 1f733574-92c3-4b40-e6e8-08d5a8113dd2
X-MS-Exchange-CrossTenant-rms-persistedconsumerorg: 5dab7a8a-ebdc-4bd9-9cfd-67cde50b170b
X-MS-Exchange-CrossTenant-originalarrivaltime: 22 Apr 2018 05:23:54.7310 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: SN1NAM01HT110
X-Microsoft-Exchange-Diagnostics: 1; BY2NAM01HT109;
	23:drhEwdf9nhhDIaZSbet/R6nHsw0a+rZHzIo0HECaeRvx3XMllV4hcQJAOU5U7ZVDPxJ4J0t9lNWbu8MAEFL3cKGbQ0ArKpM/za3rim1YtKL4TvS+pinmufZdd3uwEurd76AxmgEPCS85pyuLDdHNnQ==
X-Microsoft-Exchange-Diagnostics: 1; SN1NAM01HT111;
	23:thVy7upnTezlJbSGMp1qiXJcQTt8/Ch8lGqEWw1E0qMk6HM9SWx7sr5aYe3ZgHii88TXpllAFnxKDx+ghUy9Uls2eqQJmPnFeBMXZjhTiw7BtUx4IVZCjch9p3BtKtORebUx943tDEHcbQPmVU69NQ==
X-OriginatorOrg: hotmail.com
Subject: Re: Linux Files needed for PXE network boot
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
X-List-Received-Date: Mon, 23 Apr 2018 11:10:00 -0000
Content-Language: en-US
Content-Type: multipart/alternative;
	boundary="_000_MWHPR19MB1183485938FB53711770201CC58A0MWHPR19MB1183namp_"

--_000_MWHPR19MB1183485938FB53711770201CC58A0MWHPR19MB1183namp_
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

Thanks for all who extended helping hands.  I finally resolved my issues, a=
nd the target PXE-boot'ed up.  I'd like to provide some updates, for refere=
nce to someone that may run into this in the future.


I'm able to use legacy mode (in BIOS) instead of UEFI mode.  While I haven'=
t worked out the canonical form, it seems two things are important on BIOS =
side - there are a number of options that have UEFI vs. legacy choices.  Se=
lect "legacy" mode for all of them.  This is in the "CSM & Option ROM" Adva=
nced setting.  Some of the logging options under "Event Logs" tab might hav=
e helped turned on more diagnostic messages.


After the above adjustment, the error messages on the BIOS console guided m=
e to pick up missing files, including ldlinux.c32, libutil.c32, lib com.c32=
 that are not mentioned anywhere that I looked so far.


Now, I'm onto investigating how I could (re)create partitions on SSD, load =
the kernel there, and boot from that.


Raymond

--_000_MWHPR19MB1183485938FB53711770201CC58A0MWHPR19MB1183namp_
Content-Type: text/html; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

<html>
<head>
<meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3Diso-8859-=
1">
<style type=3D"text/css" style=3D"display:none;"><!-- P {margin-top:0;margi=
n-bottom:0;} --></style>
</head>
<body dir=3D"ltr">
<div id=3D"divtagdefaultwrapper" style=3D"font-size:12pt;color:#000000;font=
-family:Calibri,Helvetica,sans-serif;" dir=3D"ltr">
<p style=3D"margin-top:0;margin-bottom:0">Thanks for all who extended helpi=
ng hands. &nbsp;I finally resolved my issues, and the target PXE-boot'ed up=
. &nbsp;I'd like to provide some updates, for reference to someone that may=
 run into this in the future.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">I'm able to use legacy mode (in B=
IOS) instead of UEFI mode. &nbsp;While I haven't worked out the canonical f=
orm, it seems two things are important on BIOS side - there are a number of=
 options that have UEFI vs. legacy choices.
 &nbsp;Select &quot;legacy&quot; mode for all of them. &nbsp;This is in the=
 &quot;CSM &amp; Option ROM&quot; Advanced setting. &nbsp;Some of the loggi=
ng options under &quot;Event Logs&quot; tab might have helped turned on mor=
e diagnostic messages.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">After the above adjustment, the e=
rror messages on the BIOS console guided me to pick up missing files, inclu=
ding ldlinux.c32, libutil.c32, lib com.c32 that are not mentioned anywhere =
that I looked so far.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Now, I'm onto investigating how I=
 could (re)create partitions on SSD, load the kernel there, and boot from t=
hat.</p>
<p style=3D"margin-top:0;margin-bottom:0"><br>
</p>
<p style=3D"margin-top:0;margin-bottom:0">Raymond&nbsp;</p>
</div>
</body>
</html>

--_000_MWHPR19MB1183485938FB53711770201CC58A0MWHPR19MB1183namp_--
