Return-Path: <dhanyalakshmi.k@priyarajaelectronics.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1B7BC25B74
	for <webhook@archiver.kernel.org>; Thu, 16 May 2024 10:29:56 +0000 (UTC)
Subject: Re: Unable to populate_sdk for ls1012afrwy macine
To: yocto@lists.yoctoproject.org
From: dhanyalakshmi.k@priyarajaelectronics.com
X-Originating-Location: =?UTF-8?B?UGFyaXMsIMOObGUtZGUtRnJhbmNlLCBGUg==?= (51.158.186.242)
X-Originating-Platform: Linux Chrome 123
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 16 May 2024 03:29:54 -0700
Message-ID: <EPUO.1715855394439495383.87H2@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="GHgA12TejZs6XnKQPmNr"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 16 May 2024 10:29:56 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63113

--GHgA12TejZs6XnKQPmNr
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank You Alex for the information.
I went through the links you provided for recent branches of yocto.

Branch Version mickledore YP 4.2=E2=80=93lf-6.1.55 langdale YP 4.1=E2=80=93=
lf-6.1.1 kirkstone YP 4.0=E2=80=93lf-5.15.71 honister YP 3.4=E2=80=93lf-5.1=
5.5 hardknott YP 3.3=E2=80=93lf-5.10.72 gatesgarth YP 3.2=E2=80=93lf-5.10.9=
 dunfell YP 3.1=E2=80=93LSDK 2004 zeus YP 3.0=E2=80=93LSDK 1909 warrior YP =
2.7=E2=80=93LSDK 1906 thud YP 2.6=E2=80=93LSDK 1809 sumo YP 2.5=E2=80=93LSD=
K 1806

Isn't the mickledore a recent one because i can see that it's version is 4.=
2
so i'm confused here

--GHgA12TejZs6XnKQPmNr
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Thank You Alex for the information.<br />I went through the links you provi=
ded for recent branches of yocto.<br />
<table style=3D"box-sizing: border-box; border-spacing: 0px; border-collaps=
e: collapse; margin-top: 0px; margin-bottom: 16px; display: block; width: m=
ax-content; max-width: 100%; overflow: auto; color: #1f2328; font-family: -=
apple-system, BlinkMacSystemFont, 'Segoe UI', 'Noto Sans', Helvetica, Arial=
, sans-serif, 'Apple Color Emoji', 'Segoe UI Emoji'; font-size: 16px; font-=
style: normal; font-variant-ligatures: normal; font-variant-caps: normal; f=
ont-weight: 400; letter-spacing: normal; orphans: 2; text-align: start; tex=
t-transform: none; widows: 2; word-spacing: 0px; -webkit-text-stroke-width:=
 0px; white-space: normal; background-color: #ffffff; text-decoration-thick=
ness: initial; text-decoration-style: initial; text-decoration-color: initi=
al;">
<thead style=3D"box-sizing: border-box;">
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-defaul=
t, var(--color-canvas-default)); border-top: 1px solid var(--borderColor-mu=
ted, var(--color-border-muted));">
<th style=3D"box-sizing: border-box; padding: 6px 13px; font-weight: var(--=
base-text-weight-semibold, 600); border: 1px solid var(--borderColor-defaul=
t, var(--color-border-default));">Branch</th>
<th style=3D"box-sizing: border-box; padding: 6px 13px; font-weight: var(--=
base-text-weight-semibold, 600); border: 1px solid var(--borderColor-defaul=
t, var(--color-border-default));">Version</th>
</tr>
</thead>
<tbody style=3D"box-sizing: border-box;">
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-defaul=
t, var(--color-canvas-default)); border-top: 1px solid var(--borderColor-mu=
ted, var(--color-border-muted));">
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">mickledore</td>
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">YP 4.2&ndash;lf-6.=
1.55</td>
</tr>
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-muted,=
 var(--color-canvas-subtle)); border-top: 1px solid var(--borderColor-muted=
, var(--color-border-muted));">
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">langdale</td>
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">YP 4.1&ndash;lf-6.=
1.1</td>
</tr>
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-defaul=
t, var(--color-canvas-default)); border-top: 1px solid var(--borderColor-mu=
ted, var(--color-border-muted));">
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">kirkstone</td>
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">YP 4.0&ndash;lf-5.=
15.71</td>
</tr>
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-muted,=
 var(--color-canvas-subtle)); border-top: 1px solid var(--borderColor-muted=
, var(--color-border-muted));">
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">honister</td>
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">YP 3.4&ndash;lf-5.=
15.5</td>
</tr>
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-defaul=
t, var(--color-canvas-default)); border-top: 1px solid var(--borderColor-mu=
ted, var(--color-border-muted));">
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">hardknott</td>
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">YP 3.3&ndash;lf-5.=
10.72</td>
</tr>
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-muted,=
 var(--color-canvas-subtle)); border-top: 1px solid var(--borderColor-muted=
, var(--color-border-muted));">
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">gatesgarth</td>
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">YP 3.2&ndash;lf-5.=
10.9</td>
</tr>
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-defaul=
t, var(--color-canvas-default)); border-top: 1px solid var(--borderColor-mu=
ted, var(--color-border-muted));">
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">dunfell</td>
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">YP 3.1&ndash;LSDK =
2004</td>
</tr>
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-muted,=
 var(--color-canvas-subtle)); border-top: 1px solid var(--borderColor-muted=
, var(--color-border-muted));">
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">zeus</td>
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">YP 3.0&ndash;LSDK =
1909</td>
</tr>
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-defaul=
t, var(--color-canvas-default)); border-top: 1px solid var(--borderColor-mu=
ted, var(--color-border-muted));">
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">warrior</td>
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">YP 2.7&ndash;LSDK =
1906</td>
</tr>
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-muted,=
 var(--color-canvas-subtle)); border-top: 1px solid var(--borderColor-muted=
, var(--color-border-muted));">
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">thud</td>
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">YP 2.6&ndash;LSDK =
1809</td>
</tr>
<tr style=3D"box-sizing: border-box; background-color: var(--bgcolor-defaul=
t, var(--color-canvas-default)); border-top: 1px solid var(--borderColor-mu=
ted, var(--color-border-muted));">
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">sumo</td>
<td style=3D"box-sizing: border-box; padding: 6px 13px; border: 1px solid v=
ar(--borderColor-default, var(--color-border-default));">YP 2.5&ndash;LSDK =
1806</td>
</tr>
</tbody>
</table>
Isn't the mickledore a recent one because i can see that it's version is 4.=
2<br />so i'm confused here

--GHgA12TejZs6XnKQPmNr--

