Return-Path: <mohanad.oraby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 3A492C433EF
	for <webhook@archiver.kernel.org>; Thu, 25 Nov 2021 17:28:30 +0000 (UTC)
Subject: Task is not re-triggered even if variables in vardeps change #bitbake
 #yocto
To: yocto@lists.yoctoproject.org
From: "Mohannad Oraby" <mohanad.oraby@gmail.com>
X-Originating-Location: Barweiler, Rheinland-Pfalz, DE (217.239.163.2)
X-Originating-Platform: Windows Chrome 96
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Thu, 25 Nov 2021 09:28:29 -0800
Message-ID: <RFVy.1637861309375240234.j0CE@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="JCz7zQikGf2NT3OJOIdS"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 25 Nov 2021 17:28:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55425

--JCz7zQikGf2NT3OJOIdS
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,

I have an issue related to vardeps where I am making a task dependent on so=
me variables.

I have created some new variables e.g., NEW_VARIABLE, added them to BB_ENV_=
EXTRAWHITE. In some recipes, I wrote my own implementation of some tasks th=
at are dependent on these new variables, and for this dependency to work I =
added=C2=A0 e.g., do_install[vardeps] =3D "NEW_VARIABLE", so I am now expec=
ting that every time I change this NEW_VARIABLE and perform e.g., "bitbake =
recipename", the do_install task should run. I=C2=A0checked the task signat=
ure and I see the NEW_VARIABLE there.

Let's assum I have two possible values for this variable. When I set the va=
riable for the first time "value1", i.e., the first build, everything works=
 and there is no problem. When I change its value to the other value "value=
2" not used before and build the recipe again, the do_install will also run=
 and no problem occurs. The problem is however, if I set the variable again=
 to the old value "value1", and I execite "bitbake recipename" again. The d=
o_install will not be re-triggered, and this leads to some wrong/old data l=
ocated in work directory, and also produced in the image.

I tried setting BB_DONT_CACHE, as I understood in an old topic that the pro=
blem might be that the recipe needs to be parsed again, however this did no=
t work at all.

I do not want to always run the tasks when I perform a new build, i.e., do_=
install[[nostamp] =3D "1", I just want it to run again every time I change =
this NEW_VARIABLE.

Is what I am expecting a normal behavior? Or Yocto does not work this way?

Regards
Mohannad

--JCz7zQikGf2NT3OJOIdS
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi guys,&nbsp;<br /><br />I have an issue related to vardeps where I am mak=
ing a task dependent on some variables.&nbsp;<br /><br />I have created som=
e new variables e.g., NEW_VARIABLE, added them to BB_ENV_EXTRAWHITE. In som=
e recipes, I wrote my own implementation of some tasks that are dependent o=
n these new variables, and for this dependency to work I added&nbsp; e.g., =
do_install[vardeps] =3D "NEW_VARIABLE", so I am now expecting that every ti=
me I change this NEW_VARIABLE and perform e.g., "bitbake recipename", the d=
o_install task should run. I&nbsp;checked the task signature and I see the =
NEW_VARIABLE there.<br /><br />Let's assum I have two possible values for t=
his variable. When I set the variable for the first time "value1", i.e., th=
e first build, everything works and there is no problem. When I change its =
value to the other value "value2" not used before and build the recipe agai=
n, the do_install will also run and no problem occurs. The problem is howev=
er, if I set the variable again to the old value "value1", and I execite "b=
itbake recipename" again. The do_install will not be re-triggered, and this=
 leads to some wrong/old data located in work directory, and also produced =
in the image.&nbsp;<br /><br />I tried setting BB_DONT_CACHE, as I understo=
od in an old topic that the problem might be that the recipe needs to be pa=
rsed again, however this did not work at all.<br /><br />I do not want to a=
lways run the tasks when I perform a new build, i.e., do_install[[nostamp] =
=3D "1", I just want it to run again every time I change this NEW_VARIABLE.=
<br /><br />Is what I am expecting a normal behavior? Or Yocto does not wor=
k this way?<br /><br />Regards<br />Mohannad

--JCz7zQikGf2NT3OJOIdS--

