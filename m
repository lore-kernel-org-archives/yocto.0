Return-Path: <Jesper.Ahman@dasa.se>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D3643C433F5
	for <webhook@archiver.kernel.org>; Fri, 17 Dec 2021 10:35:12 +0000 (UTC)
Subject: do_rootfs: Taskhash mismatch due to BUILDNAME containing automatic
 date
To: yocto@lists.yoctoproject.org
From: Jesper.Ahman@dasa.se
X-Originating-Location: Vaxjo, Kronoberg County, SE (62.182.221.230)
X-Originating-Platform: Windows Chrome 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Fri, 17 Dec 2021 02:35:12 -0800
Message-ID: <RtNV.1639737312168313422.77T4@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="bwQcJEkn4CK1QXyYD3o5"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 17 Dec 2021 10:35:12 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55608

--bwQcJEkn4CK1QXyYD3o5
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,

In my machine config, I have set buildname using:
BUILDNAME =3D "my_Image_0.0.1_${@time.strftime('%Y%m%d',time.gmtime())}"
In order to get a timestamp (date) in each build name.

Although, this causes some error messages when building the rootfs:
ERROR: When reparsing /home/buildserver/fsl/sources/meta-freescale-distro/r=
ecipes-fsl/images/fsl-image-multimedia-full.bb:do_rootfs, the basehash valu=
e changed from 6b1226a9fe10f08dd4f2fe634944a53cf03f7699a8553a9cc346c097027b=
24e to cbd5de79b73a1bc4dd02024bafd1e5c29d4baa8f43617c37eb8f5fc57ed738ed. Th=
e metadata is not deterministic and this needs to be fixed.
ERROR: The following commands may help:
ERROR: $ bitbake fsl-image-multimedia-full -cdo_rootfs -Snone
ERROR: Then:
ERROR: $ bitbake fsl-image-multimedia-full -cdo_rootfs -Sprintdiff

I ran the suggested commands and found the following:
Task fsl-image-multimedia-full:do_rootfs couldn't be used from the cache be=
cause:
We need hash 066153e1a8d8ad0e8025f6409dbac96c277e6300541356b077f1823f195ef1=
9c, closest matching task was 040147cd35d17688668c7435633fd8ff25d8cf7425a93=
d35efdd7799a47bdc85
basehash changed from cbd5de79b73a1bc4dd02024bafd1e5c29d4baa8f43617c37eb8f5=
fc57ed738ed to 61b1226a9fe10f08dd4f2fe634944a53cf03f7699a8553a9cc346c097027=
b24e
Variable BUILDNAME value changed from 'my_Image_0.0.1_20211214' to 'my_Imag=
e_0.0.1_${@time.strftime('%Y%m%d',time.gmtime())}'

So when ${@time.strftime('%Y%m%d',time.gmtime())}' is converted to the actu=
al date, it messes with Yocto.
The build succeeds anyway, but it's quite annoying having a load of error m=
essages on each build.

How can these errors be avoided?

I found in the Yocto FAQ:
This is often something time-related e.g. a timestamp which is calculated e=
very time an expression is expanded. The solution is to ensure the value is=
 calculated once per build and then the expression expands to the same valu=
e for the duration of the build.

Which sounds somewhat right, but the issue here is not that the value is ch=
anged due to recalculation (the date rarely changes during a build) but the=
 expansion of the expression itself (from Pyhton code into its result).

Running Yocto Dunfell.

--bwQcJEkn4CK1QXyYD3o5
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hello,<br /><br />In my machine config, I have set buildname using:<br />BU=
ILDNAME =3D "my_Image_0.0.1_${@time.strftime('%Y%m%d',time.gmtime())}"<br /=
>In order to get a timestamp (date) in each build name.<br /><br />Although=
, this causes some error messages when building the rootfs:<br />
<div><em>ERROR: When reparsing /home/buildserver/fsl/sources/meta-freescale=
-distro/recipes-fsl/images/fsl-image-multimedia-full.bb:do_rootfs, the base=
hash value changed from 6b1226a9fe10f08dd4f2fe634944a53cf03f7699a8553a9cc34=
6c097027b24e to cbd5de79b73a1bc4dd02024bafd1e5c29d4baa8f43617c37eb8f5fc57ed=
738ed. The metadata is not deterministic and this needs to be fixed.</em></=
div>
<div><em>ERROR: The following commands may help:</em></div>
<div><em>ERROR: $ bitbake fsl-image-multimedia-full -cdo_rootfs -Snone</em>=
</div>
<div><em>ERROR: Then:</em></div>
<div><em>ERROR: $ bitbake fsl-image-multimedia-full -cdo_rootfs -Sprintdiff=
</em></div>
<div><br />I ran the suggested commands and found the following:<br />
<div><em>Task fsl-image-multimedia-full:do_rootfs couldn't be used from the=
 cache because:</em></div>
<div><em>&nbsp; We need hash 066153e1a8d8ad0e8025f6409dbac96c277e6300541356=
b077f1823f195ef19c, closest matching task was 040147cd35d17688668c7435633fd=
8ff25d8cf7425a93d35efdd7799a47bdc85</em></div>
<div><em>&nbsp; basehash changed from cbd5de79b73a1bc4dd02024bafd1e5c29d4ba=
a8f43617c37eb8f5fc57ed738ed to 61b1226a9fe10f08dd4f2fe634944a53cf03f7699a85=
53a9cc346c097027b24e</em></div>
<div><em>&nbsp; Variable BUILDNAME value changed from 'my_Image_0.0.1_20211=
214' to 'my_Image_0.0.1_${@time.strftime('%Y%m%d',time.gmtime())}'<br /></e=
m><br />So when&nbsp;<em>${@time.strftime('%Y%m%d',time.gmtime())}'&nbsp;</=
em>is converted to the actual date, it messes with Yocto.<br />The build su=
cceeds anyway, but it's quite annoying having a load of error messages on e=
ach build.<br /><br />How can these errors be avoided?<br /><br />I found i=
n the Yocto FAQ:<br /><em><span style=3D"color: #000000; font-family: sans-=
serif; font-size: 12.7px;">This is often something time-related e.g. a time=
stamp which is calculated every time an expression is expanded. The solutio=
n is to ensure the value is calculated once per build and then the expressi=
on expands to the same value for the duration of the build.<br /><br /></sp=
an></em>Which sounds somewhat right, but the issue here is not that the val=
ue is changed due to recalculation (the date rarely changes during a build)=
 but the expansion of the expression itself (from Pyhton code into its resu=
lt).<br /><br />Running Yocto Dunfell.</div>
</div>

--bwQcJEkn4CK1QXyYD3o5--

