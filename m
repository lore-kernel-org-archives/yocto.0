Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-ob0-f182.google.com (mail-ob0-f182.google.com
	[209.85.214.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B4B6BE00597
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 07:17:21 -0700 (PDT)
Received: by mail-ob0-f182.google.com with SMTP id dn14so11100obc.27
	for <yocto@yoctoproject.org>; Mon, 15 Apr 2013 07:17:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:sender:date:x-google-sender-auth:message-id
	:subject:from:to:content-type;
	bh=7a3hhbUyFqAfqmbThSdtN8loVFRPFX/wzJ/PcJonh/s=;
	b=S0kbdd2jBIUyFCNaEXs69+dvIfA6/1G9NyWwypAo1Ty+VnYmczwFMZU3pa5/GJR95f
	iVylBvebzssI6T0xOC7KxWXT+3MPwtEfqg5bo8Okmge2feRZros1A4k2kaj6IOLiGa55
	WmNLwwjo9NmZzcGEP6dSrig+ux1x4rfYp2UpeMhIrliHlXPtk83omDWklp5UkqUrUfT7
	HytbIYPYepbDyMwWWzvnOtK2bnH1NTOq32Chmo2WYR7KOY5SAwcTWR/+8nYuBmV2uuJk
	/3juhplzqkdZobTLtF1tSIcIrHCzvUCW3bugTe8t0dleBMI0Wkw44IdNy/Y8dLEAEy6U
	qVzQ==
MIME-Version: 1.0
X-Received: by 10.60.135.234 with SMTP id pv10mr7269226oeb.101.1366035440742; 
	Mon, 15 Apr 2013 07:17:20 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.76.24.34 with HTTP; Mon, 15 Apr 2013 07:17:20 -0700 (PDT)
Date: Mon, 15 Apr 2013 16:17:20 +0200
X-Google-Sender-Auth: LtFwtKdqQxGLjIDXWgFiOhX6OH4
Message-ID: <CAFMfyzKEScWXRFDFXQRjrw-+Gm0ie=wwrtAt07JuXBZiOOmhPA@mail.gmail.com>
From: Satya Swaroop Damarla <swaroop.damarla@gmail.com>
To: yocto@yoctoproject.org
Subject: Tools for measuring temperature on Tegra-Harmony board or in general
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
X-List-Received-Date: Mon, 15 Apr 2013 14:17:21 -0000
Content-Type: multipart/alternative; boundary=047d7b41c1ec32832c04da66e91c

--047d7b41c1ec32832c04da66e91c
Content-Type: text/plain; charset=ISO-8859-1

Hi,

I have successfully compiled and am so happy the way poky is working on my
Tgera-Harmony modified version board... I have a new requirement which is
to find temperature of CPU so that we can control the fan..

I think it comes with NCT1008-i2c-4-4C temperature sensor and has Tegra i2C
adapter

Greets,
Satya

--047d7b41c1ec32832c04da66e91c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div style>I have successfully compiled =
and am so happy the way poky is working on my Tgera-Harmony modified versio=
n board... I have a new requirement which is to find temperature of CPU so =
that we can control the fan..</div>
<div style><br></div><div style>I think it comes with NCT1008-i2c-4-4C temp=
erature sensor and has Tegra i2C adapter</div><div style><br></div><div sty=
le>Greets,</div><div style>Satya</div></div>

--047d7b41c1ec32832c04da66e91c--
