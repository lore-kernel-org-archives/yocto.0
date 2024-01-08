Return-Path: <daniele.lugli@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 928BDC3DA6E
	for <webhook@archiver.kernel.org>; Mon,  8 Jan 2024 17:19:58 +0000 (UTC)
Subject: Problem with overlayed recipes
To: yocto@lists.yoctoproject.org
From: "Daniele Lugli" <daniele.lugli@gmail.com>
X-Originating-Location: Livorno, Tuscany, IT (176.246.5.130)
X-Originating-Platform: Windows Opera 106
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 08 Jan 2024 09:19:55 -0800
Message-ID: <ocEt.1704734395375052856.iqoF@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="SFhRGcDCWYeLKIPHJYD7"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 Jan 2024 17:19:58 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62106

--SFhRGcDCWYeLKIPHJYD7
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,

I am trying to to generate an image with PREEMPT_RT kernel for an intel-cor=
ei7-64 target machine.
I see that the meta-intel layer already has a couple of recipes for that in=
 recipes-rt/images/core-image-rt.bb and core-image-rt-sdk.bb, so I add this=
 layer.
I choose core-image-rt-sdk.bb since I would like to have the development to=
ols too.
In my local.conf I set
PREFERRED_PROVIDER_virtual/kernel =3D "linux-intel-rt"
as requested by meta-intel/recipes-rt/images/core-image-rt-sdk.bb, and also
MACHINE ?=3D "intel-corei7-64"
After several hours of bitbake core-image-rt-sdk , I get a core-image-rt-sd=
k-intel-corei7-64.rootfs.wic with which I can boot my machine, where uname =
.-r says 6-1-59-rt16-intel-pk-preempt-rt.
Everything looks fine up to here.

Now I am trying to add a new layer of mine, where I will put some stuff I n=
eed on the target machine. For the moment, I only have a "hello world" prog=
ram there, just to check.
So I have meta-mytest/conf/layer.conf with:

BBPATH .=3D ":${LAYERDIR}"
BBFILES +=3D "${LAYERDIR}/recipes-*/*/*.bb \
${LAYERDIR}/recipes-*/*/*.bbappend"
BBFILE_COLLECTIONS +=3D "mytest"
BBFILE_PATTERN_mytest =3D "^${LAYERDIR}/"
BBFILE_PRIORITY_mytest =3D "6"
LAYERDEPENDS_mytest =3D "intel"
LAYERSERIES_COMPAT_mytest =3D "nanbield"

and meta-mytest/recipes-mytest/images/mytest-image.bb with:

require recipes-rt/images/core-image-rt-sdk.bb
DESCRIPTION=3D"Just a test"
IMAGE_INSTALL +=3D "simple-local"

where simple-local is the hello world program, having its own recipe.

When I try bitbake mytest-image I get

ERROR: Nothing PROVIDES 'mytest-image'
mytest-image was skipped: Set PREFERRED_PROVIDER_virtual/kernel to linux-yo=
cto-rt to enable it

If I understand, the problem is that there are two overlayed recipes, poky/=
meta/recipes-rt/images/core-image-rt-sdk.bb and meta-intel/recipes-rt/image=
s/core-image-rt-sdk.bb , and bitbake is giving preference to the first one,=
 requiring linux-yocto-rt as the PREFERRED_PROVIDER (the second one require=
s=C2=A0linux-intel-rt instead)

I also changed the priority of the meta-intel layer from 5 to 6, but to no =
effect.

Could somebody be so kind as to tell me what am I missing here?

Thank you in advance and best regards

