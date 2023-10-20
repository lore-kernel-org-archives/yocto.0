Return-Path: <alexzoyv@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE69CCDB474
	for <webhook@archiver.kernel.org>; Fri, 20 Oct 2023 11:55:27 +0000 (UTC)
Subject: Http access token fetching with gitsm fetcher
To: yocto@lists.yoctoproject.org
From: alexzoyv@gmail.com
X-Originating-Location: RU (193.232.110.5)
X-Originating-Platform: Linux Chrome 118
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 20 Oct 2023 04:55:18 -0700
Message-ID: <SI8G.1697802918201554942.vNSZ@lists.yoctoproject.org>
Content-Type: multipart/mixed; boundary="SZWwhshZGS6okd1uH8h1"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 20 Oct 2023 11:55:27 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61430

--SZWwhshZGS6okd1uH8h1
Content-Type: multipart/alternative; boundary="IQM8dMTs6FvGRZ85zpjk"

--IQM8dMTs6FvGRZ85zpjk
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings!
I try to use gitsm fetcher to fetch bitbucket repository with read-only htt=
ps access token. SRC_URI looks like this
>=20
>=20
> SRC_URI =3D
> "gitsm://******.git;protocol=3Dhttps;branch=3D${BRANCH};user=3Dazoykin:${=
TOKEN}"
>=20
>=20

This recipe fetches parent repository, but is unable to fetch submodule, wr=
iting fatal: could not read Username for 'https://tps-git.topcon.com': No s=
uch device or address in log.do_fetch
It happens because url is passed to fetcher function already with user stri=
ng. I suggest a patch to fix this issue

--IQM8dMTs6FvGRZ85zpjk
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Greetings!<br />I try to use gitsm fetcher to fetch bitbucket repository wi=
th read-only https access token. SRC_URI looks like this
<blockquote>
<div>SRC_URI =3D "gitsm://******.git;protocol=3Dhttps;branch=3D${BRANCH};us=
er=3Dazoykin:${TOKEN}"</div>
</blockquote>
<div>This recipe fetches parent repository, but is unable to fetch submodul=
e, writing&nbsp;<em>fatal: could not read Username for 'https://tps-git.top=
con.com': No such device or address </em>in log.do_fetch<br />It happens be=
cause url is passed to fetcher function already with user string. I suggest=
 a patch to fix this issue<br /><br /></div>

--IQM8dMTs6FvGRZ85zpjk--

--SZWwhshZGS6okd1uH8h1
Content-Type: text/x-patch; name="gits.patch"
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename="gits.patch"

ZGlmZiAtLWdpdCBhL2xpYi9iYi9mZXRjaDIvZ2l0c20ucHkgYi9saWIvYmIvZmV0Y2gyL2dpdHNt
LnB5CmluZGV4IGM1ZjdjMDNjLi4zYTAyNTYyNCAxMDA2NDQKLS0tIGEvbGliL2JiL2ZldGNoMi9n
aXRzbS5weQorKysgYi9saWIvYmIvZmV0Y2gyL2dpdHNtLnB5CkBAIC0xMDAsNiArMTAwLDEwIEBA
IGNsYXNzIEdpdFNNKEdpdCk6CiAgICAgICAgICAgICAgICAgIyBQcm9wZXJseSBmb3JtYXRlZCBV
UkwgYWxyZWFkeQogICAgICAgICAgICAgICAgIHByb3RvID0gdXJpc1ttb2R1bGVdLnNwbGl0KCc6
JywgMSlbMF0KICAgICAgICAgICAgICAgICB1cmwgPSB1cmlzW21vZHVsZV0ucmVwbGFjZSgnJXM6
JyAlIHByb3RvLCAnZ2l0c206JywgMSkKKyAgICAgICAgICAgICAgICAjIHJlbW92ZSB1c2VyK3Bh
c3N3b3JkIGZyb20gc3RyaW5nIHRvIGFkZCB0aGVtIGFzIHBhcmFtZXRlcgorICAgICAgICAgICAg
ICAgIGlmIHVkLnVzZXIgaW4gdXJsOgorICAgICAgICAgICAgICAgICAgICB1cmwgPSB1cmwucmVw
bGFjZSh1ZC51c2VyICsgJ0AnLCAnJykKKyAgICAgICAgICAgICAgICAgICAgdXJsICs9ICI7dXNl
cj0lcyIgJSB1ZC51c2VyCiAgICAgICAgICAgICBlbHNlOgogICAgICAgICAgICAgICAgIGlmICI6
IiBpbiB1cmlzW21vZHVsZV06CiAgICAgICAgICAgICAgICAgICAgICMgTW9zdCBsaWtlbHkgYW4g
U1NIIHN0eWxlIHJlZmVyZW5jZQo=

--SZWwhshZGS6okd1uH8h1--

