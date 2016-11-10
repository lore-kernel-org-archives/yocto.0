Return-Path: <Thomas.Thorne@net2edge.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0422FE00C1A; Thu, 10 Nov 2016 05:26:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [104.47.2.90 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from EUR01-DB5-obe.outbound.protection.outlook.com
	(mail-db5eur01on0090.outbound.protection.outlook.com [104.47.2.90])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7ED3E00C17
	for <yocto@yoctoproject.org>; Thu, 10 Nov 2016 05:26:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=transitionnetworks.onmicrosoft.com; s=selector1-net2edge-com;
	h=From:Date:Subject:Message-ID:Content-Type:MIME-Version;
	bh=cSlCQQr1Vc2YYBI0DtZaUlWdyJKELmY00p7DiBcnpOs=;
	b=iQ1OzTp9WsnhrhBjn0R8eow7cYLz+mHoBa5vWEkKOmqWOCtlXruEE9dbsAWnYh2z6PfWgSQHoeT+m5oL14IJklczZJtSAadeuLXvTE/ytgDssdVCL98ATZXaSj2yAyOp1sOTzQrE5Os/eEkdtRjJ1BKDv0ZicGHMK/ur80EmxWg=
Authentication-Results: spf=none (sender IP is )
	smtp.mailfrom=Thomas.Thorne@net2edge.com; 
Received: from [172.16.20.67] (81.128.174.58) by
	DB6PR0701MB1878.eurprd07.prod.outlook.com (10.168.10.150) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id
	15.1.721.4; Thu, 10 Nov 2016 13:10:30 +0000
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Organization: Net2Edge Limited
To: <yocto@yoctoproject.org>
Message-ID: <89293735-d380-2b81-b328-d9c296c2f22f@Net2Edge.com>
Date: Thu, 10 Nov 2016 13:10:25 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.4.0
MIME-Version: 1.0
X-Originating-IP: [81.128.174.58]
X-ClientProxiedBy: DB6PR0301CA0056.eurprd03.prod.outlook.com (10.168.69.24) To
	DB6PR0701MB1878.eurprd07.prod.outlook.com (10.168.10.150)
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1878;
	2:mJqw+8JzIDOxTEwnG+n6p64neMKRXYS4+lt/apNZqzNUxLrlpvjI5EdbUgeh7y8VBBACzatixVNBAlV2fB7EjkRXWtNfC8txW8GCwyZGkjOm3Vr8Y0eu5YxdItVdGYSOIhDcBexbqHaC97jR+fhaza0JPwrdBoO+ryma5AP3OyY=;
	3:cUVr3Upf8JXjVG4p06RhtLA0hSAwK51K/9y8hHlxlNikSXpEUrGhovQATLG/anAQ3xMyDF4P3QW4mef+IC4q6sExonB4G4qwGe0qMTaQyVwQXax3hFs6xnuhSFnITyUbccYeN2DgD+Tvrc4z/IHVEhM8v27o0oIxdG1DKDvAFEs=
X-MS-Office365-Filtering-Correlation-Id: 36160220-7071-47c5-1e11-08d4096af2bb
X-Microsoft-Antispam: UriScan:; BCL:0; PCL:0; RULEID:(22001);
	SRVR:DB6PR0701MB1878; 
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB6PR0701MB1878;
	25:SxuBeWrmUZq5Wk1vPNzPEFRJeR6Izz852xnvbV0?=
	=?us-ascii?Q?weQKOXZekr5DQ2RbeAigpxog6nrv8jr3SQju2ZFbMQXIhVwLXCGM+nYOx5Fl?=
	=?us-ascii?Q?y/XnWx9OltrX3F8omBFP6lcKvaNdC29K8CG6WgCdsjCD56Aj+QNMDhDwBCRz?=
	=?us-ascii?Q?q0biQscw61fqxBLIZfWf+LTx6+kQ1zQtj2k19TJBxA37jSVld1ISIMlmsql3?=
	=?us-ascii?Q?qmZbzDT0sF0ZDbN9IJoaXvwdX+/JImyCFuY+RFjHfMA73gu3lep4ac+M/Qj4?=
	=?us-ascii?Q?goqHfHdT5P1TgyOGD8eHhntNjzDQWMO47rzRBnFFrvkNfMtGnvpp+7l9o2JB?=
	=?us-ascii?Q?y7gzNtsRKwsh/rpL61v6r9R0Ndn7pPgq1LIQY1LrhAincrE8oykcgRe8YWsG?=
	=?us-ascii?Q?gCZzz4gxovmJ8QRtspD2WRgFM3rmnAvUjwaJPlI5ykNZ7K6VyJNtiJqSjLl4?=
	=?us-ascii?Q?J3E/CpqAAikNDc5UlR7XN21vEE3PyKsQe/viFiqYA/oRiDcO7v4pH5wci09n?=
	=?us-ascii?Q?2haLDI+ExAjARbPxDw3wwqqDscRnfl4TiNck4m3cPMCy9DAwOPVJxRDdXU9j?=
	=?us-ascii?Q?/xIMeBA/C8j84BOGfYjaS7sTC2G5DgsrW5BA8/2YcPhHyn6enF5BGAZX1jRv?=
	=?us-ascii?Q?EHw8aGXH6AmmoHtyPLgT99Mhj7qnyH7FaRPiOAKY0zFQf3mMX3MYCyT1r/03?=
	=?us-ascii?Q?yK9J9iTCx9Ua1u2elHagfKCNKqELw0fPnzBJo29iaeno0PV53+O4FCddnXMs?=
	=?us-ascii?Q?GVT42hs7wKO6Nej3GmxLQVoDJQgbxI4V/wL+lhl3FnjfNC3a70BCBY2w19j2?=
	=?us-ascii?Q?tGu2omF2KBu2+04Waq0S3JvrZCbNhe9T1CzFaS6VcqrUG03cy+aNwRLBZWbG?=
	=?us-ascii?Q?nBOI1zDnh5MVtfeyPfKUB1LhF20eHcLF++ETt4WAuno+20TFbwXrfiEMdJVG?=
	=?us-ascii?Q?3cZuG6NXdLmbqgJy1B6R+vHCP3ofEpv+R5t1ZHH/XLMTVS1VWxVSsR21nYIt?=
	=?us-ascii?Q?fKCUQX12lybnkZlq7wsvrYrjfwEXhuoFIg5kzbpnG9W7ANw=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1878;
	31:7UVSKWyHp7bGRL2MTE/auUa87dbFFDYq/GNcJ7wndYMJh8SzLNJH1hRo4UjTSz4bTdTJwS3z3GBhJvM7Z7e8jcBMuf6jLIlj+RIIU93PtPyiVDuDsugADZXZTII5JctVakeNXDB2IArJ2L9XORh/1nweEHrVHKoMaCg++FaDwUMiL4L7YcHnSMIYSByy6t2F4WWxS/4Jgc+0/i8bAk4dfCmwLv9wq0KkUhUZoIn8V0O/V2sZjwxwcCx2c6NuVQpC;
	4:WJsUshhqGqUJLZi8XIalUGNjpmk/i9SQwtofN6Y0Y/cCmpUxCicVUdeDZuh4xcFBaAilqyMrL4NY59KwAgm5U8kDMh2PcQU32bLW8PJ+1EUuo1tqgBRzFlGM+nfovKv/Z8iHHwgOXkUMVeL9VEWzb3U2lLT/TrZY6GUOZvD09PNtCOjhKFaGL/BChobpHhjAi3omiXW862aFrUh8L75xu6/DKo/6PyHrpjYcdAyYXFt/bHhW736JiP7TTqbxss/0Mvbh7r+lQDgQLGnvRrjU/1kqGv8MGbZePhW9vrMmWAOBlm8+vDRxRBEJcaAfcOq95TLmz6n2EuKHm0TSTtdYOIR3kzjzr0qW0m05MkpyTmzRh38VW13IkmMg4Lz1/+BMyXrpJJ8c9AsyDQhQbRvguWMyKjuPoj6KUzFsuBjv9EsDU9fhdm7ueU2C5w5mVlej
X-Microsoft-Antispam-PRVS: <DB6PR0701MB18784D089F2603AC4B3539E2D3B80@DB6PR0701MB1878.eurprd07.prod.outlook.com>
X-Exchange-Antispam-Report-Test: UriScan:;
X-Exchange-Antispam-Report-CFA-Test: BCL:0; PCL:0;
	RULEID:(6040176)(601004)(2401047)(5005006)(8121501046)(3002001)(10201501046)(6043046)(6042046);
	SRVR:DB6PR0701MB1878; BCL:0; PCL:0; RULEID:;
	SRVR:DB6PR0701MB1878; 
X-Forefront-PRVS: 01221E3973
X-Forefront-Antispam-Report: SFV:NSPM;
	SFS:(10019020)(4630300001)(6049001)(7916002)(252514010)(189002)(199003)(53806999)(50986999)(83506001)(43066003)(81156014)(81166006)(8676002)(106356001)(54356999)(105586002)(101416001)(36756003)(21480400002)(77096005)(5890100001)(31686004)(42186005)(5660300001)(65826007)(512874002)(84326002)(68736007)(66066001)(65956001)(4001350100001)(65806001)(450100001)(97736004)(110136003)(64126003)(189998001)(6916009)(6666003)(107886002)(86362001)(31696002)(7846002)(568964002)(2351001)(3450700001)(586003)(2906002)(7736002)(3846002)(33646002)(16601075003)(7906003)(6116002)(24704002);
	DIR:OUT; SFP:1102; SCL:1; SRVR:DB6PR0701MB1878; H:[172.16.20.67];
	FPR:; SPF:None; PTR:InfoNoRecords; MX:1; A:1; LANG:en; 
Received-SPF: None (protection.outlook.com: net2edge.com does not designate
	permitted sender hosts)
X-Microsoft-Exchange-Diagnostics: =?us-ascii?Q?1; DB6PR0701MB1878;
	23:boxrGf0xoRbMPpdx1Ua2SwB+IcBdnv8o+CQieV/?=
	=?us-ascii?Q?XcxItBYWs4nyjscwEIst7Qyoic4fDq6yy5hB5WAIpB36IZ7oD8zdmW8FxFpV?=
	=?us-ascii?Q?ZhY+oPqcPJAJzHPOusZa3dix9d/X9SGEkEyHbaoCQo60qxbFNQiofv5syY3Y?=
	=?us-ascii?Q?+t62pd2cqfQ692tYl3ed9wmzlQmIqEfpYmkJXTJs1Dttec6qnXXT+sw4d9Jy?=
	=?us-ascii?Q?onZqciy+slBFVlvAAqaQXU6OZDPto00BNsR5DWhCAccr741W8BoVENyA+/h9?=
	=?us-ascii?Q?fRkHoW7MhGF7M84Zrnc9IlVWIq2dNw4doLE4yVO8LO9J1iSBapHNbnRe1hbn?=
	=?us-ascii?Q?l4csOkaBzkQ+wSMD8MM+pWjzrkt1KA4GwqjpAS01HU5GtgBMeT8UcNbnqMVf?=
	=?us-ascii?Q?V+usexuDAUiaXu9gEjp5656x0hnv60tpOtwqMWvzeduM6jhkc6E+JKoxEocY?=
	=?us-ascii?Q?dsqQxhpruuU9YWAIT3pehycvkvQ84OD2RvPa/X0TnOX3ItHLA9d6/YKyZAj2?=
	=?us-ascii?Q?UU0JurPl8fDjIKjZvMyByg8LzZACF15QQMVbrwxIirTA5hKYHYAui1Qyr0+j?=
	=?us-ascii?Q?h0UeapQXNJPwnHDWxQm8oAmuIY7LLad1oRnJv11PMli74XwqPSgUAKUlC0Ht?=
	=?us-ascii?Q?38yW5THxRdgmxR3fzDy9QqCMvwuIfrWci3bLsRtuZ9gffTcz7XMtZqGFxx0H?=
	=?us-ascii?Q?2ogvLXepxndPjnDVuIpokbP2pnPBzlQ0E80YGncIKP9qVr/O2u+Wxez47m79?=
	=?us-ascii?Q?MHKe1v/TuNV7Jp2FvcTsRADeDvk0RrqD2FGcPdBfuijSVymOHVNS/uZ9vHfu?=
	=?us-ascii?Q?bXLGFdoEkb9bZtITfbcq4ZDCIAS3qxG9CUWPpa/n/78FFbPp/ZjEi2tyUGha?=
	=?us-ascii?Q?/qcb2HTFRORzPglNZDsw7XOSqIGhxoPWxgI8oiLdX0btvqZ35HhI5U01fmg8?=
	=?us-ascii?Q?nuk5lW6TOr9dj5e12PX++baVNJqX7O/m4LEfvGEqTiheBV8licwPTamVEHuY?=
	=?us-ascii?Q?dtj5H7EV3Nrfw+Td3HwI9RztufExCvb/Q5mD9VSsfJa8+o5Ti+65xgPE8cDE?=
	=?us-ascii?Q?LDhWWsJVIldPf2ZvFDhRpLzOadVaJ28PZ5dCTgmuwVIBucMW52fzIrSn0nAe?=
	=?us-ascii?Q?L6dWQS9fNfnjkz5+uXbrhwakPhlJzODyoxBJc55ow/1QgKqcdae8Cp6G5z2A?=
	=?us-ascii?Q?e2g3p0xWEBd0L0XhlwofzR8hvbAWDqTWw45B9IZ13iLiJ5Tjm49FAIfZjW91?=
	=?us-ascii?Q?UL4KwKU5SwyLtrcr6YN2yfWj+81ixRDyxur/scvAyczLlFktLocj86NsYoEn?=
	=?us-ascii?Q?VaF5VGB72dTW/zDlYCpss/Nw/95KfCH2JYbrN8MUpgO1uUEB+xBJikan4KgM?=
	=?us-ascii?Q?xVSW5OQ=3D=3D?=
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1878;
	6:GnuRnnW0lhbfGrzW0N4kjQJtYrAPpk0cm38bbrTIABJ3kVemlXX+JjQdqaFgl5A2OmhxjNXOtCZXOPEsxU3gryQ5XVOc45BobmCJcn5KgFkefcqI5OSb0aIy9nJRJhSv+PzQ9X0UKskmGIvqsEQ9ng5IRze7zgr1b+nRb2Ml7diPl0WlqDaD8mWJoH5erpFujclbKE7sigGwoD5ZMN4n/fNjJTpwau522HO8Q2y51lRBA31wcZsZ40VaNpnlXHCgViOhvVz1E9WmR0biaaLTn1yiuzMc5a0LONbOdVwWlquCg2ptUlN1KCUFIyd2QvWFHwtniezJ+bsvX7WixW84nA==;
	5:xBAKA39z26NRs/NqIdFGZ+x0oiHt5Vh7ueLpgPjAxEIrWI652/c1dLJEdBNCC3irm3cSJ18LumQb0e8m6D22V6yy2GsTv8TYgQSZweL/nTX/CEk8SzRPkVMRmmkbgDxg4FeORtv0yG3Yajrq8h8/rQ==;
	24:WfWx32e0ERmEiR9HF+k+g/E+qAHPvy+YVQ8Uo7bVIVl0Yv+3OOqeeZmv1c05hVd3gLlLlfckvZnbwdfsHZUe7RKDzkKucBS/XtQrnn0zsy0=
SpamDiagnosticOutput: 1:99
SpamDiagnosticMetadata: NSPM
X-Microsoft-Exchange-Diagnostics: 1; DB6PR0701MB1878;
	7:g9H3TyItFii870UCwRdtMIqTCnr2Ab+mLoyYlRN+VBeLVphnpOA6HPgEtlzVsokBo09lBGjiEqd7KJxrlwyCo4Mqt3EIFkhKHliTyCLcUqaOju2QCC+Us3I4TaP2v3rGopZcAOr3cXVYGXpdH1I4V4GTPPWFLwoZG4SPTT+yeoSf6AC45G5K/nzBsSPrDOyClLP9QuysSD6lBuZ3zw5Q/q0ck1KdKJCRiqYaLD5s1kVIhiIdT7q7R2tngNwDB7ndxYQvbJNCwg/4C0g9K+36hLYZONcnDl1qDllLfeGMhciWDJ5CLpVaE2GChLIFxli+GH87FNkrGyLZDxTeJgTJ5mh8CybsuyX10DQhhraaekc=
X-OriginatorOrg: net2edge.com
X-MS-Exchange-CrossTenant-OriginalArrivalTime: 10 Nov 2016 13:10:30.8944 (UTC)
X-MS-Exchange-CrossTenant-FromEntityHeader: Hosted
X-MS-Exchange-Transport-CrossTenantHeadersStamped: DB6PR0701MB1878
Subject: [meta-raspberrypi] Linux Kernel In Temporary Source Code Directory Is Not a git repository"
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Thomas.Thorne@Net2Edge.com
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 10 Nov 2016 13:26:29 -0000
X-Groupsio-MsgNum: 32940
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="lpSidwRV5GGS8BLBLLwGUqWbrKcpsotbW"

--lpSidwRV5GGS8BLBLLwGUqWbrKcpsotbW
Content-Type: multipart/mixed; boundary="PXERArwQtQdD6ngqDXr29k5g8WnfoeBCI"
From: "Thomas A. F. Thorne MEng AUS MIET" <Thomas.Thorne@Net2Edge.com>
Reply-To: Thomas.Thorne@Net2Edge.com
To: yocto@yoctoproject.org
Message-ID: <89293735-d380-2b81-b328-d9c296c2f22f@Net2Edge.com>
Subject: [meta-raspberrypi] Linux Kernel In Temporary Source Code Directory Is
 Not a git repository"

--PXERArwQtQdD6ngqDXr29k5g8WnfoeBCI
Content-Type: multipart/alternative;
 boundary="------------223518331B2520C3F9C9653A"

--------------223518331B2520C3F9C9653A
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I am having some trouble attempting to create Kernel patches as per the
Yocto Project Development Manual, section 5.10.3. Creating the Patch:
http://www.yoctoproject.org/docs/2.1.1/dev-manual/dev-manual.html#creatin=
g-the-patch

When I get to the stage that says:

> Stage and commit your changes: These Git commands display the modified
> file, stage it, and then commit the file:
> $ git status
I get the response:

$ git status
fatal: Not a git repository (or any of the parent directories): .git


I have a rpi-layer (taken from ) which I have generated binaries for the
RasperyPi 3 from.  I wanted to modify a couple of kernel modules to add
support for a Quectel EC25 module.  I located the relevant module code
and modified it in my temporary source code area:
~/work/rpi-layer/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/=
linux-libc-headers/4.4-r0/linux-4.4/drivers/usb/serial

I guess there is something goofy about the way the raspberrypi layer
works and this is actually a special kernel build which is not held in a
git repository?  If that is the case, why can I a .gitignore file in the
=2E.linux-libc-headers/4.4-r0/linux-4.4 directory?=20

I could create a git patch by hand for the next stage but it would be
much easier to modify a clone of the correct repository.=20

Can anyone spot my obvious mistake?=20

Regards,

--=20
Thomas A. F. Thorne MEng. AUS MIET
*Software Engineer*

*NET2EDGE*

Tel: +44 3450 130 030 <tel:+443450130030>
Email: Thomas.Thorne@Net2Edge.com <mailto:Thomas.Thorne@Net2Edge.com>
Web: http://www.Net2Edge.com/ <http://www.Net2Edge.com>

Net2Edge Limited is a company registered in England & Wales (Company No.
2438435, VAT No. GB 537553821) Passfield Oak, Liphook, Hampshire, GU30
7RL. This email transmission is confidential and intended solely for the
person or organisation to whom it is addressed. If you are not the
intended recipient, you must not copy, distribute or disseminate the
information, or take any action in reliance of it. Any views expressed
in this message are those of the individual sender, except where the
sender specifically states them to be the views of any organisation or
employer. If you have received this message in error, do not open any
attachment but please notify the sender (above) and delete this message
from your system. Please rely on your own virus check. Although all
outbound mail is checked for viruses, no responsibility is taken by the
sender for any damage rising out of any bug or virus infection.


--------------223518331B2520C3F9C9653A
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>

    <meta http-equiv=3D"content-type" content=3D"text/html; charset=3Dutf=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p>I am having some trouble attempting to create Kernel patches as
      per the Yocto Project Development Manual, section 5.10.3. Creating
      the Patch:
<a class=3D"moz-txt-link-freetext" href=3D"http://www.yoctoproject.org/do=
cs/2.1.1/dev-manual/dev-manual.html#creating-the-patch">http://www.yoctop=
roject.org/docs/2.1.1/dev-manual/dev-manual.html#creating-the-patch</a></=
p>
    <p>When I get to the stage that says: <br>
    </p>
    <p>
      <blockquote type=3D"cite">Stage and commit your changes: These Git
        commands display the modified file, stage it, and then commit
        the file: <br>
        $ git status</blockquote>
      I get the response:</p>
    <p>$ git status<br>
      fatal: Not a git repository (or any of the parent directories):
      .git</p>
    <p><br>
    </p>
    I have a rpi-layer (taken from ) which I have generated binaries for
    the RasperyPi 3 from.=C2=A0 I wanted to modify a couple of kernel mod=
ules
    to add support for a Quectel EC25 module.=C2=A0 I located the relevan=
t
    module code and modified it in my temporary source code area:
~/work/rpi-layer/build/tmp/work/cortexa7hf-neon-vfpv4-poky-linux-gnueabi/=
linux-libc-headers/4.4-r0/linux-4.4/drivers/usb/serial<br>
    <br>
    I guess there is something goofy about the way the raspberrypi layer
    works and this is actually a special kernel build which is not held
    in a git repository?=C2=A0 If that is the case, why can I a .gitignor=
e
    file in the ..linux-libc-headers/4.4-r0/linux-4.4 directory?=C2=A0 <b=
r>
    <br>
    I could create a git patch by hand for the next stage but it would
    be much easier to modify a clone of the correct repository.=C2=A0 <br=
>
    <br>
    Can anyone spot my obvious mistake?=C2=A0 <br>
    <br>
    Regards, <br>
    <br>
    <div class=3D"moz-signature">-- <br>
      Thomas A. F. Thorne MEng. AUS MIET<br>
      <b>Software Engineer</b><br>
      <br>
      <b>NET2EDGE</b><br>
      <br>
      Tel: <a href=3D"tel:+443450130030">+44 3450 130 030</a><br>
      Email: <a href=3D"mailto:Thomas.Thorne@Net2Edge.com">Thomas.Thorne@=
Net2Edge.com</a><br>
      Web: <a href=3D"http://www.Net2Edge.com">http://www.Net2Edge.com/</=
a><br>
      <br>
      <p><small>Net2Edge Limited is a company registered in England
          &amp; Wales (Company No. 2438435, VAT No. GB 537553821)
          Passfield Oak, Liphook, Hampshire, GU30 7RL. This email
          transmission is confidential and intended solely for the
          person or organisation to whom it is addressed. If you are not
          the intended recipient, you must not copy, distribute or
          disseminate the information, or take any action in reliance of
          it. Any views expressed in this message are those of the
          individual sender, except where the sender specifically states
          them to be the views of any organisation or employer. If you
          have received this message in error, do not open any
          attachment but please notify the sender (above) and delete
          this message from your system. Please rely on your own virus
          check. Although all outbound mail is checked for viruses, no
          responsibility is taken by the sender for any damage rising
          out of any bug or virus infection.</small></p>
    </div>
  </body>
</html>

--------------223518331B2520C3F9C9653A--

--PXERArwQtQdD6ngqDXr29k5g8WnfoeBCI--

--lpSidwRV5GGS8BLBLLwGUqWbrKcpsotbW
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----
Version: GnuPG v2

iQEcBAEBCAAGBQJYJHHBAAoJEPXLKKkUazGAkJ4H/2kkHEF3BKvKcIVeKMwwvz5U
sKGHG2oE/ay2Jwtjktow+7UKIfXiJOpWG8/sJ5LwMvVtDTgpiy1NWIT4oDMcPe/f
iOmiXjwLWiBhRA6bLipDLXJh3AO3MbkyGBHZBPQCXjSngXFeYAZe/XXiOiD6Z/Zh
ks+iWAArZEIEsMkecgAUdhuzXgLjRjjT/t4YiPeLjX7q66X5j+myx8CKvz8aJ3t3
8KnFsTzC/VLh7y8QnD65XiaaIdeish5Lv4zq9Fe8va9pVWegquKDC7ijMIdUHBmr
mv8SkuQYFTU5qEKM1dtJwK7ZWYBD14JP6N1W8hOTS36nPYdrWpcKBb0Tr0FPvm8=
=WoEj
-----END PGP SIGNATURE-----

--lpSidwRV5GGS8BLBLLwGUqWbrKcpsotbW--
