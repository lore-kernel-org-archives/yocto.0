Return-Path: <alb3rt0.m3rciai@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1ED7C61D90
	for <webhook@archiver.kernel.org>; Tue, 21 Nov 2023 15:13:30 +0000 (UTC)
Received: from mail-oi1-f170.google.com (mail-oi1-f170.google.com [209.85.167.170])
 by mx.groups.io with SMTP id smtpd.web10.43448.1700579605719294136
 for <yocto@lists.yoctoproject.org>;
 Tue, 21 Nov 2023 07:13:25 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=UceM/UMS;
 spf=pass (domain: gmail.com, ip: 209.85.167.170, mailfrom: alb3rt0.m3rciai@gmail.com)
Received: by mail-oi1-f170.google.com with SMTP id 5614622812f47-3b2ea7cc821so3562745b6e.1
        for <yocto@lists.yoctoproject.org>; Tue, 21 Nov 2023 07:13:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1700579605; x=1701184405; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Rs6Ad3Y4ZPgIEjLMeMwIHvX6hO5ie2JuwUVzNYNkVuY=;
        b=UceM/UMS1SBb3KF+Jzo2fPArcV2kRifyxPkCo8QPVuiLTdBZSvrCNl1QKbNfVke+cG
         pKwz6JIli2Zw3abYTWUmr21aus0MzayxeIx0Ck9MZFc0lpm847TqN6pINto/4YVi0Qiv
         K4pULVtED9u4V5+JZhUqmCbZuWzwtPdGnVCqwSSxntODRCmTjQdz9K3zW+gsg/pKbKZV
         fo9Ye0rOmwrsZSS8natg8GJE1sLy4SLabmHtkdcvN4v9aVJa9O/RDx2I6mm2ssTQC+Og
         xgtJa8lkXBQeVlwJMmJPOwTRYkLS3QehIv3vDFdWM8oXJn2w1z5za1EC5dVLiKEtkTdE
         BLpQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1700579605; x=1701184405;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Rs6Ad3Y4ZPgIEjLMeMwIHvX6hO5ie2JuwUVzNYNkVuY=;
        b=E14wI897yEZfL7wiHFWwFP28uKEjnoO6WSjx5FXGAuqCWC0ftQcGrppns+T8L9bVZL
         sD+TYY/Rg5XlO7tS0h6FfZTu5sFHrBqJaxS0rBcUQolNCUHJZDFXL1RwC4QOhSLlM6ps
         pqkGKd7Rjd1HRvHY9dr7yIZ7PCFsTDCD/jFiK7nonhMFm5Dxm/XYBFg4xexfANoGVPqo
         nrpwwj1dqd9+xAKWLGpTVyfBdxy4QULwaSHSXJkdbpN7H6RzJYTSkwANcdjGSoW/ca1t
         5dCZj53IsDFC/7cbosRasyhNeBQJbaCEV7NHQSxNwiThnEg+RJjABst1mK92dQKUjOmn
         xgqg==
X-Gm-Message-State: AOJu0Yw0cTjuRrxdQU9hdSa/UM0iRJG8GAhfRHF3e7p4p7+S06tBU1vX
	fUQg7FxfbL9vTDAVnNve3ljpwc+z56CZgNuu0rNZgEBjw2o=
X-Google-Smtp-Source: AGHT+IHNRMvEIkySuLkFcuHhKozTicTwsg9svCCW1zB9L1QxFwDYUBAJDyy+c5z9wgGZv+BVjIFDLoVOb8W77xa5BsI=
X-Received: by 2002:a05:6358:5e19:b0:16d:b1f4:3a0 with SMTP id
 q25-20020a0563585e1900b0016db1f403a0mr12453420rwn.26.1700579604049; Tue, 21
 Nov 2023 07:13:24 -0800 (PST)
MIME-Version: 1.0
From: Alberto Merciai <alb3rt0.m3rciai@gmail.com>
Date: Tue, 21 Nov 2023 16:13:13 +0100
Message-ID: <CAH=B7vfOzgqFWBKCRa-BpoOSwFGEB73W=kH92AYM3y_7DqOCEw@mail.gmail.com>
Subject: [yocto][meta-yocto][poky][eSDK] builtin eSDK recipes generate wrong
 environment file
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000003634a5060aab0b87"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 21 Nov 2023 15:13:30 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/61725

--0000000000003634a5060aab0b87
Content-Type: text/plain; charset="UTF-8"

Hello everyone,

I would like to report an issue that I face with *kirkstone* and eventually
solve it:
I'm working with https://git.yoctoproject.org/poky/tag/?h=kirkstone-4.0.14
and by following the *eSDK* guide:
https://docs.yoctoproject.org/4.0.14/sdk-manual/extensible.html
*the generated environment file does not point to the correct sysroot
folder.*

the same for
https://git.yoctoproject.org/poky/tag/?h=kirkstone-4.0.10

