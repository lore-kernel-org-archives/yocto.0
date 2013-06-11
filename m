Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C46FE01538
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 05:59:22 -0700 (PDT)
Received: by mail-vc0-f176.google.com with SMTP id ha12so1779290vcb.7
	for <yocto@yoctoproject.org>; Tue, 11 Jun 2013 05:59:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:x-google-sender-auth:message-id:subject
	:from:to:content-type;
	bh=x5ZdRv47vBa0VpLmeFWKoFvYJmGVKjEwJMsF08M0iYY=;
	b=nrXAWyvFl0+mBOmdcOpAozprC00KMDcXilIDRChEr7JhELNmW/7hPK2YeUq7AXKuQb
	fG7ScKn4KF5HjK+FPBo1SPl4cMad7IVq0yOPq0vm7eTeq6Q8IM9aUJ3XnFX6mLrT+uRL
	OCE1UF9rKMoIrG/bcVc+jyhshOzT50ML+CO5OBQ43ItKx1Vh7+NnTBGsRR4OV8s0lKpm
	cn2hb2lLlK9lL49T8Wy/16dX9xeU9xA81/Z0l4jnHEn9dDoQWlxm7cYmjiPljX433X0n
	jRkcrtndpY5+LzWtjcsLn4huOt/utf1xlxB77MyPWJM4C9sAFAxl4YsdPUaQQYZvENYe
	NENQ==
MIME-Version: 1.0
X-Received: by 10.52.65.238 with SMTP id a14mr6712643vdt.24.1370955561950;
	Tue, 11 Jun 2013 05:59:21 -0700 (PDT)
Sender: satyaswaroop.damarla@gmail.com
Received: by 10.52.179.33 with HTTP; Tue, 11 Jun 2013 05:59:21 -0700 (PDT)
Date: Tue, 11 Jun 2013 14:59:21 +0200
X-Google-Sender-Auth: R4Pd_k1Hf4bsZECT1UmmunHL1YA
Message-ID: <CAFMfyz+_j-mWj4C0YJUnOBcCX-oMGc8196pmPcQcD8XbK6r0xA@mail.gmail.com>
From: DAMARLA Satya Swaroop <swaroop.damarla@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: No crosscompiler in Toolchain
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
X-List-Received-Date: Tue, 11 Jun 2013 12:59:23 -0000
Content-Type: multipart/alternative; boundary=20cf307f337245e32404dee0772c

--20cf307f337245e32404dee0772c
Content-Type: text/plain; charset=ISO-8859-1

Gentlemen! We have a problem here...

I compiled the toolchain using the command *bitbake core-image-skidata -c
populate_sdk *and installed the toolchain but I have to tell you that I
dont see any cross-compiler installed with the toolchain...

Any guesses what could be the reason.. The image is customized x11 image...

Greets,
Satya

--20cf307f337245e32404dee0772c
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Gentlemen! We have a problem here...<div><br></div><div st=
yle>I compiled the toolchain using the command <i>bitbake core-image-skidat=
a -c populate_sdk </i>and installed the toolchain but I have to tell you th=
at I dont see any cross-compiler installed with the toolchain...</div>
<div style><br></div><div style>Any guesses what could be the reason.. The =
image is customized x11 image...</div><div style><br></div><div style>Greet=
s,</div><div style>Satya</div></div>

--20cf307f337245e32404dee0772c--
