Return-Path: <talhacali@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 686DCC77B6F
	for <webhook@archiver.kernel.org>; Tue, 11 Apr 2023 14:31:32 +0000 (UTC)
Subject: Re: create-layers-setup Yaml support #bitbake
To: yocto@lists.yoctoproject.org
From: talhacali@gmail.com
X-Originating-Location: CH (147.161.251.99)
X-Originating-Platform: Windows Chrome 111
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 11 Apr 2023 07:31:27 -0700
References: <CANNYZj_ga--eO9pUFMw_YTkiULoN9JiDWpRkpXjsHToVxoFw5Q@mail.gmail.com>
In-Reply-To: <CANNYZj_ga--eO9pUFMw_YTkiULoN9JiDWpRkpXjsHToVxoFw5Q@mail.gmail.com>
Message-ID: <28742.1681223487079543700@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="QGYGj9gNdBeVFX7mR7sB"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 11 Apr 2023 14:31:32 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59681

--QGYGj9gNdBeVFX7mR7sB
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So, how a renovate bot ( https://github.com/renovatebot/renovate ) works is=
 that it parses the files for a specific regular expression that we determi=
ne and checks *the line after* this regular expression. So it needs to be i=
n the same json file.

For example:

>=20
> {
> "sources": {
> "poky": {
> "git-remote": {
> "branch": "master",
> "describe": "4.2_M2-676-gdf3ce81ed3",
> "remotes": {
> "origin": {
> "uri": "https://github.com/yoctoproject/poky.git"
> }
> },
> // renovate: datasource=3Dgit-tags depName=3Dyoctoproject/poky
> lookupName=3Dhttps://github.com/yoctoproject/poky.git
> "rev": "df3ce81ed3e5491b084041c5bcbd16dada129cf9"
> },
> "path": "poky"
> }
> },
> "version": "1.0"
> }
>=20
>=20

So, for this file, renovate bot will find the line in red beginning with "/=
/ renovate: ", and then check the next line which is "rev": "df3ce81ed3e549=
1b084041c5bcbd16dada129cf9", if that commit is not the latest commit, then =
it will replace it with the latest.

--QGYGj9gNdBeVFX7mR7sB
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

So, how a&nbsp;<a href=3D"https://github.com/renovatebot/renovate" target=
=3D"_blank" rel=3D"noopener">renovate bot</a>&nbsp;works is that it parses =
the files for a specific regular expression that we determine and checks <s=
trong>the line after</strong> this regular expression. So it needs to be in=
 the same json file.<br /><br />For example:<br />
<blockquote>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">{</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; "sources": {</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; "poky": {</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "git-remote": {</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "branch": "master=
",</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "describe": "4.2_=
M2-676-gdf3ce81ed3",</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "remotes": {</spa=
n></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "or=
igin": {</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; &nbsp; "uri": "https://github.com/yoctoproject/poky.git"</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; }</=
span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; },<br /><span sty=
le=3D"color: #ff0000;">// renovate: datasource=3Dgit-tags depName=3Dyoctopr=
oject/poky lookupName=3Dhttps://github.com/yoctoproject/poky.git</span></sp=
an></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "rev": "df3ce81ed=
3e5491b084041c5bcbd16dada129cf9"</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; },</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; "path": "poky"</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; &nbsp; &nbsp; }</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; },</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">&nbsp; &nbsp; "version": "1.0"</span></div>
<div style=3D"line-height: 1.42857; color: #d4d4d4; font-family: Consolas, =
'Courier New', monospace; white-space: pre;"><span style=3D"color: #000000;=
">}<br /></span></div>
</blockquote>
So, for this file, renovate bot will find the line in red beginning with "/=
/ renovate: ", and then check the next line which is <span style=3D"color: =
#000000; font-family: Consolas, 'Courier New', monospace; white-space: pre;=
">"rev": "df3ce81ed3e5491b084041c5bcbd16dada129cf9", if that commit is not =
the latest commit, then it will replace it with the latest.<br /></span>

--QGYGj9gNdBeVFX7mR7sB--

