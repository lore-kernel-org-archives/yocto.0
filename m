Return-Path: <marek.belisko@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 32571C0218B
	for <webhook@archiver.kernel.org>; Fri, 24 Jan 2025 10:04:22 +0000 (UTC)
Received: from mail-wr1-f53.google.com (mail-wr1-f53.google.com [209.85.221.53])
 by mx.groups.io with SMTP id smtpd.web11.8487.1737713056034948986
 for <yocto@lists.yoctoproject.org>;
 Fri, 24 Jan 2025 02:04:16 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=RaPu43ZL;
 spf=pass (domain: gmail.com, ip: 209.85.221.53, mailfrom: marek.belisko@gmail.com)
Received: by mail-wr1-f53.google.com with SMTP id ffacd0b85a97d-38637614567so913156f8f.3
        for <yocto@lists.yoctoproject.org>; Fri, 24 Jan 2025 02:04:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1737713054; x=1738317854; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:mime-version:from:to:cc:subject
         :date:message-id:reply-to;
        bh=rg1SQOoAFXM/9/7stvU4RTbh8tuF7uvXISWxGA261DQ=;
        b=RaPu43ZLxSpX04V6bfW8pGojTPi+T+rin857bdz2PmBgKYR+pgTeRNTFNIvGwEvHaY
         35StAzt5fzyk0wuoX7Eq3AT/jlj8dud/IG7OW2TLQzGwwoSqrHOothtYgJK57BsEdWal
         pUnkyUxmlxXoyuheEnBGlk0q+rdG4yL4CDFxSh9VJGUnkJE/dsTpPPajgtpn20vAwmwx
         zHKhMKJp/Bl+Ti/CVLrVreyTtzoPj2zP1VLLeCsiOxys7HASGOC2fGftlX+Tw2SctgE4
         +GCFndJKxUXHmFg2G1HeNLyeeCwCa/Z5j1MhJgZvom+chJCQsyXL6CS5UjzmX3UonCqw
         wKxA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1737713054; x=1738317854;
        h=to:subject:message-id:date:from:mime-version:x-gm-message-state
         :from:to:cc:subject:date:message-id:reply-to;
        bh=rg1SQOoAFXM/9/7stvU4RTbh8tuF7uvXISWxGA261DQ=;
        b=kNgLNK1cvb16f9rBKB1iNgMFVG6OmvYtIhu4GyHoeSky4Qtk3kDRQ05NlpkPjqWMQZ
         IMZBMKsRfGKmHcNAZVZr2c7VrY2NUY8f5sQzx6WWSzYEDf6xE4Ewhs6xXNtq5dG0UV7D
         V9URKpLV/IDb+/pPx6QAaAv1q+TwxWlTo6M6klPUIKwpovT2DJqZuGkrcYiDT4kJtUx+
         Ly4llJ1LZipBipKHmAou7RGpOcNvIWM9B/CIGlpxqEjQ7E5x3AmE5WM8NQHdt8qb9LsE
         GrD0Z4jR/xs4MdV7bsCtcc5gBxNy6HAgimBxHILyTN14CAGlLl5O+4KCYqgI47gs8Be3
         Uelg==
X-Gm-Message-State: AOJu0Yzr14Pc+gjFj3WCXcBJe2LOBkz/n2hAvhcmM15VPAcA3E5behgA
	48SnlOID5tqwB3T0s3W59gYxfJFUjZUx+drnfH0J+kqPKbzdeZR66aoEutGSgnoaKbZKQOAk4aH
	OBvSFQD+NFgifWtfKafO3m+/GKbPyVdHE
X-Gm-Gg: ASbGncv3l35CZfzmE4yPdNrZ9KEXrbjLf+4vKA+BMepXZekWK6DU3DbH2rLGEbKU/e0
	kpmNAfjW/RKknNh31Zc9hGAtchT7EWLWfW4sqFonmmRH1jmr8BjIsUhBSs79CycEmRvpcvpbL
X-Google-Smtp-Source: AGHT+IGhK8RSiUpU0T6nvWXQ3HX6ZZcUy5Afq3TlMydC0nmeNE0OP4fhxVhwqrVaNcH/tEfh2+tzlLnhEAoBawAxxj0=
X-Received: by 2002:a05:6000:1863:b0:385:e17a:ce61 with SMTP id
 ffacd0b85a97d-38bf57c9b17mr26080987f8f.53.1737713053898; Fri, 24 Jan 2025
 02:04:13 -0800 (PST)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Fri, 24 Jan 2025 11:04:02 +0100
X-Gm-Features: AWEUYZk_jeNLU9SA5592eigGo2ynrb7lOcXr-MUdlMT8AJ0q1v2R290hDL3-MYI
Message-ID: <CAAfyv37oMLcEqExL57bReJcF_h56=fv9_8RFrvNONVM=gX416A@mail.gmail.com>
Subject: [meta-rockchip] rk3328 loader for emmc flashing
To: Yocto <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="0000000000004ca971062c70d9f4"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from li982-79.members.linode.com [45.33.32.79] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Fri, 24 Jan 2025 10:04:22 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/64622

--0000000000004ca971062c70d9f4
Content-Type: text/plain; charset="UTF-8"

Hello,

I'm trying to add support for rk3328-evb. I've added a machine and built a
minimal image which I would like to flash to emmc. For flashing I'm usually
using rkdeveloptool which download some binary blok (loader) and then can
flash wic image (at least I'm doing that for radxa boards). Does anybody
have an idea where I can find such loader pls? I've tried this :
https://xdaforums.com/attachments/for-rk3328-devices-rar.5168743/ but none
of them works (it prints: Opening loader failed, exiting download boot!).
I've tried to use MiniLoaderAll.bin from the vendor but this one just
prints some garbage to the serial port and I cannot download wic after that.

Thanks for any pointers.

BR,

marek
-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--0000000000004ca971062c70d9f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br clear=3D"all"></div><div><br></div><div>I&#=
39;m trying to add support for rk3328-evb. I&#39;ve added a machine and bui=
lt a minimal image which I would like to flash=C2=A0to emmc. For flashing I=
&#39;m usually using rkdeveloptool which download some binary blok (loader)=
 and then can flash wic image (at least I&#39;m doing that for radxa boards=
). Does anybody have an idea where I can find such loader pls? I&#39;ve tri=
ed this :=C2=A0<a href=3D"https://xdaforums.com/attachments/for-rk3328-devi=
ces-rar.5168743/">https://xdaforums.com/attachments/for-rk3328-devices-rar.=
5168743/</a> but none of them works (it prints:=C2=A0Opening loader failed,=
 exiting download boot!). I&#39;ve tried to use MiniLoaderAll.bin from the =
vendor but this one just prints some garbage to the serial port and I canno=
t download wic after that.</div><div><br></div><div>Thanks for any pointers=
.</div><div><br></div><div>BR,</div><div><br></div><div>marek</div><span cl=
ass=3D"gmail_signature_prefix">-- </span><br><div dir=3D"ltr" class=3D"gmai=
l_signature" data-smartmail=3D"gmail_signature">as simple and primitive as =
possible<br>-------------------------------------------------<br>Marek Beli=
sko - OPEN-NANDRA<br>Freelance Developer<br><br>Ruska Nova Ves 219 | Presov=
, 08005 Slovak Republic<br>Tel: +421 915 052 184<br>skype: marekwhite<br>tw=
itter: #opennandra<br>web: <a href=3D"http://open-nandra.com" target=3D"_bl=
ank">http://open-nandra.com</a></div></div>

--0000000000004ca971062c70d9f4--

