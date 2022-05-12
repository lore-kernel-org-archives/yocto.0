Return-Path: <abongwabonalais@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6562FC433EF
	for <webhook@archiver.kernel.org>; Thu, 12 May 2022 11:13:23 +0000 (UTC)
Subject: Re: [PATCH yocto-autobuilder-helper v14] Add a banner on the old
 documentation docs.
To: yocto@lists.yoctoproject.org
From: "Abongwa Amahnui Bonalais" <abongwabonalais@gmail.com>
X-Originating-Location: CM (154.72.153.151)
X-Originating-Platform: Linux Chrome 100
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 12 May 2022 04:13:13 -0700
References: <3a06bba8-c9a4-7068-1fb0-d737f1088a47@theobroma-systems.com>
In-Reply-To: <3a06bba8-c9a4-7068-1fb0-d737f1088a47@theobroma-systems.com>
Message-ID: <4147.1652353993703687851@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="1Zw9b8gbgjyZu6KnvkXg"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 12 May 2022 11:13:23 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/57066

--1Zw9b8gbgjyZu6KnvkXg
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 12, 2022 at 09:23 AM, Quentin Schulz wrote:

>=20
> Not quite happy with this comment as I still don't understand why this wa=
s
> needed.
>=20
> What is the issue with "any .body property existing in any css file
> [being] overwritten"?
>=20
> I am not going to fight it too much as we really need this banner and the
> files it applies to won't change over time, so it shouldn't actually be a
> maintenance burden. This obviously is a maintainer choice so I'll let
> people with veto power decide on this :)

Hi Quentin,

Thanks for reviewing,
There are some html files whose main div wrapping all it's content are havi=
ng different class names, So I created my own class name wrapping everythin=
g to overide the current class so it's properties can be accurately called =
from the css files.
The reason I decided to do this is because I think in order for the banner =
to remain at the top, everything below it has to be given a property that s=
hifts it downwards so as to prevent overlapping of the body content with th=
e banner, including the logo.
That is my line of thinking here.
Thank You

--1Zw9b8gbgjyZu6KnvkXg
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, May 12, 2022 at 09:23 AM, Quentin Schulz wrote:<br />
<blockquote>Not quite happy with this comment as I still don't understand w=
hy this was needed.<br /><br />What is the issue with "any .body property e=
xisting in any css file [being] overwritten"?<br /><br />I am not going to =
fight it too much as we really need this banner and the files it applies to=
 won't change over time, so it shouldn't actually be a maintenance burden. =
This obviously is a maintainer choice so I'll let people with veto power de=
cide on this :)</blockquote>
<br />Hi Quentin,<br /><br />Thanks for reviewing,&nbsp;<br />There are som=
e html files whose main div wrapping all it's content are having different =
class names, So I created my own class name wrapping everything to overide =
the current class so it's properties can be accurately called from the css =
files.<br />The reason I decided to do this is because I think in order for=
 the banner to remain at the top, everything below it has to be given a pro=
perty that shifts it downwards so as to prevent overlapping of the body con=
tent with the banner, including the logo.<br />That is my line of thinking =
here.<br />Thank You

--1Zw9b8gbgjyZu6KnvkXg--

