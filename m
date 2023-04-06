Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 36765C76196
	for <webhook@archiver.kernel.org>; Thu,  6 Apr 2023 05:06:53 +0000 (UTC)
Received: from mail-ed1-f47.google.com (mail-ed1-f47.google.com [209.85.208.47])
 by mx.groups.io with SMTP id smtpd.web10.151213.1680757604242729160
 for <yocto@lists.yoctoproject.org>;
 Wed, 05 Apr 2023 22:06:44 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=WEdVHHVL;
 spf=pass (domain: gmail.com, ip: 209.85.208.47, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f47.google.com with SMTP id cn12so146443349edb.4
        for <yocto@lists.yoctoproject.org>; Wed, 05 Apr 2023 22:06:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680757602;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=Z/7K3aE6al1mkfgieXMnbaoCxPBHcRQOXUhd+wRq9H0=;
        b=WEdVHHVLSgTtQ32YupBhr7R9+lvjowyG95xf7JMPzIEXGec7yVAytw9R3pnhxhJCX7
         oI5gUyAM0+VwzqtwO5GU0yGlIyv6ZqqnRO8HFFqE6P2CUnEKBrAx5H74gMkvoiR2lPAk
         XfLqsbAOBGDhrDmewRXAMim9Da95uT24fE6yaNIG99vDw2iRyc+sATeEWW5zHVfrTKjO
         1X7zu9s1mChV615DfFa1RN1/4pejnzQ5iAXxkFmVMxMHuNHbW7S7XQ617XdvBor4RyVP
         uQUScRZ7g8FOQSPP+CIMXFwOInatZ4I2kTisd9kcPOANgid+z1UkqPEWU58VdhapR2kE
         c+aQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680757602;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=Z/7K3aE6al1mkfgieXMnbaoCxPBHcRQOXUhd+wRq9H0=;
        b=RbBxiJOpE/tUuBMo/XTfJXaz0Tzq04YozC8Lm65BgQvdJ2Jk0SsY7BVM0qR1NeRhvz
         D4gcDiS1ncV+YDOpyL2S3ePkCbigARCCPWYycFFLgHH+C3o+yei8isFDLAzaLo7LMpRh
         /hIEONYrfUAyuG7pQhqVeuHTwUHQmEx3HSolUfVJjkxk2ZufYy8P4/N8UVUQOFdn3Q0V
         ypTHp4p6jK3pDzwISFACGXOwjwlbuhlp8k+0qcCY0GsU7fgIZSJepjDa9MsgbNNuW6LL
         tCoPEHIxHNnGK0SbIzr4oKL8FINeTLTv/jzTi32XOk2AJF8nhCFgRr9/pseFcfJRoVLW
         qPug==
X-Gm-Message-State: AAQBX9cIeL5YQinpMTDHM7RcUgdmND8uszfdZVsYE7Isirk6HG14Pnzr
	vzQ3ngBcNLH8nsmZdeEgfnlV7jqsjMDKc8ypncoPJuASh50=
X-Google-Smtp-Source: AKy350bJ9FYgjbONb4hbp5VG71FurKjKdO7NUmo15hcv/8fDN3r08XPC6aZekXHQ6R1bWapkdz+rYFOVQCUBo4RT3KM=
X-Received: by 2002:a17:906:cd28:b0:947:9f2a:8ca4 with SMTP id
 oz40-20020a170906cd2800b009479f2a8ca4mr2718363ejb.9.1680757601998; Wed, 05
 Apr 2023 22:06:41 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Thu, 6 Apr 2023 10:36:30 +0530
Message-ID: <CAPJWBnhgf-Lu1ArA7=xDYhN2zD8uCQ149HLBLo+Nyb+6sPgS_A@mail.gmail.com>
Subject: Unable to solve the initramfs issues
To: yocto@lists.yoctoproject.org
Content-Type: multipart/mixed; boundary="000000000000d24c9b05f8a3dfe0"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Thu, 06 Apr 2023 05:06:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59623

--000000000000d24c9b05f8a3dfe0
Content-Type: multipart/alternative; boundary="000000000000d24c9a05f8a3dfde"

--000000000000d24c9a05f8a3dfde
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I really need your help in solving this issue.
I want to add nodejs to my image and added the line *IMAGE_INSTALL_append
+= " nodejs "*
to my *local.conf* file, but got the error message






*ERROR: core-image-minimal-1.0-r0 do_image_cpio: The initramfs size
171613(K) exceeds INITRAMFS_MAXSIZE: 131072(K)ERROR:
core-image-minimal-1.0-r0 do_image_cpio: You can set INITRAMFS_MAXSIZE a
larger value. Usually, it shouldERROR: core-image-minimal-1.0-r0
do_image_cpio: be less than 1/2 of ram size, or you may fail to boot
it.ERROR: Logfile of failure stored in:
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/core-image-minimal/1.0-r0/temp/log.do_image_cpio.211614ERROR:
Task
(/home/mohan/amlogic/poky/meta/recipes-core/images/core-image-minimal.bb:do_image_cpio)
failed with exit code '1'*

I tried to solve this by adding the line
*INITRAMFS_MAXSIZE = "524288000"  *to my local.conf file and it compiled
successfully. But the OS flashing failed.
I have been stuck with this issue for a very long time and need your
support in this issue. I have attached all the log files or necessary files
for you to refer.

Thanks and regards,
Hassan

--000000000000d24c9a05f8a3dfde
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>I really need your help in solving=C2=A0t=
his issue.</div><div>I want to add nodejs to my image and added the line <b=
>IMAGE_INSTALL_append +=3D &quot; nodejs &quot;</b></div>to my <b>local.con=
f</b> file, but got the error message=C2=A0<div><b>ERROR: core-image-minima=
l-1.0-r0 do_image_cpio: The initramfs size 171613(K) exceeds INITRAMFS_MAXS=
IZE: 131072(K)<br>ERROR: core-image-minimal-1.0-r0 do_image_cpio: You can s=
et INITRAMFS_MAXSIZE a larger value. Usually, it should<br>ERROR: core-imag=
e-minimal-1.0-r0 do_image_cpio: be less than 1/2 of ram size, or you may fa=
il to boot it.<br><br>ERROR: Logfile of failure stored in: /home/mohan/amlo=
gic/build/tmp/work/mesons4_lib32_ap222-poky-linux/core-image-minimal/1.0-r0=
/temp/log.do_image_cpio.211614<br>ERROR: Task (/home/mohan/amlogic/poky/met=
a/recipes-core/images/core-image-minimal.bb:do_image_cpio) failed with exit=
 code &#39;1&#39;<br></b></div><div><br></div><div>I tried to solve this by=
 adding the line=C2=A0</div><div><b>INITRAMFS_MAXSIZE =3D &quot;524288000&q=
uot;=C2=A0 </b>to my local.conf file and it compiled successfully. But the =
OS flashing failed.=C2=A0</div><div>I have been stuck with this issue for a=
 very long time and need your support in this issue. I have attached all th=
e log files or necessary files for you to refer.</div><div><br></div><div>T=
hanks and regards,</div><div>Hassan</div><div><br></div><div><br></div><br>=
</div>

--000000000000d24c9a05f8a3dfde--

--000000000000d24c9b05f8a3dfe0
Content-Type: application/octet-stream; name=log_do_compile
Content-Disposition: attachment; filename=log_do_compile
Content-Transfer-Encoding: base64
Content-ID: <f_lg4nl62v0>
X-Attachment-Id: f_lg4nl62v0

REVCVUc6IEV4ZWN1dGluZyBweXRob24gZnVuY3Rpb24gc2V0X2ltYWdlX3NpemUKREVCVUc6IDE2
MzQyMC40MDAwMDAgPSAxMjU3MDggKiAxLjMwMDAwMApERUJVRzogMTcxNjEyLjQwMDAwMCA9IG1h
eCgxNjM0MjAuNDAwMDAwLCA4MTkyKVsxNjM0MjAuNDAwMDAwXSArIDgxOTIKREVCVUc6IDE3MTYx
My4wMDAwMDAgPSBpbnQoMTcxNjEyLjQwMDAwMCkKREVCVUc6IDE3MTYxMyA9IGFsaWduZWQoMTcx
NjEzKQpFUlJPUjogVGhlIGluaXRyYW1mcyBzaXplIDE3MTYxMyhLKSBleGNlZWRzIElOSVRSQU1G
U19NQVhTSVpFOiAxMzEwNzIoSykKRVJST1I6IFlvdSBjYW4gc2V0IElOSVRSQU1GU19NQVhTSVpF
IGEgbGFyZ2VyIHZhbHVlLiBVc3VhbGx5LCBpdCBzaG91bGQKRVJST1I6IGJlIGxlc3MgdGhhbiAx
LzIgb2YgcmFtIHNpemUsIG9yIHlvdSBtYXkgZmFpbCB0byBib290IGl0LgoKREVCVUc6IFB5dGhv
biBmdW5jdGlvbiBzZXRfaW1hZ2Vfc2l6ZSBmaW5pc2hlZAo=
--000000000000d24c9b05f8a3dfe0
Content-Type: application/octet-stream; name="core-image-minimal.bb"
Content-Disposition: attachment; filename="core-image-minimal.bb"
Content-Transfer-Encoding: base64
Content-ID: <f_lg4nmcqv1>
X-Attachment-Id: f_lg4nmcqv1

U1VNTUFSWSA9ICJBIHNtYWxsIGltYWdlIGp1c3QgY2FwYWJsZSBvZiBhbGxvd2luZyBhIGRldmlj
ZSB0byBib290LiIKCklNQUdFX0lOU1RBTEwgPSAicGFja2FnZWdyb3VwLWNvcmUtYm9vdCAke0NP
UkVfSU1BR0VfRVhUUkFfSU5TVEFMTH0iCgpJTUFHRV9MSU5HVUFTID0gIiAiCgpMSUNFTlNFID0g
Ik1JVCIKCmluaGVyaXQgY29yZS1pbWFnZQoKSU1BR0VfUk9PVEZTX1NJWkUgPz0gIjgxOTIiCklN
QUdFX1JPT1RGU19FWFRSQV9TUEFDRV9hcHBlbmQgPSAiJHtAYmIudXRpbHMuY29udGFpbnMoIkRJ
U1RST19GRUFUVVJFUyIsICJzeXN0ZW1kIiwgIiArIDQwOTYiLCAiIiAsZCl9Igo=
--000000000000d24c9b05f8a3dfe0--

