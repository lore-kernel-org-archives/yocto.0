Return-Path: <ola.x.nilsson@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A6A35E00D27; Mon, 20 Nov 2017 03:44:19 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [195.60.68.11 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 573 seconds by postgrey-1.32 at yocto-www;
	Mon, 20 Nov 2017 03:44:18 PST
Received: from bastet.se.axis.com (bastet.se.axis.com [195.60.68.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 64D44E00D00
	for <yocto@yoctoproject.org>; Mon, 20 Nov 2017 03:44:18 -0800 (PST)
Received: from localhost (localhost [127.0.0.1])
	by bastet.se.axis.com (Postfix) with ESMTP id 1B8F218111;
	Mon, 20 Nov 2017 12:34:45 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at bastet.se.axis.com
Received: from bastet.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bastet.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id QkoWh6NXUQ_S; Mon, 20 Nov 2017 12:34:44 +0100 (CET)
Received: from boulder03.se.axis.com (boulder03.se.axis.com [10.0.8.17])
	by bastet.se.axis.com (Postfix) with ESMTPS id 5415D18301;
	Mon, 20 Nov 2017 12:34:44 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 1E5B11E068;
	Mon, 20 Nov 2017 12:34:44 +0100 (CET)
Received: from boulder03.se.axis.com (unknown [127.0.0.1])
	by IMSVA (Postfix) with ESMTP id 123201E076;
	Mon, 20 Nov 2017 12:34:44 +0100 (CET)
Received: from seth.se.axis.com (unknown [10.0.2.172])
	by boulder03.se.axis.com (Postfix) with ESMTP;
	Mon, 20 Nov 2017 12:34:44 +0100 (CET)
Received: from XBOX03.axis.com (xbox03.axis.com [10.0.5.17])
	by seth.se.axis.com (Postfix) with ESMTP id 068D71968;
	Mon, 20 Nov 2017 12:34:44 +0100 (CET)
Received: from XBOX04.axis.com (10.0.5.18) by XBOX03.axis.com (10.0.5.17) with
	Microsoft SMTP Server (TLS) id 15.0.1263.5;
	Mon, 20 Nov 2017 12:34:43 +0100
Received: from XBOX04.axis.com ([fe80::210a:724b:68cb:a917]) by
	XBOX04.axis.com ([fe80::210a:724b:68cb:a917%22]) with mapi id
	15.00.1263.000; Mon, 20 Nov 2017 12:34:43 +0100
From: Ola x Nilsson <ola.x.nilsson@axis.com>
To: Matt Schepers <mschepers@telspandata.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Trying to filter out 2 strings from EXTRA_OECONF, why
	doesn't this work?
Thread-Index: AQHTYfNHwWwGXBpHike8VxkJfsAwNw==
Date: Mon, 20 Nov 2017 11:34:43 +0000
Message-ID: <1511177683478.69487@axis.com>
References: <CY4PR04MB11772AED5F3BDE6D4259158AB02E0@CY4PR04MB1177.namprd04.prod.outlook.com>,
	<1a2f7573-f74b-b2f0-3efc-0223f17e4f11@linux.intel.com>,
	<CY4PR04MB11771D245B90CAEE11F2A508B02F0@CY4PR04MB1177.namprd04.prod.outlook.com>
In-Reply-To: <CY4PR04MB11771D245B90CAEE11F2A508B02F0@CY4PR04MB1177.namprd04.prod.outlook.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [10.0.5.60]
MIME-Version: 1.0
X-TM-AS-GCONF: 00
X-Mailman-Approved-At: Mon, 20 Nov 2017 10:30:36 -0800
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
X-List-Received-Date: Mon, 20 Nov 2017 11:44:19 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

This is not a typical use of variables in bitbake.  I'm not sure whether it=
 is defined behavior or not, but I doubt you'll find many such examples in =
the yocto layers.=0A=
=0A=
You can write=0A=
=0A=
EXTRA_OECONF_remove =3D "--with-term=3Drxvt --with-name=3Drxvt"=0A=
=0A=
in your bbappend file.  =0A=
=0A=
The problem with this style is that you can never add these options again u=
sing _append or any of the +=3D operators.=0A=
=0A=
=0A=
-- =0A=
Ola Nilsson=0A=
________________________________________=0A=
From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on be=
half of Matt Schepers <mschepers@telspandata.com>=0A=
Sent: Friday, November 17, 2017 18:07=0A=
To: Alexander Kanavin; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Trying to filter out 2 strings from EXTRA_OECONF, why =
doesn't this work?=0A=
=0A=
I ended up completely overriding EXTRA_OECONF in my .bbappend with the conf=
igure flags that I wanted.=0A=
=0A=
I guess I don't understand the order of evaluation in yocto's .bbappend and=
 .bb files. Based on the error I got, problem with double use of  :=3D oper=
ator, it seems that statements in .bbappend files are not evaluated in orde=
r.=0A=
=0A=
=0A=
________________________________________=0A=
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>=0A=
Sent: Friday, November 17, 2017 12:03 AM=0A=
To: Matt Schepers; yocto@yoctoproject.org=0A=
Subject: Re: [yocto] Trying to filter out 2 strings from EXTRA_OECONF, why =
doesn't this work?=0A=
=0A=
On 11/17/2017 12:37 AM, Matt Schepers wrote:=0A=
>      What do I have to do to filter out BOTH configure flags. I realize I=
 can just write a new recipe, but I don't think that's the "correct" answer=
.=0A=
=0A=
The best way to fix this is to modify the original recipe so that all=0A=
three options become PACKAGECONFIG-configurable, and submit the patch to=0A=
whoever maintains the recipe.=0A=
=0A=
Alex=0A=
--=0A=
_______________________________________________=0A=
yocto mailing list=0A=
yocto@yoctoproject.org=0A=
https://lists.yoctoproject.org/listinfo/yocto=0A=

