Return-Path: <Salahaldeen.Altous@leica-camera.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8495CC4345F
	for <webhook@archiver.kernel.org>; Tue, 23 Apr 2024 13:06:42 +0000 (UTC)
Subject: Re: [yocto] Yocto common place holder for includes which used multiple recipe
To: "Alexander Kanavin" <alex.kanavin@gmail.com>, yocto@lists.yoctoproject.org
From: "Altous, Salahaldeen" <Salahaldeen.Altous@leica-camera.com>
X-Originating-Location: Ankara, TR (91.93.226.216)
X-Originating-Platform: Linux Firefox 124
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 23 Apr 2024 06:06:38 -0700
References: <CANNYZj_o623xZpW+RwS__VAP1Weu=gWnorX38ZghkhEsWm54Qw@mail.gmail.com>
In-Reply-To: <CANNYZj_o623xZpW+RwS__VAP1Weu=gWnorX38ZghkhEsWm54Qw@mail.gmail.com>
Message-ID: <14877.1713877598189993473@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="PWhC55mU3jbhKslvndlY"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 23 Apr 2024 13:06:42 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62989

--PWhC55mU3jbhKslvndlY
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2024 at 05:27 AM, Alexander Kanavin wrote:

>=20
> Yes this should be fine. But don't forget to inherit it in all the
> recipes that would use these variables.
>=20
> Here's an example:
> https://git.yoctoproject.org/poky/tree/meta/classes-recipe/gnomebase.bbcl=
ass
>=20

Thanks I will give a try

>=20
>=20
> Alex
>=20
> On Tue, 23 Apr 2024 at 14:19, Altous, Salahaldeen via
> Lists.Yoctoproject.Org
> <Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>=20
>> Hi Alex
>>=20
>> thanks for your quick reply.
>>=20
>> On Tue, Apr 23, 2024 at 05:02 AM, Alexander Kanavin wrote:
>>=20
>> I think you can simply make it a class and put under
>> classes/some.bbclass? Plenty of recipes in oe-core do this, see e.g.
>> gnomebase.bbclass.
>>=20
>> I need something like these these variables
>>=20
>> EXTERNAL_PROJECT_XXX_TYPE ?=3D "lib"
>> EXTERNAL_PROJECT_XXX_NAME ?=3D "lc_xxx"
>> EXTERNAL_PROJECT_XXX_GIT_URI ?=3D
>> "${COMPANY_GIT_REPO}:test/independent-modules/lc_xxx.git"
>> EXTERNAL_PROJECT_XXX_GIT_BRANCH ?=3D "development"
>> EXTERNAL_PROJECT_XXX_GIT_TAG ?=3D "0.4.3-dev"
>>=20
>> EXTERNAL_PROJECT_YYY_TYPE ?=3D "lib"
>> EXTERNAL_PROJECT_YYY_NAME ?=3D "lc-yyy"
>> EXTERNAL_PROJECT_XXX_GIT_URI ?=3D
>> "${COMPANY_GIT_REPO}:test/independent-modules/lc_xxx.git"
>> EXTERNAL_PROJECT_YYY_GIT_BRANCH ?=3D "development"
>> EXTERNAL_PROJECT_YYY_GIT_TAG ?=3D "0.2.1-dev"
>>=20
>> is this something possible with bbclass?
>>=20
>> Salahaldeen
>>=20
>>=20
>> Alex
>>=20
>> On Tue, 23 Apr 2024 at 13:57, Altous, Salahaldeen via
>> lists.yoctoproject.org
>> <Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org> wrote:
>>=20
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
>=20
>=20

Thanks I will give a try

--PWhC55mU3jbhKslvndlY
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Tue, Apr 23, 2024 at 05:27 AM, Alexander Kanavin wrote:<br />
<blockquote>Yes this should be fine. But don't forget to inherit it in all =
the<br />recipes that would use these variables.<br /><br />Here's an examp=
le:<br /><a href=3D"https://git.yoctoproject.org/poky/tree/meta/classes-rec=
ipe/gnomebase.bbclass" target=3D"_blank" rel=3D"noopener">https://git.yocto=
project.org/poky/tree/meta/classes-recipe/gnomebase.bbclass</a></blockquote=
>
Thanks I will give a try<br />
<blockquote><br />Alex<br /><br />On Tue, 23 Apr 2024 at 14:19, Altous, Sal=
ahaldeen via<br />Lists.Yoctoproject.Org<br />&lt;Salahaldeen.Altous=3Dleic=
a-camera.com@lists.yoctoproject.org&gt; wrote:<br />
<blockquote>Hi Alex<br /><br />thanks for your quick reply.<br /><br />On T=
ue, Apr 23, 2024 at 05:02 AM, Alexander Kanavin wrote:<br /><br />I think y=
ou can simply make it a class and put under<br />classes/some.bbclass? Plen=
ty of recipes in oe-core do this, see e.g.<br />gnomebase.bbclass.<br /><br=
 />I need something like these these variables<br /><br />EXTERNAL_PROJECT_=
XXX_TYPE ?=3D "lib"<br />EXTERNAL_PROJECT_XXX_NAME ?=3D "lc_xxx"<br />EXTER=
NAL_PROJECT_XXX_GIT_URI ?=3D "${COMPANY_GIT_REPO}:test/independent-modules/=
lc_xxx.git"<br />EXTERNAL_PROJECT_XXX_GIT_BRANCH ?=3D "development"<br />EX=
TERNAL_PROJECT_XXX_GIT_TAG ?=3D "0.4.3-dev"<br /><br />EXTERNAL_PROJECT_YYY=
_TYPE ?=3D "lib"<br />EXTERNAL_PROJECT_YYY_NAME ?=3D "lc-yyy"<br />EXTERNAL=
_PROJECT_XXX_GIT_URI ?=3D "${COMPANY_GIT_REPO}:test/independent-modules/lc_=
xxx.git"<br />EXTERNAL_PROJECT_YYY_GIT_BRANCH ?=3D "development"<br />EXTER=
NAL_PROJECT_YYY_GIT_TAG ?=3D "0.2.1-dev"<br /><br />is this something possi=
ble with bbclass?<br /><br />Salahaldeen<br /><br /><br />Alex<br /><br />O=
n Tue, 23 Apr 2024 at 13:57, Altous, Salahaldeen via<br />lists.yoctoprojec=
t.org<br />&lt;Salahaldeen.Altous=3Dleica-camera.com@lists.yoctoproject.org=
&gt; wrote:<br /><br />Hi All,<br /><br />I need a common place holder to s=
hare one include files which can be used by multiple recipe (this include f=
iles includes some variables like SRC_URL, tag, gitbranch, ..., etc).<br />=
<br />I can copy it to each recipe but I am looking for the best practice t=
o share a common inc file for all recipes in meta-xxx which can be found by=
 default and this need to be under meta-xxx folder.<br /><br />thanks in ad=
vance.<br /><br /><br /><br />Regards,<br /><br />Salahaldeen Altous</block=
quote>
</blockquote>
<br />&nbsp;Thanks I will give a try

--PWhC55mU3jbhKslvndlY--

