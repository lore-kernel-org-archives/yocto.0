Return-Path: <rajeevtechid@gmail.com>
X-Spam-Checker-Version: SpamAssassin 3.4.0 (2014-02-07) on
	aws-us-west-2-korg-lkml-1.web.codeaurora.org
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CAC35CCFA04
	for <webhook@archiver.kernel.org>; Tue,  4 Nov 2025 15:27:53 +0000 (UTC)
Received: from mail-wm1-f51.google.com (mail-wm1-f51.google.com [209.85.128.51])
 by mx.groups.io with SMTP id smtpd.msgproc02-g2.20635.1762270068157964379
 for <yocto@lists.yoctoproject.org>;
 Tue, 04 Nov 2025 07:27:48 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20230601 header.b=jPA+ELE9;
 spf=pass (domain: gmail.com, ip: 209.85.128.51, mailfrom: rajeevtechid@gmail.com)
Received: by mail-wm1-f51.google.com with SMTP id 5b1f17b1804b1-471191ac79dso62952825e9.3
        for <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 07:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20230601; t=1762270066; x=1762874866; darn=lists.yoctoproject.org;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :from:to:cc:subject:date:message-id:reply-to;
        bh=/NiFTGV98rId39dkVfFx+Al/pDQNVwzp9qMCncS9/T0=;
        b=jPA+ELE9/Vi9mPClkq1I2VqlHCSFb3c34vnqO0Cd9ll/6qlQe6I/JpjHNvlh2RLvNc
         XsovhUKH/Tlzn7sodEKaPjxRkhnbSsGOEHoQsmjC76/DN7FaU6Dw9MQymVq3390IuaIo
         7LZFzUrbeiusDzPIn805psKWnUxM2VEcijmzww2qqoqzb9vYHM5sU5KYJItgezbiRESW
         eURcOGvocplsc04SHhzjQKR5cD03/UcCwMEgwggR5mNtpEoLVzj57zVzdK0IKNOz1BcP
         9XVByD9hROqWGpK/PaDjlKU+ZRE02XxrgG6wvLIfkiAt6aUFpX6XmRXN/YqysfH3C8DH
         NqdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20230601; t=1762270066; x=1762874866;
        h=to:subject:message-id:date:from:in-reply-to:references:mime-version
         :x-gm-message-state:from:to:cc:subject:date:message-id:reply-to;
        bh=/NiFTGV98rId39dkVfFx+Al/pDQNVwzp9qMCncS9/T0=;
        b=As5o7FMfqXSIIpbP0rYCyzeE51QTVwaoOjZFjliwRSmN1gxxoEpGkitgJ2FjR00TgI
         ZVFE3xN0dmfC6NdE8hXTwo4GYqP/oLaWf2My9y+ObVRZ4AKTqDPNWQwCsSLSvR4xo3KK
         fjzk8sKysGMB1kyvys3jxyE1clOaMBlnHu7Fv2r9P/ycQMIPSLlIeDdjxaCc6F3kygGt
         ZBR09VQ4x12iuUBUIqw1otcw0prPomUqjCC6W3zUkVLeWYY/qklgib5FedSKuVyJQXsu
         5mVa2OT3g3RuF3eZ8sik0QjhT9/UzZyCZPI/SljAeQ6Nc/TJZaMtPcWqiKJ1uq4f9XBX
         qdQw==
X-Gm-Message-State: AOJu0YwAD5xHxK2snvkqfdAmc3U9vwiAeshLOpIflrjVwbVmChO2yXm5
	2Oe6RhCSJbCeOpv9dlrrFkOg+oYq1MeCmL8Ix5k9jf4SH/7x2FWdzRjwAlkWX7Xvne+0f+k1mYo
	/7lSoIZaz/qKf2UahA3r+LH3qFb0Z1cP2Ury/
X-Gm-Gg: ASbGncvaOIsr5dEfZ/LcJDm3u4aMfZqvs+b+Ijhnxa/7GQLLydVhttMX3xiUY6loyGm
	GpTuIDk6bi+spgOdbz1XlqxG6UD2zU6OsD+Ik1r9RrnYXeraGM4E3R42OZrV4naZei68TKCo1W6
	faYv8olLkntEIf2aJ338yCztK2Serf79T9gSSawA81dGrtF4ZG0AJupX1RU/90/2DLUoG7RpVVv
	iCNOYjBQHfdTY3J+UfffoR0yhYjuILKvrP2jOXgOxfUhbhLP8UzsDPOuixygCo1pEY8sDX/MJqr
	Xqx1D7nBJaFVFqu+1oo=
X-Google-Smtp-Source: AGHT+IFIB8dgaDKSuaYXS8//7AAkEfY7+6OwdM0MWPSPbWctDwma/oipiH6NgVkdIEXBxD3DvwZOPB1gUQnQ5NnFdMo=
X-Received: by 2002:a05:600d:4393:b0:46e:32a5:bd8d with SMTP id
 5b1f17b1804b1-477331db3ccmr102996345e9.3.1762270066039; Tue, 04 Nov 2025
 07:27:46 -0800 (PST)
