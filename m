Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3E42CE009EB; Sun, 10 Dec 2017 05:15:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
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
	*      [209.85.220.177 listed in list.dnswl.org]
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB9F8E00736
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 05:15:04 -0800 (PST)
Received: by mail-qk0-f177.google.com with SMTP id c13so4060410qke.2
	for <yocto@yoctoproject.org>; Sun, 10 Dec 2017 05:15:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Ma6da/+eYrSdz6Y9YJq8823hu7UiideJcZcvM7ieY2s=;
	b=kVz+QaxEFUrQMPKHL3vkiF7wiRUh9UX2pO6417+KMviHSMcODm7Nuvsf+yfFvKaLdj
	GXEwGNdvY3p58UjRH6ocYGH421uTJPDitLRa/5n0xamqNhsbHt9L/afQKqmTdobV/vF0
	siPGk60gisUteZ+ePUkGJPjLKtAU40UkXO/3f+6lhExp9KcB9QeUJswIUAn+HaO2p/rg
	nfW+L3ISUDl0YmMGnoFVPTYmleycKsCwbWVoHXvbODpPdmh6o8PdVVSrk3LkM9bWpnGr
	UOvzmvCfkJjz1kFiIaefxARL3MpcNiykQRpVqm89PI6Qi17SYTmAwzXgt4+U8jXsQ6Qy
	yaYQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Ma6da/+eYrSdz6Y9YJq8823hu7UiideJcZcvM7ieY2s=;
	b=HVUSnteByBM6SRQhAjGj1ZNtqTPEN3NZMGfD6gA+TzXoc8uvFwaDDsATU+0ynwZQ0r
	1OfaNaZIkQA3SCDkXJD6YjQJF2nL2sY5kZgdy0uVJsc2ZfTzg82CxXdXzpF9CfSNb9j3
	UMAui2npkxwn5AFp9n5VxmXqB2Nj5LnDYfuWMne9kA+2wpipa+9ANsdG9kK/b0/66tMF
	bqS2a4wgl2BYBq6goduAA6q44MLYv7sHU8sfU0zW3F8SqOC0vd1LgUj7pEQwVAJI5+sY
	z1HKwvfGC9+d9cttdhTG3wWLSjcxwNyl5/cq8MVXqvv36Yd9Ao0pADhVUF+JKfVf+OS0
	jVaw==
X-Gm-Message-State: AKGB3mJDpL960pFJ0SuzPGF+wMtQJxm1FTDxQRgxDjijXekhrdTmxLYY
	fdPQHOE33+J2QGNvozITOGqy2rClEQQQkFBc+o5nqA==
X-Google-Smtp-Source: AGs4zMaymsFbbU32OUX/t/8Bx2iGM7Y0l6XyEUqln37rHNLumU2n3v9W7ZgoLb2pDFxOCJI0Wv/dzMfQPBjg0pft4Xs=
X-Received: by 10.55.59.199 with SMTP id i190mr22680803qka.232.1512911703877; 
	Sun, 10 Dec 2017 05:15:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.21.241 with HTTP; Sun, 10 Dec 2017 05:15:03 -0800 (PST)
From: "Daniel." <danielhilst@gmail.com>
Date: Sun, 10 Dec 2017 11:15:03 -0200
Message-ID: <CAF3SDA5n9M_fcVY-5GCC0WV3tGhyz7Fqa49iocUPurufBsrq+A@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: VPS for building and serving.
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
X-List-Received-Date: Sun, 10 Dec 2017 13:15:06 -0000
Content-Type: multipart/alternative; boundary="001a1148c0caafb1e1055ffc34a7"

--001a1148c0caafb1e1055ffc34a7
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hi,

Is there anybody using VPS for building and serving packages? What plans
you do recommend?

Regards
--=20
=E2=80=9CIf you're going to try, go all the way. Otherwise, don't even star=
t. ..."
  Charles Bukowski

--001a1148c0caafb1e1055ffc34a7
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hi,<br></div><div><br></div><div>Is there anybod=
y using VPS for building and serving packages? What plans you do recommend?=
</div><div><br></div><div>Regards<br></div></div><div><div><div>-- <br><div=
 class=3D"gmail_signature" data-smartmail=3D"gmail_signature">=E2=80=9CIf y=
ou&#39;re going to try, go all the way. Otherwise, don&#39;t even start. ..=
.&quot; <br>=C2=A0 Charles Bukowski</div>
</div></div></div></div>

--001a1148c0caafb1e1055ffc34a7--
