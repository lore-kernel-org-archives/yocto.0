Return-Path: <elcapitanbrown@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 810F2E00D45; Tue, 25 Jun 2019 07:42:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (elcapitanbrown[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f46.google.com (mail-wr1-f46.google.com
	[209.85.221.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0A2BDE00D42
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 07:42:24 -0700 (PDT)
Received: by mail-wr1-f46.google.com with SMTP id n9so18253803wru.0
	for <yocto@yoctoproject.org>; Tue, 25 Jun 2019 07:42:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=NnaTvVss9d76DUl3lD0rHhO3Y2TKT0jI907bZ6QSdfo=;
	b=ko/Tt05pwqXrWZLlF21/jD5hkbwi/zWt0n81+MYQ1jiAVrtHb9usAPRDFeLSy1Pd7i
	c9NlpREK/D6rkXsTHzW+LKgpZ34nZFO1E4Q6ClqBM/TYIMBD+4w9FxxyUq/ttSueQRcn
	M+qh/nRdAFYZljcperACy8plV+osPuJ6gn03lpzCjaS1TpHnSflcFWhOkIx64i8o5/hr
	DFHyYIR+XbKsgneBwUopnu/O9XBPb/7qGX3OKifh/nhxqX+RZGR3BZhKE0/VOp69cw8k
	HcR4z1Sf1rieUNnA1AwqynS47QNBZANUOVD9QIyIpedRQD71A/cLZGgUwn6k3VNCvP6m
	XdjQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NnaTvVss9d76DUl3lD0rHhO3Y2TKT0jI907bZ6QSdfo=;
	b=QDw9hLeOeHUQRiDLehcKDU95IFB8YdyvTj1/jo48urlanzuOIrzcJka/h/JOc/JoJS
	4hAywRMytGI3DSU9dj/EWTyogqhZCBk13XzuoegJiWA2lTqnZlE154GpakRKNq5iuaM9
	HthuuIggHqrRdM/YMPv3CotWkKzYiflKABdu2uOekeyb5Sggiqo4RL4mlPgyeBpSteYD
	GFK6+hHCn+G1TiPREHW1MMoBeYUAxUZRc5Mew+ZhONLl3781a67H961dfYt0RNLMf4bp
	4ilxEmERRtj912NvPNN5jpJviVY8646QDHY4jYjG/ubuxuGPhIfyKR1x9N6Fw3+oaUqA
	HTnw==
X-Gm-Message-State: APjAAAWFWV3Anf4+JgjvhNGuKMi7RK5kX2Onn4zmH8EUBZSrbMGwuE88
	JpPdsYSjqsOAskbA7Q2f+ygbcEqQC5nXtCkJvOvCLA==
X-Google-Smtp-Source: APXvYqwNCbL5iSvE6K1DmXFvpt/kCZ2NUG4538VZMUEVGKsM/rjl+a7QKbv/anDCx7RZIwQNhmjo4Mvo0j3oqoDzfcw=
X-Received: by 2002:adf:ea8b:: with SMTP id s11mr32875306wrm.100.1561473743856;
	Tue, 25 Jun 2019 07:42:23 -0700 (PDT)
MIME-Version: 1.0
From: Larry Brown <elcapitanbrown@gmail.com>
Date: Tue, 25 Jun 2019 10:42:12 -0400
Message-ID: <CAOmL4Ug9JTVvhecmi43K13pc+BbXZxc6AEtrfjEfjTh2zSQK+g@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Cortex m7 imx rt1052
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
X-List-Received-Date: Tue, 25 Jun 2019 14:42:25 -0000
Content-Type: multipart/alternative; boundary="000000000000d43383058c26ef43"

--000000000000d43383058c26ef43
Content-Type: text/plain; charset="UTF-8"

Does anyone know if there is a base bsp for at least the development board
imx rt1052?

-- 
Larry Brown
S/V Trident
Palm Harbor, FL
~~~~~~~~~~~~~~~~~_/)~~~~~~~~
    ~     ~          ~~           ~
~           ~~_/)    ~      ~ ~        ~
     ~                  _/)          ~

--000000000000d43383058c26ef43
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:comic sa=
ns ms,sans-serif">Does anyone know if there is a base bsp for at least the =
development board imx rt1052?</div><div><br></div>-- <br><div dir=3D"ltr" c=
lass=3D"gmail_signature" data-smartmail=3D"gmail_signature"><div dir=3D"ltr=
">Larry Brown<div>S/V Trident</div><div>Palm Harbor, FL</div><div>~~~~~~~~~=
~~~~~~~~_/)~~~~~~~~</div><div>=C2=A0 =C2=A0 ~ =C2=A0 =C2=A0 ~ =C2=A0 =C2=A0=
 =C2=A0 =C2=A0 =C2=A0~~ =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~</div><div>~ =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 ~~_/) =C2=A0 =C2=A0~ =C2=A0 =C2=A0 =C2=
=A0~ ~ =C2=A0 =C2=A0 =C2=A0 =C2=A0~</div><div>=C2=A0 =C2=A0 =C2=A0~ =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0_/) =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0~</div></div></div></div>

--000000000000d43383058c26ef43--
