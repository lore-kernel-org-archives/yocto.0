Return-Path: <jdowd@slashdevslashnull.org>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 049F8C54ED1
	for <webhook@archiver.kernel.org>; Tue, 27 May 2025 13:58:00 +0000 (UTC)
Subject: setup tools error reporting about the version of a package
To: yocto@lists.yoctoproject.org
From: "John" <jdowd@slashdevslashnull.org>
X-Originating-Location: Toronto, Ontario, CA (165.225.209.3)
X-Originating-Platform: Windows Chrome 136
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 27 May 2025 06:57:50 -0700
Message-ID: <BVUW.1748354270739849153.rCnq@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="wWERIwouyLANhxXtPhQG"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 27 May 2025 13:58:00 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65429

--wWERIwouyLANhxXtPhQG
Content-Type: multipart/alternative; boundary="rwulX9GMwK9rn6V8AN3J"

--rwulX9GMwK9rn6V8AN3J
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I'm using scarthgap to build an image that is using an old version of u-boo=
t. I have this error:

>=20
> setuptools.extern.packaging.version.InvalidVersion: Invalid version:
> 'u-boot-2019.10'
>=20

Now what exactly is this reporting? Is this an invalid version string and m=
ust be changed in the source code? Or, is there some minimum version requir=
ement laid down by the overall image that I'm building? The bbappend and bb=
 file names are formatted u-boot-qoriq_2019.10.*

I've added the output as it happens in the bitbake compile.

Cheers!!

--rwulX9GMwK9rn6V8AN3J
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>I'm using scarthgap to build an image that is using an old version of =
u-boot. I have this error:</div>
<div>&nbsp;</div>
<blockquote>
<div>setuptools.extern.packaging.version.InvalidVersion: Invalid version: '=
u-boot-2019.10'</div>
</blockquote>
<div>Now what exactly is this reporting? Is this an invalid version string =
and must be changed in the source code? Or, is there some minimum version r=
equirement laid down by the overall image that I'm building? The bbappend a=
nd bb file names are formatted u-boot-qoriq_2019.10.*</div>
<div>&nbsp;</div>
<div>I've added the output as it happens in the bitbake compile.</div>
<div>&nbsp;</div>
<div>Cheers!!</div>

--rwulX9GMwK9rn6V8AN3J--

--wWERIwouyLANhxXtPhQG
Content-Type: text/plain; name="error.txt"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="error.txt"

