Return-Path: <maciej.pijanowski@3mdeb.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1858E00AE6; Mon, 14 Oct 2019 06:10:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [178.33.251.175 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
X-Greylist: delayed 1806 seconds by postgrey-1.32 at yocto-www;
	Mon, 14 Oct 2019 06:10:30 PDT
Received: from 3.mo179.mail-out.ovh.net (3.mo179.mail-out.ovh.net
	[178.33.251.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8F2D1E00963
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 06:10:30 -0700 (PDT)
Received: from player774.ha.ovh.net (unknown [10.108.42.168])
	by mo179.mail-out.ovh.net (Postfix) with ESMTP id 84432145704
	for <yocto@yoctoproject.org>; Mon, 14 Oct 2019 14:31:53 +0200 (CEST)
Received: from 3mdeb.com (85-222-117-222.dynamic.chello.pl [85.222.117.222])
	(Authenticated sender: maciej.pijanowski@3mdeb.com)
	by player774.ha.ovh.net (Postfix) with ESMTPSA id DFA83AEEBB32;
	Mon, 14 Oct 2019 12:31:50 +0000 (UTC)
To: Andy Pont <andy.pont@sdcsystems.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <em926f07ef-bb18-4cd8-a0b5-f3fc191114c4@andys-imac.leeshillfarm.local>
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
Openpgp: preference=signencrypt
Autocrypt: addr=maciej.pijanowski@3mdeb.com; keydata=
	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
	0f2bcrTp9w==
Message-ID: <7f04b29d-9ac6-28d2-2db8-33eae0289ccc@3mdeb.com>
Date: Mon, 14 Oct 2019 14:31:47 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
	Thunderbird/60.9.0
MIME-Version: 1.0
In-Reply-To: <em926f07ef-bb18-4cd8-a0b5-f3fc191114c4@andys-imac.leeshillfarm.local>
X-Ovh-Tracer-Id: 7690177839526784681
X-VR-SPAMSTATE: OK
X-VR-SPAMSCORE: -100
X-VR-SPAMCAUSE: gggruggvucftvghtrhhoucdtuddrgedufedrjedugdehgecutefuodetggdotefrodftvfcurfhrohhfihhlvgemucfqggfjpdevjffgvefmvefgnecuuegrihhlohhuthemucehtddtnecusecvtfgvtghiphhivghnthhsucdlqddutddtmd
Subject: Re: Partitioning SD cards
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
X-List-Received-Date: Mon, 14 Oct 2019 13:10:31 -0000
X-Groupsio-MsgNum: 46929
Content-Type: multipart/signed; micalg=pgp-sha256;
	protocol="application/pgp-signature";
	boundary="eM38mhv8rpmDY2oSOKEQZpIiIyJvvxNT5"

--eM38mhv8rpmDY2oSOKEQZpIiIyJvvxNT5
Content-Type: multipart/mixed; boundary="LFnDiiwuIT5pS7XkngI0uO1cLGOeQw9Xp";
 protected-headers="v1"
From: Maciej Pijanowski <maciej.pijanowski@3mdeb.com>
To: Andy Pont <andy.pont@sdcsystems.com>,
 "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <7f04b29d-9ac6-28d2-2db8-33eae0289ccc@3mdeb.com>
Subject: Re: [yocto] Partitioning SD cards
References: <em926f07ef-bb18-4cd8-a0b5-f3fc191114c4@andys-imac.leeshillfarm.local>
In-Reply-To: <em926f07ef-bb18-4cd8-a0b5-f3fc191114c4@andys-imac.leeshillfarm.local>

--LFnDiiwuIT5pS7XkngI0uO1cLGOeQw9Xp
Content-Type: multipart/alternative;
 boundary="------------078A310B43316B6E44CD7EC9"
Content-Language: en-US

--------------078A310B43316B6E44CD7EC9
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable


On 14.10.2019 14:13, Andy Pont wrote:
> Hello,
>
> I am working on a custom platform where U-Boot will be programmed into
> an SPI NOR flash device and the ext4 file systems will be in a
> removable microSD card. =C2=A0The Linux kernel itself will be stored in=
 the
> /boot directory of the root file system.
>
> The customer wants the (16GB) microSD card formatted as 1GB to mount
> at / and the remaining 15GB mounted as /home.
>
> In the recipe for my image I have defined the following to try to
> create a suitable image for writing to the microSD card:
>
> IMAGE_FSTYPES_append =3D " wic"
> IMAGE_ROOTFS_SIZE =3D =E2=80=9C1048576=E2=80=9D
>
> The image file that is being created is bigger than 1GB even though
> the root file system is only a little over 450MB. =C2=A0Looking at the
> contents of what gets written to the microSD card this looks as though
> it is, in part, because it also includes the ~20MB =E2=80=9Cboot=E2=80=9D=
 partition
> containing the boot files.
>
> A couple of questions=E2=80=A6
>
> How do I stop the wic generation process including the FAT formatted
> =E2=80=9Cboot=E2=80=9D partition?
This depends on the wic (.wks) file you are using.
>
> What is the best strategy for partitioning / formatting / mounting the
> second partition as /home? =C2=A0Should it be part of the image build
> process or a one-time task run at first boot?
Use --exclude-path and --rootfs-dir flags in the .wks file.
You can look at my example, where I extract one subdir from rootfs
(/storage in this case) on a separate partition.
https://github.com/3mdeb/meta-rte/blob/master/wic/sunxi-mmc-spl.wks

The rootfs parts should be named somewhere, like in distro config:
https://github.com/3mdeb/meta-rte/blob/master/conf/distro/rte.conf#L50
>
> -Andy.
>
>
>
--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: F1401D2E1CCB19EF
https://3mdeb.com | @3mdeb_com


--------------078A310B43316B6E44CD7EC9
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<html>
  <head>
    <meta http-equiv=3D"Content-Type" content=3D"text/html; charset=3DUTF=
-8">
  </head>
  <body text=3D"#000000" bgcolor=3D"#FFFFFF">
    <p><br>
    </p>
    <div class=3D"moz-cite-prefix">On 14.10.2019 14:13, Andy Pont wrote:<=
br>
    </div>
    <blockquote type=3D"cite"
cite=3D"mid:em926f07ef-bb18-4cd8-a0b5-f3fc191114c4@andys-imac.leeshillfar=
m.local">
      <meta http-equiv=3D"content-type" content=3D"text/html; charset=3DU=
TF-8">
      <style id=3D"css_styles">blockquote.cite { margin-left: 5px; margin=
-right: 0px; padding-left: 10px; padding-right:0px; border-left: 1px soli=
d #cccccc }
blockquote.cite2 {margin-left: 5px; margin-right: 0px; padding-left: 10px=
; padding-right:0px; border-left: 1px solid #cccccc; margin-top: 3px; pad=
ding-top: 0px; }
a img { border: 0px; }
li[style=3D'text-align: center;'], li[style=3D'text-align: right;'] {  li=
st-style-position: inside;}
body { font-family: Verdana; font-size: 12px;   }</style>
      <div>Hello,</div>
      <div><br>
      </div>
      <div>I am working on a custom platform where U-Boot will be
        programmed into an SPI NOR flash device and the ext4 file
        systems will be in a removable microSD card. =C2=A0The Linux kern=
el
        itself will be stored in the /boot directory of the root file
        system.</div>
      <div><br>
      </div>
      <div>The customer wants the (16GB) microSD card formatted as 1GB
        to mount at / and the remaining 15GB mounted as /home.</div>
      <div><br>
      </div>
      <div>In the recipe for my image I have defined the following to
        try to create a suitable image for writing to the microSD card:</=
div>
      <div><br>
      </div>
      <div>IMAGE_FSTYPES_append =3D " wic"</div>
      <div>IMAGE_ROOTFS_SIZE =3D =E2=80=9C1048576=E2=80=9D</div>
      <div><br>
      </div>
      <div>The image file that is being created is bigger than 1GB even
        though the root file system is only a little over 450MB.
        =C2=A0Looking at the contents of what gets written to the microSD=

        card this looks as though it is, in part, because it also
        includes the ~20MB =E2=80=9Cboot=E2=80=9D partition containing th=
e boot files.</div>
      <div><br>
      </div>
      <div>A couple of questions=E2=80=A6</div>
      <div><br>
      </div>
      <div>How do I stop the wic generation process including the FAT
        formatted =E2=80=9Cboot=E2=80=9D partition?</div>
    </blockquote>
    This depends on the wic (.wks) file you are using.<br>
    <blockquote type=3D"cite"
cite=3D"mid:em926f07ef-bb18-4cd8-a0b5-f3fc191114c4@andys-imac.leeshillfar=
m.local">
      <div><br>
      </div>
      <div>What is the best strategy for partitioning / formatting /
        mounting the second partition as /home? =C2=A0Should it be part o=
f
        the image build process or a one-time task run at first boot?<br>=

      </div>
    </blockquote>
    Use --exclude-path and --rootfs-dir flags in the .wks file.<br>
    You can look at my example, where I extract one subdir from rootfs
    (/storage in this case) on a separate partition.<br>
    <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/3mdeb/m=
eta-rte/blob/master/wic/sunxi-mmc-spl.wks">https://github.com/3mdeb/meta-=
rte/blob/master/wic/sunxi-mmc-spl.wks</a><br>
    <br>
    The rootfs parts should be named somewhere, like in distro config:
    <a class=3D"moz-txt-link-freetext" href=3D"https://github.com/3mdeb/m=
eta-rte/blob/master/conf/distro/rte.conf#L50">https://github.com/3mdeb/me=
ta-rte/blob/master/conf/distro/rte.conf#L50</a><br>
    <blockquote type=3D"cite"
cite=3D"mid:em926f07ef-bb18-4cd8-a0b5-f3fc191114c4@andys-imac.leeshillfar=
m.local">
      <div><br>
      </div>
      <div>-Andy.</div>
      <div><br>
      </div>
      <div><br>
      </div>
      <br>
      <fieldset class=3D"mimeAttachmentHeader"></fieldset>
    </blockquote>
    <pre class=3D"moz-signature" cols=3D"72">--=20
Maciej Pijanowski
Embedded Systems Engineer
GPG: F1401D2E1CCB19EF
<a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https://3md=
eb.com</a> | @3mdeb_com</pre>
  </body>
</html>

--------------078A310B43316B6E44CD7EC9--

--LFnDiiwuIT5pS7XkngI0uO1cLGOeQw9Xp--

--eM38mhv8rpmDY2oSOKEQZpIiIyJvvxNT5
Content-Type: application/pgp-signature; name="signature.asc"
Content-Description: OpenPGP digital signature
Content-Disposition: attachment; filename="signature.asc"

-----BEGIN PGP SIGNATURE-----

iQIcBAEBCAAGBQJdpGq1AAoJEPFAHS4cyxnvdo4QAKl+yRd0W91yTjnN5QaDMYXT
AKFEijIXDF4ENRdiP0tjc67Op4+uZ9xU+r6cM+IDKrKgsCIAoDOZjYZbe/RpJj2Y
kV3mOP7Qf3fnNaWfBjxeZA+uvPQz+gHmmBSiVAAAqG13kBgQ61FDHF/9E2O3eLEL
RBHQ81YKOWVQEnjWI6b2vv0sxHPJblc9r1D0++JMWlWHF8NeRUGothfBYb3SlPxY
VRBVnxcoDE4hZSo/6n3hLJJ/1YVcpLQDG09IZcMBxPl/JKGiG94kdSl9oCZVAO7G
Hc6x2Vnz7eGUuTKxmFx3ewa2px3MKVxgI2GGLMnGP+kgEdd7B/gO6o7rOtkfP+iN
jBwp27RKBAbdxeeUJO7owWFll5WYyP85sLdty7eUOXH1JxXyGqD7TB4B52uFpMac
iCqktbNFKnSY48rpeS3CiBujfVzh0h0VW+EKVoEs9wct462tht/3hqdJA9lSXlEB
C7OjD67mn++pvxXe17CwK36amYjDe4iOw4EQMw7VW1PA7jsKtxMoYzE3/Zup8A46
R6Xre59mGT2c7Z/rvPmxT1GCKSaQqJu8RP4XlTGMGqLMpHrFxN2CvxLVopyPl3Aq
9d/Kqo2/ycwRZv+p8n738k8bh0sAxViEDDZcSodarq2E1xn01WhzBbMGeGFZSPZH
u0wvouvy5Q0xRupluikK
=XrGO
-----END PGP SIGNATURE-----

--eM38mhv8rpmDY2oSOKEQZpIiIyJvvxNT5--
