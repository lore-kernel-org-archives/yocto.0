Return-Path: <anders.roxell@gmail.com>
Received: from mail-lb0-f176.google.com (mail-lb0-f176.google.com
	[209.85.217.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA584E01351
	for <yocto@yoctoproject.org>; Sat, 16 Jun 2012 09:24:16 -0700 (PDT)
Received: by lboj14 with SMTP id j14so4331930lbo.35
	for <yocto@yoctoproject.org>; Sat, 16 Jun 2012 09:24:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=Y8ZqS0Uhb8UDN34YYHZhlKlqlZTm5C/cO+PKXlvoK/w=;
	b=qg0AESbg3aYu90wuBAfp+1irmVCeUAA22D1VQ/mJ2TCqgdF32GnjUYZ4ii3xBkZ8rj
	f2YnmJoN5K5D7KUdugo0tpY1m56UbjaAukIRSeKhze2ZfASn++/I7+noTq3FtWlLBr5V
	0HDOcMiaSlzJXVsOj/4yg8JEVShUaB2FsmHH0crDC7/FX1U3ANW/45TgEk1CD1VBAPEt
	czbnFgyEFPun7kuepJXazUmkGnyMrQehRMGFKVHPWgtNhXrfzwbbYwqAXcGHPwoPul4N
	4j+HP6OoJODpo7uOkok2kH1Ybv75/MbBcf4zvzSM2e2YPWJchWRduFzeHRPDNqhS6wvc
	a1JQ==
MIME-Version: 1.0
Received: by 10.112.45.230 with SMTP id q6mr4075726lbm.94.1339863855399; Sat,
	16 Jun 2012 09:24:15 -0700 (PDT)
Received: by 10.112.116.132 with HTTP; Sat, 16 Jun 2012 09:24:15 -0700 (PDT)
Date: Sat, 16 Jun 2012 18:24:15 +0200
Message-ID: <CAEUf8Fv2Xi-wpgXQhc=JRZ1F+9MHDLFacx3PGMp_aAikCNayyg@mail.gmail.com>
From: Anders Roxell <anders.roxell@gmail.com>
To: yocto@yoctoproject.org
Subject: how do I prevent a specific package from being built/installed (e.g., bash)?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 16 Jun 2012 16:24:17 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

See subject.
Is there some config-file for package-masks (like portage's
/etc/portage/package.mask)?

with kind regards,
Anders

