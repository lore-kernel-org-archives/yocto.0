Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A09DEC48297
	for <webhook@archiver.kernel.org>; Fri,  9 Feb 2024 06:10:24 +0000 (UTC)
Received: from mail-ej1-f49.google.com (mail-ej1-f49.google.com [209.85.218.49])
 by mx.groups.io with SMTP id smtpd.web11.5812.1707459019526776340
 for <yocto@lists.yoctoproject.org>;
 Thu, 08 Feb 2024 22:10:19 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=BwRbuPQD;
 spf=pass (domain: gmail.com, ip: 209.85.218.49, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f49.google.com with SMTP id a640c23a62f3a-a3a77f27524so62277766b.1
        for <yocto@lists.yoctoproject.org>; Thu, 08 Feb 2024 22:10:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1707459017; x=1708063817; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=41lLZ6GGulHvcE0fUwbkFXYOLW3LU3GrNlzs0OPFsSc=;
        b=BwRbuPQDIJsChF9QnJyO+Zy9rvWy4NQE854lGGzM72bVCjKgZW5zlOKZshkRWiS6f/
         jG4UDZHoXfDTeEtjkXW6+bVv7SWw+iXKceBhMaclpBSJ6PhFoAv0X/zwvLGStKeDUTpM
         ba19GrvRmm3V70ounRkfbx5VvBDNxWWXJzzI5dia7ol+rGvKqvnoquZd/yKhBEsXozW5
         NhCoCvAFDRGdrD1iJ76AwgNAqDNMwHdO1cSycG1gDo+5fV+vvlTJIX9m7koTUzQ3m2Tc
         i/1Mo1CUr5MsdmREE1dZVyux/9WPS5vLcBJ7txOzKZX6PSnAprOdlu/Farn6dscpal1j
         3Ejg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1707459017; x=1708063817;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=41lLZ6GGulHvcE0fUwbkFXYOLW3LU3GrNlzs0OPFsSc=;
        b=glmqyZ8ZLEL3IaFFgudcj6PhcV2ZiOGB2yyywdzRj7oReLMoDYtKCqfuNdl7vncxtg
         ngHJSVBr8xVmZbAyrUz7hVLa30RJ7fLicVX5ylMhUM/wbyzpG7MQhMEAPyE97lm9QD/G
         xc4a6jwTihrdWzgmXzcAONxa5MpdIDLdMru+BGdcLF1rEQy1T+qWRzjst+9sGGOerirt
         qPwgE0OpwOyXaMFO5SR28YBeW/MQ+AJcTADV7seEROe8fjGj+glKSFxjYh+oUnpQ+zQ2
         AVnSiPMtwOttf/Njtybb/T4weS2sDNTAxiHcZIbNoOP9UP61+/vSPbgSArrAEOo3GKTH
         VobQ==
X-Gm-Message-State: AOJu0YxTCF6Xp8eemmKlU1Wd6Zc9RG12Gfq3U2tGlQOOGBd7ANiAQp/7
	6wG0BfUlOorGvVDE0WdRlL7oFlNyv3549nFKR9fCJD3ISP/90JggcgWXc5qO2w4OJdfnLd50yN5
	rb4EbDrT3GTQbQRhRT1ldnFfgnWVX/Lxl
X-Google-Smtp-Source: AGHT+IE//h9E7mWYuuBnPCVA65j90DcahzSJVI3JRnUYAjSjdHCxM9BQVi7RYvi7GOtKIH1lm63RGepincgOUYXS/Uc=
X-Received: by 2002:a17:906:e2c5:b0:a38:8b66:ac43 with SMTP id
 gr5-20020a170906e2c500b00a388b66ac43mr401220ejb.28.1707459017174; Thu, 08 Feb
 2024 22:10:17 -0800 (PST)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Fri, 9 Feb 2024 11:40:05 +0530
Message-ID: <CAPJWBngiASed1Y9WaKCSj+t10S=2X6XoQQVC6HRyQAGk6+jmyQ@mail.gmail.com>
Subject: Moving yocto SDK to GIT
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000002ff2140610ecc8ad"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 09 Feb 2024 06:10:24 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/62441

--0000000000002ff2140610ecc8ad
Content-Type: text/plain; charset="UTF-8"

Hi guys,
Apart from all the meta-layers, do you guys think it's a good idea to move
the downloads, sstate cache and the .conf files of build dir to GIT?

Regards,
Hassan

--0000000000002ff2140610ecc8ad
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<br><div>Apart from all the meta-layers, do you gu=
ys think it&#39;s a good idea=C2=A0to move the downloads, sstate=C2=A0cache=
 and the .conf files of build dir to GIT?</div><div><br></div><div>Regards,=
</div><div>Hassan</div></div>

--0000000000002ff2140610ecc8ad--

