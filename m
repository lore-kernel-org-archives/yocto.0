Return-Path: <arik.kleiman@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 1E7B9C433EF
	for <webhook@archiver.kernel.org>; Tue,  4 Jan 2022 07:47:38 +0000 (UTC)
Received: from mail-ot1-f44.google.com (mail-ot1-f44.google.com
 [209.85.210.44])
 by mx.groups.io with SMTP id smtpd.web08.3906.1641282453372749429
 for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jan 2022 23:47:33 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20210112 header.b=kCLq8R5y;
 spf=pass (domain: gmail.com, ip: 209.85.210.44,
 mailfrom: arik.kleiman@gmail.com)
Received: by mail-ot1-f44.google.com with SMTP id
 r10-20020a056830080a00b0055c8fd2cebdso46328915ots.6
        for <yocto@lists.yoctoproject.org>;
 Mon, 03 Jan 2022 23:47:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=mime-version:from:date:message-id:subject:to;
        bh=r5fi8BBBBs55DSKegxY0YptPnV4vjNGyWOhKPM1QX8o=;
        b=kCLq8R5yM/ddenbjhqBoLvRI6d+E70HvdY9X6ISb0IQFhFInfiFW3CFdsYX9OXbomn
         j8UyVKuNT8wAlkSAw/DbTuoNTJ3RD5Mu9kYj8eyTM/oYnhItaA6pc+Y2eNV/Fg26YdfG
         kSKPaGi2lOtciWOyd9fY+zwAPwD6VJnii9xaJ5QewNWhLFBRGZcOoZXLsvaw3QMktvEg
         ZAbn8n4geyQVpqPUXhp55QfDr/dEHOEGxmEeh5XOqbQRsRf6TVpgyhKt5igvJ+nNrV5x
         AFP7fVeIrGlE6O+12kcrmU8Gc4OElNZPmLAeD2IKHcU6jZs/b6sW7hTPO4oXs/3xPV2l
         SDJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=r5fi8BBBBs55DSKegxY0YptPnV4vjNGyWOhKPM1QX8o=;
        b=lFuOwApkSmyYpyJlIi4gijAsdvdPMFphLwIhdW6a6o1va9GgiiiVG9y7zy/jINJp/i
         8YaYRHqxq1JTDS2FQODrsYha+rHbXxMetfg//IxJ1cpJ4dm5ca8jQ4t2HHzBx/L6Fmoi
         QFs6NuQiokFXxFNc+ncTEfsqkuNeP+vj0H0SUxqDa+suQUAZhGXk57RSwuQSgde4QcQV
         eQDdY+DIyByJlcCqJqdCFbHxxfYPyewfmz9D4+1wSMf9tUFTK9l8yDMGkqAlELHaL2u8
         sJmKSkUadY63XOCbbD28IRv8ZPRH5vn8fuYyYa7+11old2++kjauMRBH8beNt/dAyuQg
         QJ6w==
X-Gm-Message-State: AOAM530eiHqkGe0GsRFAiUCjDAi2eHMVxD1DlVrFm6x76zLqCl6ZuJ3p
	cvNxcAdQaS3njf7VB+WV7rx4bzVDoZwvKmM0mOnGMpeR
X-Google-Smtp-Source: 
 ABdhPJxgvpN4AajDzplg+IvXZxlaraw+WWPm9Tx2oRkBIBR9aHAlgsl8iyHFlmb/RksVmEAn0L9JhfdDaF6/1MC5W/k=
X-Received: by 2002:a9d:832:: with SMTP id 47mr33742267oty.196.1641282452314;
 Mon, 03 Jan 2022 23:47:32 -0800 (PST)
MIME-Version: 1.0
From: Arik Kleiman <arik.kleiman@gmail.com>
Date: Tue, 4 Jan 2022 09:47:19 +0200
Message-ID: 
 <CAGeH+D16bUL7__M5akSKk-au8ZM_bgVX31kW0BtzvzLhzbq7Kg@mail.gmail.com>
Subject: updating system with local time
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000008bdd8e05d4bcd955"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Jan 2022 07:47:38 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/55714

--0000000000008bdd8e05d4bcd955
Content-Type: text/plain; charset="UTF-8"

Hi,

Is there any way to update my Read Only system (which connected  to the
world via cellular) with local time?

Im able to get the local time zone from ip lookup ... but can't use it to
update the system current time.

Thanks,
Arik

--0000000000008bdd8e05d4bcd955
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto">Hi,<div dir=3D"auto"><br></div><div dir=3D"auto">Is there=
 any way to update my Read Only system (which connected=C2=A0 to the world =
via cellular) with local time?</div><div dir=3D"auto"><br></div><div dir=3D=
"auto">Im able to get the local time zone from ip lookup ... but can&#39;t =
use it to update the system current time.</div><div dir=3D"auto"><br></div>=
<div dir=3D"auto">Thanks,</div><div dir=3D"auto">Arik</div></div>

--0000000000008bdd8e05d4bcd955--

