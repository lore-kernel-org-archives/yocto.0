Return-Path: <seth.raymond@matrixspace.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DC07CAC59A
	for <webhook@archiver.kernel.org>; Wed, 17 Sep 2025 14:46:03 +0000 (UTC)
Subject: Re: [yocto] Documentation around adding custom fetchers to layer
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: seth.raymond@matrixspace.com
X-Originating-Location: Saugus, Massachusetts, US (71.26.215.193)
X-Originating-Platform: Linux Firefox 142
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Wed, 17 Sep 2025 07:45:54 -0700
References: <CANNYZj-Sk_VEMa8--q-s3G6KP1zih5KqZC4uv5WJzAd7sQrzzQ@mail.gmail.com>
In-Reply-To: <CANNYZj-Sk_VEMa8--q-s3G6KP1zih5KqZC4uv5WJzAd7sQrzzQ@mail.gmail.com>
Message-ID: <27586.1758120354644994131@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="ekQHwCdCGpFJswlKo8WR"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 17 Sep 2025 14:46:03 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65852

--ekQHwCdCGpFJswlKo8WR
Content-Type: multipart/alternative; boundary="9ibMlp8H8ylAY7a1PclP"

--9ibMlp8H8ylAY7a1PclP
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex,

Sure, I can share the source. It grabs secrets from our password manager (1=
Password) and injects them into the build system. We currently have two use=
 cases for this:
1. We use AES keys for encrypting/decrypting our SWU payloads. Those key/iv=
 pairs are held in our password manager, so we need to take one of them out=
 at build-time and hand it to the swupdate bbclass to encrypt the payload. =
We do the same thing for a signing .pem key
2. We want to install an SSH key into our OS so that we can SSH into our de=
vices. 1Password also acts as an SSH agent, so it makes life seamless when =
we store the keys in there.

My source is attached. The use case in a recipe would be:

SRC_URI =3D " \
op://MyVault/SSHKey/public%20key ;output=3Dssh_key.pub \
optemplate://aes_key.tpl;output=3Daes_key \
"

The output would be:
1. The content of the MyVault > SSHKey > public key dumped into a file call=
ed ssh_key.pub in the $WORKDIR
2. Depending on the template ( https://developer.1password.com/docs/cli/sec=
rets-template-syntax/ ), ${WORKDIR}/aes_key would be filled in with referen=
ced secrets

Someone at my last company wrote a custom fetcher to fetch conan packages, =
but I unfortunately wasn't super plugged in to what he was doing. I vaguely=
 remember he did something with a bbclass and might have used something sim=
ilar to the proposed do_fetch[prefuncs] method.

We currently have a hacky workaround right now where we have a *-init-build=
-env script that pulls the secrets from the 1Password vault(s) and put them=
 in the correct place. But persisting secrets on-disk, unencrypted is non-i=
deal. My preference would be for us to only grab the secrets as we need the=
m and then clean them up from build/ after they've been consumed.

Cheers,
Seth

