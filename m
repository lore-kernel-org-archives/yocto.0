Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6CAC6C48260
	for <webhook@archiver.kernel.org>; Fri, 16 Feb 2024 06:39:08 +0000 (UTC)
Subject: Re: [yocto] Including Python3 modules in generated SDK do not work (python3-node-semver, kirkstone)
To: Ross Burton <ross.burton@arm.com>,yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.229.170)
X-Originating-Platform: Linux Firefox 122
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 15 Feb 2024 22:39:06 -0800
References: <AC6E2E85-B78B-4541-A5F3-BD27EA7A1302@arm.com>
In-Reply-To: <AC6E2E85-B78B-4541-A5F3-BD27EA7A1302@arm.com>
Message-ID: <22275.1708065546283642315@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="yK6dMEgYCaKM5ijWIo31"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 16 Feb 2024 06:39:08 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62508

--yK6dMEgYCaKM5ijWIo31
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Ross,

On Thu, Feb 15, 2024 at 04:04 AM, Ross Burton wrote:

>=20
> On 15 Feb 2024, at 07:27, Altous, Salahaldeen via lists.yoctoproject.org
> <Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>=20
>> Hello,
>>=20
>> I am using one application which is using a python3 module
>> (python3-node-semver), I was trying to provide the application developer
>> with the yocto SDK but I cannot locate this module in the new generate
>> SDK, I have tried to add this manually by adding these lines to machine
>> config like this
>>=20
>> IMAGE_INSTALL:append =3D " python3-node-semver"
>> TOOLCHAIN_HOST_TASK +=3D " python3-node-semver "
>>=20
>> https://layers.openembedded.org/layerindex/recipe/333689/
>>=20
>> but still not working, python3-node-semver is available on the target bu=
t
>> not in the host SDK!! Any idea what this happening?
>=20
> If you want a recipe to be available in the _host_ part of the SDK then
> you need to add nativesdk-python3-node-semver to TOOLCHAIN_HOST_TASK.

thanks for your quick help, I will use nativesdk-python3-node-semver

>=20
> You _should_ have got an error from trying to install a target package
> into the host SDK.

Yes, I have seen some error but was not self explained

do_populate_sdk: Unable to install packages.

....

** opkg_prepare_url_for_install: Couldn't find anything to satisfy 'python3=
-node-semver'.*

Regards,

Salahaldeen

>=20
>=20
> Ross

Hi Ross

--yK6dMEgYCaKM5ijWIo31
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Ross,</p>
<p>On Thu, Feb 15, 2024 at 04:04 AM, Ross Burton wrote:</p>
<blockquote>On 15 Feb 2024, at 07:27, Altous, Salahaldeen via lists.yoctopr=
oject.org &lt;Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org&=
gt; wrote:<br />
<blockquote>Hello,<br /><br />I am using one application which is using a p=
ython3 module (python3-node-semver), I was trying to provide the applicatio=
n developer with the yocto SDK but I cannot locate this module in the new g=
enerate SDK, I have tried to add this manually by adding these lines to mac=
hine config like this<br /><br />IMAGE_INSTALL:append =3D " python3-node-se=
mver"<br />TOOLCHAIN_HOST_TASK +=3D " python3-node-semver "<br /><br /><a h=
ref=3D"https://layers.openembedded.org/layerindex/recipe/333689/" target=3D=
"_blank" rel=3D"noopener">https://layers.openembedded.org/layerindex/recipe=
/333689/</a><br /><br />but still not working, python3-node-semver is avail=
able on the target but not in the host SDK!! Any idea what this happening?<=
/blockquote>
If you want a recipe to be available in the _host_ part of the SDK then you=
 need to add nativesdk-python3-node-semver to TOOLCHAIN_HOST_TASK.</blockqu=
ote>
<p>thanks for your quick help, I will use nativesdk-python3-node-semver</p>
<blockquote>You _should_ have got an error from trying to install a target =
package into the host SDK.</blockquote>
<p>Yes, I have seen some error but was not self explained</p>
<p><span style=3D"color: #e01e5a; font-family: Monaco, Menlo, Consolas, 'Co=
urier New', monospace; font-size: 12px; font-style: normal; font-variant-li=
gatures: none; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: no=
ne; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spa=
ce: pre-wrap; background-color: rgba(29, 28, 29, 0.04); text-decoration-thi=
ckness: initial; text-decoration-style: initial; text-decoration-color: ini=
tial; display: inline !important; float: none;">do_populate_sdk: Unable to =
install packages.</span></p>
<p><span style=3D"color: #e01e5a; font-family: Monaco, Menlo, Consolas, 'Co=
urier New', monospace; font-size: 12px; font-style: normal; font-variant-li=
gatures: none; font-variant-caps: normal; font-weight: 400; letter-spacing:=
 normal; orphans: 2; text-align: left; text-indent: 0px; text-transform: no=
ne; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; white-spa=
ce: pre-wrap; background-color: rgba(29, 28, 29, 0.04); text-decoration-thi=
ckness: initial; text-decoration-style: initial; text-decoration-color: ini=
tial; display: inline !important; float: none;">....</span></p>
<p><strong style=3D"box-sizing: inherit; color: #e01e5a; font-family: Monac=
o, Menlo, Consolas, 'Courier New', monospace; font-size: 12px; font-style: =
normal; font-variant-ligatures: none; font-variant-caps: normal; letter-spa=
cing: normal; orphans: 2; text-align: left; text-indent: 0px; text-transfor=
m: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width: 0px; whit=
e-space: pre-wrap; text-decoration-thickness: initial; text-decoration-styl=
e: initial; text-decoration-color: initial;" data-stringify-type=3D"bold"> =
* opkg_prepare_url_for_install: Couldn't find anything to satisfy 'python3-=
node-semver'.</strong></p>
<p>Regards,</p>
<p>Salahaldeen</p>
<blockquote><br />Ross</blockquote>
<br />&nbsp;Hi Ross

--yK6dMEgYCaKM5ijWIo31--

