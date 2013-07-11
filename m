Return-Path: <gschmottlach@gmail.com>
Received: from mail-we0-f175.google.com (mail-we0-f175.google.com
	[74.125.82.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DA2DE013D6
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 11:39:29 -0700 (PDT)
Received: by mail-we0-f175.google.com with SMTP id t59so7124452wes.6
	for <yocto@yoctoproject.org>; Thu, 11 Jul 2013 11:39:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=lcw/cN8IXX3cMV1CJcPePp6Ayy4onQ8MkUIeJUsTaOo=;
	b=ksQISI9Jwb1flZ2LBj8xvx8sw8S2qwNWo0MNHBBFZBM+YL27gW+hqAZmnH3e4/zFET
	VDNLaACO+W8MM0ielRqSeVgGb3Tg6yFpQ+NaHRcfyNJcoXRAwd8oYPiHcY8s8ViVOTGq
	vayvcxFuReNMPSqpypvCUCvVWdGeGix4lipqMl4cYoRrMJhihQ5/56eBlVxE9FpDAyUM
	8guAgEKArgnMNN07bSQ8utnABHle2ozoJWgxD+qh4KnCshiw46a7k1qE4uaRgQ7FrVfM
	CaFmmUtW7nMSjk8c+X1cEtPihFYGoE5DG2eJww6JaeWTw8JBnDr11Y76y/7bnSaX0gJO
	ikQQ==
MIME-Version: 1.0
X-Received: by 10.194.122.71 with SMTP id lq7mr21584064wjb.77.1373567967604;
	Thu, 11 Jul 2013 11:39:27 -0700 (PDT)
Received: by 10.217.43.138 with HTTP; Thu, 11 Jul 2013 11:39:27 -0700 (PDT)
Date: Thu, 11 Jul 2013 14:39:27 -0400
Message-ID: <CAMS2kBH7E6T6-yFtf+kPZ5=o+Wub=g1qjeZ6A_TBAO_4cHNYqQ@mail.gmail.com>
From: Glenn Schmottlach <gschmottlach@gmail.com>
To: yocto@yoctoproject.org
Subject: Is there still a Yocto dependency on bash (versus dash)?
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
X-List-Received-Date: Thu, 11 Jul 2013 18:39:30 -0000
Content-Type: multipart/alternative; boundary=089e01229750c8b95d04e140b694

--089e01229750c8b95d04e140b694
Content-Type: text/plain; charset=ISO-8859-1

I recall a while back that OE/poky had issues with Ubuntu's dash shell
(Ubuntu's replacement for bash) which required the the shell to be linked
to bash rather than dash. Is this (bash) still a requirement for Yocto/Poky
or does it work with dash now.

--089e01229750c8b95d04e140b694
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I recall a while back that OE/poky had issues with Ubuntu&=
#39;s dash shell (Ubuntu&#39;s replacement for bash) which required the the=
 shell to be linked to bash rather than dash. Is this (bash) still a requir=
ement for Yocto/Poky or does it work with dash now.<br>
<br><br></div>

--089e01229750c8b95d04e140b694--