--9ibMlp8H8ylAY7a1PclP
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>Hi Alex,</div>
<div>&nbsp;</div>
<div>Sure, I can share the source. It grabs secrets from our password manag=
er (1Password) and injects them into the build system. We currently have tw=
o use cases for this:</div>
<div>1. We use AES keys for encrypting/decrypting our SWU payloads. Those k=
ey/iv pairs are held in our password manager, so we need to take one of the=
m out at build-time and hand it to the swupdate bbclass to encrypt the payl=
oad. We do the same thing for a signing .pem key</div>
<div>2. We want to install an SSH key into our OS so that we can SSH into o=
ur devices. 1Password also acts as an SSH agent, so it makes life seamless =
when we store the keys in there.</div>
<div>&nbsp;</div>
<div>My source is attached. The use case in a recipe would be:<br /><br />S=
RC_URI =3D " \</div>
<div>&nbsp; &nbsp; <a href=3D"op://MyVault/SSHKey/public%20key" target=3D"_=
blank" rel=3D"noopener">op://MyVault/SSHKey/public%20key</a>;output=3Dssh_k=
ey.pub \</div>
<div>&nbsp; &nbsp; optemplate://aes_key.tpl;output=3Daes_key \</div>
<div>"</div>
<div>&nbsp;</div>
<div>The output would be:</div>
<div>1. The content of the MyVault &gt; SSHKey &gt; public key dumped into =
a file called ssh_key.pub in the $WORKDIR</div>
<div>2. Depending on the template (<a href=3D"https://developer.1password.c=
om/docs/cli/secrets-template-syntax/" target=3D"_blank" rel=3D"noopener">ht=
tps://developer.1password.com/docs/cli/secrets-template-syntax/</a>), ${WOR=
KDIR}/aes_key would be filled in with referenced secrets</div>
<div>&nbsp;</div>
<div>Someone at my last company wrote a custom fetcher to fetch conan packa=
ges, but I unfortunately wasn't super plugged in to what he was doing. I va=
guely remember he did something with a bbclass and might have used somethin=
g similar to the proposed do_fetch[prefuncs] method.</div>
<div>&nbsp;</div>
<div>We currently have a hacky workaround right now where we have a *-init-=
build-env script that pulls the secrets from the 1Password vault(s) and put=
 them in the correct place. But persisting secrets on-disk, unencrypted is =
non-ideal. My preference would be for us to only grab the secrets as we nee=
d them and then clean them up from build/ after they've been consumed.</div=
>
<div>&nbsp;</div>
<div>Cheers,</div>
<div>Seth</div>

--9ibMlp8H8ylAY7a1PclP--

--ekQHwCdCGpFJswlKo8WR
Content-Type: text/x-python; name="op.py"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="op.py"

