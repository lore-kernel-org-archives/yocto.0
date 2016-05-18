Return-Path: <herve.jourdain@neuf.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5F8CE009BF; Wed, 18 May 2016 10:25:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,MIME_QP_LONG_LINE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [93.17.128.1 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 MIME_QP_LONG_LINE RAW: Quoted-printable line longer than 76 chars
Received: from smtp26.services.sfr.fr (smtp26.services.sfr.fr [93.17.128.1])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A336BE00888
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 10:25:39 -0700 (PDT)
Received: from [192.168.1.105] (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])
	by msfrf2618.sfr.fr (SMTP Server) with ESMTP id 4AAD41C007C0C;
	Wed, 18 May 2016 19:25:39 +0200 (CEST)
Received: from [192.168.1.105] (111-250-207-159.dynamic.hinet.net
	[111.250.207.159])	(using TLSv1
	with cipher ECDHE-RSA-AES256-SHA (256/256 bits))	(No client certificate
	requested)	(Authenticated sender: herve.jourdain@neuf.fr)
	by msfrf2618.sfr.fr (SMTP Server) with ESMTPSA;
	Wed, 18 May 2016 19:25:38 +0200 (CEST)
Authentication-Results: sfr.fr; auth=pass (PLAIN)
	smtp.auth=herve.jourdain@neuf.fr
References: <1463574082-126198-1-git-send-email-herve.jourdain@neuf.fr>
	<1463574082-126198-3-git-send-email-herve.jourdain@neuf.fr>
	<8CECD805-B6E5-4AED-93F4-CC026062A309@gmail.com>
Mime-Version: 1.0 (1.0)
In-Reply-To: <8CECD805-B6E5-4AED-93F4-CC026062A309@gmail.com>
Message-Id: <566CADDD-A0E3-4827-9740-D45016E1D0C4@neuf.fr>
X-Mailer: iPad Mail (13D15)
From: Herve Jourdain <herve.jourdain@neuf.fr>
Date: Thu, 19 May 2016 01:25:34 +0800
To: Khem Raj <raj.khem@gmail.com>
X-sfr-mailing: LEGIT
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH 2/8] Support for vc4 graphics driver: add vc4-kms-v3d to the overlays
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
X-List-Received-Date: Wed, 18 May 2016 17:25:43 -0000
Content-Type: text/plain; charset=gb2312
Content-Transfer-Encoding: quoted-printable

Hi Khem,

Well, it seems to be the way it will be activated in the future as well, thr=
ough a device tree overlay.
The rationale being that people may not want/need the VC4 driver, because th=
ey prefer to use userland or other reasons, and that only the persons who wa=
nt to activate it will load the overlay.
One thing to remember is that vc4 has the potential to conflict with other p=
ieces, and it might not be for everybody (the firmware patch helps in that r=
egards, but before it, weston/drm was conflicting with the splash screen for=
 instance on my test setup, creating very disturbing images).

If your question is, will userland disappear one day and vc4 graphics becomi=
ng the only graphics driver, the overlay could be included in the base devic=
e tree itself, in like a few years from now, then I clearly don't have an an=
swer to that...

But I believe the overlay will stick some time around.

Herve

> Le 19 mai 2016 =A8=A4 00:53, Khem Raj <raj.khem@gmail.com> a =A8=A6crit :
>=20
>=20
>> On May 18, 2016, at 5:21 AM, Herve Jourdain <herve.jourdain@neuf.fr> wrot=
e:
>>=20
>> This patch series enables the support for the VC4 graphics driver from Er=
ic Anholt.
>> Add vc4-kms-v3d overlay if 'vc4graphics' is in MACHINE_FEATURES.
>> (This patch has a dependency on the patch that enables the support of .dt=
bo overlay files)
>>=20
>> Signed-off-by: Herve Jourdain <herve.jourdain@neuf.fr>
>> ---
>> recipes-bsp/bootfiles/rpi-config_git.bb | 8 ++++++++
>> 1 file changed, 8 insertions(+)
>>=20
>> diff --git a/recipes-bsp/bootfiles/rpi-config_git.bb b/recipes-bsp/bootfi=
les/rpi-config_git.bb
>> index 4bc8eb7..79e436d 100644
>> --- a/recipes-bsp/bootfiles/rpi-config_git.bb
>> +++ b/recipes-bsp/bootfiles/rpi-config_git.bb
>> @@ -19,6 +19,8 @@ PITFT=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitf=
t", "1", "0", d)}"
>> PITFT22=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft22", "1", "0", d=
)}"
>> PITFT28r=3D"${@bb.utils.contains("MACHINE_FEATURES", "pitft28r", "1", "0"=
, d)}"
>>=20
>> +VC4GRAPHICS=3D"${@bb.utils.contains("MACHINE_FEATURES", "vc4graphics", "=
1", "0", d)}"
>> +
>> inherit deploy
>>=20
>> do_deploy() {
>> @@ -102,6 +104,12 @@ do_deploy() {
>>        echo "# Enable UART" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt
>>        echo "enable_uart=3D1" >>${DEPLOYDIR}/bcm2835-bootfiles/config.txt=

>>    fi
>> +
>> +    # VC4 Graphics support
>> +    if [ "${VC4GRAPHICS}" =3D "1" ]; then
>> +        echo "# Enable VC4 Graphics" >>${DEPLOYDIR}/bcm2835-bootfiles/co=
nfig.txt
>> +        echo "dtoverlay=3Dvc4-kms-v3d,cma-256" >>${DEPLOYDIR}/bcm2835-bo=
otfiles/config.txt
>> +    fi
>=20
>=20
> will this keep appending overtime ?
>=20
>> }
>>=20
>> addtask deploy before do_package after do_install
>> --
>> 2.7.4
>>=20
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>=20

