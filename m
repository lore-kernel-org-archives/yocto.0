Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 56E7AC4345F
	for <webhook@archiver.kernel.org>; Tue, 23 Apr 2024 12:19:22 +0000 (UTC)
Subject: Re: [yocto] Yocto common place holder for includes which used multiple recipe
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 Apr 2024 05:19:15 -0700
References: <CANNYZj8KMPiz3kKT-XNwc1pEDDFp85aem6fMbQ_b9S=ZASfwvA@mail.gmail.com>
In-Reply-To: <CANNYZj8KMPiz3kKT-XNwc1pEDDFp85aem6fMbQ_b9S=ZASfwvA@mail.gmail.com>
Message-ID: <24843.1713874755677867912@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="4i8QyBRs7ZGJahhLhxk7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Apr 2024 12:19:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62987

--4i8QyBRs7ZGJahhLhxk7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi Alex

thanks for your quick reply.

On Tue, Apr 23, 2024 at 05:02 AM, Alexander Kanavin wrote:

>=20
> I think you can simply make it a class and put under
> classes/some.bbclass? Plenty of recipes in oe-core do this, see e.g.
> gnomebase.bbclass.

I need something like these these variables

EXTERNAL_PROJECT_XXX_TYPE ?=3D "lib"
EXTERNAL_PROJECT_XXX_NAME ?=3D "lc_xxx"
EXTERNAL_PROJECT_XXX_GIT_URI ?=3D "${COMPANY_GIT_REPO}:test/independent-mod=
ules/lc_xxx.git"
EXTERNAL_PROJECT_XXX_GIT_BRANCH ?=3D "development"
EXTERNAL_PROJECT_XXX_GIT_TAG ?=3D "0.4.3-dev"

EXTERNAL_PROJECT_YYY_TYPE ?=3D "lib"
EXTERNAL_PROJECT_YYY_NAME ?=3D "lc-yyy"
EXTERNAL_PROJECT_XXX_GIT_URI ?=3D "${COMPANY_GIT_REPO}:test/independent-mod=
ules/lc_xxx.git"
EXTERNAL_PROJECT_YYY_GIT_BRANCH ?=3D "development"
EXTERNAL_PROJECT_YYY_GIT_TAG ?=3D "0.2.1-dev"

is this something possible with bbclass?

Salahaldeen

>=20
>=20
> Alex
>=20
> On Tue, 23 Apr 2024 at 13:57, Altous, Salahaldeen via
> lists.yoctoproject.org
> <Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>=20
>> Hi All,
>>=20
>> I need a common place holder to share one include files which can be use=
d
>> by multiple recipe (this include files includes some variables like
>> SRC_URL, tag, gitbranch, ..., etc).
>>=20
>> I can copy it to each recipe but I am looking for the best practice to
>> share a common inc file for all recipes in meta-xxx which can be found b=
y
>> default and this need to be under meta-xxx folder.
>>=20
>> thanks in advance.
>>=20
>>=20
>>=20
>> Regards,
>>=20
>> Salahaldeen Altous
>>=20
>>=20
>>=20
>=20
>

--4i8QyBRs7ZGJahhLhxk7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<p>Hi Alex</p>
<p>thanks for your quick reply.</p>
<p>On Tue, Apr 23, 2024 at 05:02 AM, Alexander Kanavin wrote:</p>
<blockquote>I think you can simply make it a class and put under<br />class=
es/some.bbclass? Plenty of recipes in oe-core do this, see e.g.<br />gnomeb=
ase.bbclass.</blockquote>
<p>I need something like these these variables</p>
<p>EXTERNAL_PROJECT_XXX_TYPE ?=3D "lib"<br />EXTERNAL_PROJECT_XXX_NAME ?=3D=
 "lc_xxx"<br />EXTERNAL_PROJECT_XXX_GIT_URI ?=3D "${COMPANY_GIT_REPO}:test/=
independent-modules/lc_xxx.git"<br />EXTERNAL_PROJECT_XXX_GIT_BRANCH ?=3D "=
development"<br />EXTERNAL_PROJECT_XXX_GIT_TAG ?=3D "0.4.3-dev"<br /><br />=
EXTERNAL_PROJECT_YYY_TYPE ?=3D "lib"<br />EXTERNAL_PROJECT_YYY_NAME ?=3D "l=
c-yyy"<br />EXTERNAL_PROJECT_XXX_GIT_URI ?=3D "${COMPANY_GIT_REPO}:test/ind=
ependent-modules/lc_xxx.git"<br />EXTERNAL_PROJECT_YYY_GIT_BRANCH ?=3D "dev=
elopment"<br />EXTERNAL_PROJECT_YYY_GIT_TAG ?=3D "0.2.1-dev"</p>
<p>is this something possible with bbclass?</p>
<p>Salahaldeen</p>
<blockquote><br />Alex<br /><br />On Tue, 23 Apr 2024 at 13:57, Altous, Sal=
ahaldeen via<br />lists.yoctoproject.org<br />&lt;Salahaldeen.Altous=3Dleic=
a-camera.com@lists.yoctoproject.org&gt; wrote:<br />
<blockquote>Hi All,<br /><br />I need a common place holder to share one in=
clude files which can be used by multiple recipe (this include files includ=
es some variables like SRC_URL, tag, gitbranch, ..., etc).<br /><br />I can=
 copy it to each recipe but I am looking for the best practice to share a c=
ommon inc file for all recipes in meta-xxx which can be found by default an=
d this need to be under meta-xxx folder.<br /><br />thanks in advance.<br /=
><br /><br /><br />Regards,<br /><br />Salahaldeen Altous<br /><br /><br />=
</blockquote>
</blockquote>

--4i8QyBRs7ZGJahhLhxk7--

