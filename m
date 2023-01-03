Return-Path: <tomasz.zyjewski@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 73018C3DA7D
	for <webhook@archiver.kernel.org>; Tue,  3 Jan 2023 09:32:00 +0000 (UTC)
Subject: Re: DISTRO_FEATURES in custom recipe does not override local.conf setting
To: yocto@lists.yoctoproject.org
From: "tomzy" <tomasz.zyjewski@3mdeb.com>
X-Originating-Location: Warsaw, Mazovia, PL (84.10.27.202)
X-Originating-Platform: Linux Firefox 108
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 03 Jan 2023 01:31:51 -0800
References: <4fe67275-5780-ebb7-cc27-e8b9cca780ca@mistywest.com>
In-Reply-To: <4fe67275-5780-ebb7-cc27-e8b9cca780ca@mistywest.com>
Message-ID: <17259.1672738311035734131@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="w6JbF7GDtezdoVl2kG0c"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 03 Jan 2023 09:32:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/58895

--w6JbF7GDtezdoVl2kG0c
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 29, 2022 at 01:32 AM, Mistyron wrote:

>=20
> On 12/28/22 13:24, Mistyron via lists.yoctoproject.org wrote:
>=20
>> On 2022-12-28 7:55 a.m., Alexander Kanavin wrote:
>>=20
>>> You can't. '_remove' has priority over everything else, and
>>> DISTRO_FEATURES cannot be set from a recipe, only from a global
>>> config.
>>=20
>> Oh okay, that makes sense then!
>> Thank you!
>=20
> Although, as soon as I added
>=20
> DISTRO_FEATURES_append =3D " x11"
>=20
> to local.conf, I'm not able to build anymore but see an error like below
> instead:
>=20
> | checking for GBM... no
> | configure: error: Glamor for Xorg requires gbm >=3D 10.2.0
> | NOTE: The following config.log files may provide further information.
> | NOTE:
> /home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xorg=
/2_1.20.8-r0/build/config.log
>=20
> | ERROR: configure failed
> | WARNING: exit code 1 from a shell command.
> | ERROR: Execution of
> '/home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xor=
g/2_1.20.8-r0/temp/run.do_configure.480136'
>=20
> failed with exit code 1
> ERROR: Task
> (/home/yocto/rzg_vlp_v3.0.0/build/../poky/meta/recipes-graphics/xorg-xser=
ver/xserver-xorg_1.20.8.bb:do_configure)
>=20
> failed with exit code '1'
>=20
> I've Googled around but nbot been able to find a work around.

Hello,

once we run into a similar issue with the xserver xorg v1.20.8 compilation,=
 in
our case, the gbm (libgles) from the BSP provider was in version `r8p0` and=
 not
`10.2.0`, which is required by xserver xorg. To solve this, we added a simp=
le
patch to `configure.ac` of xserver xorg to change dependency from
`LIBGBM=3D"gbm >=3D 10.2.0"` to `LIBGBM=3D"gbm >=3D r8p0"` which allowed us=
 to resolve
the compilation error and built the package. Later we did not see any
significant performance issues, so we went with that solution.

Regards

--
Tomasz =C5=BByjewski
Embedded Systems Engineer
GPG: 5C495EA3EBEECA59
https://3mdeb.com | @3mdeb_com

>=20
>=20
>=20
>>=20
>>> You should edit local.conf, and complain to your BSP provider
>>> for using _remove instead of a direct assignment.
>>>=20
>>> Alex
>>>=20
>>> On Wed, 28 Dec 2022 at 16:51, Mistyron <ron.eggler@mistywest.com> wrote=
:
>>>=20
>>>> Hi,
>>>>=20
>>>> I'm using the provided local.conf from the BSP which contains:
>>>>=20
>>>> DISTRO_FEATURES_remove =3D " x11"
>>>>=20
>>>> but I need to install xrandr in my image which needs x11, i.e. I set
>>>>=20
>>>> DISTRO_FEATURES_append =3D " x11"
>>>> IMAGE_INSTALL_append =3D " xrandr"
>>>>=20
>>>> in my custom recipe. However, upon building, I get the following error=
:
>>>>=20
>>>> ERROR: Nothing RPROVIDES 'xrandr' (but
>>>> /home/yocto/rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-core/images/=
mistysom-image.bb
>>>>=20
>>>>=20
>>>> RDEPENDS on or otherwise requires it)
>>>> xrandr was skipped: missing required distro feature 'x11' (not in
>>>> DISTRO_FEATURES)
>>>> NOTE: Runtime target 'xrandr' is unbuildable, removing...
>>>> Missing or unbuildable dependency chain was: ['xrandr']
>>>> ERROR: Required build target 'mistysom-image' has no buildable
>>>> providers.
>>>> Missing or unbuildable dependency chain was: ['mistysom-image',
>>>> 'xrandr']
>>>>=20
>>>> Can I override the setting in locl.conf from my custom recipe? How?
>>>>=20
>>>> Ron
>>>>=20
>>>>=20
>>>>=20
>>>>=20
>>>>=20
>>>>=20
>>>=20
>>>=20
>>=20
>>=20
>=20
> --
> RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com

