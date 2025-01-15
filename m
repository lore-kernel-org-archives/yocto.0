Return-Path: <ganesh.manoj.mahajan@signify.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A05E7C02180
	for <webhook@archiver.kernel.org>; Wed, 15 Jan 2025 09:26:37 +0000 (UTC)
Subject: Re: [yocto] [HELP]
To: "Adrian Freihofer" <adrian.freihofer@gmail.com>, yocto@lists.yoctoproject.org
From: "Ganesh Mahajan" <ganesh.manoj.mahajan@signify.com>
X-Originating-Location: IN (165.225.124.177)
X-Originating-Platform: Windows Chrome 131
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 15 Jan 2025 01:26:30 -0800
References: <7a0a7d8cc376caf07389f56bbd60330aaf2e56bb.camel@gmail.com>
In-Reply-To: <7a0a7d8cc376caf07389f56bbd60330aaf2e56bb.camel@gmail.com>
Message-ID: <1047.1736933190903996938@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="aNQjaMD2uM1msxxbfhWp"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 15 Jan 2025 09:26:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64557

--aNQjaMD2uM1msxxbfhWp
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thanks Adrian,

We do have similar script
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D
# SPDX-License-Identifier: GPL-2.0-or-later
#
#
# Normally this is called as '. ./oe-init-build-env <builddir>'
#
# This works in most shells (not dash), but not all of them pass the argume=
nts
# when being sourced. =C2=A0To workaround the shell limitation use "set <bu=
ilddir>"
# prior to sourcing this script.
#
if [ -n "$BASH_SOURCE" ]; then
THIS_SCRIPT=3D$BASH_SOURCE
elif [ -n "$ZSH_NAME" ]; then
THIS_SCRIPT=3D$0
else
THIS_SCRIPT=3D"$(pwd)/oe-init-build-env"
if [ ! -e "$THIS_SCRIPT" ]; then
echo "Error: $THIS_SCRIPT doesn't exist!" >&2
echo "Please run this script in oe-init-build-env's directory." >&2
exit 1
fi
fi
if [ -n "$BBSERVER" ]; then
unset BBSERVER
fi
if [ -z "$ZSH_NAME" ] && [ "$0" =3D "$THIS_SCRIPT" ]; then
echo "Error: This script needs to be sourced. Please run as '. $THIS_SCRIPT=
'" >&2
exit 1
fi
if [ -z "$OEROOT" ]; then
OEROOT=3D$(dirname "$THIS_SCRIPT")
OEROOT=3D$(readlink -f "$OEROOT")
fi
unset THIS_SCRIPT
export OEROOT
. "$OEROOT"/scripts/oe-buildenv-internal &&
TEMPLATECONF=3D"$TEMPLATECONF" "$OEROOT"/scripts/oe-setup-builddir || {
unset OEROOT
return 1
}
# Generate an initial configuration for VSCode and the yocto-bitbake plugin=
.
if command -v code > /dev/null && [ ! -d "$OEROOT/.vscode" ]; then
oe-setup-vscode "$OEROOT" "$BUILDDIR"
fi
unset OEROOT
[ -z "$BUILDDIR" ] || cd "$BUILDDIR"

=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
but the issue is with TEMPLATECONF variable which we set in
it as=C2=A0 below in meta-eaton/conf/templates as suggested by the error *m=
eta-some-layer/conf/templates/template-name*
*# Template settings*
*TEMPLATECONF=3D${TEMPLATECONF:-meta-eaton/conf/templates}
*
still getting same error

