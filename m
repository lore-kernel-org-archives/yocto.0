Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 05F63C76196
	for <webhook@archiver.kernel.org>; Mon,  3 Apr 2023 05:04:43 +0000 (UTC)
Received: from mail-ed1-f52.google.com (mail-ed1-f52.google.com [209.85.208.52])
 by mx.groups.io with SMTP id smtpd.web11.63120.1680498274351652673
 for <yocto@lists.yoctoproject.org>;
 Sun, 02 Apr 2023 22:04:34 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=F4hvml5A;
 spf=pass (domain: gmail.com, ip: 209.85.208.52, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ed1-f52.google.com with SMTP id er13so71270362edb.9
        for <yocto@lists.yoctoproject.org>; Sun, 02 Apr 2023 22:04:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112; t=1680498272;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=wIemZTeMKokWlmxuxyI6Lx0aVPtMyp+O8B8AQ1V6S70=;
        b=F4hvml5AquBgAcDbiWIIgx1HRoVU7C2gJpW62Q5eucaCxTuxHBtUV0lFM2Zf2q93im
         CFoNOdmpxd6fEoAVbzyzBdrC8qasuR3Ni+lPJ/2d/wSS8iW96q2LilcQyQDME6vPefE4
         HACYW2m1VpAcGqDWl3fuzWNgkM9XOz4Jhzv2cVwJhgHnfG9D2PPUonaYUpd9lQ0zTcV8
         13agv2TCD5sBR2RDrdqxZIhKVX0o1EhLDeqRBXJ+t2TnLO2/+0EdVtRdc1w/x6CM2dy0
         c4OK6VAJ2n/bcVdPHkTC8Yi60sJJ0+aP5hqzggVClYVoW6PV0GG7Sr/xFYliLwdnUR5j
         lsYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112; t=1680498272;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=wIemZTeMKokWlmxuxyI6Lx0aVPtMyp+O8B8AQ1V6S70=;
        b=o5hbpbGtF2gZGQD2sl6QBtZ953dqi0r0v+c7EP0RFemVVwou0ggOO9jTbLDxm0WFkk
         TAbmqF1YVMoMwSTcgxHJKVIpfFFrkSj6HE/axVl2IsTkMFvkRBfkQ6c6DTr3e0JiiTha
         tN7QrVKntZaYQctnzlnbnqNdfNa64dUgp6yNj5IJh8ujHFYtBbfcxThMqUwiF9T1xrbs
         9iM2PhN2upud0tNON100JhPlqTjFl0SAJjLZsX4nOdTkLxa1B3xdkpGrROxdJRpOmq8w
         Zrvkcx8hO9NyIFNiXZkm0X44i9Hp/5tzp5c/J5JuYbExvdNeCW7Iq4B7YPOHJkyTvJvp
         Yy/Q==
X-Gm-Message-State: AAQBX9dAG1Bycsw4gWgORMvr/aIHkpq/UMQtf7LrcE+3bmctE4LHfII8
	v8f/kcAR+2WRpS4Q/RezKww9nS/xlO4r1Uv1/daIP6w0XB5hHA==
X-Google-Smtp-Source: AKy350Y7N34sPe4cT20I24unbbKowdJcCzJdbFRDHWrTKtavl3q73casGy9/9JXd5hZQan/vRCxFou3NwyUHVplBfkw=
X-Received: by 2002:a50:999c:0:b0:4fa:e5c1:d142 with SMTP id
 m28-20020a50999c000000b004fae5c1d142mr16738545edb.0.1680498272199; Sun, 02
 Apr 2023 22:04:32 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Mon, 3 Apr 2023 10:34:20 +0530
Message-ID: <CAPJWBnjS2QbvMTJaju5xRGkkDg8NMV3gZLKZdmMziE5pdLPn_Q@mail.gmail.com>
Subject: Unable to add nodejs and npm-related packages
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008f67bf05f8677e8d"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 03 Apr 2023 05:04:43 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59593

--0000000000008f67bf05f8677e8d
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am trying to add nodejs and npm to my image file but get the below error
message.

ERROR: core-image-minimal-1.0-r0 do_image_cpio: The initramfs size
256914(K) exceeds INITRAMFS_MAXSIZE: 131072(K)
ERROR: core-image-minimal-1.0-r0 do_image_cpio: You can set
INITRAMFS_MAXSIZE a larger value. Usually, it should
ERROR: core-image-minimal-1.0-r0 do_image_cpio: be less than 1/2 of ram
size, or you may fail to boot it.

ERROR: Logfile of failure stored in:
/home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/core-image-minimal/1.0-r0/temp/log.do_image_cpio.106257
ERROR: Task
(/home/mohan/amlogic/poky/meta/recipes-core/images/core-image-minimal.bb:do_image_cpio)
failed with exit code '1'

I am new to yocto and am not able to solve this issue. Can you guys please
help.

Thanks and regards,
Hassan

--0000000000008f67bf05f8677e8d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<div>I am trying to add nodejs and npm to my image=
 file but get the below=C2=A0error message.</div><div><br></div><div>ERROR:=
 core-image-minimal-1.0-r0 do_image_cpio: The initramfs size 256914(K) exce=
eds INITRAMFS_MAXSIZE: 131072(K)<br>ERROR: core-image-minimal-1.0-r0 do_ima=
ge_cpio: You can set INITRAMFS_MAXSIZE a larger value. Usually, it should<b=
r>ERROR: core-image-minimal-1.0-r0 do_image_cpio: be less than 1/2 of ram s=
ize, or you may fail to boot it.<br><br>ERROR: Logfile of failure stored in=
: /home/mohan/amlogic/build/tmp/work/mesons4_lib32_ap222-poky-linux/core-im=
age-minimal/1.0-r0/temp/log.do_image_cpio.106257<br>ERROR: Task (/home/moha=
n/amlogic/poky/meta/recipes-core/images/core-image-minimal.bb:do_image_cpio=
) failed with exit code &#39;1&#39;<br></div><div><br></div><div>I am new t=
o yocto and am not able to solve this=C2=A0issue. Can you guys please help.=
=C2=A0</div><div><br></div><div>Thanks and regards,</div><div>Hassan</div><=
/div>

--0000000000008f67bf05f8677e8d--

