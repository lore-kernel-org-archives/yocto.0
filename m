Return-Path: <crane2018@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 712D5C83F01
	for <webhook@archiver.kernel.org>; Sun, 27 Aug 2023 03:26:50 +0000 (UTC)
Subject: Re: EXTRA_USERS_PARAMS doesn't work to generate password for root and add new users
To: yocto@lists.yoctoproject.org
From: "Crane" <crane2018@gmail.com>
X-Originating-Location: Mississauga, Ontario, CA (135.0.213.201)
X-Originating-Platform: Windows Chrome 116
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Sat, 26 Aug 2023 20:26:49 -0700
References: <80a3f668-0e7e-fb19-95ef-dba24df5af76@koansoftware.com>
In-Reply-To: <80a3f668-0e7e-fb19-95ef-dba24df5af76@koansoftware.com>
Message-ID: <18414.1693106809457776245@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="Yei0H51ItuDmBKhdb616"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Sun, 27 Aug 2023 03:26:50 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/60896

--Yei0H51ItuDmBKhdb616
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 24, 2023 at 04:21 AM, Mauro wrote:

>=20
> To Crane: please try to build the image and test it, don't stop at Yocto
> variables analysis step.

Thanks Mauro so much.

Indeed, it is not relevant the value of the variable, but where it is assig=
ned.
It doesn't work to assign these values in image recipe, but works in local.=
conf.

I am wondering what's the different in assigning the value in different loc=
ations. Maybe it is relevant to the building sequence. If it is assigned la=
ter, it is useless. Is there any rule to follow? Or it is just from experie=
nce?

Another question I think of is how you guys source control local.conf. It l=
ooks it might be much different from project to project.

Thanks!
Crane

--Yei0H51ItuDmBKhdb616
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

On Thu, Aug 24, 2023 at 04:21 AM, Mauro wrote:<br />
<blockquote>To Crane: please try to build the image and test it, don't stop=
 at Yocto variables analysis step.</blockquote>
Thanks Mauro so much.<br /><br />Indeed, it is not relevant the value of th=
e variable, but where it is assigned.<br />It doesn't work to assign these =
values in image recipe, but works in local.conf.<br /><br />I am wondering =
what's the different in assigning the value in different locations. Maybe i=
t is relevant to the building sequence. If it is assigned later, it is usel=
ess. Is there any rule to follow? Or it is just from experience?<br /><br /=
>Another question I think of is how you guys source control local.conf. It =
looks it might be much different from project to project.<br /><br />Thanks=
!<br />Crane

--Yei0H51ItuDmBKhdb616--