I found the following RFC and I apply that and seems to be fine
https://lore.kernel.org/all/20220622103312.1098389-3-alex@linutronix.de/T/#m7eadf6c722410f5b233ebba9fc700a895af9f052
How can we proceed?

Regards,
Alberto

--0000000000003634a5060aab0b87
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"color:rgb(34,35,31);font-family:&quot;Sourc=
e Sans Pro&quot;,Helvetica,sans-serif;font-size:14.4px">Hello everyone,</sp=
an><div><font color=3D"#22231f" face=3D"Source Sans Pro, Helvetica, sans-se=
rif"><span style=3D"font-size:14.4px"><br></span></font><div style=3D"color=
:rgb(34,35,31);font-family:&quot;Source Sans Pro&quot;,Helvetica,sans-serif=
;font-size:14.4px">I would like to report an issue that I face with=C2=A0<b=
>kirkstone</b>=C2=A0and eventually solve it:</div><div style=3D"color:rgb(3=
4,35,31);font-family:&quot;Source Sans Pro&quot;,Helvetica,sans-serif;font-=
size:14.4px">I&#39;m working with=C2=A0<a href=3D"https://git.yoctoproject.=
org/poky/tag/?h=3Dkirkstone-4.0.14" target=3D"_blank">https://git.yoctoproj=
ect.org/poky/tag/?h=3Dkirkstone-4.0.14</a></div><div style=3D"color:rgb(34,=
35,31);font-family:&quot;Source Sans Pro&quot;,Helvetica,sans-serif;font-si=
ze:14.4px">and by following the=C2=A0<b>eSDK</b>=C2=A0guide:</div><div styl=
e=3D"color:rgb(34,35,31);font-family:&quot;Source Sans Pro&quot;,Helvetica,=
sans-serif;font-size:14.4px"><a href=3D"https://docs.yoctoproject.org/4.0.1=
4/sdk-manual/extensible.html" target=3D"_blank">https://docs.yoctoproject.o=
rg/4.0.14/sdk-manual/extensible.html</a></div><div style=3D"color:rgb(34,35=
,31);font-family:&quot;Source Sans Pro&quot;,Helvetica,sans-serif;font-size=
:14.4px"><b>the generated environment file does not point to the correct sy=
sroot folder.</b></div><div style=3D"color:rgb(34,35,31);font-family:&quot;=
Source Sans Pro&quot;,Helvetica,sans-serif;font-size:14.4px"><br></div><div=
 style=3D"color:rgb(34,35,31);font-family:&quot;Source Sans Pro&quot;,Helve=
tica,sans-serif;font-size:14.4px">the same for=C2=A0</div><div style=3D"col=
or:rgb(34,35,31);font-family:&quot;Source Sans Pro&quot;,Helvetica,sans-ser=
if;font-size:14.4px"><a href=3D"https://git.yoctoproject.org/poky/tag/?h=3D=
kirkstone-4.0.10" target=3D"_blank"><span style=3D"font-size:14.4px">https:=
//git.yoctoproject.org/poky/tag/?h=3Dkirkstone-4.0.1</span>0</a><br></div><=
div style=3D"color:rgb(34,35,31);font-family:&quot;Source Sans Pro&quot;,He=
lvetica,sans-serif;font-size:14.4px"><br></div><div style=3D"color:rgb(34,3=
5,31);font-family:&quot;Source Sans Pro&quot;,Helvetica,sans-serif;font-siz=
e:14.4px">I found the following RFC and I apply that and seems to be fine</=
div><div style=3D"color:rgb(34,35,31);font-family:&quot;Source Sans Pro&quo=
t;,Helvetica,sans-serif;font-size:14.4px"><a href=3D"https://lore.kernel.or=
g/all/20220622103312.1098389-3-alex@linutronix.de/T/#m7eadf6c722410f5b233eb=
ba9fc700a895af9f052" target=3D"_blank">https://lore.kernel.org/all/20220622=
103312.1098389-3-alex@linutronix.de/T/#m7eadf6c722410f5b233ebba9fc700a895af=
9f052</a></div><div style=3D"color:rgb(34,35,31);font-family:&quot;Source S=
ans Pro&quot;,Helvetica,sans-serif;font-size:14.4px">How can we proceed?</d=
iv><div style=3D"color:rgb(34,35,31);font-family:&quot;Source Sans Pro&quot=
;,Helvetica,sans-serif;font-size:14.4px"><br></div><div style=3D"color:rgb(=
34,35,31);font-family:&quot;Source Sans Pro&quot;,Helvetica,sans-serif;font=
-size:14.4px">Regards,</div></div><div style=3D"color:rgb(34,35,31);font-fa=
mily:&quot;Source Sans Pro&quot;,Helvetica,sans-serif;font-size:14.4px">Alb=
erto</div></div>

--0000000000003634a5060aab0b87--

