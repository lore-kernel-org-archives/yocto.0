Return-Path: <Paul.Ourada@Covidien.com>
Received: from mx01no.tycohealthcare.com (mx01no.tycohealthcare.com
	[216.75.208.72])
	by mx1.pokylinux.org (Postfix) with ESMTP id 82A5F4C803E4
	for <yocto@yoctoproject.org>; Thu, 28 Jul 2011 18:17:02 -0500 (CDT)
X-IronPort-AV: E=Sophos;i="4.67,285,1309752000"; d="scan'208";a="280450613"
Received: from unknown (HELO tamans-bh02.thcg.net) ([10.80.3.108])
	by mx01no.tycohealthcare.com with ESMTP; 28 Jul 2011 19:17:01 -0400
Received: from TAMANS-HT100V.thcg.net ([10.80.9.28]) by tamans-bh02.thcg.net
	with Microsoft SMTPSVC(6.0.3790.4675); 
	Thu, 28 Jul 2011 19:17:01 -0400
Received: from TAMANS-HT101V.thcg.net (10.80.9.29) by TAMANS-HT100V.thcg.net
	(10.80.9.28) with Microsoft SMTP Server (TLS) id 14.1.289.1;
	Thu, 28 Jul 2011 19:17:01 -0400
Received: from TAMANS-MB100V.thcg.net ([169.254.8.245]) by
	TAMANS-HT101V.thcg.net ([10.80.9.29]) with mapi id 14.01.0289.001;
	Thu, 28 Jul 2011 19:16:41 -0400
From: "Ourada, Paul" <Paul.Ourada@Covidien.com>
To: Darren Hart <dvhart@linux.intel.com>
Thread-Topic: [yocto] Trying to create OpenDDS recipe
Thread-Index: AQHMTXAYaZrFAEGOzkiwG41Q63+UdJUCS9eA
Date: Thu, 28 Jul 2011 23:16:41 +0000
Message-ID: <4D9E0AFD9C2FCC428A8EAADA898F5B2D012F90@TAMANS-MB100V.thcg.net>
References: <1311052872-10569-1-git-send-email-galak@kernel.crashing.org><1311052872-10569-2-git-send-email-galak@kernel.crashing.org><CAMKF1sq4ho3-P6L0PfDVxpAscccS561LLRUNc64okvsU9R=f9Q@mail.gmail.com><4537825C-7D8E-4260-88D2-C5F851FF827A@kernel.crashing.org>
	<E7D51FCF-F5DC-448D-8354-410E0217D10F@kernel.crashing.org>
	<2A069A8019B2DF43BD330EE490B1EF527F2A16@TAMANS-BE04.thcg.net>
	<4E31D93E.2000606@linux.intel.com>
In-Reply-To: <4E31D93E.2000606@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.80.12.31]
MIME-Version: 1.0
X-OriginalArrivalTime: 28 Jul 2011 23:17:01.0844 (UTC)
	FILETIME=[74D71D40:01CC4D7C]
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Trying to create OpenDDS recipe
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 28 Jul 2011 23:17:02 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Hi Darren -

Thanks for getting back to me. I have been able to get a lot further with t=
he recipe. It turns out that the problem is in the makefiles for OpenDDS. I=
'll detail further below.

Paul E. Ourada
Sr. Principal Software Engineer
Covidien, Energy-based Devices
5920 Longbow Drive
Boulder, CO 80301
paul.ourada@covidien.com
www.covidien.com
Main: 303-530-2300
Ofc: 303-581-6940
Fax: 303-581-6741


> Hi Paul,

On 07/19/2011 07:41 AM, Ourada, Paul wrote:
>> I hope this is the correct place to post this. If not, please let me
>> know.

> This is the right place. In the future please don't reply to an existing
> post as your message then gets threaded with the one you replied to
> (likely why you didn't receive a response so far - that I see anyway).

I guess I thought that changing the subject would have fixed that. Guess th=
e=20
mail list s/w is smarter than that. :)

>>=20
>> I'm trying to create a recipe for OpenDDS. The recipe works so far as
>> fetching, unpacking, and configuration. Or it seems to. :) Part of the
>> configuration piece is that it also pulls down ACE+TAO real-time CORBA.
>> This part works fine as well.
>>=20
>> I set S as follows to match the unpacking directories enforced by the
>> tar file:
>>=20
>> S =3D ${WORKINGDIR}/DDS
>>=20
>> The package comes with a configuration script pre-built, and it expects
>> to be told where glibc is. So, I write do_configure as follows:
>>=20
>> EXTRA_OECONF =3D "-glibc=3D${STAGING_DIR}/${MACHINE}/usr"
>>=20
>> do_configure() {
>>     ${S}/configure ${EXTRA_OECONF}
>> }
>>=20
>> The problem that I run into is during compilation. I write the following
>> for do_compile()
>>=20
>> do_compile() {
>>     oenote ${STAGING_DIR}
>>     cd ${S} && make
>> }

> Is there a reason you are overriding configure and compile? These appear
> to be autoconf projects, which should just work for recipes using
> autotools.bbclass.

I had tried that initially. The configuration file is already supplied, so =
running autotools to create the configure script is not necessary, but runn=
ing ./configure is. Is there a better way to do that?

	:
	:
<< most of the compiler command line gobblety-gook snipped>>

>> -DTAO_IDL_PREPROCESSOR=3D\"i586-poky-linux-g++
>> -march=3Di586 --sysroot=3D/opt/yocto/poky-5.0.1-build/tmp/sysroots/qemux=
86\"


>> The thing that is puzzling me is that --sysroot seems to be pointing in
>> the general direction of ${STAGING_DIR} and so the include directive,
>> #include <features.h>> should be good. I have checked, and features.h is
>> in the /usr/include subdirectory there.

> I see unistd.h missing, not features.h.

You're right, it was complaining about unistd.h, but it turns out that the =
real culprit was the TAO_IDL_PREPROCESSOR macro above. When I compared it t=
o what was being emitted in the Ubuntu compile, I saw that the long, nasty,=
 compound, double-quoted thing should have just been "i586-poky-linux-g++."=
 TAO_ID_PREPROCESSOR was being assigned the value of ${CXX}.=20

It appears that instead of pre-pending the ${CPPFLAGS} variable, yocto/poky=
 recipes were appending the cross-compile build variables to ${CXX}. I patc=
hed the OpenDDS makefile(s) to look for the first word in the ${CXX} macro,=
 and substituted that in the assignment of TAO_IDL_PREPROCESSOR. Dunno if t=
hat's the "right" way to do it, or if there's a bug in ${CXX} assignment?

Anyway, I think that I'm getting there w/the recipe. I'm sure that there ar=
e some things I'm doing wrong. For instance, I'm no longer cd'ing to ${S}, =
as OE already takes me there. I'm also using oe_runmake in do_compile().

I expect that I'll be running some version of "make install" at some point.=
=20

I'm sure I'll have more questions as I go along.

Thanks for helping an OE/Yocto N00b!

Paul


