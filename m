Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 82BA7E00BDA; Wed, 28 Jun 2017 16:58:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FORGED_HOTMAIL_RCVD2,FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [40.92.68.27 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  0.9 FORGED_HOTMAIL_RCVD2 hotmail.com 'From' address,
	but no 'Received:'
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-Greylist: delayed 120878 seconds by postgrey-1.32 at yocto-www;
	Wed, 28 Jun 2017 16:58:41 PDT
Received: from EUR02-HE1-obe.outbound.protection.outlook.com
	(mail-oln040092068027.outbound.protection.outlook.com [40.92.68.27])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 044BCE00BD5
	for <yocto@yoctoproject.org>; Wed, 28 Jun 2017 16:58:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=hotmail.com;
	s=selector1; h=From:Date:Subject:Message-ID:Content-Type:MIME-Version; 
	bh=n/DnraufaSNdEaNz7s5y1prIEjrwhydjz1d0GWmvpq0=;
	b=uDsQRksZ5vOuTjYytOkrcPi1bggAfP1DD0MIHdbpEHnEkpWEx4ulzBoBGKUJl9dUblkt709S0iHh+PbdSWUB2GKS2tDY7EHUli/J/sfw2u7SIHmpnKUZPxk49VhnYWmDpjOzMHM8SnOgTBBBlhd/M1Hc7idh5B4uomIoEFzpIdgmXGbI21G2lTMB7iCxI1+Bf/tKrCjtvWF3kCxjZMo+w3Xw7wuG15PVW7BnM64DLjmodc2nkwzJPw79nEdroQGY+Dv67o+VTRROH23+knnSrmsipsp/YJipx2MscTGEh0ANVpeGEULDScdgQjU0RV352+41pHlz5KZvyuQdYPN2Cw==
Received: from VE1EUR02FT010.eop-EUR02.prod.protection.outlook.com
	(10.152.12.60) by VE1EUR02HT037.eop-EUR02.prod.protection.outlook.com
	(10.152.13.17) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_256_CBC_SHA384_P384) id 15.1.1199.9;
	Tue, 27 Jun 2017 14:08:56 +0000
Received: from LO1P123MB0979.GBRP123.PROD.OUTLOOK.COM (10.152.12.59) by
	VE1EUR02FT010.mail.protection.outlook.com (10.152.12.126) with
	Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id
	15.1.1199.9 via Frontend Transport; Tue, 27 Jun 2017 14:08:56 +0000
Received: from LO1P123MB0979.GBRP123.PROD.OUTLOOK.COM ([10.167.26.25]) by
	LO1P123MB0979.GBRP123.PROD.OUTLOOK.COM ([10.167.26.25]) with mapi id
	15.01.1220.011; Tue, 27 Jun 2017 14:08:56 +0000
From: Chris Trobridge <christrobridge@hotmail.com>
To: Yocto List <yocto@yoctoproject.org>
Thread-Topic: Issue cross-compiling Asterisk 13.16.0
Thread-Index: AQHS70eoBH/GU8jurUujNWHTIHZoZQ==
Date: Tue, 27 Jun 2017 14:08:56 +0000
Message-ID: <LO1P123MB09790A025B9BD4B5CC2097C1DADC0@LO1P123MB0979.GBRP123.PROD.OUTLOOK.COM>
Accept-Language: en-GB, en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
authentication-results: yoctoproject.org; dkim=none (message not signed)
	header.d=none;yoctoproject.org; dmarc=none action=none
	header.from=hotmail.com;
x-incomingtopheadermarker: OriginalChecksum:3C09603F8EF20EF15BCC9717D3637CE87068DC0ABDED9DEA106937FF054144F8;
	UpperCasedChecksum:4EE61AB2D6E2FEB313CFA5D55581B3D7CB45581687145F21505B495BB11CCC25;
	SizeAsReceived:7065; Count:43
x-ms-exchange-messagesentrepresentingtype: 1
x-tmn: [LeiyWPHI6aAv4uwOpONuln7xGdcmxFPvi0/bn/+k3ggInxIGNe6meA==]
x-ms-publictraffictype: Email
x-microsoft-exchange-diagnostics: 1; VE1EUR02HT037;
	7:gBmIDGcAj/FziPOkzvnyfCn3QpOinyJOvR38aTFH+8YC5jAJ/dtJDOuznWLn5rZKYp/QkbBjO4r1DZtkgyDOmv41Mw5EUVR4vyak2CmcctYSkk3Ju0X4OWFToLF3CYyJTZvm2wHlQa0xE8JGZqj5CYw3cjls0yWSrR+aEsSg2NXqB4wE7JupWC4tFJWbuyvFSwxeN8CdZockEHkSVbcjW1c5ouiISg1S0UWRAfS2++gJ80VP80EfKW5Pjytd/mxsf8aeIsoyD8ambt01l0m2rcFz5UJrVIeJoataJiVMQCDtWJQeAyHjx5B0XxpYwZu44P3nypaYsRY2mVK3gm1gaWGfYqLGr6dPsq0hjUoQ8tA7+8NDdjy6u5cMdK+lfWMl6SfGEnz/HZwjzbN1MhBpcYvUHLU3+ItCF1+5yfokOJQe43wtLPgZT65a3GlC0QVd5ujuwBRheO2qGsLGLl4yLMPB6S5lDF40JF68LZ/eis7bucIxAwGdvsOKG2Fy9JREhgVZ8g+aP3rvAdOCnajqDRyzw6xE+xdFme+DJ3UMS1KCYBV3Pm1IKDUJpnZU2RWUOk4JCWA8v6Let4LJET56bLmiAWQsLSV1tnJ/lZ55WlRJOR3L6qeb1Xo5oyJMrH3BdZkXr3v5syAgE9nFcu5R7YItHQ8FcEGLjbMp8Ph2a3+2Qrih9Fw0aQwFilBEb7RM0Nx089rLdQ2ZzA6JFSTXjvtjiwNhLpZXdCQjiWVhYGKe+qDvDSZ8x69IxQZe53n5XuGJS3oZJLHWpF0T5vkjEg==;
	23:AcJjtXliD9zhD09TVAwSFHkVn7HC/9RECc1rnT2hmfzIOwMjk4ZXetdKNtuiFAnt2yvzyGVVEz+8bx3ui9JqYE8Hn0yIiS8pYU0m99p+K0um+goB4Qg8X3Kc0LT32UL1SvMrGyjpDzyMoRZWmSvu1Q==
