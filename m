Return-Path: <lukasz.zemla@woodward.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD175C27C79
	for <webhook@archiver.kernel.org>; Mon, 17 Jun 2024 17:34:47 +0000 (UTC)
Subject: Re: [yocto] bb.utils.contains() and 'inherit' issue
To: "Jose Quaresma" <quaresma.jose@gmail.com>, yocto@lists.yoctoproject.org
From: "Lukasz Zemla" <lukasz.zemla@woodward.com>
X-Originating-Location: GB (62.209.55.137)
X-Originating-Platform: Windows Chrome 125
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 17 Jun 2024 10:34:39 -0700
References: <CANPvuRm-EzMib+vgKRiRNB3Y9F=W_qZ2JLo-3Pe8enAnO-MsXQ@mail.gmail.com>
In-Reply-To: <CANPvuRm-EzMib+vgKRiRNB3Y9F=W_qZ2JLo-3Pe8enAnO-MsXQ@mail.gmail.com>
Message-ID: <20106.1718645679714349950@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="BCtVA3aMTxZDJBASCtwG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 17 Jun 2024 17:34:47 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63354

--BCtVA3aMTxZDJBASCtwG
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello Jose,

> There is an extra space missing in before the privdrop, the :append overr=
ide does not add the extra space.
> Can you try with:=C2=A0 PACKAGECONFIG:append =3D " privdrop" ?
> Jose

I apologize - I wanted my mail to bo compacted, so I just typed that expres=
sion manually. In practice my recipe contains:

PACKAGECONFIG:append =3D " \
privdrop \
"

I does not work. I am more and more convinced that enumerated by me recipes=
 should be modified (inherit -> inherit_defer). For example, I can see the =
following commit in the meta-openembedded master branch which addresses nft=
ables:

commit 5cf3766cf6395d4bfa5de20cf7427950ca498eaa
Author: Michael Olbrich <m.olbrich@pengutronix.de>
Date: =C2=A0 Wed May 29 11:58:51 2024 +0200

nftables: avoid python dependencies when building without python

Use inherit_defer instead of inhert. This way, setuptools3 is not
inherited when python is removed from PACKAGECONFIG in a .bbappend file.
This avoids dependencies added by setuptools3.

Don't add nftables-python to PACKAGES if python is disabled. It adds
extra runtime dependencies on python3-core and python3-json.

Signed-off-by: Michael Olbrich <m.olbrich@pengutronix.de>
Signed-off-by: Khem Raj <raj.khem@gmail.com>

diff --git a/meta-networking/recipes-filter/nftables/nftables_1.0.9.bb b/me=
ta-networking/recipes-filter/nftables/nftables_1.0.9.bb
index 7718922742..17f00ffd42 100644
--- a/meta-networking/recipes-filter/nftables/nftables_1.0.9.bb
+++ b/meta-networking/recipes-filter/nftables/nftables_1.0.9.bb
@@ -35,9 +35,9 @@ EXTRA_OECONF =3D " \

SETUPTOOLS_SETUP_PATH =3D "${S}/py"

-inherit ${@bb.utils.contains('PACKAGECONFIG', 'python', 'setuptools3', '',=
 d)}
