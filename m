Return-Path: <mohanad.oraby@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 057EFC433EF
	for <webhook@archiver.kernel.org>; Tue, 16 Nov 2021 14:54:10 +0000 (UTC)
Subject: Re: Task vardeps on a variable changed externally
To: yocto@lists.yoctoproject.org
From: mohanad.oraby@gmail.com
X-Originating-Location: Barweiler, Rheinland-Pfalz, DE (217.239.163.2)
X-Originating-Platform: Windows Chrome 95
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Tue, 16 Nov 2021 06:54:09 -0800
References: 
 <c1aaa8790d05d8e4b42a9e224dad09c35350f0b3.camel@linuxfoundation.org>
In-Reply-To: 
 <c1aaa8790d05d8e4b42a9e224dad09c35350f0b3.camel@linuxfoundation.org>
Message-ID: <546.1637074449198080669@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="nnjK1MoqL8FA3ImUuACK"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 16 Nov 2021 14:54:10 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55343

--nnjK1MoqL8FA3ImUuACK
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,

I am facing the same problem right now. I have created some new variables e=
.g., INTERNAL_VARIABLE, added them to BB_ENV_EXTRAWHITE, and in some recipe=
s, I expect that some tasks are executed again, when I change these variabl=
es
e.g., do_install[vardeps] =3D "INTERNAL_VARIABLE"

I have two possible values for this variable. When I set the variable for t=
he first time, everything works and there is no problem, the do_install wil=
l run when I change from one value to another. However, if I set the variab=
le again to the old value, and I execite "bitbake recipename" again, this d=
oes not work, and this leads to some wrong/old data located in work directo=
ry, and also produced in the image.

I tried setting BB_DONT_CACHE, but this did not work at all.

I do not want to always run the tasks i.e., do_install[[nostamp] =3D "1", I=
 just want it to run again every time I change this INTERNAL_VARIABLE.

Is what I am expecting a normal behavior? Or Yocto does not work this way?

Regards,
Mohannad

--nnjK1MoqL8FA3ImUuACK
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

Hi,<br /><br />I am facing the same problem right now. I have created some =
new variables e.g., INTERNAL_VARIABLE, added them to BB_ENV_EXTRAWHITE, and=
 in some recipes, I expect that some tasks are executed again, when I chang=
e these variables<br />e.g., do_install[vardeps] =3D "INTERNAL_VARIABLE"<br=
 /><br />I have two possible values for this variable. When I set the varia=
ble for the first time, everything works and there is no problem, the do_in=
stall will run when I change from one value to another. However, if I set t=
he variable again to the old value, and I execite "bitbake recipename" agai=
n, this does not work, and this leads to some wrong/old data located in wor=
k directory, and also produced in the image.<br /><br />I tried setting BB_=
DONT_CACHE, but this did not work at all.<br /><br />I do not want to alway=
s run the tasks i.e., do_install[[nostamp] =3D "1", I just want it to run a=
gain every time I change this INTERNAL_VARIABLE.<br /><br />Is what I am ex=
pecting a normal behavior? Or Yocto does not work this way?<br /><br />Rega=
rds,<br />Mohannad&nbsp;

--nnjK1MoqL8FA3ImUuACK--

