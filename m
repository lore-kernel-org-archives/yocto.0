Return-Path: <prakashpks15@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E3014E00C1B; Thu, 26 Apr 2018 00:27:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (prakashpks15[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E5658E00C1B
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 00:27:27 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id d11-v6so22017659iof.11
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 00:27:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Am7+SAgZ2mCBBaAQQ1mO1MSYFsZcNsMYsR63jJw+0lk=;
	b=XTwZDqG9hUdlfhCtCyOPBXDqy8smC1wVr7Qcz6N/uLGoJYZegB6zLTlcEfzKAtLN0D
	6E94ByJLXZjtySdHqPCnZUuhWQyVNowAT1bq+Iq+9L7s3EdYMbOu7HZisPHVLqYlj/iH
	hkAr77yWI97/BB3OaprcC07IK8a0tzfU3tfmer8CrX3mhjNIwtJL46rKRoQd2u6QSd0Z
	VTZ2zWIP+l+jWgphp3yaNlVkSLaP8zEZJRRXnCfaiGNCOmx/MLGVuQzkCJs6U2OuPK6H
	PME+OPDIzM7Y0yTv7+Yf6M8SgvO9hXFO+ddwwOHizCOO+j8nnr/DKNCiU+FvMN3gHJ9k
	xR/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Am7+SAgZ2mCBBaAQQ1mO1MSYFsZcNsMYsR63jJw+0lk=;
	b=M6d2blBITnwHEmx5TitUoOZJdA0RKrY3n1f0VFO/cerBs6hfGybsG+EUZXycJMDVdb
	FsYBlwgaxwnR0n/Zzp4YcxkxIomaRkz3XDkwASmcysbuXR5eq/0jnrhjTCthJSjHXXzL
	UDF372VqJdOmnY5A260a6U9ptdQ3LySnQRoAESOp5kLi0wOtTmk9skQy9/rAyzsER7VD
	vElavv9qerxen0ixejZTgusB4cjuxS8zSp6lFP0yARQCbCSD6YgZfkadvjIX1zgMuOtS
	syft7X3dVQSSFdpH9x8qOZC6FhOkECqfs2u8zTFNDd3CY0JqfibKctda8NRrwDabCCeI
	zYWg==
X-Gm-Message-State: ALQs6tAtViNmZKShXGUVqO1t/OOKRvoAnRbak+rr+aC0NZRdx23dJAdW
	TWNDOba6HEt/oRoBl5BNj4Ur/yMJtHnxNUsbCMA=
X-Google-Smtp-Source: AB8JxZonKomDmqh6dPuekUDHlbToYKaiaTxaVdC2bIM2DnB3kuCD/1d30VitRfIVA2BxQqq1el4Z6wCD6q7PxV2U7Fc=
X-Received: by 2002:a6b:9a8d:: with SMTP id
	c135-v6mr33694968ioe.10.1524727647062; 
	Thu, 26 Apr 2018 00:27:27 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a02:59c1:0:0:0:0:0 with HTTP; Thu, 26 Apr 2018 00:27:26
	-0700 (PDT)
In-Reply-To: <E3DACD6AA0B26143AF16244886B5278E1FE92E8E@MBCHN01.chn.nestgroup.net>
References: <E3DACD6AA0B26143AF16244886B5278E1FE92E8E@MBCHN01.chn.nestgroup.net>
From: Prakash Ks <prakashpks15@gmail.com>
Date: Thu, 26 Apr 2018 12:57:26 +0530
Message-ID: <CAET8a4GQKB-Y7_z9AOUt326j+-0aigeaFSnOpGMsNZLKeETvzA@mail.gmail.com>
To: "Nishina A. Pervin" <Nishina.Pervin@nestgroup.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Configuring speed of SD card read
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 26 Apr 2018 07:27:42 -0000
Content-Type: multipart/alternative; boundary="000000000000c851f6056abb51ba"

--000000000000c851f6056abb51ba
Content-Type: text/plain; charset="UTF-8"

Can you elaborate little more.

On Thu, Apr 26, 2018 at 12:24 PM, Nishina A. Pervin <
Nishina.Pervin@nestgroup.net> wrote:

> Hi
>
>
>
>
>
> I am using yocto  Krogoth  build  for imx6q Sabreauto board.
>
>
>
> What is the rate at which data is read from SD card? Can we configure it
> for higher speed from Uboot or Kernel
>
>
>
> Awaiting your favorable reply
>
>
>
> Regards,
>
> Nishina
> ------------------------------
>
> *Confidentiality Statement / Disclaimer* : This message and any
> attachments is intended for the sole use of the intended recipient. It may
> contain confidential information. Any unauthorized use, dissemination or
> modification is strictly prohibited. If you are not the intended recipient,
> please notify the sender immediately then delete it from all your systems,
> and do not copy, use or print. Internet communications are not secure and
> it is the responsibility of the recipient to make sure that it is
> virus/malicious code exempt.
>
> The company/sender cannot be responsible for any unauthorized alterations
> or modifications made to the contents. If you require any form of
> confirmation of the contents, please contact the company/sender. The
> company/sender is not liable for any errors or omissions in the content of
> this message.
> ------------------------------
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


-- 
Thanks and Regards,
Prakash K S
+91 9620140303

--000000000000c851f6056abb51ba
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Can you elaborate little more.</div><div class=3D"gmail_ex=
tra"><br><div class=3D"gmail_quote">On Thu, Apr 26, 2018 at 12:24 PM, Nishi=
na A. Pervin <span dir=3D"ltr">&lt;<a href=3D"mailto:Nishina.Pervin@nestgro=
up.net" target=3D"_blank">Nishina.Pervin@nestgroup.net</a>&gt;</span> wrote=
:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_5733232159974706272WordSection1">
<p class=3D"MsoNormal">Hi<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am using yocto=C2=A0 Krogoth=C2=A0 build=C2=A0 for=
 imx6q Sabreauto board.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">What is the rate at which data is read from SD card?=
 Can we configure it for higher speed from Uboot or Kernel<u></u><u></u></p=
>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Awaiting your favorable reply<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Nishina<u></u><u></u></p>
</div>

<hr>
<p><span style=3D"font-size:10pt;font-family:&quot;Arial&quot;,&quot;sans-s=
erif&quot;"><b>Confidentiality Statement / Disclaimer</b> : This message an=
d any attachments is intended for the sole use of the intended recipient. I=
t may contain confidential information. Any unauthorized
 use, dissemination or modification is strictly prohibited. If you are not =
the intended recipient, please notify the sender immediately then delete it=
 from all your systems, and do not copy, use or print. Internet communicati=
ons are not secure and it is the
 responsibility of the recipient to make sure that it is virus/malicious co=
de exempt.
<br>
<br>
The company/sender cannot be responsible for any unauthorized alterations o=
r modifications made to the contents. If you require any form of confirmati=
on of the contents, please contact the company/sender. The company/sender i=
s not liable for any errors or omissions
 in the content of this message.</span> <br clear=3D"none">
</p>
<hr>
</div>

<br>-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><div><br></div>-- <br><div cla=
ss=3D"gmail_signature" data-smartmail=3D"gmail_signature">Thanks and Regard=
s,<div>Prakash K S</div><div>+91 9620140303</div></div>
</div>

--000000000000c851f6056abb51ba--
