Return-Path: <rohit2.jindal@aricent.com>
Received: from jaguar.aricent.com (jaguar.aricent.com [180.151.2.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 893B0E01560;
	Wed, 12 Jun 2013 06:15:59 -0700 (PDT)
Received: from jaguar.aricent.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 9969C36B44;
	Wed, 12 Jun 2013 18:45:39 +0530 (IST)
Received: from GUREXHT01.ASIAN.AD.ARICENT.COM (gurexht01.asian.ad.aricent.com
	[10.203.171.136])
	by jaguar.aricent.com (Postfix) with ESMTP id 8337C36B36;
	Wed, 12 Jun 2013 18:45:39 +0530 (IST)
Received: from GUREXMB01.asian.ad.aricent.com ([10.203.171.134]) by
	GUREXHT01.ASIAN.AD.ARICENT.COM ([10.203.171.136]) with mapi;
	Wed, 12 Jun 2013 18:45:39 +0530
From: Rohit2 Jindal <rohit2.jindal@aricent.com>
To: "yocto-owner@yoctoproject.org" <yocto-owner@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Wed, 12 Jun 2013 18:45:37 +0530
Thread-Topic: Recompile the recipe everytime
Thread-Index: Ac5mGrOUAC1Mnbu4QtS5fZ1dNgZZvgAV8wLQAD7e0LA=
Message-ID: <17797116383D4341B029FDF34C22BF6A52C4CCB180@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <17797116383D4341B029FDF34C22BF6A52C4CCADB9@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<51B5EA46.8040609@linux.intel.com>
	<17797116383D4341B029FDF34C22BF6A52C4CCADBD@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<51B5EEC6.4040007@linux.intel.com>
	<17797116383D4341B029FDF34C22BF6A52C4CCADC1@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<51B639AC.3050200@linux.intel.com> 
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
acceptlanguage: en-US
MIME-Version: 1.0
Subject: Recompile the recipe everytime
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
X-List-Received-Date: Wed, 12 Jun 2013 13:15:59 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi ,

Please help me out I am stuck in some issue, actually I want my recipe to d=
o compilation everytime on every run of

Bitbake linux-yocto

ie can I remove stamping or sstate-cache that it allows me to run compilati=
on everytime on every run of bitbake linux-yocto.


I tried do_compile[nostamp] =3D"1" but it did not work but same thing worke=
d for do_install[nostamp]=3D"1"

Thanks in advance!

Regards,
Rohit Jindal




=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D
Please refer to http://www.aricent.com/legal/email_disclaimer.html
for important disclosures regarding this electronic communication.
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D

