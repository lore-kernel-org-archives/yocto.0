Return-Path: <Valentin.Cobelea@enea.com>
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id C27C9E00C35
	for <yocto@yoctoproject.org>; Fri, 11 Apr 2014 00:10:25 -0700 (PDT)
Received: from localhost.enea.se (192.168.14.171) by smtp.enea.com
	(172.21.1.209) with Microsoft SMTP Server id 14.3.158.1;
	Fri, 11 Apr 2014 09:10:21 +0200
Message-ID: <5347955D.7090501@enea.com>
Date: Fri, 11 Apr 2014 10:10:21 +0300
From: Vali Cobelea <valentin.cobelea@enea.com>
Organization: ENEA
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: =?ISO-8859-1?Q?Jo=E3o_Henrique_Ferreira_de_Freitas?= <joaohf@gmail.com>,
	Yocto list discussion <yocto@yoctoproject.org>
References: <534416F0.10109@enea.com> <5347516B.2020601@gmail.com>
In-Reply-To: <5347516B.2020601@gmail.com>
X-Originating-IP: [192.168.14.171]
Cc: Alexandru Vaduva <Alexandru.Vaduva@enea.com>
Subject: Re: CGL compliance layer initiative
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
X-List-Received-Date: Fri, 11 Apr 2014 07:10:30 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: quoted-printable

Hi,

Thank you for your kind words.

On 04/11/2014 05:20 AM, Jo=E3o Henrique Ferreira de Freitas wrote:
> Hi Vali,
>
> I took a look into meta-cgl and I've builded with all master (lots of=20
> warning) layers described in README file. Good initiative.

The warnings will be addressed in the upcoming changes. The current=20
state is only the first showcase, an alpha version if you want to call=20
it this way.

>
> I noted that in README file you mention about 'meta-openclovis'. I=20
> believed that you got openipmi recipe from meta-openclovis, because
> meta-cgl has a .bbappend to it. Am I right?

Yes you are right.

>
> Indeed meta-openclovis has three recipes that could stay in meta-cgl:=20
> openhpi, openhpi-subagent and openipmi.

All these are mapped based on our investigation towards few CGL=20
compliance requirements.

>
> What about the quality of recipes that meta-cgl will use from others=20
> layers? For instance the patchs/stable code release/features in=20
> net-snmp recipe
> is aligned with CGL requirements? My concern is about the scope and=20
> stability of meta-cgl.

Again, right now we only shown by this layer, in the current state, a=20
direction for what we think could be used in order to start any the CGL=20
compliance for Yocto Project based Linux distros.


Best regards,
Vali

>
> Thanks.
>
> PS:
>
> Build Configuration:
> BB_VERSION        =3D "1.23.0"
> BUILD_SYS         =3D "x86_64-linux"
> NATIVELSBSTRING   =3D "Ubuntu-13.10"
> TARGET_SYS        =3D "i586-poky-linux"
> MACHINE           =3D "qemux86"
> DISTRO            =3D "poky"
> DISTRO_VERSION    =3D "1.6+snapshot-20140411"
> TUNE_FEATURES     =3D "m32 i586"
> TARGET_FPU        =3D ""
> meta              =3D "master:863cc7483f5ee43189537940de8ee5c0964d24cc"
> meta-cgl          =3D "master:63a890e8513ff50279a1ce53e45a0394fd05b2b6"
> meta-qt3          =3D "master:3016129d90b7ac8517a5227d819f10ad417b5b45"
> meta-networking
> meta-filesystems
> meta-oe
> meta-perl         =3D "master:477ccd867cc71f8277f2670b7be34b3b15300052"
> meta-yocto
> meta-yocto-bsp    =3D "master:863cc7483f5ee43189537940de8ee5c0964d24cc"
> meta-virtualization =3D "master:7544bfb6ec7efd283e7e7ff712e91452fdffb534"
> meta-openclovis   =3D "master:68f9a9c4ab01590d63506126660e3316ba668f99"
> meta-selinux      =3D "master:0362287928bc0a58b755488ebd74441c28eeeee2"
> meta-security     =3D "master:7e8c7918d9ff8fc89579502cc136e37deecdfd96"
> meta-openstack    =3D "master:940e7d24c418a9cbb93850c31d00e4f1edeaf764"
>


