Return-Path: <ross.burton@arm.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD74DC4332F
	for <webhook@archiver.kernel.org>; Wed,  8 Nov 2023 17:31:58 +0000 (UTC)
Subject: Re: Devtool fails if SRCREV is set to ${AUTOREV} #kirkstone #devtool #yocto
To: yocto@lists.yoctoproject.org
From: "Chris Wyse" <chris.wyse@wysechoice.net>
X-Originating-Location: Middletown, Rhode Island, US (98.187.216.211)
X-Originating-Platform: Linux Chrome 119
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 08 Nov 2023 08:28:53 -0800
References: <CANNYZj-sTnUxqyHM2W9TXPJK8-eTwo-5o3V6D3D5wXPNi7Lo=A@mail.gmail.com>
In-Reply-To: <CANNYZj-sTnUxqyHM2W9TXPJK8-eTwo-5o3V6D3D5wXPNi7Lo=A@mail.gmail.com>
Message-ID: <30457.1699460933018528490@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="EssnrY5ahawrXy79NWPQ"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 08 Nov 2023 17:31:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61639

--EssnrY5ahawrXy79NWPQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I ran into this problem as well.=C2=A0 It doesn't seem like SRCPV is being =
set properly before use in the externalsrc.bbclass.=C2=A0 I added the follo=
wing line before bpn =3D d.getVar('BPN'), and now it works fine.=C2=A0 Unfo=
rtunately, I needed to create another layer that overrides the poky classes=
 to include it in my build.=C2=A0 Here's the added line:

srcpv =3D d.getVar('SRCPV')

And here's a bit of context:

python () {
externalsrc =3D d.getVar('EXTERNALSRC')
externalsrcbuild =3D d.getVar('EXTERNALSRC_BUILD')

if externalsrc and not externalsrc.startswith("/"):
bb.error("EXTERNALSRC must be an absolute path")
if externalsrcbuild and not externalsrcbuild.startswith("/"):
bb.error("EXTERNALSRC_BUILD must be an absolute path")

srcpv =3D d.getVar('SRCPV')

# If this is the base recipe and EXTERNALSRC is set for it or any of its
# derivatives, then enable BB_DONT_CACHE to force the recipe to always be
# re-parsed so that the file-checksums function for do_compile is run every
# time.
bpn =3D d.getVar('BPN')
classextend =3D (d.getVar('BBCLASSEXTEND') or '').split()
if bpn =3D=3D d.getVar('PN') or not classextend:
if (externalsrc or
('native' in classextend and
d.getVar('EXTERNALSRC:pn-%s-native' % bpn)) or
('nativesdk' in classextend and
d.getVar('EXTERNALSRC:pn-nativesdk-%s' % bpn)) or
('cross' in classextend and
d.getVar('EXTERNALSRC:pn-%s-cross' % bpn))):
d.setVar('BB_DONT_CACHE', '1')

if externalsrc:
import oe.recipeutils
import oe.path

d.setVar('S', externalsrc)
if externalsrcbuild:
d.setVar('B', externalsrcbuild)
else:
d.setVar('B', '${WORKDIR}/${BPN}-${PV}')

--EssnrY5ahawrXy79NWPQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I ran into this problem as well.&nbsp; It doesn't seem like SRCPV is being =
set properly before use in the externalsrc.bbclass.&nbsp; I added the follo=
wing line before bpn =3D d.getVar('BPN'), and now it works fine.&nbsp; Unfo=
rtunately, I needed to create another layer that overrides the poky classes=
 to include it in my build.&nbsp; Here's the added line:<br /><br />
<div>&nbsp; &nbsp; srcpv =3D d.getVar('SRCPV')</div>
<div><br />And here's a bit of context:<br /><br />
<div>python () {</div>
<div>&nbsp; &nbsp; externalsrc =3D d.getVar('EXTERNALSRC')</div>
<div>&nbsp; &nbsp; externalsrcbuild =3D d.getVar('EXTERNALSRC_BUILD')</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; if externalsrc and not externalsrc.startswith("/"):</div=
>
<div>&nbsp; &nbsp; &nbsp; &nbsp; bb.error("EXTERNALSRC must be an absolute =
path")</div>
<div>&nbsp; &nbsp; if externalsrcbuild and not externalsrcbuild.startswith(=
"/"):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; bb.error("EXTERNALSRC_BUILD must be an abs=
olute path")</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; srcpv =3D d.getVar('SRCPV')</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; # If this is the base recipe and EXTERNALSRC is set for =
it or any of its</div>
<div>&nbsp; &nbsp; # derivatives, then enable BB_DONT_CACHE to force the re=
cipe to always be</div>
<div>&nbsp; &nbsp; # re-parsed so that the file-checksums function for do_c=
ompile is run every</div>
<div>&nbsp; &nbsp; # time.</div>
<div>&nbsp; &nbsp; bpn =3D d.getVar('BPN')</div>
<div>&nbsp; &nbsp; classextend =3D (d.getVar('BBCLASSEXTEND') or '').split(=
)</div>
<div>&nbsp; &nbsp; if bpn =3D=3D d.getVar('PN') or not classextend:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; if (externalsrc or</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ('native' in c=
lassextend and</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d.getVar=
('EXTERNALSRC:pn-%s-native' % bpn)) or</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ('nativesdk' i=
n classextend and</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d.getVar=
('EXTERNALSRC:pn-nativesdk-%s' % bpn)) or</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ('cross' in cl=
assextend and</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;d.getVar=
('EXTERNALSRC:pn-%s-cross' % bpn))):</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d.setVar('BB_DONT_CACHE', '1=
')</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; if externalsrc:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; import oe.recipeutils</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; import oe.path</div>
<div>&nbsp;</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; d.setVar('S', externalsrc)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; if externalsrcbuild:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d.setVar('B', externalsrcbui=
ld)</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; else:</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; d.setVar('B', '${WORKDIR}/${=
BPN}-${PV}')</div>
<div>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &=
nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;=
 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbs=
p; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &n=
bsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp=
; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;</di=
v>
<div>&nbsp;</div>
</div>

--EssnrY5ahawrXy79NWPQ--

