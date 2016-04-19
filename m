Return-Path: <ivan.h.ivanov99@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B255BE00E93; Tue, 19 Apr 2016 00:55:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ivan.h.ivanov99[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41DB7E009D7
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 00:55:04 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id j9so5705827obd.3
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 00:55:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=Xb6whnfVfdQcSEF9FX7CU2ulnudVWvt9DXMYmx+uzKM=;
	b=p8u5ez0uDauP8sUuAs2PAMejlPP6aIUBS4WkMvh72YJ0KbkspGQeohUt7CuNXJEzMa
	kokoXeSIln+XLb9KUb00F8WGrTdLMSEoRK2aK8ve2TFKj2wSgFrKy8VfA22yOO3a4Vif
	NyzEFWU1YwKHAv2AnOHDPtNLL0SXqYfEaHZNf+M7rMC7beXFMG4j6cgDbYQ/oDAc5kLU
	xuDfdgy/atpVxUcaVAOpbc+ZEKFuvVRZo8BdN1+nbgCRp98CMklq1D59I5Xd8x07KTnu
	uEnYPnn3ofgpjaU2CKYDjVPCzObK9Z1jErGfAJ3iROfUwYoAkxl8MTM6s3EtYXpHeySF
	AKbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=Xb6whnfVfdQcSEF9FX7CU2ulnudVWvt9DXMYmx+uzKM=;
	b=Ax+NRGLziJHd+DkzQPzMuWvOk3lzNHkPKopT8k5uQhgknPS9DXmoQlJ3559gesXx6y
	+Cj01p+27uz5cEnQWzfXjV7+dgScRe9AcoEIDrCRQUPrVc2tBx+8Knrd8W/8M4dpHLj/
	sdCggqIZO5TqE/9oHn95wpRTAiP35VeJC0veiOhzu28jLJNXsSNTXFgc/Su1SUbXs3oF
	L1tQwx1+346Eg/RaUCMLGdyDNCMhjfaqnAEfxpgfnVpG6U087D7cIx00+hpCL+mP2RiM
	apdZapGghDkMXLsKdniG2od+1wMa9hZvaUBgbGHGFWLaNxX1SvpMf/WcKk5ZgrIc2sAr
	kvzw==
X-Gm-Message-State: AOPr4FVreBR6frysT9l0bXXCHAGs4QPV7s4BwUY9DJ15BzdZgruCl8QaQr7RO0GtJb92rAt9sDy122Cw4Z0E/A==
MIME-Version: 1.0
X-Received: by 10.182.118.9 with SMTP id ki9mr514775obb.61.1461052504124; Tue,
	19 Apr 2016 00:55:04 -0700 (PDT)
Received: by 10.157.42.77 with HTTP; Tue, 19 Apr 2016 00:55:04 -0700 (PDT)
Date: Tue, 19 Apr 2016 10:55:04 +0300
Message-ID: <CAE7FUj=0feapPPozQK_6F-9_-y=RVbLEa1ih-+cuqd--pe3yCA@mail.gmail.com>
From: Ivan Ivanov <ivan.h.ivanov99@gmail.com>
To: yocto@yoctoproject.org
Subject: Use 3G modem on Intel Galileo Gen 2
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
X-List-Received-Date: Tue, 19 Apr 2016 07:55:07 -0000
Content-Type: multipart/alternative; boundary=f46d04479fa381b9140530d1cbf8

--f46d04479fa381b9140530d1cbf8
Content-Type: text/plain; charset=UTF-8

Hello,

I'm working on a project and I use Intel Galileo Gen 2 with Yocto Project
Linux. I use LAN to connect to Internet but I would want to connect to
Internet with 3G USB modem.

I tried using Sakis3g to connect my 3G USB modem with my Intel Galileo and
use Internet through it. But I couldn't install it.

I don't want to use any additional hardware or shields, only through
software.

Can you suggest and help me to create an Internet connection using 3G USB
modem?

Best regards,
Ivan Ivanov

--f46d04479fa381b9140530d1cbf8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><span style=3D"font-size:12.8px">Hello,</span><div style=
=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">I&#39;m wor=
king on a project and I use Intel Galileo Gen 2 with Yocto Project Linux. I=
 use LAN to connect to Internet but I would want to connect to Internet wit=
h 3G USB modem.=C2=A0</div><div style=3D"font-size:12.8px"><br></div><div s=
tyle=3D"font-size:12.8px">I tried using Sakis3g to connect my 3G USB modem =
with my Intel Galileo and use Internet through it. But I couldn&#39;t insta=
ll it.</div><div style=3D"font-size:12.8px"><br></div>I don&#39;t want to u=
se any additional hardware or shields, only through software.<div style=3D"=
font-size:12.8px"><br></div><div style=3D"font-size:12.8px">Can you suggest=
 and help me to=C2=A0create an Internet connection using 3G USB modem?</div=
><div style=3D"font-size:12.8px"><br></div><div style=3D"font-size:12.8px">=
Best regards,</div><div style=3D"font-size:12.8px">Ivan Ivanov</div></div>

--f46d04479fa381b9140530d1cbf8--
