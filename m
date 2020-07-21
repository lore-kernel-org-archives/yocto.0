Received: from EUR04-DB3-obe.outbound.protection.outlook.com (EUR04-DB3-obe.outbound.protection.outlook.com [40.107.6.79])
 by mx.groups.io with SMTP id smtpd.web11.16269.1595328351744664433
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Jul 2020 03:45:52 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@phoenixcontact.onmicrosoft.com header.s=selector1-phoenixcontact-onmicrosoft-com header.b=b8OaIpBP;
 spf=pass (domain: phoenixcontact.com, ip: 40.107.6.79, mailfrom: jhannig@phoenixcontact.com)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=phoenixcontact.onmicrosoft.com; s=selector1-phoenixcontact-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=QgNm6V8jBUWnqNLhCPvZdQ0YqKb/0nXav5K7rAcVIfA=;
 b=b8OaIpBPxH2NR4VXnoLslljFGU8xB9652ciyr+zisZmcNgl015CdavU3qB8lWUGCbbuqqaKuDmXyvo0a/f6Er7KtxZVwktAtjXWe/QG3WN9MGeKbf0IvigC1CIrwj7wDMnLp36ULkuD4lbx12iKRxAbs5vnAjg+vf9l9P7uwKBk=
Received: from AM6P195CA0013.EURP195.PROD.OUTLOOK.COM (2603:10a6:209:81::26)
 by AM6PR05MB4408.eurprd05.prod.outlook.com (2603:10a6:209:43::13) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.17; Tue, 21 Jul
 2020 10:45:49 +0000
Received: from HE1EUR04FT039.eop-eur04.prod.protection.outlook.com
 (2603:10a6:209:81:cafe::b7) by AM6P195CA0013.outlook.office365.com
 (2603:10a6:209:81::26) with Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.17 via Frontend
 Transport; Tue, 21 Jul 2020 10:45:49 +0000
X-MS-Exchange-Authentication-Results: spf=neutral (sender IP is 51.136.18.164)
 smtp.mailfrom=phoenixcontact.com; lists.yoctoproject.org; dkim=fail (body
 hash did not verify)
 header.d=phoenixcontact.onmicrosoft.com;lists.yoctoproject.org; dmarc=none
 action=none header.from=phoenixcontact.com;
Received-SPF: Neutral (protection.outlook.com: 51.136.18.164 is neither
 permitted nor denied by domain of phoenixcontact.com)
