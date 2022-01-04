Return-Path: <michal.kotyla@3mdeb.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 12197C433F5
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 15:36:02 +0000 (UTC)
Subject: Re: How to add WIFI debug tool to custom image #raspberrypi #ubuntu
 #yocto #devtool #distro
To: yocto@lists.yoctoproject.org
From: michal.kotyla@3mdeb.com
X-Originating-Location: Warsaw, Mazovia, PL (85.222.117.222)
X-Originating-Platform: Linux Firefox 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 04 Jan 2022 07:36:01 -0800
References: <OWJn.1641104786302642422.0cHo@lists.yoctoproject.org>
In-Reply-To: <OWJn.1641104786302642422.0cHo@lists.yoctoproject.org>
Message-ID: <18927.1641310561702564623@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="ZcytmX1FuhZEuUrksym7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 15:36:02 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55723

--ZcytmX1FuhZEuUrksym7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Mihir,

On Sun, Jan 2, 2022 at 07:26 AM, <mihirdave36@gmail.com> wrote:

>=20
> Hello,
>=20
> How can I add any generic WiFi debug tool to Yocto imgae?
>=20
> Thanks
> Mihir

You can use NetworkManager recipe ( http://cgit.openembedded.org/meta-opene=
mbedded/tree/meta-networking/recipes-connectivity/networkmanager/networkman=
ager_1.32.12.bb ), and add networkmanager-nmcli to your IMAGE_INSTALL to ge=
t access to nmcli command.

Best regards,

--
Micha=C5=82 Kotyla
Embedded Linux Developer
GPG: 14FC54DC259CF70A
https://3mdeb.com | @3mdeb_com

--ZcytmX1FuhZEuUrksym7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

&nbsp;Hi Mihir,<br /><br />On Sun, Jan 2, 2022 at 07:26 AM, &lt;mihirdave36=
@gmail.com&gt; wrote:<br />
<blockquote>Hello,<br /><br />How can I add any generic WiFi debug tool to =
Yocto imgae?<br /><br />Thanks<br />Mihir</blockquote>
<br />You can use NetworkManager recipe (<a href=3D"http://cgit.openembedde=
d.org/meta-openembedded/tree/meta-networking/recipes-connectivity/networkma=
nager/networkmanager_1.32.12.bb" target=3D"_blank" rel=3D"noopener">http://=
cgit.openembedded.org/meta-openembedded/tree/meta-networking/recipes-connec=
tivity/networkmanager/networkmanager_1.32.12.bb</a>), and add networkmanage=
r-nmcli to your IMAGE_INSTALL to get access to nmcli command.<br /><br />Be=
st regards,<br /><br /><span class=3D"moz-txt-tag">--&nbsp;<br /></span>Mic=
ha=C5=82 Kotyla <br />Embedded Linux Developer <br />GPG: 14FC54DC259CF70A =
<br /><a class=3D"moz-txt-link-freetext" href=3D"https://3mdeb.com">https:/=
/3mdeb.com</a> | @3mdeb_com

--ZcytmX1FuhZEuUrksym7--

