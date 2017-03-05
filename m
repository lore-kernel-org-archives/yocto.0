Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2D83E0098A; Sun,  5 Mar 2017 09:09:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.44 listed in list.dnswl.org]
Received: from mail-lf0-f44.google.com (mail-lf0-f44.google.com
	[209.85.215.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6B461E0097C
	for <yocto@yoctoproject.org>; Sun,  5 Mar 2017 09:09:07 -0800 (PST)
Received: by mail-lf0-f44.google.com with SMTP id k202so63771687lfe.1
	for <yocto@yoctoproject.org>; Sun, 05 Mar 2017 09:09:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1B38EmUZkggcMfzxSn8vFztP5/bIdF0sEfxAhD4xoLU=;
	b=V5U389Lifjo1CAUxBopXmdqKx9CqmX4JO2HsnV+UamsS1SBHKyi0tM7BzqNgHLUol6
	P82QLL/CozODbsSwrigXer415n8L/quHFrzafiSrBhmUrMyb8cBDdi3n9LlqF6Jdy5IP
	NV8Zgnnd5S1gkHKQr+eGX5EpYVV7gTLM2MtLXO/5W3brKCXUWvW5nyt2uHJn+fATkhMK
	yKmp0v3OfKMlZgm+7h0ivKGRKl7tFhgnIsMYeNWuu1btHPGaModPkPNGfvjgWL12Ofmm
	Ku1aHblfHTfQJ3TSkancBM59Lj+UbUkr93kBeRXL2Be2phsp9FlUenUQUbo5DTF+DJOz
	M4hQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1B38EmUZkggcMfzxSn8vFztP5/bIdF0sEfxAhD4xoLU=;
	b=um7GKgcyiNhna1fZslsp5R+cXSoNB9RNMuDEf0TYPs5eYmR06env1hoSfWATfbZNU5
	p7/mo43AR5+Y4iV5CmgS2lKMx0SBActyRcCPXhgeJ3T6i8rqtP90U9ZJWrddWhWXyvf5
	sSWJy8iRSwb6itp8YtGgeoXblbohweZaXFhDzt+VtyNLWYe7WvIFLaGLiWG5pFYfvINz
	KOdX7gH1TJPGK90uKxyjJY1tgUE6HXQTj2g04U9wyBirD+1ughBS1xr1Cpda/tFXKyyk
	tyjl4WuZPnTMGgeXWPS/ZfnttWCaEMbn3xmm+qvpyuvVcAjHmOvYhs2gtjpuWxoCCd8P
	opkw==
X-Gm-Message-State: AMke39lq9IkyLQXNP17/fxJ7LBuIEnOOqxxl9CJUFwhzg424bhXFlYdTjPNjhW1XSNlhfV86+QG6lYAFTXaqzw==
X-Received: by 10.46.0.80 with SMTP id 77mr4336598lja.1.1488733746380; Sun, 05
	Mar 2017 09:09:06 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Sun, 5 Mar 2017 09:09:06 -0800 (PST)
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Sun, 5 Mar 2017 22:39:06 +0530
Message-ID: <CAF1M0z6T9MxDSPtDrvafKJJsnGgfnYYrOOztwE6emECPUO73iw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Issue: SDK
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
X-List-Received-Date: Sun, 05 Mar 2017 17:09:12 -0000
Content-Type: multipart/alternative; boundary=001a1142c67e1e44d90549fed67b

--001a1142c67e1e44d90549fed67b
Content-Type: text/plain; charset=UTF-8

Hi,

I am trying to develop the application using SDK, everything goes fine, but
when it comes to compiling it is failing.

The details are given below,

[Satya]/opt/poky/1.6.3
source environment-setup-cortexa8t2hf-vfp-neon-poky-linux-gnueabi
[Satya]/opt/poky/1.6.3
${CC} sample.c -g -o sample
/opt/poky/1.6.3/sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-poky-linux-gnueabi/4.8.2/ld:
cannot open output file sample: Permission denied
collect2: error: ld returned 1 exit status
[Satya]/opt/poky/1.6.3


Could anyone help?

--001a1142c67e1e44d90549fed67b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,=C2=A0<div><br></div><div>I am trying to develop the ap=
plication using SDK, everything goes fine, but when it comes to compiling i=
t is failing.</div><div><br></div><div>The details are given below,</div><d=
iv><br></div><div><div>[Satya]/opt/poky/1.6.3</div><div>source environment-=
setup-cortexa8t2hf-vfp-neon-poky-linux-gnueabi=C2=A0</div><div>[Satya]/opt/=
poky/1.6.3</div><div>${CC} sample.c -g -o sample</div><div>/opt/poky/1.6.3/=
sysroots/x86_64-pokysdk-linux/usr/libexec/arm-poky-linux-gnueabi/gcc/arm-po=
ky-linux-gnueabi/4.8.2/ld: cannot open output file sample: Permission denie=
d</div><div>collect2: error: ld returned 1 exit status</div><div>[Satya]/op=
t/poky/1.6.3</div></div><div><br></div><div><br></div><div>Could anyone hel=
p?</div></div>

--001a1142c67e1e44d90549fed67b--