Received: from azr-iqsuite11 (51.136.18.164) by
 HE1EUR04FT039.mail.protection.outlook.com (10.152.26.153) with Microsoft SMTP
 Server (version=TLS1_2, cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id
 15.20.3195.18 via Frontend Transport; Tue, 21 Jul 2020 10:45:48 +0000
Received: from mail pickup service by azr-iqsuite11 with Microsoft SMTPSVC;
	 Tue, 21 Jul 2020 12:45:48 +0200
Received: from EUR04-HE1-obe.outbound.protection.outlook.com ([104.47.13.56]) by azr-iqsuite11 over TLS secured channel with Microsoft SMTPSVC(10.0.14393.2608);
	 Tue, 21 Jul 2020 12:45:48 +0200
ARC-Seal: i=1; a=rsa-sha256; s=arcselector9901; d=microsoft.com; cv=none;
 b=nKfG1dYb0iIe5bo4FkqV/47Lwl7UxnHw/r5BHBixhu+7/R5D0CGsfObatKtmyisFIvNGaVS9THR1Tn/ppk+G2rrzc+KNI9eTenilmyp4A947T5E0HyDIs1rY60Ds0PnBgUFqjR4m5hUYUo5cDM91EDmDwHDKi9229gcAs+X3wZqQZKnAFmNOcGi7IKgsQTCsN+kvMLU5WTgPETmthGq978+88ESQJ2HjEDewU6Bx6COTUOBWCjx6Pz+t30KL18NhyQZkTMY0HUoRuK0AKBFbUuKwQYPsqBxWr6t7Uw8IMrsaaKe0jnXHzSC+lsimxm1/zWrdrpWfIq1qzKVvF6BISQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=microsoft.com;
 s=arcselector9901;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cAZGOqjX550NOtRz4YPGAdRfJEhw68KpiEmpCGYIAeo=;
 b=f94jQpyPm+kvFHHnDUTz+KO7DfurOpDsE9jDBZIeyDQv15YPi9Jr5fo9/1GgjIIgAOi7FQHgdwDtnVXi7MpgYI+fs95axh03XFPEjc5l3KEcyFrFhWXuznT4NFmv4b1gKvgCk64YQiudblSP4zyGCa/6uIzVuu7qSSVmLRn8MPPOp/Od3SLA2cAhnKfIKtdUiUXWMZ80LcqxRlbIk6gnq5VG2IudQ7xs0ZB45uvn07JW46NCLmMM+6n64UIBQgvJZmarN8BEs/S2i8MA4C3qOrD6GgeI9q0rUgE1GSJGPUZc4iWAaX277Sd56VojrlHN1AVY0YxPv6unalhIkvmVXA==
ARC-Authentication-Results: i=1; mx.microsoft.com 1; spf=pass
 smtp.mailfrom=phoenixcontact.com; dmarc=pass action=none
 header.from=phoenixcontact.com; dkim=pass header.d=phoenixcontact.com;
 arc=none
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=phoenixcontact.onmicrosoft.com; s=selector1-phoenixcontact-onmicrosoft-com;
 h=From:Date:Subject:Message-ID:Content-Type:MIME-Version:X-MS-Exchange-SenderADCheck;
 bh=cAZGOqjX550NOtRz4YPGAdRfJEhw68KpiEmpCGYIAeo=;
 b=SUxt71hfih0BKATKEqZIq1e1nii4EzMaOg/p6CTrAtHDzMBrxejGODjP7jaLSuCsP55ibGGuOhwjFSNt/nAb9H4bhXPK4APdxiuG4Uhn2aO3M37Fok0LAn+EDoTvY+BPrEDY5PK1RLQG651yFXp4LvrY7nialOOgDrsrBTr1OiM=
Received: from AM0PR05MB5058.eurprd05.prod.outlook.com (2603:10a6:208:c7::18)
 by AM4PR0501MB2324.eurprd05.prod.outlook.com (2603:10a6:200:54::6) with
 Microsoft SMTP Server (version=TLS1_2,
 cipher=TLS_ECDHE_RSA_WITH_AES_256_GCM_SHA384) id 15.20.3195.23; Tue, 21 Jul
 2020 10:45:46 +0000
Received: from AM0PR05MB5058.eurprd05.prod.outlook.com
 ([fe80::e4d2:c6da:51cf:3c6c]) by AM0PR05MB5058.eurprd05.prod.outlook.com
 ([fe80::e4d2:c6da:51cf:3c6c%5]) with mapi id 15.20.3195.024; Tue, 21 Jul 2020
 10:45:46 +0000
From: jhannig@phoenixcontact.com
To: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Subject: Yocto Dunfell: package.class --> dwarfsrcfiles
Thread-Topic: Yocto Dunfell: package.class --> dwarfsrcfiles
Thread-Index: AdZfTBkySyp6EXNwTj2GJrsNOgIBDw==
Date: Tue, 21 Jul 2020 10:45:46 +0000
Message-ID: 
 <AM0PR05MB5058061461A3E61A57263A41D5780@AM0PR05MB5058.eurprd05.prod.outlook.com>
Accept-Language: de-DE, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
Authentication-Results-Original: lists.yoctoproject.org; dkim=none (message
 not signed) header.d=none;lists.yoctoproject.org; dmarc=none action=none
 header.from=phoenixcontact.com;
x-originating-ip: [62.157.123.168]
x-ms-publictraffictype: Email
X-MS-Office365-Filtering-Correlation-Id: a64583c0-530d-4a5a-893f-08d82d633b24
x-ms-traffictypediagnostic: AM4PR0501MB2324:|AM6PR05MB4408:
x-ms-exchange-transport-forked: True
X-Microsoft-Antispam-PRVS: 
	<AM6PR05MB44080ECEDCC7DE2AB8F45EC9D5780@AM6PR05MB4408.eurprd05.prod.outlook.com>
x-ld-processed: 6868843b-f012-4c95-a18e-bab826cca9ac,ExtAddr
x-ms-oob-tlc-oobclassifiers: OLM:10000;OLM:10000;
X-MS-Exchange-SenderADCheck: 1
X-Microsoft-Antispam-Untrusted: BCL:0;
X-Microsoft-Antispam-Message-Info-Original: 
 KeCp2QohPSyMDz+0j7zToW4mwOOyewBWlKr65kxU9jRjbtmdj2hbGD6e/G196uIDaNeK1eSvwgrHCbv3fD8dTlupLjm7n1UtLXpqHLFpyuMChvNV14Qt568ngOXAVUDR9a0vt78NocOQsM+sBpbtmwIqJxVHJsaEZUmTXzLOGt5OUZpL4trWbzbu/jaiSsuHadugsqalIKBtEpcmF1SXBbNgvIbSc+BdiRuUizB2CP2zYDASTbcXQixC7s1vXb06L+UgnfZCOAR6qvlRb3ReBIJPN29VeQ0F3ueUZdL+uyIlT/AqVqzwShAUeW2Xh7jx3PB7D3p9MRICSO7LZjRKVoJFaP2UP20swrYGujBETtCKxcTop96XiqUHZZMOwqxF7WwXisr7par5Xgw/tPOL+TP8dqNc+/JAaGE6I1L9EPdF3VWetsCtVaq4gTR0OH4meoLKGyXyU0FMYHzfkVwZmg==
X-Forefront-Antispam-Report-Untrusted: 
 CIP:255.255.255.255;CTRY:;LANG:en;SCL:1;SRV:;IPV:NLI;SFV:NSPM;H:AM0PR05MB5058.eurprd05.prod.outlook.com;PTR:;CAT:NONE;SFTY:;SFS:(4636009)(346002)(376002)(39860400002)(136003)(366004)(396003)(5660300002)(8936002)(66574015)(8676002)(478600001)(71200400001)(52536014)(9686003)(76116006)(55016002)(33656002)(66946007)(6506007)(64756008)(83380400001)(26005)(66476007)(6916009)(66556008)(316002)(186003)(166002)(19627235002)(86362001)(7696005)(66446008)(2906002)(156123004);DIR:OUT;SFP:1101;
x-ms-exchange-antispam-messagedata: 
 V/+f+DAKdLtA8CXDClV+GF/QmZnJH2HhUMwH8POccnofXy5ldmq7tERFEey+BJX3tkGs6BwxDNgYwv+RxvTSjh9jI69vXJQiVd2an25fslFsggbsF3BqtQ5wcyS493cSqhIKhs1akjhpoNn+Gj+wV6boPhq/LT4hNjG9pREjCO9hqKOnjbOpvo8li/6Sjv0doWUtwTe3kSG5su0+MfgfSJqAE2/DEFWBKkNm/lC8s04Bh0RuS629FXzGb93WCC1vbYEm1RtCAeokjCKif7MTJwKs9eCqsNear8OBjWEuTBYeNZsnQKDjkocrUVobuPyZoR3//HQ94dHpJ+1aXyp6OVBQv2EUOMzEXnx0y1BceMJz+N0WAENB8yK7G7FPJ5bEg+yZfnfJGRqZbToq+jg9SF9uSrEyNLTv5zulQcsQFI4D8IHTorrTH95WQ8uC77twWbH56uxVKXIouD7dr+SfiatB5r+csiVOFcJ+qKbrON5hbVxpEYiv8W/tnfGWNh1z
MIME-Version: 1.0
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM4PR0501MB2324
Return-Path: jhannig@phoenixcontact.com
X-OriginalArrivalTime: 21 Jul 2020 10:45:48.0373 (UTC) FILETIME=[184B0050:01D65F4C]
X-GBS-PROC: k7BRzbpU//IoBiUoohvGGGtPmIFi/KFU0BIHl5U4Za5ryc9+FPR7SWrHZb699R3I
X-GRP-TAN: azr-iqsuite11@DA6027EE17D2458586819ED41EF3238E
X-iqsuite-process: processed
X-EOPAttributedMessage: 0
X-MS-Exchange-Transport-CrossTenantHeadersStripped: 
 HE1EUR04FT039.eop-eur04.prod.protection.outlook.com
X-Forefront-Antispam-Report: 
	CIP:51.136.18.164;CTRY:NL;LANG:en;SCL:1;SRV:;IPV:CAL;SFV:NSPM;H:azr-iqsuite11;PTR:InfoDomainNonexistent;CAT:NONE;SFTY:;SFS:(4636009)(39860400002)(136003)(396003)(376002)(346002)(46966005)(47076004)(8936002)(356005)(36906005)(33964004)(2906002)(66574015)(6506007)(15974865002)(83380400001)(5660300002)(316002)(478600001)(86362001)(70206006)(166002)(70586007)(33656002)(82310400002)(8676002)(7696005)(336012)(186003)(6916009)(19627235002)(55016002)(81166007)(52536014)(9686003)(82740400003)(26005)(156123004);DIR:OUT;SFP:1101;
X-MS-Office365-Filtering-Correlation-Id-Prvs: 
	af5c083a-350a-4072-62d0-08d82d6339dd
X-Microsoft-Antispam: BCL:0;
X-Microsoft-Antispam-Message-Info: 
	INETWZoJBpLNw2E87YotK0PC1Vx0DTI0wWpC+Zo+ZL/OSIVJjvjupsiKAtRRrTkZ7xLHeSI3Zzrg82R6Wpg7PRNBVUV8tbDeRtQYNPmRaVsCWfRT+AiHpARnUhOHcXmxnUJXC0kVkLi+8xcNK2D0n+lV9df+14caFu/QR9tBMYdu0E6snBJEctHh/qp+iBmCTqbWs+yX3KUDUzKiBw6G3dmNSUO9JqpXW2wRRwsKN2aWgdHUArh7cufiiTZTJQPxFCHhebWealrmg8nzjfAu/vxcsjZSxvILzdjz+iPhvKiita1e1+3UnKatRzBTHr5cecijbnXpgZwKIHaHZFZUxXQHGy4HmdvGzef3LVxONVgfIsQnHtNPdFE3nFZrXVdGSwmHuToI5Bk7VQ0vk7/R0eKe2zEVi8+Ar63F8eEk8QbbIYJBzYsnDoXKvCNJYn6ItuQ/KiPDPmuPeLr5xAGvJPddPGxX2Wcixcst+qfA3aMKY0ex8koQoW18B3eMcxKc
X-OriginatorOrg: phoenixcontact.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 21 Jul 2020 10:45:48.9487
 (UTC)
X-MS-Exchange-CrossTenant-Network-Message-Id: a64583c0-530d-4a5a-893f-08d82d633b24
X-MS-Exchange-CrossTenant-Id: 6868843b-f012-4c95-a18e-bab826cca9ac
X-MS-Exchange-CrossTenant-OriginalAttributedTenantConnectingIp: TenantId=6868843b-f012-4c95-a18e-bab826cca9ac;Ip=[51.136.18.164];Helo=[azr-iqsuite11]
X-MS-Exchange-CrossTenant-AuthSource: 
	HE1EUR04FT039.eop-eur04.prod.protection.outlook.com
X-MS-Exchange-CrossTenant-AuthAs: Anonymous
X-MS-Exchange-CrossTenant-FromEntityHeader: HybridOnPrem
X-MS-Exchange-Transport-CrossTenantHeadersStamped: AM6PR05MB4408
Content-Language: de-DE
Content-Type: multipart/alternative;
	boundary="_000_AM0PR05MB5058061461A3E61A57263A41D5780AM0PR05MB5058eurp_"

--_000_AM0PR05MB5058061461A3E61A57263A41D5780AM0PR05MB5058eurp_
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,



with the upgrade from Yocto Zeus =E2=86=92 Dunfell, we observe lots of me=
ssages when building our product which seem heavy to be understood or to =
debug.

Actually, it=27s the failure of the =22do_package=22 task of a proprietar=
y module written in C with following message:



ERROR: eds-1.0-r0 do_package: dwarfsrcfiles failed with exit code 1 (cmd =
was [=27dwarfsrcfiles=27, =27/home/jhannig/workspace/build/mguard3_tmp/wo=
rk/aarch64-mguard-linux/eds/1.0-r0/package/usr/lib/libhdb.a=27]):

dwarfsrcfiles: /home/jhannig/workspace/build/mguard3_tmp/work/aarch64-mgu=
ard-linux/eds/1.0-r0/package/usr/lib/libhdb.a: not a valid ELF file



ERROR: Logfile of failure stored in: /home/jhannig/workspace/build/mguard=
3_tmp/work/aarch64-mguard-linux/eds/1.0-r0/temp/log.do_package.13957

ERROR: Task (/home/jhannig/workspace/mguard/meta-mguard/recipes-core/eds/=
eds_1.0.bb:do_package) failed with exit code =271=27



Following information to understand the problem:

- The code of this module wasn=27t changed, and it compiled errorless wit=
h release =22Zeus=22

- The examination of the file =22libhdb.a=22 brings following results:

- It is possible to unpack the archive-file =22libhdb.a=22:  jhannig@jhan=
nig:~/Archiv/MG-2436$ ar x libhdb.a

- The Examination of the content with =22file *.o=22 [jhannig@jhannig:~/A=
rchiv/MG-2436$ file *.o] brings following results:

hdb.o:             ELF 64-bit LSB relocatable, ARM aarch64, version 1 (SY=
SV), not stripped

hdbschema.o:       ELF 64-bit LSB relocatable, ARM aarch64, version 1 (SY=
SV), not stripped

hdbstaticschema.o: ELF 64-bit LSB relocatable, ARM aarch64, version 1 (SY=
SV), not stripped

utils.o:           ELF 64-bit LSB relocatable, ARM aarch64, version 1 (SY=
SV), not stripped

- This corresponds with the expectation and the intended character of the=
 file

- Minor changes in the makefile command line didn=27t change anything in =
the result [EXTRA_OEMAKE +=3D =27CC=3D=22${CC}=22 CPPFLAGS=3D=22${CPPFLAG=
S}=22 CFLAGS=3D=22${CFLAGS}=22 LDFLAGS=3D=22${LDFLAGS}=22 AR=3D=22${AR}=
=22 EDS_XML=3D=22${EDS_XML}=22=27]

- Searching the internet for =22dwarfsrcfiles=22 doesn=27t bring any info=
rmative or documentative result, so it doesn=27t become clear, what this =
tool exactly does.



Following questions asked to the community:

- Which cases of errors result in this error message=3F

- What changed with the new yocto release, that =22suddenly=22 a build re=
sult is analyzed as failure=3F

- Where exactly in the tool code is this error thrown=3F The message =22n=
ot a valid ELF file=22 isn=27t available in the code

- What should be done with the archive file and its content to eliminate =
the error=3F

- Is this behavior well known, and is there any documentation to get info=
rmation about the tool=3F



Thanks a lot for help,

kind regards



Jan Hannig

Reasearch and Development



jhannig@phoenixcontact.com<mailto:jhannig@phoenixcontact.com>

www.phoenixcontact.com<http://www.phoenixcontact.com>





.........................................................................=
..............
PHOENIX CONTACT Cyber Security GmbH=20
Richard-Willst=C3=A4tter-Stra=C3=9Fe 6 =20
D-12489 Berlin =20
=20
Register Court: AG Charlottenburg, HR B 202908=20
Gesch=C3=A4ftsf=C3=BChrer/General Manager: Kilian Golm

--_000_AM0PR05MB5058061461A3E61A57263A41D5780AM0PR05MB5058eurp_
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<html xmlns:v=3D=22urn:schemas-microsoft-com:vml=22 xmlns:o=3D=22urn:sche=
mas-microsoft-com:office:office=22 xmlns:w=3D=22urn:schemas-microsoft-com=
:office:word=22 xmlns:m=3D=22http://schemas.microsoft.com/office/2004/12/=
omml=22 xmlns=3D=22http://www.w3.org/TR/REC-html40=22>
<head>
<meta http-equiv=3D=22Content-Type=22 content=3D=22text/html; charset=3Du=
tf-8=22>
<meta name=3D=22Generator=22 content=3D=22Microsoft Word 15 (filtered med=
ium)=22>
<style><!--
/* Font Definitions */
@font-face
	{font-family:=22Cambria Math=22;
	panose-1:2 4 5 3 5 4 6 3 2 4;}
@font-face
	{font-family:Calibri;
	panose-1:2 15 5 2 2 2 4 3 2 4;}
/* Style Definitions */
p.MsoNormal, li.MsoNormal, div.MsoNormal
	{margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:=22Calibri=22,sans-serif;
	mso-fareast-language:EN-US;}
a:link, span.MsoHyperlink
	{mso-style-priority:99;
	color:#0563C1;
	text-decoration:underline;}
a:visited, span.MsoHyperlinkFollowed
	{mso-style-priority:99;
	color:#954F72;
	text-decoration:underline;}
p.MsoPlainText, li.MsoPlainText, div.MsoPlainText
	{mso-style-priority:99;
	mso-style-link:=22Nur Text Zchn=22;
	margin:0cm;
	margin-bottom:.0001pt;
	font-size:11.0pt;
	font-family:=22Arial=22,sans-serif;}
span.E-MailFormatvorlage17
	{mso-style-type:personal-compose;
	font-family:=22Arial=22,sans-serif;
	font-variant:normal !important;
	color:windowtext;
	text-transform:none;
	position:relative;
	top:0pt;
	mso-text-raise:0pt;
	letter-spacing:0pt;
	mso-ligatures:none;
	mso-number-form:default;
	mso-number-spacing:default;
	mso-stylistic-set:0;
	mso-contextual-alternates:no;
	text-shadow:none;
	font-weight:normal;
	font-style:normal;
	text-decoration:none none;
	vertical-align:baseline;}
span.NurTextZchn
	{mso-style-name:=22Nur Text Zchn=22;
	mso-style-priority:99;
	mso-style-link:=22Nur Text=22;
	font-family:=22Arial=22,sans-serif;
	mso-fareast-language:DE;}
.MsoChpDefault
	{mso-style-type:export-only;
	font-family:=22Calibri=22,sans-serif;
	mso-fareast-language:EN-US;}
@page WordSection1
	{size:612.0pt 792.0pt;
	margin:70.85pt 70.85pt 2.0cm 70.85pt;}
div.WordSection1
	{page:WordSection1;}
--></style><!--[if gte mso 9]><xml>
<o:shapedefaults v:ext=3D=22edit=22 spidmax=3D=221026=22 />
</xml><![endif]--><!--[if gte mso 9]><xml>
<o:shapelayout v:ext=3D=22edit=22>
<o:idmap v:ext=3D=22edit=22 data=3D=221=22 />
</o:shapelayout></xml><![endif]-->
</head>
<body lang=3D=22DE=22 link=3D=22#0563C1=22 vlink=3D=22#954F72=22>
<div class=3D=22WordSection1=22>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>Hello,<o></o:p></s=
pan></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22><o>&nbsp;</o:p></s=
pan></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>with the upgrade f=
rom Yocto Zeus =E2=86=92 Dunfell, we observe lots of messages when buildi=
ng our product which seem heavy to be understood or to debug.<o></o:p></s=
pan></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>Actually, it=27s t=
he failure of the &quot;do_package&quot; task of a proprietary module wri=
tten in C with following message:<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22><o>&nbsp;</o:p></s=
pan></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>ERROR: eds-1.0-r0 =
do_package: dwarfsrcfiles failed with exit code 1 (cmd was [=27dwarfsrcfi=
les=27, =27/home/jhannig/workspace/build/mguard3_tmp/work/aarch64-mguard-=
linux/eds/1.0-r0/package/usr/lib/libhdb.a=27]):<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>dwarfsrcfiles: /ho=
me/jhannig/workspace/build/mguard3_tmp/work/aarch64-mguard-linux/eds/1.0-=
r0/package/usr/lib/libhdb.a: not a valid ELF file<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22><o>&nbsp;</o:p></s=
pan></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>ERROR: Logfile of =
failure stored in: /home/jhannig/workspace/build/mguard3_tmp/work/aarch64=
-mguard-linux/eds/1.0-r0/temp/log.do_package.13957<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>ERROR: Task (/home=
/jhannig/workspace/mguard/meta-mguard/recipes-core/eds/eds_1.0.bb:do_pack=
age) failed with exit code =271=27<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22><o>&nbsp;</o:p></s=
pan></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>Following informat=
ion to understand the problem:<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- The code of this=
 module wasn=27t changed, and it compiled errorless with release &quot;Ze=
us&quot;<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- The examination =
of the file &quot;libhdb.a&quot; brings following results:<o></o:p></span=
></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- It is possible t=
o unpack the archive-file &quot;libhdb.a&quot;: &nbsp;jhannig@jhannig:~/A=
rchiv/MG-2436$ ar x libhdb.a<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- The Examination =
of the content with &quot;file *.o&quot; [jhannig@jhannig:~/Archiv/MG-243=
6$ file *.o] brings following results:<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>hdb.o:&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ELF 64-bit L=
SB relocatable, ARM aarch64, version 1 (SYSV), not stripped<o></o:p></spa=
n></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>hdbschema.o:&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ELF 64-bit LSB relocatable, ARM aarch64, v=
ersion 1 (SYSV), not stripped<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>hdbstaticschema.o:=
 ELF 64-bit LSB relocatable, ARM aarch64, version 1 (SYSV), not stripped<=
o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>utils.o:&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ELF 64-bit LSB relocat=
able, ARM aarch64, version 1 (SYSV), not stripped<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- This corresponds=
 with the expectation and the intended character of the file<o></o:p></sp=
an></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- Minor changes in=
 the makefile command line didn=27t change anything in the result [EXTRA_=
OEMAKE &#43;=3D =27CC=3D&quot;${CC}&quot; CPPFLAGS=3D&quot;${CPPFLAGS}&qu=
ot; CFLAGS=3D&quot;${CFLAGS}&quot; LDFLAGS=3D&quot;${LDFLAGS}&quot; AR=
=3D&quot;${AR}&quot; EDS_XML=3D&quot;${EDS_XML}&quot;=27]<o></o:p></span>=
</p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- Searching the in=
ternet for &quot;dwarfsrcfiles&quot; doesn=27t bring any informative or d=
ocumentative result, so it doesn=27t become clear, what this tool exactly=
 does.<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22><o>&nbsp;</o:p></s=
pan></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>Following question=
s asked to the community:<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- Which cases of e=
rrors result in this error message=3F<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- What changed wit=
h the new yocto release, that &quot;suddenly&quot; a build result is anal=
yzed as failure=3F<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- Where exactly in=
 the tool code is this error thrown=3F The message &quot;not a valid ELF =
file&quot; isn=27t available in the code<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- What should be d=
one with the archive file and its content to eliminate the error=3F<o></o=
:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>- Is this behavior=
 well known, and is there any documentation to get information about the =
tool=3F<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22><o>&nbsp;</o:p></s=
pan></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>Thanks a lot for h=
elp,<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>kind regards<o></o=
:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22><o>&nbsp;</o:p></s=
pan></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>Jan Hannig<o></o:p=
></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22>Reasearch and Deve=
lopment<o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22><o>&nbsp;</o:p></s=
pan></p>
<p class=3D=22MsoPlainText=22><a href=3D=22mailto:jhannig@phoenixcontact.=
com=22><span lang=3D=22EN-US=22>jhannig@phoenixcontact.com</span></a><spa=
n lang=3D=22EN-US=22><o></o:p></span></p>
<p class=3D=22MsoPlainText=22><a href=3D=22http://www.phoenixcontact.com=
=22><span lang=3D=22EN-US=22>www.phoenixcontact.com</span></a><span lang=
=3D=22EN-US=22><o></o:p></span></p>
<p class=3D=22MsoPlainText=22><span lang=3D=22EN-US=22><o>&nbsp;</o:p></s=
pan></p>
<p class=3D=22MsoNormal=22><span lang=3D=22EN-US=22 style=3D=22font-famil=
y:&quot;Arial&quot;,sans-serif=22><o>&nbsp;</o:p></span></p>
<p class=3D=22MsoNormal=22><span lang=3D=22EN-US=22><o>&nbsp;</o:p></span=
></p>
</div>
<FONT face=3D=22Calibri=22><FONT face=3D=22Calibri=22>
<P dir=3D=22ltr=22>......................................................=
.................................</P>
<P dir=3D=22ltr=22>PHOENIX CONTACT Cyber Security GmbH=E3=80=80</P>
<P dir=3D=22ltr=22>Richard-Willst=C3=A4tter-Stra=C3=9Fe 6 =E3=80=80</P>
<P dir=3D=22ltr=22>D-12489 Berlin =E3=80=80</P>
<P dir=3D=22ltr=22>=E3=80=80</P>
<P dir=3D=22ltr=22>Register Court: AG Charlottenburg, HR B 202908=E3=80=
=80</P>
<P>Gesch=C3=A4ftsf=C3=BChrer/General Manager: Kilian Golm</P></FONT></FON=
T><I><FONT face=3D=22Calibri=22></I></FONT></body>
</html>

--_000_AM0PR05MB5058061461A3E61A57263A41D5780AM0PR05MB5058eurp_--