x-incomingheadercount: 43
x-eopattributedmessage: 0
x-forefront-antispam-report: EFV:NLI; SFV:NSPM; SFS:(7070007)(98901004);
	DIR:OUT; SFP:1901; SCL:1; SRVR:VE1EUR02HT037;
	H:LO1P123MB0979.GBRP123.PROD.OUTLOOK.COM; FPR:; SPF:None;
	LANG:en; 
x-ms-office365-filtering-correlation-id: 96c8ed3d-5371-4474-eb65-08d4bd660cda
x-microsoft-antispam: UriScan:; BCL:0; PCL:0;
	RULEID:(300000500095)(300135000095)(300000501095)(300135300095)(22001)(300000502095)(300135100095)(300000503095)(300135400095)(201702061074)(5061506573)(5061507331)(1603103135)(2017031320274)(2017031324274)(2017031323274)(2017031322274)(1601125374)(1603101448)(1701031045)(300000504095)(300135200095)(300000505095)(300135600095);
	SRVR:VE1EUR02HT037; 
X-MS-TrafficTypeDiagnostic: VE1EUR02HT037:|VE1EUR02HT037:
x-exchange-antispam-report-cfa-test: BCL:0; PCL:0;
	RULEID:(100000700101)(100105000095)(100000701101)(100105300095)(100000702101)(100105100095)(444000031);
	SRVR:VE1EUR02HT037; BCL:0; PCL:0;
	RULEID:(100000800101)(100110000095)(100000801101)(100110300095)(100000802101)(100110100095)(100000803101)(100110400095)(100000804101)(100110200095)(100000805101)(100110500095);
	SRVR:VE1EUR02HT037; 
x-forefront-prvs: 0351D213B3
spamdiagnosticoutput: 1:99
spamdiagnosticmetadata: NSPM
MIME-Version: 1.0
X-MS-Exchange-CrossTenant-originalarrivaltime: 27 Jun 2017 14:08:56.5288 (UTC)
X-MS-Exchange-CrossTenant-fromentityheader: Internet
X-MS-Exchange-CrossTenant-id: 84df9e7f-e9f6-40af-b435-aaaaaaaaaaaa
X-MS-Exchange-Transport-CrossTenantHeadersStamped: VE1EUR02HT037
X-OriginatorOrg: hotmail.com
Subject: Issue cross-compiling Asterisk 13.16.0
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
X-List-Received-Date: Wed, 28 Jun 2017 23:58:45 -0000
Content-Language: en-GB
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable


I am updating the asterisk recipe to 13.16.0 to fix some security advisorie=
s and hit an issue in the configuration script=A0new to me:

config.log:
configure:17599: checking if we have usable eventfd support
configure:17602: error: in `/home/chris/yocto/build/tmp/work/core2-32-poky-=
linux/asterisk/13.16.0-r0/asterisk-13.16.0':
configure:17604: error: cannot run test program while cross compiling

configure:
{ $as_echo "$as_me:${as_lineno-$LINENO}: checking if we have usable eventfd=
 support" >&5
$as_echo_n "checking if we have usable eventfd support... " >&6; }
if test "$cross_compiling" =3D yes; then :
=A0 { { $as_echo "$as_me:${as_lineno-$LINENO}: error: in \`$ac_pwd':" >&5
$as_echo "$as_me: error: in \`$ac_pwd':" >&2;}
as_fn_error $? "cannot run test program while cross compiling
See \`config.log' for more details" "$LINENO" 5; }

configure.ac:
AC_MSG_CHECKING([if we have usable eventfd support])
AC_RUN_IFELSE(
=A0 [AC_LANG_PROGRAM([#include <sys/eventfd.h>],
=A0 =A0 =A0 [return eventfd(0, EFD_NONBLOCK | EFD_SEMAPHORE) =3D=3D -1;])],
=A0 AC_MSG_RESULT(yes)
=A0 AC_DEFINE([HAVE_EVENTFD], 1, [Define to 1 if your system supports event=
fd and the EFD_NONBLOCK and EFD_SEMAPHORE flags.]),
=A0 AC_MSG_RESULT(no)
)

I can=A0see how this follows through but it's not clear how to fix it. =A0T=
hus far I think to avoid the test I need to provide a suitable cached value=
 in a site file.   A bit of searching found "CACHED_CONFIGUREVARS", which a=
ppears to do this, but what would the variable name be?

Is this a test I can bypass in this way?

Thanks,
Chris

