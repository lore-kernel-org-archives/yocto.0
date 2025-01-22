Return-Path: <alex.kanavin@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5843EC02181
	for <webhook@archiver.kernel.org>; Wed, 22 Jan 2025 08:40:59 +0000 (UTC)
Received: from mail-qv1-f44.google.com (mail-qv1-f44.google.com [209.85.219.44])
 by mx.groups.io with SMTP id smtpd.web11.38681.1737535249102247569
 for <yocto@lists.yoctoproject.org>;
 Wed, 22 Jan 2025 00:40:49 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=ZDcrxdnf;
 spf=pass (domain: gmail.com, ip: 209.85.219.44, mailfrom: alex.kanavin@gmail.com)
Received: by mail-qv1-f44.google.com with SMTP id 6a1803df08f44-6dfbc45355bso78089336d6.2
        for <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2025 00:40:48 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737535248; x=1738140048; darn=lists.yoctoproject.org;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:from:to:cc:subject:date
         :message-id:reply-to;
        bh=8AYnT3mAXzEIWOeKULGnRbo4HqePQ1VfKVRhiX87U4w=;
        b=ZDcrxdnfIc/A4M7DxRfokUKWrvrkI284ce7LuHKZRD7bvgLxIWN6uVMrf/cmvbLrYB
         52+aFdE2XB0PJaAREsI/47vbrDrysWC110PnQvW7g/y9rYZAfMQYFssxT6dfUbjmr2en
         cvbKAeykdWcKHzOzmkl6+VXPwKOWfek2+dW4z+aPujz0NM4IAwfPsqCSSmPkWZF8kH3/
         eMz0YbLK/Zm2T85mev2Z3YaOB3cO+6H8zyNnFrnVtbVdPGDwC9ROFtWH/rN6T2qJAlxB
         pC0GTQ1Tu9KCCACidN/li5rihxkMQPhAKZ68t9NGHSOxtfwiXcB3rHmMrCN+468oNuBO
         LwXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737535248; x=1738140048;
        h=content-transfer-encoding:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:x-gm-message-state:from:to:cc
         :subject:date:message-id:reply-to;
        bh=8AYnT3mAXzEIWOeKULGnRbo4HqePQ1VfKVRhiX87U4w=;
        b=XNE7OJJmv3IbNbjmaNgis4zw5BQcQrO1Seq3ylwbjibWkOJHFlWgShqvxCibcazHNd
         1nCPwhnkhnvGRjdbpa64T9szPDNKnmcSDgGAxGbDEuUlAs/+xBdLmbXyvXzKUlRNDkih
         plhbcS9jSt6ZLAYyA9mMGDGH2VbfbXi9LnoLyIZ8jFyFu1vDPBcuc0G009W6LgxS4jPN
         +TI3Gai6mdnE1YdRPgKoU8qzgcHiM+xJwbCsQfBwem2VU7K6ot3WvOaG3inZdV7ed5yA
         27x6DJBJDdmgfmNGnHRtfZD7s3IDkH/S0G/xbRi1ptfUp84tNRGV+86zSEDZtgc1Kr6o
         1QoA==
X-Gm-Message-State: AOJu0YxX2WNQLpD8M9IFS94TwAbUr8b09J6fO4nP6bgK9nmexnuC8IQV
	SLxW++uZpBURN0BwTmjM/rZJSAsTAyLLq4MrNHogckMFwxvCXp6PpSZYdlpsrbnUFU5Di6LyuEt
	KOPFHKyQkUcrVo8WB2id2apTgGH+Ebw==
X-Gm-Gg: ASbGnctskuc6SUJSS5qguAIFje8deAEnTeWYrOcJOw9lrXB/xKPgBlQ01FU5nkqVhka
	935zO1rY2XARFPF1jNY8r+LPoOCAq+C3gbTFLo4uy/yKII5i4X04cQzn5jnu6DnzjdclAttfgaV
	+TYO6ef4FwtQ==
X-Google-Smtp-Source: AGHT+IH1ZIpLjXFiM1MsymBD7om+ho9OdoGNPTcxJME7kAKc7Me1QqXE57jXfDq8Jzti8iPZzHRmW0eN64WBTleyOLI=
X-Received: by 2002:ad4:5c4b:0:b0:6d8:a7f7:c39d with SMTP id
 6a1803df08f44-6e1b224bd4amr272971776d6.40.1737535248156; Wed, 22 Jan 2025
 00:40:48 -0800 (PST)
MIME-Version: 1.0
References: <181CEC047B932C4D.27121@lists.yoctoproject.org> <CAPJWBniB2fmcPsjLYNjq5LCJ3wBqPeZoUAsPHwG-rQgdD_vM_g@mail.gmail.com>
In-Reply-To: <CAPJWBniB2fmcPsjLYNjq5LCJ3wBqPeZoUAsPHwG-rQgdD_vM_g@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Wed, 22 Jan 2025 09:40:37 +0100
X-Gm-Features: AbW1kvYitD0VxWkmVvZcHu-WcpxeuRTG1oWvMVJI6UaE9ZiR8JDgia7QeG3ZK_c
Message-ID: <CANNYZj-8EUWeTgSTHtaMhKFc386FMZY4vdF6ua2Lpt3tZs+goA@mail.gmail.com>
Subject: Re: [yocto] glib-2.0 addition to yocto kirkstone image
To: yocto@lists.yoctoproject.org, hassanchattarki@gmail.com
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Wed, 22 Jan 2025 08:40:59 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64611

It helps to step back and consider what your actual goal is. A library
without applications is not useful on the target image. And if you
install applications into target images, you do not need to worry
about libraries, they will be pulled into the target image through
package dependencies.

So what is the task you have?

Alex

On Wed, 22 Jan 2025 at 06:25, MOHAMMED HASSAN via
lists.yoctoproject.org
<hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>
> An update,
> I notice the files are not being added in my image recipe. I have called =
it correctly but can't see it. Do I need to set any packageconfig variables=
?
>
>
>
>
> On Wed, Jan 22, 2025 at 10:47=E2=80=AFAM MOHAMMED HASSAN via lists.yoctop=
roject.org <hassanchattarki=3Dgmail.com@lists.yoctoproject.org> wrote:
>>
>> Hi guys,
>> I am facing an issue with the glib-2.0 library. I have added the package=
 to my image baserootfs as glib-2.0 . On manually verifying the image folde=
r under work directory I can see the /usr/lib and other system library file=
 present. But they are not getting added in my final image. i.e I can see t=
hem on my target device. What should I do?
>>
>> The build is successful and I don't see any errors so dont know what to =
share with you guys.
>>
>> Regards,
>> Hassan
>>
>>
>>
>>
>>
>
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
> Links: You receive all messages sent to this group.
> View/Reply Online (#64608): https://lists.yoctoproject.org/g/yocto/messag=
e/64608
> Mute This Topic: https://lists.yoctoproject.org/mt/110748308/1686489
> Group Owner: yocto+owner@lists.yoctoproject.org
> Unsubscribe: https://lists.yoctoproject.org/g/yocto/unsub [alex.kanavin@g=
mail.com]
> -=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-=3D-
>

