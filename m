Return-Path: <yishai1999@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 20AB0D5CCA8
	for <webhook@archiver.kernel.org>; Wed, 30 Oct 2024 12:58:53 +0000 (UTC)
Received: from mail-wm1-f42.google.com (mail-wm1-f42.google.com [209.85.128.42])
 by mx.groups.io with SMTP id smtpd.web11.14130.1730293127351325852
 for <yocto@lists.yoctoproject.org>;
 Wed, 30 Oct 2024 05:58:47 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=c8OGULl+;
 spf=pass (domain: gmail.com, ip: 209.85.128.42, mailfrom: yishai1999@gmail.com)
Received: by mail-wm1-f42.google.com with SMTP id 5b1f17b1804b1-43155afca99so5442475e9.1
        for <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 05:58:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1730293125; x=1730897925; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=+K4UVA76NDpKqhV6r0LtCr05XPQp8ExRoq8Ag32vgFk=;
        b=c8OGULl+geOrSQGI372wE8XFKZlf9R9KDLSJoEv77xH97fu8nfHiqpz3R7rg1jjY7A
         a8dznO7GoBKt5LcT2ZvQtz6CaAYXoEOABimVLNJyFB8mkW+MNuxhtNwtLetUMoQnuATC
         vu1aKoXJ6k65NBFY0w756diP0hqiXHv7HA5m8LP6Iud43NXzcu3ImoHeMbXobEpJHljj
         JAl1GoHMKrDyMAgQVd2KHaKYf77I48uw9SRUUe1THJptkaM85SG55jTZr9wB0BVyWFSv
         My8l0gfvlxFFYijAODz886qNSjh9RQyU1L54+2oOdwD3+ElQgI6KXIU0IUhJ/a7wzpTR
         qjbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1730293125; x=1730897925;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=+K4UVA76NDpKqhV6r0LtCr05XPQp8ExRoq8Ag32vgFk=;
        b=lQWnneuRNT2BN9/4EfkUbsQToBjF50eMsvNJeSM4FbJ0miYgRrbdncdsVY73zURdq9
         L2tw0VoQ5kVlrEZ/CMV3pgevuV+OBUM2tU2ttqlvTIA0Xw394qJsi6qEkEVdIPxZRvSh
         lJ6t3PiAzvUaI+FBTzLZ1LQJetpNGLnLeoTZ9vPrjd83Ji3i8JFlJPw5gw8dKv6tA7ps
         lkaLB+SGHiU6DoGsEmufB34xim3Jv8COZtdevu82YpZRe37uvrjemQNQWsKx4D9EpZxv
         s5ncDAZ2iOIRNyD4pyf8Chy3DKisuGWZz+79pTQh1klthPkIwd97t5LgO541vgHF36J4
         9dBw==
X-Gm-Message-State: AOJu0YwtgwPmHIQZYXPrg5NQ6bqg6uTiNv7VREgPZkGIjCgvjMTAYnmK
	OCHS9eJVommgmQvbs+l6KPVyVirD1FSOZZXDvQuM5+rKy9dgzxpNW1INjlYGYO42Ntl5VLmlLuI
	ROvgdMplqE3zGP0bhm/+XndQJbMySiha3
X-Google-Smtp-Source: AGHT+IFB438ce1JTZv9oeCrMFnh11v9yO5+GovQHXonGQlF1cYPCsgzJtUH1L3Sb4CsbG6qVTeaREqcQ+dUov38BPOQ=
X-Received: by 2002:adf:ea43:0:b0:37c:ffdd:6d5a with SMTP id
 ffacd0b85a97d-38173e619c6mr6002254f8f.6.1730293125204; Wed, 30 Oct 2024
 05:58:45 -0700 (PDT)
MIME-Version: 1.0
From: Yishai Jaffe <yishai1999@gmail.com>
Date: Wed, 30 Oct 2024 14:58:34 +0200
Message-ID: <CAJw49vrd9njM9kfOCXgnXwmdPcUoFCc4EoY560nnFcWUvHcGxA@mail.gmail.com>
Subject: Out-of-tree Kernel Modules
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000015d3030625b143b4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 30 Oct 2024 12:58:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64181

--00000000000015d3030625b143b4
Content-Type: text/plain; charset="UTF-8"

Hi,
I'm having a problem compiling my out of tree kernel module.
I've managed to reproduce my problem with the meta-skeleton hello-mod
recipe.
I'm working with poky on branch scarthgap.
Here are the necessary changes:

