Return-Path: <David.Nystrom@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id 87814E0161A
	for <yocto@yoctoproject.org>; Mon, 23 Sep 2013 06:11:36 -0700 (PDT)
Received: from [172.16.141.168] (172.16.141.168) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.2.318.1;
	Mon, 23 Sep 2013 15:11:35 +0200
Message-ID: <52403DFF.1060608@enea.com>
Date: Mon, 23 Sep 2013 15:11:27 +0200
From: =?ISO-8859-1?Q?David_Nystr=F6m?= <david.nystrom@enea.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130803 Thunderbird/17.0.8
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <52403C3A.2010605@enea.com>
In-Reply-To: <52403C3A.2010605@enea.com>
X-Originating-IP: [172.16.141.168]
Subject: Re: libpam libprelude issues.
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
X-List-Received-Date: Mon, 23 Sep 2013 13:11:39 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: quoted-printable

On 09/23/2013 03:03 PM, David Nystr=F6m wrote:
> Hi,
>
> I'm on:
>
> Build Configuration:
> BB_VERSION        =3D "1.19.1"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-13.10"
> TARGET_SYS        =3D "x86_64-poky-linux"
> MACHINE           =3D "qemux86-64"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.4+snapshot-20130923"
> TUNE_FEATURES     =3D "m64"
> TARGET_FPU        =3D ""
> meta
> meta-yocto
> meta-yocto-bsp    =3D "master:bf6b0d95db3863a2cfbccb154c0c7ad5b3bbf0b0"
>
> Have had these problems for a while, but noone else seems to notice it.
> See attachment for compiler error and configure mistakenly detecting
> libprelude, its installed on my build machine.
>
> Works fine if I EXTRA_OECONF +=3D "--without-libprelude".
>
> What do you think ?, should I send that patch ?
> I guess the real bug lies somewhere in the autodetection of libprelude
> from my build machine, right ?
>
> Br,
> David

Oh, forgot to mention that I'm on Ubuntu 13.10.
And I meant EXTRA_OECONF +=3D "--disable-prelude"

Br,
David