--w6JbF7GDtezdoVl2kG0c
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Dec 29, 2022 at 01:32 AM, Mistyron wrote:<br />
<blockquote>On 12/28/22 13:24, Mistyron via lists.yoctoproject.org wrote:<b=
r />
<blockquote>On 2022-12-28 7:55 a.m., Alexander Kanavin wrote:<br />
<blockquote>You can't. '_remove' has priority over everything else, and<br =
/>DISTRO_FEATURES cannot be set from a recipe, only from a global<br />conf=
ig.</blockquote>
Oh okay, that makes sense then!<br />Thank you!</blockquote>
Although, as soon as I added<br /><br />DISTRO_FEATURES_append =3D " x11"<b=
r /><br />to local.conf, I'm not able to build anymore but see an error lik=
e below <br />instead:<br /><br />| checking for GBM... no<br />| configure=
: error: Glamor for Xorg requires gbm &gt;=3D 10.2.0<br />| NOTE: The follo=
wing config.log files may provide further information.<br />| NOTE: <br />/=
home/yocto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xorg/2_=
1.20.8-r0/build/config.log<br />| ERROR: configure failed<br />| WARNING: e=
xit code 1 from a shell command.<br />| ERROR: Execution of <br />'/home/yo=
cto/rzg_vlp_v3.0.0/build/tmp/work/aarch64-poky-linux/xserver-xorg/2_1.20.8-=
r0/temp/run.do_configure.480136' <br />failed with exit code 1<br />ERROR: =
Task <br />(/home/yocto/rzg_vlp_v3.0.0/build/../poky/meta/recipes-graphics/=
xorg-xserver/xserver-xorg_1.20.8.bb:do_configure) <br />failed with exit co=
de '1'<br /><br />I've Googled around but nbot been able to find a work aro=
und.</blockquote>
Hello,<br /><br />once we run into a similar issue with the xserver xorg v1=
.20.8 compilation, in<br />our case, the gbm (libgles) from the BSP provide=
r was in version `r8p0` and not<br />`10.2.0`, which is required by xserver=
 xorg. To solve this, we added a simple<br />patch to `configure.ac` of xse=
rver xorg to change dependency from<br />`LIBGBM=3D"gbm &gt;=3D 10.2.0"` to=
 `LIBGBM=3D"gbm &gt;=3D r8p0"` which allowed us to resolve<br />the compila=
tion error and built the package. Later we did not see any<br />significant=
 performance issues, so we went with that solution.<br /><br />Regards<br /=
><br />-- <br />Tomasz =C5=BByjewski<br />Embedded Systems Engineer<br />GP=
G: 5C495EA3EBEECA59<br />https://3mdeb.com | @3mdeb_com<br />
<blockquote><br />
<blockquote>
<blockquote>You should edit local.conf, and complain to your BSP provider<b=
r />for using _remove instead of a direct assignment.<br /><br />Alex<br />=
<br />On Wed, 28 Dec 2022 at 16:51, Mistyron &lt;ron.eggler@mistywest.com&g=
t; wrote:<br />
<blockquote>Hi,<br /><br />I'm using the provided local.conf from the BSP w=
hich contains:<br /><br />DISTRO_FEATURES_remove =3D " x11"<br /><br />but =
I need to install xrandr in my image which needs x11, i.e. I set<br /><br /=
>DISTRO_FEATURES_append =3D " x11"<br />IMAGE_INSTALL_append =3D " xrandr"<=
br /><br />in my custom recipe. However, upon building, I get the following=
 error:<br /><br />ERROR: Nothing RPROVIDES 'xrandr' (but<br />/home/yocto/=
rzg_vlp_v3.0.0/build/../meta-mistysom/recipes-core/images/mistysom-image.bb=
 <br /><br />RDEPENDS on or otherwise requires it)<br />xrandr was skipped:=
 missing required distro feature 'x11' (not in<br />DISTRO_FEATURES)<br />N=
OTE: Runtime target 'xrandr' is unbuildable, removing...<br />Missing or un=
buildable dependency chain was: ['xrandr']<br />ERROR: Required build targe=
t 'mistysom-image' has no buildable <br />providers.<br />Missing or unbuil=
dable dependency chain was: ['mistysom-image', <br />'xrandr']<br /><br />C=
an I override the setting in locl.conf from my custom recipe? How?<br /><br=
 />Ron<br /><br /><br /><br /><br /><br /></blockquote>
</blockquote>
</blockquote>
-- <br />RON EGGLER Firmware Engineer (he/him/his) www.mistywest.com</block=
quote>

--w6JbF7GDtezdoVl2kG0c--

