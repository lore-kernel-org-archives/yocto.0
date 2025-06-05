Return-Path: <gary.huband@servicenow.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 89C87C5B543
	for <webhook@archiver.kernel.org>; Thu,  5 Jun 2025 16:07:01 +0000 (UTC)
Subject: Re: [yocto] Python3 pyee recipe for Kirkstone
To: "Yishai Jaffe" <yishai1999@gmail.com>, yocto@lists.yoctoproject.org
From: "Gary Huband" <gary.huband@servicenow.com>
X-Originating-Location: Charlottesville, Virginia, US (216.197.64.240)
X-Originating-Platform: Mac Safari 18.5
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 05 Jun 2025 09:06:59 -0700
References: <15723.1749130905572533862@lists.yoctoproject.org>
In-Reply-To: <15723.1749130905572533862@lists.yoctoproject.org>
Message-ID: <15723.1749139619705739052@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="0u4h0g9cPFgruiUpxMeU"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 05 Jun 2025 16:07:01 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/65471

--0u4h0g9cPFgruiUpxMeU
Content-Type: multipart/alternative; boundary="Tz8Eu3eOqFMUSLJrgmEZ"

--Tz8Eu3eOqFMUSLJrgmEZ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

From what I recall I could not get the below suggestions to work. =C2=A0I w=
as able to create a recipe that worked by installing a .whl. =C2=A0The reci=
pe is attached.

Gary

--Tz8Eu3eOqFMUSLJrgmEZ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<div>From what I recall I could not get the below suggestions to work. &nbs=
p;I was able to create a recipe that worked by installing a .whl. &nbsp;The=
 recipe is attached.</div>
<div>&nbsp;</div>
<div>Gary</div>

--Tz8Eu3eOqFMUSLJrgmEZ--

--0u4h0g9cPFgruiUpxMeU
Content-Type: application/octet-stream; name="pyee_11.1.0.bb"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="pyee_11.1.0.bb"

CiMgcHllZSBtdXN0IGhhdmUgYSBub24tc3RhbmRhcmQgcGFja2FnZSwgWW9jdG8gY2xhc3NlcyBk
byBub3QgYnVpbGQgaXQgY29ycmVjdGx5CiMgVXNlIHRoZSBweXBpIHdobCBmaWxlIHRvIGluc3Rh
bGwKIyBVc2UgZG93bmxvYWRmaWxlbmFtZSB0byBjaGFuZ2UgdGhlIC53aGwgdG8gLnppcCBzbyB0
aGF0IHRoZSB3aGwgd2lsbCBiZSB1bnppcHBlZApTUkNfVVJJID0gIlwKICAgICAgICAgICBodHRw
czovL2ZpbGVzLnB5dGhvbmhvc3RlZC5vcmcvcGFja2FnZXMvMTYvY2MvNWNlYThhMGEwZDNkZWI5
MGI1YTBkMzlhZDFhNmExY2NhYTQwYTllYTg2ZDc5M2ViOGE0OWQzMmE2ZWQwL3B5ZWUtMTEuMS4w
LXB5My1ub25lLWFueS53aGw7ZG93bmxvYWRmaWxlbmFtZT0ke1BOfS0ke1BWfS1weTMtbm9uZS1h
bnkuemlwO3N1YmRpcj0ke0JQfSBcCiAgICAgICAgICAiCgppbmhlcml0IHB5dGhvbjMtZGlyCgpM
SUNFTlNFID0gIk1JVCIKTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vJHtTfS8ke1BOfS0ke1BW
fS5kaXN0LWluZm8vTElDRU5TRTttZDU9YjJiMWNjODc5N2RmZjMyY2VjNWQ3ODMxNDhmY2VhYjUi
CgpTUkNfVVJJW21kNXN1bV0gPSAiYzk5ZjAzYzcwZjg2YzkwZjI1NmU0MTg4MGUzZDVlYzgiClNS
Q19VUklbc2hhMjU2c3VtXSA9ICI1ZDM0NmE3ZDBmODYxYTRiMmU2YzQ3OTYwMjk1YmQ4OTVmODE2
NzI1YjI3ZDY1NjE4MTk0NzM0NmJlOThkN2MxIgoKZG9fdW5wYWNrW2RlcGVuZHNdICs9ICJ1bnpp
cC1uYXRpdmU6ZG9fcG9wdWxhdGVfc3lzcm9vdCIKClJERVBFTkRTOiR7UE59ICs9ICJweXRob24z
LXR5cGluZy1leHRlbnNpb25zIgoKRklMRVM6JHtQTn0gKz0gIlwKICAgICR7UFlUSE9OX1NJVEVQ
QUNLQUdFU19ESVJ9LyR7UE59IFwKICAgICR7UFlUSE9OX1NJVEVQQUNLQUdFU19ESVJ9LyR7UE59
LSR7UFZ9LmRpc3QtaW5mbyBcCiIKCmRvX2NvbmZpZ3VyZVtub2V4ZWNdID0gIjEiCgpkb19pbnN0
YWxsKCkgewogICAgaW5zdGFsbCAtZCAke0R9JHtQWVRIT05fU0lURVBBQ0tBR0VTX0RJUn0vJHtQ
Tn0KICAgIGluc3RhbGwgLWQgJHtEfSR7UFlUSE9OX1NJVEVQQUNLQUdFU19ESVJ9LyR7UE59LSR7
UFZ9LmRpc3QtaW5mbwoKICAgIGNwIC1yICR7U30vJHtQTn0vICR7RH0ke1BZVEhPTl9TSVRFUEFD
S0FHRVNfRElSfS8KICAgIGNwIC1yICR7U30vJHtQTn0tJHtQVn0uZGlzdC1pbmZvLyAke0R9JHtQ
WVRIT05fU0lURVBBQ0tBR0VTX0RJUn0vCn0K

--0u4h0g9cPFgruiUpxMeU--