--
Daniele Lugli
General Logic srl
Viale Curreno, 41
10133 Torino
Italy
tel +39 329 3933041
www.general-logic.com ( http://www.general-logic.com/ )
www.linkedin.com/in/daniele- lugli ( http://www.linkedin.com/in/daniele-lug=
li )

--SFhRGcDCWYeLKIPHJYD7
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi all,<br /><br />
<div>I am trying to to generate an image with PREEMPT_RT kernel for an inte=
l-corei7-64 target machine.</div>
<div>I see that the meta-intel layer already has a couple of recipes for th=
at in recipes-rt/images/core-image-rt.bb and core-image-rt-sdk.bb, so I add=
 this layer.<br />I choose core-image-rt-sdk.bb since I would like to have =
the development tools too.<br />In my local.conf I set<br /><span style=3D"=
color: #0000ff;">PREFERRED_PROVIDER_virtual/kernel =3D "linux-intel-rt"</sp=
an><br />as requested by meta-intel/recipes-rt/images/core-image-rt-sdk.bb,=
 and also</div>
<div><span style=3D"color: #0000ff;">MACHINE ?=3D "intel-corei7-64"</span><=
/div>
<div>After several hours of <span style=3D"color: #0000ff;">bitbake core-im=
age-rt-sdk</span>, I get a core-image-rt-sdk-intel-corei7-64.rootfs.wic wit=
h which I can boot my machine, where&nbsp;<span style=3D"color: #0000ff;">u=
name .-r</span> says <span style=3D"color: #0000ff;">6-1-59-rt16-intel-pk-p=
reempt-rt</span>.</div>
Everything looks fine up to here.<br /><br />Now I am trying to add a new l=
ayer of mine, where I will put some stuff I need on the target machine. For=
 the moment, I only have a "hello world" program there, just to check.<br /=
>So I have meta-mytest/conf/layer.conf with:<br />
<div>&nbsp;</div>
<div><span style=3D"color: #0000ff;">BBPATH .=3D ":${LAYERDIR}"</span></div=
>
<div><span style=3D"color: #0000ff;">BBFILES +=3D "${LAYERDIR}/recipes-*/*/=
*.bb \</span></div>
<div><span style=3D"color: #0000ff;">&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb=
sp; ${LAYERDIR}/recipes-*/*/*.bbappend"</span></div>
<div><span style=3D"color: #0000ff;">BBFILE_COLLECTIONS +=3D "mytest"</span=
></div>
<div><span style=3D"color: #0000ff;">BBFILE_PATTERN_mytest =3D "^${LAYERDIR=
}/"</span></div>
<div><span style=3D"color: #0000ff;">BBFILE_PRIORITY_mytest =3D "6"</span><=
/div>
<div><span style=3D"color: #0000ff;">LAYERDEPENDS_mytest =3D "intel"</span>=
</div>
<div><span style=3D"color: #0000ff;">LAYERSERIES_COMPAT_mytest =3D "nanbiel=
d"</span><br /><br />and meta-mytest/recipes-mytest/images/mytest-image.bb =
with:<br /><br />
<div><span style=3D"color: #0000ff;">require recipes-rt/images/core-image-r=
t-sdk.bb</span></div>
<div><span style=3D"color: #0000ff;">DESCRIPTION=3D"Just a test"</span></di=
v>
<div><span style=3D"color: #0000ff;">IMAGE_INSTALL +=3D "simple-local"</spa=
n></div>
<div>&nbsp;</div>
</div>
where simple-local is the hello world program, having its own recipe.<br />=
<br />When I try <span style=3D"color: #0000ff;">bitbake mytest-image</span=
> I get<br /><br />
<div><span style=3D"color: #ff0000;">ERROR: Nothing PROVIDES 'mytest-image'=
</span></div>
<div><span style=3D"color: #ff0000;">mytest-image was skipped: Set PREFERRE=
D_PROVIDER_virtual/kernel to linux-yocto-rt to enable it</span></div>
<div><br />If I understand, the problem is that there are two overlayed rec=
ipes, <span style=3D"color: #0000ff;">poky/meta/recipes-rt/images/core-imag=
e-rt-sdk.bb</span> and <span style=3D"color: #0000ff;">meta-intel/recipes-r=
t/images/core-image-rt-sdk.bb</span>, and bitbake is giving preference to t=
he first one, requiring&nbsp;<span style=3D"color: #000000;">linux-yocto-rt=
 as the PREFERRED_PROVIDER (the second one requires&nbsp;linux-intel-rt ins=
tead)<br /><br />I also changed the priority of the meta-intel layer from 5=
 to 6, but to no effect.<br /><br />Could somebody be so kind as to tell me=
 what am I missing here?<br /><br />Thank you in advance and best regards<b=
r /><br /></span></div>
-- <br />
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;">
<div dir=3D"ltr">
<div>Daniele Lugli</div>
General Logic srl</div>
<div>Viale Curreno, 41</div>
<div>10133 Torino<br />Italy</div>
<div>tel +39 329 3933041</div>
</div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.general-lo=
gic.com/" target=3D"_blank" rel=3D"noopener" data-saferedirecturl=3D"https:=
//www.google.com/url?q=3Dhttp://www.general-logic.com&amp;source=3Dgmail&am=
p;ust=3D1702484712598000&amp;usg=3DAOvVaw3caieBojp7RHbXjtN3Avtg">www.genera=
l-logic.com</a></div>
<div style=3D"color: #500050; font-family: Arial, Helvetica, sans-serif; fo=
nt-size: small;"><a style=3D"color: #1155cc;" href=3D"http://www.linkedin.c=
om/in/daniele-lugli" target=3D"_blank" rel=3D"noopener" data-saferedirectur=
l=3D"https://www.google.com/url?q=3Dhttp://www.linkedin.com/in/daniele-lugl=
i&amp;source=3Dgmail&amp;ust=3D1702484712598000&amp;usg=3DAOvVaw2CJ1YOxQZd7=
TCndA_wq8ak">www.linkedin.com/in/daniele-<wbr />lugli</a></div>

--SFhRGcDCWYeLKIPHJYD7--

