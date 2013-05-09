Return-Path: <Brian.Silverman@spirent.com>
Received: from webmail.spirent.com (smtp1.spirent.com [38.111.148.215])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6437E01439
	for <yocto@yoctoproject.org>; Wed,  8 May 2013 18:02:27 -0700 (PDT)
Received: from SPCCOREXCMBX01.AD.SPIRENTCOM.COM ([169.254.1.204]) by
	SPCCOREXCCAS02.AD.SPIRENTCOM.COM ([10.96.66.21]) with mapi id
	14.02.0328.009; Wed, 8 May 2013 18:02:27 -0700
From: "Silverman, Brian" <Brian.Silverman@spirent.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: How to specify that a task always be executed
Thread-Index: Ac5MTyyhQ0z7BwKRTEmRuBcvyZohSw==
Date: Thu, 9 May 2013 01:02:26 +0000
Message-ID: <E91F01D24E9DDB4EBC9395107E044B1C037698@SPCCOREXCMBX01.AD.SPIRENTCOM.COM>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.96.66.253]
x-disclaimer: Yes
MIME-Version: 1.0
Subject: How to specify that a task always be executed
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
X-List-Received-Date: Thu, 09 May 2013 01:02:28 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I could use some help in understanding how to create a task that is always =
executed. I initially tried just setting task[nostamp]=3D"1". However, it a=
ppeared that the sstate cache was preventing bitbake from even considering =
the task's stamp. So I set SSTATETASKS=3D"" in an attempt to completely dis=
able the sstate cache for this recipe. However, the image.do_rootfs task th=
en complains that it can't find the RPM. It looks to me like it is actually=
 one of the sstate tasks that copies the RPM to the proper location. Clearl=
y I'm not going about this the right way. Is there a simple way to ensure t=
he RPM is always rebuilt? Below is a snippet from the recipe I attempted.

# The install task creates a file with some continuously changing informati=
on
# (for example, the time of the build, just for argument's sake)
do_install () {
    install -d ${D}${sysconfdir}
    date >> ${D}${sysconfdir}/${PN}
}

# We want to make sure the latest information is included every time we bui=
ld the
# image that includes this package. So force the install task to always be =
executed.
do_install[nostamp] =3D "1"
SSTATETASKS =3D ""

# We don't need many of the tasks, so disable them
do_fetch[noexec] =3D "1"
do_unpack[noexec] =3D "1"
do_patch[noexec] =3D "1"
do_configure[noexec] =3D "1"
do_compile[noexec] =3D "1"

Thank you,
Brian

E-mail confidentiality.
--------------------------------
This e-mail contains confidential and / or privileged information belonging=
 to Spirent Communications plc, its affiliates and / or subsidiaries. If yo=
u are not the intended recipient, you are hereby notified that any disclosu=
re, copying, distribution and / or the taking of any action based upon reli=
ance on the contents of this transmission is strictly forbidden. If you hav=
e received this message in error please notify the sender by return e-mail =
and delete it from your system.

Spirent Communications plc
Northwood Park, Gatwick Road, Crawley, West Sussex, RH10 9XN, United Kingdo=
m.
Tel No. +44 (0) 1293 767676
Fax No. +44 (0) 1293 767677

Registered in England Number 470893
Registered at Northwood Park, Gatwick Road, Crawley, West Sussex, RH10 9XN,=
 United Kingdom.

Or if within the US,

Spirent Communications,
26750 Agoura Road, Calabasas, CA, 91302, USA.
Tel No. 1-818-676- 2300