+inherit_defer ${@bb.utils.contains('PACKAGECONFIG', 'python', 'setuptools3=
', '', d)}

-PACKAGES =3D+ "${PN}-python"
+PACKAGES =3D+ "${@bb.utils.contains('PACKAGECONFIG', 'python', '${PN}-pyth=
on', '', d)}"
FILES:${PN}-python =3D "${PYTHON_SITEPACKAGES_DIR}"
RDEPENDS:${PN}-python =3D "python3-core python3-json ${PN}"

Best regards,
Lukasz Zemla

--BCtVA3aMTxZDJBASCtwG
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div style=3D"box-sizing: border-box; overflow-wrap: break-word !important;=
 color: #333333; font-family: system-ui, 'Segoe UI', Roboto, 'Helvetica Neu=
e', 'Noto Sans', 'Liberation Sans', Arial, sans-serif, 'Apple Color Emoji',=
 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto Color Emoji'; font-size: 16px; =
font-style: normal; font-variant-ligatures: normal; font-variant-caps: norm=
al; font-weight: 400; letter-spacing: normal; orphans: 2; text-align: start=
; text-indent: 0px; text-transform: none; widows: 2; word-spacing: 0px; -we=
bkit-text-stroke-width: 0px; white-space: normal; background-color: #ffffff=
; text-decoration-thickness: initial; text-decoration-style: initial; text-=
decoration-color: initial;">Hello Jose,<br /><br />&gt; There is an extra s=
pace missing in before the privdrop, the :append override does not add the =
extra space.<br style=3D"box-sizing: border-box; overflow-wrap: break-word =
!important;" />&gt; Can you try with:&nbsp; PACKAGECONFIG:append =3D " priv=
drop" ?<br style=3D"box-sizing: border-box; overflow-wrap: break-word !impo=
rtant;" />&gt; Jose<br /><br />I apologize - I wanted my mail to bo compact=
ed, so I just typed that expression manually. In practice my recipe contain=
s:<br /><br />PACKAGECONFIG:append =3D " \<br />&nbsp; &nbsp; privdrop \<br=
 />"<br /><br />I does not work. I am more and more convinced that enumerat=
ed by me recipes should be modified (inherit -&gt; inherit_defer). For exam=
ple, I can see the following commit in the meta-openembedded master branch =
which addresses nftables:<br /><br />commit 5cf3766cf6395d4bfa5de20cf742795=
0ca498eaa<br />Author: Michael Olbrich &lt;m.olbrich@pengutronix.de&gt;<br =
/>Date: &nbsp; Wed May 29 11:58:51 2024 +0200<br /><br />&nbsp; &nbsp; nfta=
bles: avoid python dependencies when building without python<br /><br />&nb=
sp; &nbsp; Use inherit_defer instead of inhert. This way, setuptools3 is no=
t<br />&nbsp; &nbsp; inherited when python is removed from PACKAGECONFIG in=
 a .bbappend file.<br />&nbsp; &nbsp; This avoids dependencies added by set=
uptools3.<br /><br />&nbsp; &nbsp; Don't add nftables-python to PACKAGES if=
 python is disabled. It adds<br />&nbsp; &nbsp; extra runtime dependencies =
on python3-core and python3-json.<br /><br />&nbsp; &nbsp; Signed-off-by: M=
ichael Olbrich &lt;m.olbrich@pengutronix.de&gt;<br />&nbsp; &nbsp; Signed-o=
ff-by: Khem Raj &lt;raj.khem@gmail.com&gt;<br /><br />diff --git a/meta-net=
working/recipes-filter/nftables/nftables_1.0.9.bb b/meta-networking/recipes=
-filter/nftables/nftables_1.0.9.bb<br />index 7718922742..17f00ffd42 100644=
<br />--- a/meta-networking/recipes-filter/nftables/nftables_1.0.9.bb<br />=
+++ b/meta-networking/recipes-filter/nftables/nftables_1.0.9.bb<br />@@ -35=
,9 +35,9 @@ EXTRA_OECONF =3D " \<br /><br />&nbsp;SETUPTOOLS_SETUP_PATH =3D=
 "${S}/py"<br /><br />-inherit ${@bb.utils.contains('PACKAGECONFIG', 'pytho=
n', 'setuptools3', '', d)}<br />+inherit_defer ${@bb.utils.contains('PACKAG=
ECONFIG', 'python', 'setuptools3', '', d)}<br /><br />-PACKAGES =3D+ "${PN}=
-python"<br />+PACKAGES =3D+ "${@bb.utils.contains('PACKAGECONFIG', 'python=
', '${PN}-python', '', d)}"<br />&nbsp;FILES:${PN}-python =3D "${PYTHON_SIT=
EPACKAGES_DIR}"<br />&nbsp;RDEPENDS:${PN}-python =3D "python3-core python3-=
json ${PN}"<br /><br /><br /><br />Best regards,<br />Lukasz Zemla</div>

--BCtVA3aMTxZDJBASCtwG--

