Return-Path: <s.mueller-klieser@phytec.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE8DBE00C54; Fri, 13 Apr 2018 07:28:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [217.6.246.34 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 397 seconds by postgrey-1.32 at yocto-www;
	Fri, 13 Apr 2018 07:28:34 PDT
Received: from root.phytec.de (mail.rapiddevelopmentkit.de [217.6.246.34])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 63912E009BC
	for <yocto@yoctoproject.org>; Fri, 13 Apr 2018 07:28:34 -0700 (PDT)
Received: from idefix.phytec.de (idefix.phytec.de [172.16.0.10])
	by root.phytec.de (Postfix) with ESMTP id 05FB0A0027D;
	Fri, 13 Apr 2018 16:22:14 +0200 (CEST)
Received: from [172.16.26.67] ([172.16.26.67])
	by idefix.phytec.de (IBM Domino Release 9.0.1FP7)
	with ESMTP id 2018041316215532-222746 ;
	Fri, 13 Apr 2018 16:21:55 +0200 
To: Richard Collins <richard.collins@guidedknowledge.com>,
	yocto@yoctoproject.org
References: <CAD-1PJi4SCi_QjuDdcvSy+qFAdKvK8iYi95r+Zk76uzN4GFViQ@mail.gmail.com>
	<37b0eb72-940b-71bb-a3e5-50857e490a2f@linux.intel.com>
	<CAD-1PJj+=U6K=HLfo5YYnBmr0RotyGPct0jRULO6v6qCgrMUag@mail.gmail.com>
	<20180412184546.75r7dmfuy7epgnli@jholzmayr.localdomain>
	<CAD-1PJgoZWihtRyUyz+oJLEDGnK2TmQEU=ygvbPdfQfwoEw2-g@mail.gmail.com>
From: =?UTF-8?Q?Stefan_M=c3=bcller-Klieser?= <s.mueller-klieser@phytec.de>
Organization: PHYTEC Messtechnik GmbH
Message-ID: <cb234096-9517-d76a-36f3-da6a8e0a26f1@phytec.de>
Date: Fri, 13 Apr 2018 16:21:55 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <CAD-1PJgoZWihtRyUyz+oJLEDGnK2TmQEU=ygvbPdfQfwoEw2-g@mail.gmail.com>
X-MIMETrack: Itemize by SMTP Server on Idefix/Phytec(Release 9.0.1FP7|August
	17, 2016) at 13.04.2018 16:21:55,
	Serialize by Router on Idefix/Phytec(Release 9.0.1FP7|August  17,
	2016) at 13.04.2018 16:21:55
X-TNEFEvaluated: 1
Subject: Re: Getting the version of Yocto that is being used.
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
X-List-Received-Date: Fri, 13 Apr 2018 14:28:36 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: quoted-printable

Hello Richard,

some of us are also around on the list.

You should find all documentation on the product page. Specifically, the
git tag of the release is "2.2.1-phy3" which indicates that the release
bundles poky morty 2.2.1. In future we will also have LAYERSERIES=5FCOMPAT
set.

If the documentation leaves some open questions, you can also write us
directly.

Regards, Stefan

On 13.04.2018 09:59, Richard Collins wrote:
> Thanks for the help. :)
>=20
> Yes they are Phytec boards. I have inherited the project from a 3rd party
> and so in the mids of chasing up the support contacts and our account
> details for their site. I'm sure you've all played the "Q) What are the
> support / login details? A) I don't know, ask X, ask Y, ask Z.,
> ask............" development game. ;)
>=20
> On 12 April 2018 at 19:45, Josef Holzmayr <holzmayr@rsi-elektrotechnik.de>
> wrote:
>=20
>> On Thu, Apr 12, 2018 at 01:11:17PM +0100, Richard Collins wrote:
>>> I get the following for DISTRO.
>>>
>>> DISTRO            =3D "yogurt"
>>> DISTRO=5FVERSION    =3D "BSP-Yocto-RK3288-PD17.1.1"
>>>
>>
>> For further reference by anyone who is reading this in the archive: the
>> supplier is Phytec, and the distro layer is here:
>> https://git.phytec.de/meta-yogurt/
>>
>> Greetz
>> --
>> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>> Josef Holzmayr
>> Software Developer Embedded Systems
>>
>> Tel: +49 8444 9204-48
>> Fax: +49 8444 9204-50
>>
>> R-S-I Elektrotechnik GmbH & Co. KG
>> Woelkestrasse 11
>> D-85301 Schweitenkirchen
>> www.rsi-elektrotechnik.de
>> =E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=
=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94=E2=80=94
>> Amtsgericht Ingolstadt =E2=80=93 GmbH: HRB 191328 =E2=80=93 KG: HRA 1703=
93
>> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
>> Ust-IdNr: DE 128592548
>>
>> =5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=
=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F=5F
>> Amtsgericht Ingolstadt - GmbH: HRB 191328 - KG: HRA 170363
>> Gesch=C3=A4ftsf=C3=BChrer: Dr.-Ing. Michael Sorg, Dipl.-Ing. Franz Sorg
>> USt-IdNr.: DE 128592548
>>
>>
>=20
>=20
>=20