MIME-Version: 1.0
References: <008601dc4d8f$f080b0a0$d18211e0$@gmail.com>
In-Reply-To: <008601dc4d8f$f080b0a0$d18211e0$@gmail.com>
From: Rajeev Arora <rajeevtechid@gmail.com>
Date: Tue, 4 Nov 2025 20:56:04 +0530
X-Gm-Features: AWmQ_bnGEl1x2gSoGXvOzJT8sKP7cWfi2PWoW8O_bsUh63o0bkui-eoSN5QU7x4
Message-ID: <CAAg18ST9f2-JEY+7k8-fCKwPjsv=Gx0oSW3ejNCtEbb_DXKtow@mail.gmail.com>
Subject: Requesting guidance on Linux Kernel, Device Driver, and Yocto
 Training Opportunities
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="00000000000048e01e0642c679e3"
List-Id: <yocto.lists.yoctoproject.org>
X-Webhook-Received: from 45-33-107-173.ip.linodeusercontent.com [45.33.107.173] by
 aws-us-west-2-korg-lkml-1.web.codeaurora.org with HTTPS for
 <yocto@lists.yoctoproject.org>; Tue, 04 Nov 2025 15:27:53 -0000
X-Groupsio-URL: https://lists.yoctoproject.org/g/yocto/message/66004

--00000000000048e01e0642c679e3
Content-Type: text/plain; charset="UTF-8"

Dear Community Members,

I was referred to this email group by *Ms. Valerie De Las Llagas*.

I am currently exploring *online and offline (Bengaluru/Bangalore)* courses
related to:

   1. Linux Kernel Development
   2. Linux Device Drivers
   3. Yocto Project
   4. BitBake

I am *currently between jobs* and seeking new opportunities. I have *over
20 years of experience* in Embedded Systems, including *Embedded C,
Assembly Language, Device Drivers, Communication Protocols, and
Microcontrollers (such as STM32F407 and STM32H743)*.

Previously, I worked as a *Senior Technical/Firmware Architect* with a
company based in Bengaluru/Bangalore, India.

I would greatly appreciate any *recommendations or guidance* regarding
suitable training providers or courses in these areas.

Thank you in advance for your time and support.

Warm regards,

Rajeev

--00000000000048e01e0642c679e3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"auto"><div class=3D"gmail_quote gmail_quote_container" dir=3D"a=
uto"><div dir=3D"ltr" class=3D"gmail_attr"><span style=3D"font-family:Cambr=
ia,serif">Dear Community Members,</span></div><div lang=3D"EN-IN" link=3D"#=
467886" vlink=3D"#96607D" style=3D"word-wrap:break-word"><div class=3D"m_-3=
086587269529364786WordSection1"><p class=3D"MsoNormal" style=3D"line-height=
:120%"><span style=3D"font-family:&quot;Cambria&quot;,serif">I was referred=
 to this email group by <b>Ms. Valerie De Las Llagas</b>.<u></u><u></u></sp=
an></p><p class=3D"MsoNormal" style=3D"line-height:120%"><span style=3D"fon=
t-family:&quot;Cambria&quot;,serif">I am currently exploring <b>online and =
offline (Bengaluru/Bangalore)</b> courses related to:<u></u><u></u></span><=
/p><ol style=3D"margin-top:0cm" start=3D"1" type=3D"1"><li class=3D"MsoNorm=
al" style=3D"line-height:120%"><span style=3D"font-family:&quot;Cambria&quo=
t;,serif">Linux Kernel Development<u></u><u></u></span></li><li class=3D"Ms=
oNormal" style=3D"line-height:120%"><span style=3D"font-family:&quot;Cambri=
a&quot;,serif">Linux Device Drivers<u></u><u></u></span></li><li class=3D"M=
soNormal" style=3D"line-height:120%"><span style=3D"font-family:&quot;Cambr=
ia&quot;,serif">Yocto Project<u></u><u></u></span></li><li class=3D"MsoNorm=
al" style=3D"line-height:120%"><span style=3D"font-family:&quot;Cambria&quo=
t;,serif">BitBake<u></u><u></u></span></li></ol><p class=3D"MsoNormal" styl=
e=3D"line-height:120%"><span style=3D"font-family:&quot;Cambria&quot;,serif=
">I am <b>currently between jobs</b> and seeking new opportunities. I have =
<b>over 20 years of experience</b> in Embedded Systems, including <b>Embedd=
ed C, Assembly Language, Device Drivers, Communication Protocols, and Micro=
controllers (such as STM32F407 and STM32H743)</b>.<u></u><u></u></span></p>=
<p class=3D"MsoNormal" style=3D"line-height:120%"><span style=3D"font-famil=
y:&quot;Cambria&quot;,serif">Previously, I worked as a <b>Senior Technical/=
Firmware Architect</b> with a company based in Bengaluru/Bangalore, India.<=
u></u><u></u></span></p><p class=3D"MsoNormal" style=3D"line-height:120%"><=
span style=3D"font-family:&quot;Cambria&quot;,serif">I would greatly apprec=
iate any <b>recommendations or guidance</b> regarding suitable training pro=
viders or courses in these areas.<u></u><u></u></span></p><p class=3D"MsoNo=
rmal" style=3D"line-height:120%"><span style=3D"font-family:&quot;Cambria&q=
uot;,serif">Thank you in advance for your time and support.<u></u><u></u></=
span></p><p class=3D"MsoNormal" style=3D"line-height:120%"><span style=3D"f=
ont-family:&quot;Cambria&quot;,serif">Warm regards,<u></u><u></u></span></p=
><p class=3D"MsoNormal" style=3D"line-height:120%"><span style=3D"font-fami=
ly:&quot;Cambria&quot;,serif">Rajeev<br><u></u><u></u></span></p></div></di=
v></div></div>

--00000000000048e01e0642c679e3--