--aNQjaMD2uM1msxxbfhWp
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Thanks Adrian,<br /><br />We do have similar script<br />=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D</div>
<div># SPDX-License-Identifier: GPL-2.0-or-later<br />#</div>
<div>#<br /># Normally this is called as '. ./oe-init-build-env &lt;builddi=
r&gt;'<br />#<br /># This works in most shells (not dash), but not all of t=
hem pass the arguments<br /># when being sourced. &nbsp;To workaround the s=
hell limitation use "set &lt;builddir&gt;"<br /># prior to sourcing this sc=
ript.<br />#<br />if [ -n "$BASH_SOURCE" ]; then<br />&nbsp; &nbsp; THIS_SC=
RIPT=3D$BASH_SOURCE<br />elif [ -n "$ZSH_NAME" ]; then<br />&nbsp; &nbsp; T=
HIS_SCRIPT=3D$0<br />else<br />&nbsp; &nbsp; THIS_SCRIPT=3D"$(pwd)/oe-init-=
build-env"<br />&nbsp; &nbsp; if [ ! -e "$THIS_SCRIPT" ]; then<br />&nbsp; =
&nbsp; &nbsp; &nbsp; echo "Error: $THIS_SCRIPT doesn't exist!" &gt;&amp;2<b=
r />&nbsp; &nbsp; &nbsp; &nbsp; echo "Please run this script in oe-init-bui=
ld-env's directory." &gt;&amp;2<br />&nbsp; &nbsp; &nbsp; &nbsp; exit 1<br =
/>&nbsp; &nbsp; fi<br />fi<br />if [ -n "$BBSERVER" ]; then<br />&nbsp; &nb=
sp; unset BBSERVER<br />fi</div>
<div>if [ -z "$ZSH_NAME" ] &amp;&amp; [ "$0" =3D "$THIS_SCRIPT" ]; then<br =
/>&nbsp; &nbsp; echo "Error: This script needs to be sourced. Please run as=
 '. $THIS_SCRIPT'" &gt;&amp;2<br />&nbsp; &nbsp; exit 1<br />fi</div>
<div>if [ -z "$OEROOT" ]; then<br />&nbsp; &nbsp; OEROOT=3D$(dirname "$THIS=
_SCRIPT")<br />&nbsp; &nbsp; OEROOT=3D$(readlink -f "$OEROOT")<br />fi<br /=
>unset THIS_SCRIPT</div>
<div>export OEROOT<br />. "$OEROOT"/scripts/oe-buildenv-internal &amp;&amp;=
<br />&nbsp; &nbsp; TEMPLATECONF=3D"$TEMPLATECONF" "$OEROOT"/scripts/oe-set=
up-builddir || {<br />&nbsp; &nbsp; unset OEROOT<br />&nbsp; &nbsp; return =
1<br />}</div>
<div># Generate an initial configuration for VSCode and the yocto-bitbake p=
lugin.<br />if command -v code &gt; /dev/null &amp;&amp; [ ! -d "$OEROOT/.v=
scode" ]; then<br />&nbsp; &nbsp; oe-setup-vscode "$OEROOT" "$BUILDDIR"<br =
/>fi</div>
<div>unset OEROOT</div>
<div>[ -z "$BUILDDIR" ] || cd "$BUILDDIR"</div>
<div>&nbsp;</div>
<div>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D<br />but the issue is with TEMPLATECONF variable which we set in&nbsp;<=
br />it as&nbsp; below in meta-eaton/conf/templates as suggested by the err=
or&nbsp;<strong><span style=3D"color: #333333; font-family: system-ui, 'Seg=
oe UI', Roboto, 'Helvetica Neue', 'Noto Sans', 'Liberation Sans', Arial, sa=
ns-serif, 'Apple Color Emoji', 'Segoe UI Emoji', 'Segoe UI Symbol', 'Noto C=
olor Emoji'; font-size: 16px; font-style: normal; font-variant-ligatures: n=
ormal; font-variant-caps: normal; letter-spacing: normal; orphans: 2; text-=
align: start; text-indent: 0px; text-transform: none; widows: 2; word-spaci=
ng: 0px; -webkit-text-stroke-width: 0px; white-space: normal; background-co=
lor: #ffffff; text-decoration-thickness: initial; text-decoration-style: in=
itial; text-decoration-color: initial; float: none; display: inline !import=
ant;">meta-some-layer/conf/templates/template-name</span></strong></div>
<div><strong># Template settings</strong><br /><strong>TEMPLATECONF=3D${TEM=
PLATECONF:-meta-eaton/conf/templates}<br /></strong><br />still getting sam=
e error</div>

--aNQjaMD2uM1msxxbfhWp--