aW1wb3J0IG9zCmZyb20gcGF0aGxpYiBpbXBvcnQgUGF0aAoKaW1wb3J0IGJiCmZyb20gYmIuZmV0
Y2gyIGltcG9ydCBGZXRjaEVycm9yLCBGZXRjaE1ldGhvZCwgcnVuZmV0Y2hjbWQKCgpjbGFzcyBP
cEl0ZW0oRmV0Y2hNZXRob2QpOgogICAgIiIiRmV0Y2ggbWV0aG9kIHRoYXQgcnVucyBgb3AgcmVh
ZGAgb24gYSAxUGFzc3dvcmQgQ0xJIGl0ZW0gcGF0aC4gVVJJIHNob3VsZCBiZSBpbiB0aGUgZm9y
bWF0IG9mOgogICAgb3A6Ly88VmF1bHQ+LzxJdGVtPi9bPFNlY3Rpb24+L108RmllbGQ+CgogICAg
Tm90ZSB0aGF0IGFsbCBzcGFjZXMgaW4gdGhlIHN0cmluZyBzaG91bGQgYmUgcmVwbGFjZWQgd2l0
aCAlMjAgc28gdGhhdCBiaXRiYWtlIGNhbiBwYXJzZSBpdCBwcm9wZXJseS4KICAgICIiIgoKICAg
IGRlZiBzdXBwb3J0cyhzZWxmLCB1ZCwgZCk6CiAgICAgICAgIyBSZWNvZ25pemUgVVJMcyBsaWtl
OiBvcDovL1ZhdWx0L0l0ZW0vW1NlY3Rpb24vXUZpZWxkCiAgICAgICAgcmV0dXJuIHVkLnR5cGUg
aW4gWyJvcCJdCgogICAgZGVmIHJlY29tbWVuZHNfY2hlY2tzdW0oc2VsZiwgdXJsZGF0YSk6CiAg
ICAgICAgcmV0dXJuIEZhbHNlCgogICAgZGVmIHN1cHBvcnRzX2NoZWNrc3VtKHNlbGYsIHVybGRh
dGEpOgogICAgICAgIHJldHVybiBGYWxzZQoKICAgIGRlZiB1cmxkYXRhX2luaXQoc2VsZiwgdWQs
IGQpOgogICAgICAgICMgVGhlIDFQYXNzd29yZCBwYXRoIGlzIGdpdmVuIGFzIHRoZSAncGF0aCcg
cGFydCBvZiB0aGUgVVJMLgogICAgICAgICMgRm9yIGV4YW1wbGU6IG9wOi8vVmF1bHQvSXRlbS9b
U2VjdGlvbi9dRmllbGQKICAgICAgICB1ZC5wYXRoID0gdWQudXJsLnNwbGl0KCI6Ly8iLCAxKVsx
XS5zcGxpdCgiOyIpWzBdCiAgICAgICAgaWYgbm90IHVkLnBhdGg6CiAgICAgICAgICAgIHJhaXNl
IEZldGNoRXJyb3IoIkludmFsaWQgb3A6Ly8gVVJJIikKICAgICAgICB1ZC5wYXRoID0gZidvcDov
L3t1ZC5wYXRoLnJlcGxhY2UoIiUyMCIsICIgIil9JwoKICAgICAgICAjIE9wdGlvbmFsIHF1ZXJ5
IHBhcmFtZXRlcjogb3V0cHV0PTxmaWxlbmFtZT4KICAgICAgICB1ZC5vdXRwdXQgPSB1ZC5wYXJt
LmdldCgib3V0cHV0Iikgb3Igb3MucGF0aC5iYXNlbmFtZSh1ZC5wYXRoKSArICIucmVuZGVyZWQi
CgogICAgICAgICMgU3RvcmUgbG9jYWwgZGVzdGluYXRpb24gcGF0aAogICAgICAgIHVkLmxvY2Fs
ZmlsZSA9IHVkLm91dHB1dAoKICAgIGRlZiBkb3dubG9hZChzZWxmLCB1ZCwgZCk6CiAgICAgICAg
IiIiCiAgICAgICAgUnVuIGBvcCByZWFkYCB0byBkdW1wIHRoZSBjb250ZW50cyBvZiBhIGZpZWxk
IGludG8gYSBmaWxlLgogICAgICAgICIiIgogICAgICAgIGRsX2RpciA9IGQuZ2V0VmFyKCJETF9E
SVIiKQogICAgICAgIGRlc3QgPSBvcy5wYXRoLmpvaW4oZGxfZGlyLCB1ZC5vdXRwdXQpCiAgICAg
ICAgb3MuZW52aXJvblsiT1BfU0VSVklDRV9BQ0NPVU5UX1RPS0VOIl0gPSBkLmdldFZhcigiT1Bf
U0VSVklDRV9BQ0NPVU5UX1RPS0VOIikKCiAgICAgICAgY21kID0gZiIvdXNyL2xvY2FsL2Jpbi9v
cCByZWFkIC0tb3V0LWZpbGUge2Rlc3R9ICd7dWQucGF0aH0nIgogICAgICAgIHJ1bmZldGNoY21k
KGNtZCwgZCkKCiAgICAgICAgaWYgbm90IG9zLnBhdGguZXhpc3RzKGRlc3QpOgogICAgICAgICAg
ICByYWlzZSBGZXRjaEVycm9yKCJvcCByZWFkIGRpZCBub3QgcHJvZHVjZSBhbiBvdXRwdXQgZmls
ZSIpCgogICAgICAgICMgVGhlIGxvY2FsZmlsZSBpcyB0aGUgZmlsZSBCaXRCYWtlIHdpbGwgY2hl
Y2tzdW0gYW5kIHN0YWdlLgogICAgICAgIHVkLmxvY2FscGF0aCA9IGRlc3QKCiAgICBkZWYgdW5w
YWNrKHNlbGYsIHVkLCBkZXN0ZGlyLCBkKToKICAgICAgICAiIiIKICAgICAgICBTdGFuZGFyZCBm
ZXRjaGVyIEFQSTogY29weSB0aGUgaW5qZWN0ZWQgZmlsZSBpbnRvIHRoZSB1bnBhY2tlZCBzb3Vy
Y2UgZGlyLgogICAgICAgICIiIgogICAgICAgIGJiLnV0aWxzLmNvcHlmaWxlKHVkLmxvY2FscGF0
aCwgb3MucGF0aC5qb2luKGRlc3RkaXIsIHVkLm91dHB1dCkpCgogICAgZGVmIGNoZWNrc3RhdHVz
KHNlbGYsIGZldGNoLCB1cmxkYXRhLCBkKToKICAgICAgICByZXR1cm4gVHJ1ZQoKCmNsYXNzIE9w
VGVtcGxhdGUoRmV0Y2hNZXRob2QpOgogICAgIiIiRmV0Y2ggbWV0aG9kIHRoYXQgcnVucyBgb3Ag
aW5qZWN0YCBvbiBhIDFQYXNzd29yZCBDTEkgaW5qZWN0YWJsZSB0ZW1wbGF0ZS4iIiIKCiAgICBk
ZWYgc3VwcG9ydHMoc2VsZiwgdWQsIGQpOgogICAgICAgICMgUmVjb2duaXplIFVSTHMgbGlrZTog
b3B0ZW1wbGF0ZTovL3BhdGgvdG8vdGVtcGxhdGUKICAgICAgICByZXR1cm4gdWQudHlwZSBpbiBb
Im9wdGVtcGxhdGUiXQoKICAgIGRlZiByZWNvbW1lbmRzX2NoZWNrc3VtKHNlbGYsIHVybGRhdGEp
OgogICAgICAgIHJldHVybiBGYWxzZQoKICAgIGRlZiBzdXBwb3J0c19jaGVja3N1bShzZWxmLCB1
cmxkYXRhKToKICAgICAgICByZXR1cm4gRmFsc2UKCiAgICBkZWYgdXJsZGF0YV9pbml0KHNlbGYs
IHVkLCBkKToKICAgICAgICAjIFRoZSB0ZW1wbGF0ZSBmaWxlIGlzIGdpdmVuIGFzIHRoZSAncGF0
aCcgcGFydCBvZiB0aGUgVVJMLgogICAgICAgICMgRm9yIGV4YW1wbGU6IG9wdGVtcGxhdGU6Ly8v
YWJzb2x1dGUvcGF0aC90by90ZW1wbGF0ZQogICAgICAgIHVkLnRlbXBsYXRlID0gdWQudXJsLnNw
bGl0KCI6Ly8iLCAxKVsxXS5zcGxpdCgiOyIpWzBdCiAgICAgICAgaWYgbm90IHVkLnRlbXBsYXRl
OgogICAgICAgICAgICByYWlzZSBGZXRjaEVycm9yKCJNaXNzaW5nIHRlbXBsYXRlIHBhdGggaW4g
b3B0ZW1wbGF0ZTovLyBVUkwiKQoKICAgICAgICAjIE9wdGlvbmFsIHF1ZXJ5IHBhcmFtZXRlcjog
b3V0cHV0PTxmaWxlbmFtZT4KICAgICAgICB1ZC5vdXRwdXQgPSB1ZC5wYXJtLmdldCgib3V0cHV0
Iikgb3Igb3MucGF0aC5iYXNlbmFtZSh1ZC50ZW1wbGF0ZSkgKyAiLnJlbmRlcmVkIgoKICAgICAg
ICAjIFN0b3JlIGxvY2FsIGRlc3RpbmF0aW9uIHBhdGgKICAgICAgICB1ZC5sb2NhbGZpbGUgPSB1
ZC5vdXRwdXQKCiAgICBkZWYgZG93bmxvYWQoc2VsZiwgdWQsIGQpOgogICAgICAgICIiIgogICAg
ICAgIFJ1biBgb3AgaW5qZWN0YCB0byByZXNvbHZlIHNlY3JldHMgaW4gdGhlIHRlbXBsYXRlIGFu
ZAogICAgICAgIHByb2R1Y2UgdGhlIGZvcm1hdHRlZCBvdXRwdXQgZmlsZS4KICAgICAgICAiIiIK
ICAgICAgICB0ZW1wbGF0ZV9wYXRoID0gIiIKICAgICAgICBpZiBub3Qgb3MucGF0aC5leGlzdHMo
dWQudGVtcGxhdGUpOgogICAgICAgICAgICBmaWxlc3BhdGggPSBkLmdldFZhcigiRklMRVNQQVRI
IikKICAgICAgICAgICAgZm9yIGxvY2F0aW9uIGluIGZpbHRlcihOb25lLCBbUGF0aChwKSBmb3Ig
cCBpbiBmaWxlc3BhdGguc3BsaXQoIjoiKV0pOgogICAgICAgICAgICAgICAgZm9yIGdsb2JfaGl0
IGluIGxvY2F0aW9uLmdsb2IodWQudGVtcGxhdGUpOgogICAgICAgICAgICAgICAgICAgIGlmIGds
b2JfaGl0LmV4aXN0cygpOgogICAgICAgICAgICAgICAgICAgICAgICB0ZW1wbGF0ZV9wYXRoID0g
bG9jYXRpb24gLyB1ZC50ZW1wbGF0ZQogICAgICAgICAgICAgICAgICAgICAgICBiYi5ub3RlKGYi
Rm91bmQgdGVtcGxhdGUgZmlsZSBhdCB7dGVtcGxhdGVfcGF0aH0iKQogICAgICAgICAgICAgICAg
ICAgICAgICBicmVhawogICAgICAgICAgICBpZiBub3QgdGVtcGxhdGVfcGF0aDoKICAgICAgICAg
ICAgICAgIHJhaXNlIEZldGNoRXJyb3IoZiJUZW1wbGF0ZSBmaWxlIG5vdCBmb3VuZDoge3VkLnRl
bXBsYXRlfSIpCgogICAgICAgIGRsX2RpciA9IGQuZ2V0VmFyKCJETF9ESVIiKQogICAgICAgIGRl
c3QgPSBvcy5wYXRoLmpvaW4oZGxfZGlyLCB1ZC5vdXRwdXQpCiAgICAgICAgb3MuZW52aXJvblsi
T1BfU0VSVklDRV9BQ0NPVU5UX1RPS0VOIl0gPSBkLmdldFZhcigiT1BfU0VSVklDRV9BQ0NPVU5U
X1RPS0VOIikKCiAgICAgICAgYmIubm90ZShmIkluamVjdGluZyAxUGFzc3dvcmQgdGVtcGxhdGU6
IHt1ZC50ZW1wbGF0ZX0gLT4ge2Rlc3R9IikKICAgICAgICBjbWQgPSBmIi91c3IvbG9jYWwvYmlu
L29wIGluamVjdCAtZiAtaSB7dGVtcGxhdGVfcGF0aH0gLW8ge2Rlc3R9IgogICAgICAgIHJ1bmZl
dGNoY21kKGNtZCwgZCkKCiAgICAgICAgaWYgbm90IG9zLnBhdGguZXhpc3RzKGRlc3QpOgogICAg
ICAgICAgICByYWlzZSBGZXRjaEVycm9yKCJvcCBpbmplY3QgZGlkIG5vdCBwcm9kdWNlIG91dHB1
dCBmaWxlIikKCiAgICAgICAgIyBUaGUgbG9jYWxmaWxlIGlzIHRoZSBmaWxlIEJpdEJha2Ugd2ls
bCBjaGVja3N1bSBhbmQgc3RhZ2UuCiAgICAgICAgdWQubG9jYWxwYXRoID0gZGVzdAoKICAgIGRl
ZiB1bnBhY2soc2VsZiwgdWQsIGRlc3RkaXIsIGQpOgogICAgICAgICIiIgogICAgICAgIFN0YW5k
YXJkIGZldGNoZXIgQVBJOiBjb3B5IHRoZSBpbmplY3RlZCBmaWxlIGludG8gdGhlIHVucGFja2Vk
IHNvdXJjZSBkaXIuCiAgICAgICAgIiIiCiAgICAgICAgYmIudXRpbHMuY29weWZpbGUodWQubG9j
YWxwYXRoLCBvcy5wYXRoLmpvaW4oZGVzdGRpciwgdWQub3V0cHV0KSkKCiAgICBkZWYgY2hlY2tz
dGF0dXMoc2VsZiwgZmV0Y2gsIHVybGRhdGEsIGQpOgogICAgICAgIHJldHVybiBUcnVlCg==

--ekQHwCdCGpFJswlKo8WR--

