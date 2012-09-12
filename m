Return-Path: <B29882@freescale.com>
Received: from va3outboundpool.messaging.microsoft.com
	(va3ehsobe004.messaging.microsoft.com [216.32.180.14])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C500CE002AC
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 09:00:55 -0700 (PDT)
Received: from mail79-va3-R.bigfish.com (10.7.14.240) by
	VA3EHSOBE008.bigfish.com (10.7.40.28) with Microsoft SMTP Server id
	14.1.225.23; Wed, 12 Sep 2012 16:00:55 +0000
Received: from mail79-va3 (localhost [127.0.0.1])	by mail79-va3-R.bigfish.com
	(Postfix) with ESMTP id 34506A00F1;
	Wed, 12 Sep 2012 16:00:55 +0000 (UTC)
X-Forefront-Antispam-Report: CIP:70.37.183.190; KIP:(null); UIP:(null); IPV:NLI;
	H:mail.freescale.net; RD:none; EFVD:NLI
X-SpamScore: -2
X-BigFish: VS-2(zz98dI9371I1432Izz1202h1d1ah1d2ahzz8275bh8275dhz2dh2a8h668h839h8e2h8e3hd25hf0ah107ah10d2h1288h12a5h12a9h12bdhbe9i1155h)
Received: from mail79-va3 (localhost.localdomain [127.0.0.1]) by mail79-va3
	(MessageSwitch) id 1347465653546176_16252;
	Wed, 12 Sep 2012 16:00:53 +0000 (UTC)
Received: from VA3EHSMHS023.bigfish.com (unknown [10.7.14.246])	by
	mail79-va3.bigfish.com (Postfix) with ESMTP id 823511A0044;
	Wed, 12 Sep 2012 16:00:53 +0000 (UTC)
Received: from mail.freescale.net (70.37.183.190) by VA3EHSMHS023.bigfish.com
	(10.7.99.33) with Microsoft SMTP Server (TLS) id 14.1.225.23;
	Wed, 12 Sep 2012 16:00:50 +0000
Received: from 039-SN1MPN1-001.039d.mgd.msft.net ([169.254.1.124]) by
	039-SN1MMR1-002.039d.mgd.msft.net ([10.84.1.15]) with mapi id
	14.02.0309.003; Wed, 12 Sep 2012 11:00:49 -0500
From: McClintock Matthew-B29882 <B29882@freescale.com>
To: Khem Raj <raj.khem@gmail.com>
Thread-Topic: [yocto] [meta-fsl-ppc 13/16] Update recipes to use release
	tags instead of SHA
Thread-Index: AQHNkLLWlCoWaFiqw0ivvLiSNfnXTJeGpg2AgACL0oA=
Date: Wed, 12 Sep 2012 16:00:49 +0000
Message-ID: <70CC66F5C30A414DADDA6973E4CA391A674A12@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-13-git-send-email-b19537@freescale.com>
	<CAMKF1somnSTNqjmLQMgSKEaijtWonn=0M5RR2wyuTcXa+wd+LQ@mail.gmail.com>
In-Reply-To: <CAMKF1somnSTNqjmLQMgSKEaijtWonn=0M5RR2wyuTcXa+wd+LQ@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [70.112.201.132]
MIME-Version: 1.0
X-OriginatorOrg: freescale.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc 13/16] Update recipes to use release tags instead of SHA
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: McClintock Matthew-B29882 <B29882@freescale.com>
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 12 Sep 2012 16:00:56 -0000
Content-Language: en-US
Content-Type: text/plain; charset="iso-8859-1"
Content-ID: <D2DDEF5028895B4C8620A4F11C573CCB@mgd.freescale.com>
Content-Transfer-Encoding: quoted-printable

On Wed, Sep 12, 2012 at 2:40 AM, Khem Raj <raj.khem@gmail.com> wrote:
> NAK, it breaks BB_NO_NETWORK useless.

Khem is right, I was about to go back and change all the tags to SHAs...

-M

> On Wed, Sep 12, 2012 at 12:06 AM,  <b19537@freescale.com> wrote:
>> From: Matthew McClintock <msm@freescale.com>
>>
>> Signed-off-by: Matthew McClintock <msm@freescale.com>
>> ---
>>  recipes-tools/hv-cfg/hv-cfg_git.bb |    2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/recipes-tools/hv-cfg/hv-cfg_git.bb b/recipes-tools/hv-cfg/h=
v-cfg_git.bb
>> index e137575..d3786c5 100644
>> --- a/recipes-tools/hv-cfg/hv-cfg_git.bb
>> +++ b/recipes-tools/hv-cfg/hv-cfg_git.bb
>> @@ -18,7 +18,7 @@ PACKAGE_ARCH =3D "${MACHINE_ARCH}"
>>
>>  inherit deploy
>>
>> -SRCREV =3D "102ab848d94f3c04f364ed273d0e00b21b0266f4"
>> +SRCREV =3D "v1.2"
>>  SRC_URI =3D "git://git.freescale.com/ppc/sdk/hv-cfg.git"
>>
>>  S =3D "${WORKDIR}/git"
>> --
>> 1.7.9.5
>>
>>
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto=


