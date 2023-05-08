Return-Path: <hassanchattarki@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 25ADFC77B75
	for <webhook@archiver.kernel.org>; Mon,  8 May 2023 12:07:39 +0000 (UTC)
Received: from mail-ej1-f54.google.com (mail-ej1-f54.google.com [209.85.218.54])
 by mx.groups.io with SMTP id smtpd.web10.105583.1683547651078355256
 for <yocto@lists.yoctoproject.org>;
 Mon, 08 May 2023 05:07:31 -0700
Authentication-Results: mx.groups.io;
 dkim=fail reason="signature has expired" header.i=@gmail.com header.s=20221208 header.b=qi9QaGKL;
 spf=pass (domain: gmail.com, ip: 209.85.218.54, mailfrom: hassanchattarki@gmail.com)
Received: by mail-ej1-f54.google.com with SMTP id a640c23a62f3a-956ff2399c9so835218366b.3
        for <yocto@lists.yoctoproject.org>; Mon, 08 May 2023 05:07:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20221208; t=1683547649; x=1686139649;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=nw0aqYrtf5mOuvDYr+SSJaW9z+/t9TSDZ/T8X3FKhtQ=;
        b=qi9QaGKLdTRF3+cyh/MmSm0tPOEIT7oE9ld+c8q1UlD6hWZZ13EGZfs8OfrKApoWQ/
         8LKg7Rd2+ZXnoK6aBXNQnZsFO/65+OjwL07Fzx5TtVey5dGBg2a3x8ZquVt06OM+X/xb
         znrCXOL9QFdU69k6awpCEiPKmj6eEFICvMWzQrUkAFaDSDm1By8YQzRDDb6Omg0/jRJq
         2a8LacpYSAvJNwFXeOK3h0U6lo4GeVYX2iaXDYWQOCfjsvGmSskTwwbqz5JGZGjwxf3f
         SurymMEntwl+xPU6GX4xuZaTxiWTYBwg4m2O7k8Eu/rXXx7uKLSwkKACsgnLTBPYNCQ7
         eo4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20221208; t=1683547649; x=1686139649;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=nw0aqYrtf5mOuvDYr+SSJaW9z+/t9TSDZ/T8X3FKhtQ=;
        b=eFmymK8HMPAWag3OX7kyTHgrWuYy3Q6nLHoTbPzQLSFNeEpu7C+SihTRh5cpvXynt0
         yP0CmRRN9gXvJ18BeCw0LJYsQoViYlD1yeGz4f3KJFTu+GQxfLwctc5qE80/HY0P6dL5
         fiFZ8PnQNV06lw5za11dCi8BtPxzXKe/LMDk3kl7VCaf4qTdg585zuPbS0rCY8+FQZUe
         69xxFKxaATXnloVs62mYlocrg2yZ8+snSytw/E0oZo49kbGNw+WwZM1UZPK0aaAfS/iW
         siLzub1n1CZ4Gk4YbinujXegUNa0KCJ3qIfDjjcAJ2cQwdD4AYFziZdHD4zSvqxksRze
         +0Zw==
X-Gm-Message-State: AC+VfDwfR65Pyf9v2+45mNbuBXAHD7oLtEPWhRmAg4LTuMqI1oVVs0Ro
	JM+5y34aBchdMUS7chmlqdmLFYNhTVO23V8ZC8eBSIvfNhc=
X-Google-Smtp-Source: ACHHUZ49eSKFY1hyiggP1y9mYzwV9yijQPAA2LftykoPgvsoZWjSrdNAwqLAeEB9DR8HkdTXelPlELIPypOlXHFQPKo=
X-Received: by 2002:a17:906:7955:b0:94f:9f76:c74f with SMTP id
 l21-20020a170906795500b0094f9f76c74fmr9843175ejo.52.1683547648769; Mon, 08
 May 2023 05:07:28 -0700 (PDT)
MIME-Version: 1.0
From: MOHAMMED HASSAN <hassanchattarki@gmail.com>
Date: Mon, 8 May 2023 17:37:17 +0530
Message-ID: <CAPJWBnje3c9_0nkjmjC39uZm1P4hnpdZqUSUzvZ_Yz6jJUS2UQ@mail.gmail.com>
Subject: Unable to locate insatlled nodejs packages
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009159b105fb2d7b29"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Mon, 08 May 2023 12:07:39 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/59900

--0000000000009159b105fb2d7b29
Content-Type: text/plain; charset="UTF-8"

Hi guys,
I am referring this link
https://stackoverflow.com/questions/71293110/how-to-add-nodejs-packages-to-yocto
as a basuc example to add npm packages in my image.

However,
I see no npm install, no do_install function in the .bb file so got
confused if the packages are actually installing in my image or not.

Can you guys guide me on this. How can I know if the file have been
installed, which directory do I check?

Thanks
Hassan

--0000000000009159b105fb2d7b29
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi guys,<div>I am referring this link=C2=A0<a href=3D"http=
s://stackoverflow.com/questions/71293110/how-to-add-nodejs-packages-to-yoct=
o">https://stackoverflow.com/questions/71293110/how-to-add-nodejs-packages-=
to-yocto</a> as a basuc example to add npm packages in my image.</div><div>=
<br></div><div>However,</div><div>I see no npm install, no do_install funct=
ion in the .bb file so got confused if the packages are actually installing=
 in my image or not.</div><div><br></div><div>Can you guys guide me on this=
. How can I know if the file have been installed, which directory do I chec=
k?</div><div><br></div><div>Thanks</div><div>Hassan=C2=A0</div></div>

--0000000000009159b105fb2d7b29--

