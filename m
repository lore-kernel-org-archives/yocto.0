Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BC5F2E00CCC; Fri, 15 Jul 2016 06:56:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.44 listed in list.dnswl.org]
Received: from mail-vk0-f44.google.com (mail-vk0-f44.google.com
	[209.85.213.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 932CAE00CA3
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 06:56:09 -0700 (PDT)
Received: by mail-vk0-f44.google.com with SMTP id x130so156319381vkc.0
	for <yocto@yoctoproject.org>; Fri, 15 Jul 2016 06:56:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=I1nOirlQGur2vdMDRw2onZ4TeJp7zOuIEcWoixa9po4=;
	b=cJqTuCYALEVIwBJ0vc7hNNg7yAux5oiehLOGWJb6UHMEJ1NEu8zi2L1sWhiP2RjV14
	eVr2mx1EbDKRofciCOz3GUN22r1Yl7JE7jj1NH0+EYkNLL07TJguLgcAcL8VtH4jeZch
	u1BZHJuAZufpOhooLwaECAopa951T5L2hUxv/Pmk6v7jZPRqr8ZOsPecYKRwd0WgB8oq
	hIUnMzMtMMd0sUQUJDJCfEozktEspi6zgPhedRf92xGaYXolHsrr3ZP4iw52vJOSF2U5
	zYKOaD7ECoJ00jhXlQmoR5PPhUVn4nmDwORF4+QxXv+E7RO4AuCx0X3ntuuqxFK2XlOZ
	aNDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=I1nOirlQGur2vdMDRw2onZ4TeJp7zOuIEcWoixa9po4=;
	b=XP7vqHbsqDF9t/138AS0AZFnFnQIZYhAZ9YXbFo6pnIZK3UtrRHbRbbYAl9k318KBe
	1zJc62otLWv6oqYiE1wxg7Cf6p94Bx3wIAuU/+K65Y5SZOILA9IsH2kN4PJMwzzZVtDE
	Cg6bJ7EbmEs9HFhLKnUHQuaRf3s1rqcX4M+oqInQmjVovJCiX4mNJJH78aRswPrKjosp
	9KiJnY+hSnypSap6SklQCZ/Ctuo1e91GU74uuSySUtHX5rxjbPBI11yaI7ZeJMFHzcpV
	KzwB73d1HJFgpgzgm9+y3TrSNedUbBaAG2SII/goy8cZXQDLd0memvxlHIPE7m7xnb7Y
	Egtg==
X-Gm-Message-State: ALyK8tJHPgQvfMTyCGjmb3WSQ4hIwquwtkLei+E404gYEfS33UoLQ5BMnRz4vY0rh6kqQ7jrXqyFjtYOVb+Tlw==
X-Received: by 10.176.66.132 with SMTP id j4mr4031415uaj.120.1468590968505;
	Fri, 15 Jul 2016 06:56:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.37.233 with HTTP; Fri, 15 Jul 2016 06:56:07 -0700 (PDT)
From: "Daniel." <danielhilst@gmail.com>
Date: Fri, 15 Jul 2016 10:56:07 -0300
Message-ID: <CAF3SDA5hVSS6ERFPUQ02YqMWCMwhHGLt95+MfMSrrP4WxiWg=A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Docker and Yocto
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
X-List-Received-Date: Fri, 15 Jul 2016 13:56:12 -0000
Content-Type: text/plain; charset=UTF-8

Is anybory out there using Docker containers inside Yocto images? I
have some machines running at ARMv7 architeture and I want to know if
there is somebody already using Docker on non-x86 embedded platforms
and if it can help deploying applications in this case too!?

Regards,

-- 
"Do or do not. There is no try"
  Yoda Master

