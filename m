Return-Path: <usmanhaider89@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 22B4EE00CD5; Sun, 10 Sep 2017 00:00:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (usmanhaider89[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.46 listed in dnsbl.sorbs.net]
Received: from mail-it0-f46.google.com (mail-it0-f46.google.com
	[209.85.214.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 33A6AE00C77
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 00:00:27 -0700 (PDT)
Received: by mail-it0-f46.google.com with SMTP id c195so11099914itb.1
	for <yocto@yoctoproject.org>; Sun, 10 Sep 2017 00:00:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=k7C4kAmCvh3nPzxHf5ZVU924b7MMMjFHExfEqDaZA7c=;
	b=JvemBYR97GfnwrClufo2H0pIgfPt+qCWViYF1fVxCtRZiTnGA0vpZxTvsEkMmYIAnY
	pTsuKy17DPYE5oDjcnNIH192mcabSC/YZXWXjLItwnVCPJZ2vTjnZyqcNL1rSXogq4wG
	cCpLY4QRNWlseADEK6OCxyK8t/VIzJChw2ABz5S4b3AjbH2YDhi+3+y1eYQVxEkGrM/C
	eRCnECAshsPVSWIVzjlCUCJXH6SOewurpQitzExzmysTr0WDYivDnJSqHBo0wrfaUPgy
	OXw/xAXmgV8hs1/qsS+/n2ImE13mmttt1SXv93yK2i1QfX/qDv7PlrMTmGOYj+Jra5h7
	WwHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=k7C4kAmCvh3nPzxHf5ZVU924b7MMMjFHExfEqDaZA7c=;
	b=UMQJ63B5xF3NrlZ84HEKoGEV/eyYbOwqfzXn6UEJGTukSjQbrjgMEzOk2ttjihgz2H
	OIYywi4UG0ZaV/tYsA+3AROpQ7ywo9RdjV1Lyb5wDisKjYlSWcflEAdXOWAPpVpxPYon
	Sr/W30PEhxMTreHmjIDS22heJ8uJvsbYoYtSYdn6LZS0KtmCg7J9OD0GEeCur/bOBma/
	NQh2eaMDbh3arFlGqqvQ/Wy7tR+M/Y3kMEH4Dhigo+lIUqCwlwjiHjOBzDGp2T57lH+6
	nASI/Hj5OFhjWZBud4oR/BAj2PQnyaP0XOMI5l9A9eRCmiZSSufiZUBkDZJQkqhj5ZyE
	zqJg==
X-Gm-Message-State: AHPjjUi5XeoMpaqExRp4mZIfbdexF4yEq+trndkwwoHCUwbxUohVfg0f
	qs3TQYypBfyKahTkwzmFAlDQruSQSDqMQ9bJgSVrFQ==
X-Google-Smtp-Source: ADKCNb6Dce3lFTG71BJCfRbaEQOPiMrva5fyHVqBnSy1WqIbGaflOlVGFexqINzIkaKqLBp8WWE2p0GnHbq6mruZv88=
X-Received: by 10.36.68.207 with SMTP id o198mr2646053ita.74.1505026826924;
	Sun, 10 Sep 2017 00:00:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.57.2 with HTTP; Sun, 10 Sep 2017 00:00:26 -0700 (PDT)
From: Usman Haider <usmanhaider89@gmail.com>
Date: Sun, 10 Sep 2017 12:00:26 +0500
Message-ID: <CANxWOTbROX_e50FqD_oV9=3KTnxHik2jgDP98rRWq2A09QaNeg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Suitable machine for yocto
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
X-List-Received-Date: Sun, 10 Sep 2017 07:00:29 -0000
Content-Type: multipart/alternative; boundary="001a1143e71e6577fd0558d05d2a"

--001a1143e71e6577fd0558d05d2a
Content-Type: text/plain; charset="UTF-8"

Hi,

Can someone please recommend some good machine for yocto environment and
building sdks. I am interested in RAM, hard disk space, processor.

Thanks

--001a1143e71e6577fd0558d05d2a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Can someone please recommend some g=
ood machine for yocto environment and building sdks. I am interested in RAM=
, hard disk space, processor.</div><div><br></div><div>Thanks=C2=A0</div></=
div>

--001a1143e71e6577fd0558d05d2a--
