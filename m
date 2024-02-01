Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 80117C47DDB
	for <webhook@archiver.kernel.org>; Thu,  1 Feb 2024 12:03:41 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web11.13670.1706789017311094756
 for <yocto@lists.yoctoproject.org>;
 Thu, 01 Feb 2024 04:03:37 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=IP/RtFT3;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-a366ad7ad45so100843866b.3
        for <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 04:03:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1706789015; x=1707393815; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=G5UBrY0T80ZsazDjpabf2N05k+aT0lXtLf6oLTU6Fhc=;
        b=IP/RtFT3c0XiDCKGVlvDmj4lwGDuc2Xa1bcKVHBnrUgQc10uBMs+OLTuzVltZzoeS6
         +bIkJ8iiycslSjcBoT0y42Sk2JNt++e09my2x5WbyltshZajlcnIcukMx1T0Klhzm1+p
         nz2Z1rGrS+ewjB0F8ZGvtI7nmEiWoy0YZvpm6rNsuZGlkEznNbK1xby4qV+NoPt4LmqX
         miRUdN3tnZ4eQqTu/N0r+74vS96UU4r9mV257yGXhXcuJzUeNB1ZWUt0Yb7BcS7lQcWo
         UcH3fdSY7TgHv0GtM3SmE0JDS86mMuUFullXvGod4J6nuUbOW3NniaQYJwOH4AmrvnmJ
         sjjg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1706789015; x=1707393815;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=G5UBrY0T80ZsazDjpabf2N05k+aT0lXtLf6oLTU6Fhc=;
        b=Iak/m4uih1LHDzDMwJ+j/y+6ysX046bc513TJSOt7L7huzzGofsQrynelodwZcAZBd
         3zVCkGSee8MtBaplcq9O1AHQOLP+UhGNvlnCF0wzjPobyrlUyzTqwx36hC4RIsePALbo
         1/wpsroe7Ud0ib9g9c+s4827be/+HXhXYNKQR3w7T0Qu8YVInB2C4/gUYuS3782OOqSU
         DwCJo6lpolzi3YO+Xnsg2DiSfPv3kH+tJb/Gfwm/e3cjL8dL+wwwb/wrc7WbUER71G8Q
         CNijokk+ak/Xl8P8frcyEEgZh/v/KHWcaPX7OTw4uNnuUksTJe21MMRCV5GZolJIulvn
         lh0A==
X-Gm-Message-State: AOJu0YyqznYYcp2Y2cYMw3CC4wsWCaI3wFUVtFYF3cljdAxoMWvR36v6
	Cp5mSbSKaxBBINnAamiRncf2mAeF3S57JkylzXErVGknv99jEXbIchzFgSRT9o2z0At3DX+WCSY
	QZ7oCwMjO3HQgNDOo3WxLONhtHaw9zvTQOWE=
X-Google-Smtp-Source: AGHT+IGh+H5pkWtl6NkVdk8xnxBglLYv95U+yVq0BYSH3V27wrFiJjk/4AsTxFfFuIeLG1NZmwdKUK7qncT2xnAfWTA=
X-Received: by 2002:a17:906:5645:b0:a36:897e:68e7 with SMTP id
 v5-20020a170906564500b00a36897e68e7mr2920037ejr.33.1706789015182; Thu, 01 Feb
 2024 04:03:35 -0800 (PST)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Thu, 1 Feb 2024 17:33:24 +0530
Message-ID: <CAPJWBnh-FJSR-iM8NFsxQuWxDhHv-JLcxDFrB-93qqWfM2kGqA@mail.gmail.com>
Subject: Updating nodejs to latest version
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="000000000000f4e287061050c867"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 01 Feb 2024 12:03:41 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62356

--000000000000f4e287061050c867
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am using dunfell 3.1.11 and wanted to update my nodejs version. So I
thought if I downloaded the nodejs_16.x.bb from kiskstone and wanted to
bitbake it into my image.

But I get this error,
NOTE: Executing Tasks
ERROR: nodejs-16.20.2-r0 do_configure: Execution of
'/Yocto_2_16_sdk/amlogic/build/tmp/work/aarch64-poky-linux/nodejs/16.20.2-r0/temp/run.do_configure.648283'
failed with exit code 2
ERROR: Logfile of failure stored in:
/Yocto_2_16_sdk/amlogic/build/tmp/work/aarch64-poky-linux/nodejs/16.20.2-r0/temp/log.do_configure.648283
Log data follows:


*| DEBUG: Executing shell function do_configure| python3: can't open file
'configure.py': [Errno 2] No such file or directory| WARNING: exit code 2
from a shell command.*
| ERROR: Execution of
'/Yocto_2_16_sdk/amlogic/build/tmp/work/aarch64-poky-linux/nodejs/16.20.2-r0/temp/run.do_configure.648283'
failed with exit code 2
ERROR: Task
(/Yocto_2_16_sdk/amlogic/meta-meson/recipes-devtools/nodejs/nodejs_16.20.2.bb:do_configure)
failed with exit code '1'
NOTE: Tasks Summary: Attempted 1794 tasks of which 1789 didn't need to be
rerun and 1 failed.

Do you guys have an idea how to resolve this error?

Thanks and Regards,
Hassan

--000000000000f4e287061050c867
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>I am using dunfell 3.1.11 and wanted to u=
pdate my nodejs version. So I thought if I downloaded the <a href=3D"http:/=
/nodejs_16.x.bb">nodejs_16.x.bb</a> from kiskstone and wanted to bitbake it=
 into my image.</div><div><br></div><div>But I get this error,</div><div>NO=
TE: Executing Tasks<br>ERROR: nodejs-16.20.2-r0 do_configure: Execution of =
&#39;/Yocto_2_16_sdk/amlogic/build/tmp/work/aarch64-poky-linux/nodejs/16.20=
.2-r0/temp/run.do_configure.648283&#39; failed with exit code 2<br>ERROR: L=
ogfile of failure stored in: /Yocto_2_16_sdk/amlogic/build/tmp/work/aarch64=
-poky-linux/nodejs/16.20.2-r0/temp/log.do_configure.648283<br>Log data foll=
ows:<br><b>| DEBUG: Executing shell function do_configure<br>| python3: can=
&#39;t open file &#39;configure.py&#39;: [Errno 2] No such file or director=
y<br>| WARNING: exit code 2 from a shell command.</b><br>| ERROR: Execution=
 of &#39;/Yocto_2_16_sdk/amlogic/build/tmp/work/aarch64-poky-linux/nodejs/1=
6.20.2-r0/temp/run.do_configure.648283&#39; failed with exit code 2<br>ERRO=
R: Task (/Yocto_2_16_sdk/amlogic/meta-meson/recipes-devtools/nodejs/nodejs_=
16.20.2.bb:do_configure) failed with exit code &#39;1&#39;<br>NOTE: Tasks S=
ummary: Attempted 1794 tasks of which 1789 didn&#39;t need to be rerun and =
1 failed.<br></div><div><br></div><div>Do you guys have an idea how to reso=
lve this error?</div><div><br></div><div>Thanks and Regards,</div><div>Hass=
an</div></div>

--000000000000f4e287061050c867--

