Return-Path: <Maxin.John@enea.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0C51DE00744; Wed,  9 Jul 2014 06:40:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-3.enea.com (sestofw01.enea.se [192.36.1.252])
	by yocto-www.yoctoproject.org (Postfix) with SMTP id BC214E00547
	for <yocto@yoctoproject.org>; Wed,  9 Jul 2014 06:40:38 -0700 (PDT)
Received: from sestofb10.enea.se (172.21.3.145) by smtp.enea.com
	(172.21.1.208) with Microsoft SMTP Server id 14.3.158.1; Wed, 9 Jul 2014
	15:40:32 +0200
Received: by sestofb10.enea.se (Postfix, from userid 4454)	id C4CBD288F30;
	Wed,  9 Jul 2014 15:40:32 +0200 (CEST)
Date: Wed, 9 Jul 2014 15:40:32 +0200
From: "Maxin B. John" <maxin.john@enea.com>
To: atulkumar singh <atul.singh008@gmail.com>
Message-ID: <20140709134032.GA60904@sestofb10.enea.se>
References: <CAH21_vFKzJAR8GRArhZoKfOQzSpHkogfX+d+j_MML9v4AYD1+A@mail.gmail.com>
	<20140707195511.GA50424@sestofb10.enea.se>
	<CAH21_vGLnGXFs2fkVO8D2LwUPJ5k0iJtCsSKsPujWtsijXnqkg@mail.gmail.com>
	<CAGNsrLAbo8arFWHoCi0faPobYL=upmoTHQsNHihrzQgSiY9tjw@mail.gmail.com>
	<CAH21_vEj7GAfx2XECrhg_fu-2rtEveYdThK1Ub6p5c7qCxJB_g@mail.gmail.com>
	<20140708142217.GA22778@sestofb10.enea.se>
	<CAH21_vF80rJ7Tp9Z0vxOG9+epgZVBy1RfcD+2V6g1K1OT3_w=A@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAH21_vF80rJ7Tp9Z0vxOG9+epgZVBy1RfcD+2V6g1K1OT3_w=A@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Received-SPF: None (SESTOEX08.enea.se: maxin.john@enea.com does not
	designate permitted sender hosts)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Aarch64 support
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
X-List-Received-Date: Wed, 09 Jul 2014 13:40:50 -0000
Content-Type: text/plain; charset="utf-8"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Atul,

On Wed, Jul 09, 2014 at 06:16:31PM +0530, atulkumar singh wrote:
> Hi Maxin,
>=20
> I have added three folder =E2=80=9Cmeta-aarch64=E2=80=9D, =E2=80=9Cmeta-l=
inaro=E2=80=9D and
> =E2=80=9Cmeta-linaro-toolchain=E2=80=9D under my poky directory.
> I also have updated my bblayer.conf with:-
> BBLAYERS ?=3D " \
>   /home/atulk/yocto/poky-master/meta \
> /home/atulk/yocto/poky-master/meta-yocto \
>   /home/atulk/yocto/poky-master/meta-yocto-bsp \
>   /home/atulk/yocto/poky-master/meta-aarch64 \
> /home/atulk/yocto/poky-master/meta-linaro \
>   /home/atulk/yocto/poky-master/meta-linaro-toolchain \
>   "
> And local.conf MACHINE ??=3D "genericarmv8"
> But while building bitbake with meta-toolchain for aarch64 support, I am
> getting error as =E2=80=9CERROR: Layer 'linaro' depends on layer 'network=
ing-layer',
> but this layer is not enabled in your configuration=E2=80=9D.
This means, you need meta-openembedded to build it. Add these in your=20
bblayer.conf:

meta-openembedded/meta-networking
meta-openembedded/meta-oe

> Do you have any comments about building the same.
> Also please note that I don=E2=80=99t need any external toolchain support=
 as I wish to
> build my own toolchain.
>=20
> Thanks and Regards,
> ATUL KUMAR SINGH
Best Regards,
Maxin
>=20
> On 8 Jul 2014 19:52, "Maxin B. John" <maxin.john@enea.com> wrote:
<snip>=20