diff --git a/meta-skeleton/recipes-kernel/hello-mod/files/hello.c
b/meta-skeleton/recipes-kernel/hello-mod/files/hello.c
index 4f73455d20..221b5da97c 100644
--- a/meta-skeleton/recipes-kernel/hello-mod/files/hello.c
+++ b/meta-skeleton/recipes-kernel/hello-mod/files/hello.c
@@ -7,9 +7,13 @@

*****************************************************************************/

 #include <linux/module.h>
+#include <linux/sched/types.h>

 static int __init hello_init(void)
 {
+ struct sched_param a = {
+ .sched_priority = 1,
+ };
  pr_info("Hello World!\n");
  return 0;
 }

As you can see I'm trying to use the sched_param struct but when compiling
I get the following error:

|
/home/user/dev/yishai/yocto/build/tmp/work/qemux86_64-poky-linux/hello-mod/0.1/hello.c:
In function 'hello_init':
|
/home/user/dev/yishai/yocto/build/tmp/work/qemux86_64-poky-linux/hello-mod/0.1/hello.c:14:16:
error: variable 'a' has initializer but incomplete type
|    14 |         struct sched_param a = {

This looks as if the struct isn't defined anywhere but if I look
at tmp/work/qemux86_64-poky-linux/hello-mod/0.1/recipe-sysroot/usr/include/linux/sched/types.h
which should be the header that I included - I can see that it is defined.
Therefore, it seems like that is not the actual header being included.

Would love to get some help on this!

Thanks in advance,
Yishai Jaffe

--00000000000015d3030625b143b4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div>I&#39;m having a problem compiling my out of tree =
kernel module.</div><div>I&#39;ve managed to reproduce my problem with the =
meta-skeleton hello-mod recipe.</div><div>I&#39;m working with poky on bran=
ch scarthgap.</div><div>Here are the necessary changes:</div><div><br></div=
><div>diff --git a/meta-skeleton/recipes-kernel/hello-mod/files/hello.c b/m=
eta-skeleton/recipes-kernel/hello-mod/files/hello.c<br>index 4f73455d20..22=
1b5da97c 100644<br>--- a/meta-skeleton/recipes-kernel/hello-mod/files/hello=
.c<br>+++ b/meta-skeleton/recipes-kernel/hello-mod/files/hello.c<br>@@ -7,9=
 +7,13 @@<br>=C2=A0 *******************************************************=
**********************/<br>=C2=A0<br>=C2=A0#include &lt;linux/module.h&gt;<=
br>+#include &lt;linux/sched/types.h&gt;<br>=C2=A0<br>=C2=A0static int __in=
it hello_init(void)<br>=C2=A0{<br>+	struct sched_param a =3D {<br>+		.sched=
_priority =3D 1,<br>+	};<br>=C2=A0	pr_info(&quot;Hello World!\n&quot;);<br>=
=C2=A0	return 0;<br>=C2=A0}</div><div><br></div><div>As you can see I&#39;m=
 trying to use the sched_param struct but when compiling I get the followin=
g error:<br></div><div><br></div><div>| /home/user/dev/yishai/yocto/build/t=
mp/work/qemux86_64-poky-linux/hello-mod/0.1/hello.c: In function &#39;hello=
_init&#39;:<br>| /home/user/dev/yishai/yocto/build/tmp/work/qemux86_64-poky=
-linux/hello-mod/0.1/hello.c:14:16: error: variable &#39;a&#39; has initial=
izer but incomplete type<br>| =C2=A0 =C2=A014 | =C2=A0 =C2=A0 =C2=A0 =C2=A0=
 struct sched_param a =3D {<br></div><div><br></div><div>This looks as if t=
he struct isn&#39;t defined anywhere but if I look at=C2=A0tmp/work/qemux86=
_64-poky-linux/hello-mod/0.1/recipe-sysroot/usr/include/linux/sched/types.h=
 which should be the header that I included - I can see that it is defined.=
</div><div>Therefore, it seems like that is not the actual header being inc=
luded.</div><div><br></div><div>Would love to get some help on this!=C2=A0<=
/div><div><br>Thanks in advance,</div><div><div><div dir=3D"ltr" class=3D"g=
mail_signature" data-smartmail=3D"gmail_signature">Yishai Jaffe</div></div>=
</div></div>

--00000000000015d3030625b143b4--