VHJhY2ViYWNrIChtb3N0IHJlY2VudCBjYWxsIGxhc3QpOgogIEZpbGUgIi9ob21lL2FzcGlyZS93
b3Jrc3BhY2UveW9jdG8tdXBncmFkZS9idWlsZF9hc3BpcmUvdG1wL3dvcmsvdDEwMjRyZGJfNjRi
LWZzbC1saW51eC91LWJvb3QtcW9yaXEvMjAxOS4xMCtmc2xnaXQvZ2l0L3NjcmlwdHMvZHRjL3B5
bGliZmR0L3NldHVwLnB5IiwgbGluZSAxMTUsIGluIDxtb2R1bGU+CiAgICBzZXR1cCgKICBGaWxl
ICIvaG9tZS9hc3BpcmUvd29ya3NwYWNlL3lvY3RvLXVwZ3JhZGUvYnVpbGRfYXNwaXJlL3RtcC93
b3JrL3QxMDI0cmRiXzY0Yi1mc2wtbGludXgvdS1ib290LXFvcmlxLzIwMTkuMTArZnNsZ2l0L3Jl
Y2lwZS1zeXNyb290LW5hdGl2ZS91c3IvbGliL3B5dGhvbjMuMTIvc2l0ZS1wYWNrYWdlcy9zZXR1
cHRvb2xzL19kaXN0dXRpbHMvY29yZS5weSIsIGxpbmUgMTQ3LCBpbiBzZXR1cAogICAgX3NldHVw
X2Rpc3RyaWJ1dGlvbiA9IGRpc3QgPSBrbGFzcyhhdHRycykKICAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgXl5eXl5eXl5eXl5eCiAgRmlsZSAiL2hvbWUvYXNwaXJlL3dvcmtzcGFjZS95
b2N0by11cGdyYWRlL2J1aWxkX2FzcGlyZS90bXAvd29yay90MTAyNHJkYl82NGItZnNsLWxpbnV4
L3UtYm9vdC1xb3JpcS8yMDE5LjEwK2ZzbGdpdC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2xp
Yi9weXRob24zLjEyL3NpdGUtcGFja2FnZXMvc2V0dXB0b29scy9kaXN0LnB5IiwgbGluZSAzMTQs
IGluIF9faW5pdF9fCiAgICBzZWxmLm1ldGFkYXRhLnZlcnNpb24gPSBzZWxmLl9ub3JtYWxpemVf
dmVyc2lvbihzZWxmLm1ldGFkYXRhLnZlcnNpb24pCiAgICAgICAgICAgICAgICAgICAgICAgICAg
ICBeXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eXl5eCiAgRmlsZSAi
L2hvbWUvYXNwaXJlL3dvcmtzcGFjZS95b2N0by11cGdyYWRlL2J1aWxkX2FzcGlyZS90bXAvd29y
ay90MTAyNHJkYl82NGItZnNsLWxpbnV4L3UtYm9vdC1xb3JpcS8yMDE5LjEwK2ZzbGdpdC9yZWNp
cGUtc3lzcm9vdC1uYXRpdmUvdXNyL2xpYi9weXRob24zLjEyL3NpdGUtcGFja2FnZXMvc2V0dXB0
b29scy9kaXN0LnB5IiwgbGluZSAzNTAsIGluIF9ub3JtYWxpemVfdmVyc2lvbgogICAgbm9ybWFs
aXplZCA9IHN0cihWZXJzaW9uKHZlcnNpb24pKQogICAgICAgICAgICAgICAgICAgICBeXl5eXl5e
Xl5eXl5eXl5eCiAgRmlsZSAiL2hvbWUvYXNwaXJlL3dvcmtzcGFjZS95b2N0by11cGdyYWRlL2J1
aWxkX2FzcGlyZS90bXAvd29yay90MTAyNHJkYl82NGItZnNsLWxpbnV4L3UtYm9vdC1xb3JpcS8y
MDE5LjEwK2ZzbGdpdC9yZWNpcGUtc3lzcm9vdC1uYXRpdmUvdXNyL2xpYi9weXRob24zLjEyL3Np
dGUtcGFja2FnZXMvc2V0dXB0b29scy9fdmVuZG9yL3BhY2thZ2luZy92ZXJzaW9uLnB5IiwgbGlu
ZSAxOTgsIGluIF9faW5pdF9fCiAgICByYWlzZSBJbnZhbGlkVmVyc2lvbihmIkludmFsaWQgdmVy
c2lvbjogJ3t2ZXJzaW9ufSciKQpzZXR1cHRvb2xzLmV4dGVybi5wYWNrYWdpbmcudmVyc2lvbi5J
bnZhbGlkVmVyc2lvbjogSW52YWxpZCB2ZXJzaW9uOiAndS1ib290LTIwMTkuMTAnCm1ha2VbNF06
ICoqKiBbL2hvbWUvYXNwaXJlL3dvcmtzcGFjZS95b2N0by11cGdyYWRlL2J1aWxkX2FzcGlyZS90
bXAvd29yay90MTAyNHJkYl82NGItZnNsLWxpbnV4L3UtYm9vdC1xb3JpcS8yMDE5LjEwK2ZzbGdp
dC9naXQvc2NyaXB0cy9kdGMvcHlsaWJmZHQvTWFrZWZpbGU6Mjc6IHNjcmlwdHMvZHRjL3B5bGli
ZmR0L19saWJmZHQuc29dIEVycm9yIDEKbWFrZVszXTogKioqIFsvaG9tZS9hc3BpcmUvd29ya3Nw
YWNlL3lvY3RvLXVwZ3JhZGUvYnVpbGRfYXNwaXJlL3RtcC93b3JrL3QxMDI0cmRiXzY0Yi1mc2wt
bGludXgvdS1ib290LXFvcmlxLzIwMTkuMTArZnNsZ2l0L2dpdC9zY3JpcHRzL01ha2VmaWxlLmJ1
aWxkOjQzMjogc2NyaXB0cy9kdGMvcHlsaWJmZHRdIEVycm9yIDIKbWFrZVsyXTogKioqIFsvaG9t
ZS9hc3BpcmUvd29ya3NwYWNlL3lvY3RvLXVwZ3JhZGUvYnVpbGRfYXNwaXJlL3RtcC93b3JrL3Qx
MDI0cmRiXzY0Yi1mc2wtbGludXgvdS1ib290LXFvcmlxLzIwMTkuMTArZnNsZ2l0L2dpdC9zY3Jp
cHRzL01ha2VmaWxlLmJ1aWxkOjQzMjogc2NyaXB0cy9kdGNdIEVycm9yIDIKbWFrZVsxXTogKioq
IFsvaG9tZS9hc3BpcmUvd29ya3NwYWNlL3lvY3RvLXVwZ3JhZGUvYnVpbGRfYXNwaXJlL3RtcC93
b3JrL3QxMDI0cmRiXzY0Yi1mc2wtbGludXgvdS1ib290LXFvcmlxLzIwMTkuMTArZnNsZ2l0L2dp
dC9NYWtlZmlsZTo1Mjg6IHNjcmlwdHNdIEVycm9yIDIKbWFrZTogKioqIFtNYWtlZmlsZToxNDg6
IHN1Yi1tYWtlXSBFcnJvciAyCm1ha2U6IExlYXZpbmcgZGlyZWN0b3J5ICcvaG9tZS9hc3BpcmUv
d29ya3NwYWNlL3lvY3RvLXVwZ3JhZGUvYnVpbGRfYXNwaXJlL3RtcC93b3JrL3QxMDI0cmRiXzY0
Yi1mc2wtbGludXgvdS1ib290LXFvcmlxLzIwMTkuMTArZnNsZ2l0L2dpdCcKCg==

--wWERIwouyLANhxXtPhQG--

