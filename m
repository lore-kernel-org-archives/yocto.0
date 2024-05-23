Return-Path: <jmeyron@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 660ABC25B75
	for <webhook@archiver.kernel.org>; Thu, 23 May 2024 14:36:37 +0000 (UTC)
Received: from mail-lf1-f49.google.com (mail-lf1-f49.google.com [209.85.167.49])
 by mx.groups.io with SMTP id smtpd.web10.166.1716474994101054809
 for <yocto@lists.yoctoproject.org>;
 Thu, 23 May 2024 07:36:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=VBNZnsIU;
 spf=pass (domain: gmail.com, ip: 209.85.167.49, mailfrom: jmeyron@gmail.com)
Received: by mail-lf1-f49.google.com with SMTP id 2adb3069b0e04-525c00843f6so262907e87.3
        for <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 07:36:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1716474992; x=1717079792; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=M8hncKrL+QYWPxWMlT6d3gK8puBDt6n77e2O5mi6YMQ=;
        b=VBNZnsIUJqMK7oe3YeVcbT97mufNumGpKbaKrAI2CP6f9scAyQk01MVvDMr2urwpXr
         vdpm5EjlGLsdggWzuE3r7iEgWpyBuJ3XnuZEKYMUMRfa8zdr09u7SnmMqivmNditBH63
         QwbGjhldM6x6sd3l9DmZetrV9LZOLuLBbjMjUkU538ZCmq/OrAkxMoIBIMC7jrU/b39u
         +E+pj4RpG8n7nuiPPa8yd00ByVE0AlVhHVN/R4dF6pVwg2XliI9IrsAVzaWEDPSkpZdi
         hojSreJFyTcl23Rfe/SmpIPbcg74BOuqKoeF8jDTnHtCGhVCSEKVeBOF2N/0W5uaGXp+
         vMyA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1716474992; x=1717079792;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=M8hncKrL+QYWPxWMlT6d3gK8puBDt6n77e2O5mi6YMQ=;
        b=dwyD2yuUcr8lZCWkjuUn7/RgYjHgqvMCofTm8uwn6easTTGthDHfp1el0+1XGw2+Jm
         RpZMOI8y67qBXOqeh0ze4l+/xwSQ7vKISVbY62doOTu4WmrhvtXiS48gdqBpCoBwOwSs
         6Bk95Vnm+lpMmbn4XwyCrt1HPkS+SkoaA2nExGKeopyrQ3WH3bT6r9hhAHajZD6IqJ2b
         qLKEGxtYBj2ZnSRvnre8lOIttwb7p1VFtdZyTDTKc1WTBhjPX/TjeRdvpRe+mlyz9KwV
         dpSqst9apQQB1XZ8fY+Jcw1sQBOYd4JyP8IKKCr7WKFmYSx/ZsROZIAaNgZeWhtl+53u
         FPgA==
X-Gm-Message-State: AOJu0YwruoSECxepNRJ/ildaxhZi7f44ZDo1JX3WxZvB3FBAPTAAssIF
	vW1zSvtORYIm9PogIjVwNNtg8n+x+8WCh07VDVjljaQWEjeNvbbGy0h0NcVncsaLWfwsnQeNX+f
	OBTCbhmmvVavM4eNHyRPxxG0UjTvHmC50DihM0Q==
X-Google-Smtp-Source: AGHT+IFBk6Ptrfk9E+30yefPqI2DTU1VLOyV0fGoCIlddlrdybaxtrL229Um3FBhwoyiv/m8ZxS3LtNA/FTudkQjuYc=
X-Received: by 2002:ac2:51a7:0:b0:51f:6d6d:57b with SMTP id
 2adb3069b0e04-526c16e1d8bmr3075360e87.6.1716474991657; Thu, 23 May 2024
 07:36:31 -0700 (PDT)
MIME-Version: 1.0
From: Jocelyn Meyron <jmeyron@gmail.com>
Date: Thu, 23 May 2024 16:35:54 +0200
Message-ID: <CAJ0N1+TrPu5Yfrr3zVqMP4UZC-R9=C-hE2Cv2zUH=y=4mVr-NA@mail.gmail.com>
Subject: Run a post-processing step after image generation
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000024cae706191ffa82"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 23 May 2024 14:36:37 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/63184

--00000000000024cae706191ffa82
Content-Type: text/plain; charset="UTF-8"

Hi everyone,

I'm wondering if there is a canonical way in Yocto to "aggregate" files
installed by recipes and running a post processing step on them.

Let me go into a bit more details by mimicking my use case:

1. Let's say I have some of my recipes in my image which install some HTML
files BUT not in my rootfs (you can imagine they end up in ${PN}-doc
packages)
2. After my image is built, I want to run a script on all those HTML files
to post process them, like building a full website out of a template I have
on my computer/git repository.

Does anyone have a "not-so-dirty" solution for that?

Thanks in advance,
Jocelyn Meyron.

--00000000000024cae706191ffa82
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi everyone,<div><br></div><div>I&#39;m wondering if there=
 is a canonical way in Yocto to &quot;aggregate&quot; files installed by re=
cipes and running a post processing step on them.</div><div><br></div><div>=
Let me go into a bit more details by mimicking my use case:</div><div><br><=
/div><div>1. Let&#39;s say I have some of my recipes in my image which inst=
all some HTML files BUT not in my rootfs (you can imagine they end up in ${=
PN}-doc packages)</div><div>2. After my image is built, I want to run a scr=
ipt on all those HTML files to post process them, like building a full webs=
ite out of a template I have on my computer/git repository.</div><div><br><=
/div><div>Does anyone have a &quot;not-so-dirty&quot; solution for that?</d=
iv><div><br></div><div>Thanks in advance,</div><div>Jocelyn Meyron.=C2=A0</=
div></div>

--00000000000024cae706191ffa82--

