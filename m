Return-Path: <matteo.orlandini@tastitalia.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 53A49C77B7F
	for <webhook@archiver.kernel.org>; Fri, 27 Jun 2025 14:33:58 +0000 (UTC)
Subject: Re: [yocto] Virtual Keyboard on Wayland
To: "Takuro Ashie" <ashie@clear-code.com>, yocto@lists.yoctoproject.org
From: matteo.orlandini@tastitalia.com
X-Originating-Location: Torgiano, Umbria, IT (37.77.97.75)
X-Originating-Platform: Linux Chrome 137
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 27 Jun 2025 07:33:52 -0700
References: <68dcffab-ef3f-4643-baab-7b5c8015b7a1@clear-code.com>
In-Reply-To: <68dcffab-ef3f-4643-baab-7b5c8015b7a1@clear-code.com>
Message-ID: <14094.1751034832062829006@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="8lcHfyvwTBKkumtZjFNU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 27 Jun 2025 14:33:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65555

--8lcHfyvwTBKkumtZjFNU
Content-Type: multipart/alternative; boundary="QvBmLiaJK9anHBsp6p8d"

--QvBmLiaJK9anHBsp6p8d
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Dear Takuro,

>=20
> We have also a yocto recipe for it:
>=20
> https://gitlab.com/clear-code/meta-inputmethod/-/tree/master/recipes-gnom=
e/gtk-wayland-textinputv1
>=20
>=20
> Although it's not support scarthgap yet, not so difficult to port.

as, you suggested, I tried to port in scarthgap your recipe and I'm able to=
 use weston-keyboard on gtk3, thank you so much. Attached you can find the =
recipe for scarthgap.

>=20
> We are also developing a virtual keyboad software for Wayland (mainly for
> Weston):
>=20
> https://github.com/clear-code/fcitx5-virtualkeyboard-ui
>=20
> Unfortunately we don't publish the yocto recipe for it in some reason.
> But creating it based on above meta-inputmethod layer isn't so difficult.

Also, I should use Chromium, but I see that the Weston keyboard doesn't wor=
k. Can I use your virtual keyboard? Is it compatible with both Chromium and=
 GTK3?

Thank you in advance,
Matteo

--QvBmLiaJK9anHBsp6p8d
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Dear Takuro,<br />
<blockquote>We have also a yocto recipe for it:<br /><br /><a href=3D"https=
://gitlab.com/clear-code/meta-inputmethod/-/tree/master/recipes-gnome/gtk-w=
ayland-textinputv1" target=3D"_blank" rel=3D"noopener">https://gitlab.com/c=
lear-code/meta-inputmethod/-/tree/master/recipes-gnome/gtk-wayland-textinpu=
tv1</a><br /><br />Although it's not support scarthgap yet, not so difficul=
t to port.</blockquote>
</div>
<div>as, you suggested, I tried to port in scarthgap your recipe and I'm ab=
le to use weston-keyboard on gtk3, thank you so much. Attached you can find=
 the recipe for scarthgap.</div>
<div><br />
<blockquote>We are also developing a virtual keyboad software for Wayland (=
mainly for Weston):<br /><br />&nbsp; <a href=3D"https://github.com/clear-c=
ode/fcitx5-virtualkeyboard-ui" target=3D"_blank" rel=3D"noopener">https://g=
ithub.com/clear-code/fcitx5-virtualkeyboard-ui</a><br /><br />Unfortunately=
 we don't publish the yocto recipe for it in some reason.<br />But creating=
 it based on above meta-inputmethod layer isn't so difficult.</blockquote>
</div>
<div>Also, I should use Chromium, but I see that the Weston keyboard doesn'=
t work. Can I use your virtual keyboard? Is it compatible with both Chromiu=
m and GTK3?&nbsp;</div>
<div>&nbsp;</div>
<div>Thank you in advance,</div>
<div>Matteo</div>

--QvBmLiaJK9anHBsp6p8d--

--8lcHfyvwTBKkumtZjFNU
Content-Type: application/octet-stream; name="gtk-wayland-textinputv1_0.1.5.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="gtk-wayland-textinputv1_0.1.5.bb"

TElDRU5TRSA9ICJMR1BMLTIuMC1vci1sYXRlciIgICAKTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxl
Oi8vQ09QWUlORzttZDU9M2JmNTAwMDJhZWZkMDAyZjQ5ZTdiYjg1NDA2M2Y3ZTciCgpTUkNCUkFO
Q0ggPSAibWFzdGVyIgoKU1JDX1VSSSArPSAiIFwKICAgIGdpdDovL2dpdGxhYi5jb20vY2xlYXIt
Y29kZS9ndGstd2F5bGFuZC10ZXh0aW5wdXR2MS5naXQ7cHJvdG9jb2w9aHR0cHM7YnJhbmNoPSR7
U1JDQlJBTkNIfSBcCiAgICBmaWxlOi8vMDAwMS1TZWFyY2gtUkVDSVBFX1NZU1JPT1QtdG8tZmlu
ZC13YXlsYW5kLXByb3RvY29scy1pZi1pLnBhdGNoIFwKIgoKUFYgPSAiMC4xLjUiClNSQ1JFViA9
ICJkNDdhN2Y0N2JhNTZmNDE1ZmVjMGZhMTAxYTlhMDFjMzEzYWNkZmYwIgoKUyA9ICIke1dPUktE
SVJ9L2dpdCIKCkRFUEVORFMgPSAid2F5bGFuZCB3YXlsYW5kLW5hdGl2ZSBndGsrMyIKCmluaGVy
aXQgcGtnY29uZmlnIGF1dG90b29scyBndGstaW1tb2R1bGVzLWNhY2hlCgpFWFRSQV9PRUNPTkYg
PSAiV0FZTEFORF9QUk9UT0NPTFNfU1lTUk9PVF9ESVI9JHtSRUNJUEVfU1lTUk9PVH0iCgpGSUxF
Uzoke1BOfSArPSAiXAogICAgJHtsaWJkaXJ9L2d0ay0zLjAvMy4wLjAvaW1tb2R1bGVzL2ltLXds
dGV4dGlucHV0djEuc28gXAoiCgo=

--8lcHfyvwTBKkumtZjFNU--

