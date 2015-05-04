Return-Path: <vertlim@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA13CE00961; Mon,  4 May 2015 07:24:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (vertlim[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pd0-f178.google.com (mail-pd0-f178.google.com
	[209.85.192.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CE2C0E0086D
	for <yocto@yoctoproject.org>; Mon,  4 May 2015 07:24:50 -0700 (PDT)
Received: by pdbnk13 with SMTP id nk13so164381783pdb.0
	for <yocto@yoctoproject.org>; Mon, 04 May 2015 07:24:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=BpBiSrWqLa0Sgywto4kLrayZNhIvYm30rPRMyxdVkMg=;
	b=rAXjZGDvetKl0smB7c2K1ohqpD4WaKSUYuEp+wrKGoUVs1GyyhcXSN04u88Y9oI37C
	Vne9CvaNBGevOeSzrCBA3Mom/l0dGo6vBHRii2I/UjVQnEn9znlJgfu39Msj6dJcdH6k
	M9Xr4ruKWGzct02wlOvnEzfWFhfXOSXDDF8ODR4VT6kCSVQkj7dcdyOOhxLa/7EVB8zU
	FiGgaV6gxrXo2eYsl39SGabPOArtzyzvTpsNiLhXql+KSrLO9+VhbmMBYEKNX65xlVYq
	UAit89FPDyyTkxkeCMDsY7oDsAQguJ9OmHKYWrX5q7CSs8k6rQC2AysxSDjc60fxf0ey
	21uQ==
MIME-Version: 1.0
X-Received: by 10.68.229.136 with SMTP id sq8mr43229210pbc.160.1430749489920; 
	Mon, 04 May 2015 07:24:49 -0700 (PDT)
Received: by 10.70.130.103 with HTTP; Mon, 4 May 2015 07:24:49 -0700 (PDT)
Date: Mon, 4 May 2015 16:24:49 +0200
Message-ID: <CAHZee8hBnYM_uM1e1+XVAGYxE8uYraqRxthMLLry9tyZJNup+Q@mail.gmail.com>
From: Vertical Limit <vertlim@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Mon, 04 May 2015 07:32:41 -0700
Subject: bitbake error during image build for VIA Embedded VAB-820 BSP
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
X-List-Received-Date: Mon, 04 May 2015 14:24:52 -0000
Content-Type: multipart/alternative; boundary=047d7b3392391c026d0515425356

--047d7b3392391c026d0515425356
Content-Type: text/plain; charset=UTF-8

Hi all,

I am currently trying to compile the Yocto-based BSP (
https://d2phydb95qamfd.cloudfront.net/products/software/vab-820/Linux+HMI+Solution+Pack+BSP/AMOS-820_VAB-820_HMI_SolutionPack_V2.0.1_20150401(Beta_version).zip)
for the VIA Embedded VAB-820 board (
http://www.viaembedded.com/en/boards/pico-itx/vab-820/). Exactly following
the documentation of the VIA webpage (
https://s3-eu-west-1.amazonaws.com/viaembeddeddownloads/products/docs/vab-820/Linux+HMI+Solution+Pack+Development+Guide/AMOS-820_VAB-820_HMI_SolutionPack_V2.0.1_Development+Guide_V1.03_20150401.pdf),
I get a strange error when trying to build an image using "bitbake
via-image-x11" (refer to section 3.3 in the documentation). The output can
be found in the following pastebin:

http://pastebin.com/EU83WMjc


Any ideas for the cause of this issue? Developing environment is Ubuntu
12.04.5 (64 Bit) LTS like proposed by the documentation. Many thanks!

Best regards,
Thomas

--047d7b3392391c026d0515425356
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi all,<br><br></div>I am currently trying to compile=
 the Yocto-based BSP (<a href=3D"https://d2phydb95qamfd.cloudfront.net/prod=
ucts/software/vab-820/Linux+HMI+Solution+Pack+BSP/AMOS-820_VAB-820_HMI_Solu=
tionPack_V2.0.1_20150401(Beta_version).zip">https://d2phydb95qamfd.cloudfro=
nt.net/products/software/vab-820/Linux+HMI+Solution+Pack+BSP/AMOS-820_VAB-8=
20_HMI_SolutionPack_V2.0.1_20150401(Beta_version).zip</a>) for the VIA Embe=
dded VAB-820 board (<a href=3D"http://www.viaembedded.com/en/boards/pico-it=
x/vab-820/">http://www.viaembedded.com/en/boards/pico-itx/vab-820/</a>). Ex=
actly following the documentation of the VIA webpage (<a href=3D"https://s3=
-eu-west-1.amazonaws.com/viaembeddeddownloads/products/docs/vab-820/Linux+H=
MI+Solution+Pack+Development+Guide/AMOS-820_VAB-820_HMI_SolutionPack_V2.0.1=
_Development+Guide_V1.03_20150401.pdf">https://s3-eu-west-1.amazonaws.com/v=
iaembeddeddownloads/products/docs/vab-820/Linux+HMI+Solution+Pack+Developme=
nt+Guide/AMOS-820_VAB-820_HMI_SolutionPack_V2.0.1_Development+Guide_V1.03_2=
0150401.pdf</a>), I get a strange error when trying to build an image using=
 &quot;bitbake via-image-x11&quot; (refer to section 3.3 in the documentati=
on). The output can be found in the following pastebin:<br><div><div><br><a=
 href=3D"http://pastebin.com/EU83WMjc">http://pastebin.com/EU83WMjc</a><br>=
<br><br></div><div>Any ideas for the cause of this issue? Developing enviro=
nment is Ubuntu 12.04.5 (64 Bit) LTS like proposed by the documentation. Ma=
ny thanks!<br><br></div><div>Best regards,<br></div><div>Thomas<br></div></=
div></div>

--047d7b3392391c026d0515425356--
