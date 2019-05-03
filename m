Return-Path: <easmith5555@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC59AE00AD5; Fri,  3 May 2019 14:08:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	HTML_OBFUSCATE_05_10, 
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (easmith5555[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.171 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f171.google.com (mail-it1-f171.google.com
	[209.85.166.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7562E009E7
	for <yocto@yoctoproject.org>; Fri,  3 May 2019 14:08:12 -0700 (PDT)
Received: by mail-it1-f171.google.com with SMTP id i131so11449309itf.5
	for <yocto@yoctoproject.org>; Fri, 03 May 2019 14:08:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=1RE3zPQCho2CSUqX2Fi6yhyEhHSgRrQghucrS2rByR0=;
	b=eSHtyIfK3wMxIqL5FI3YSahPj6trFc4fuIeMPafl/I2N585yFklQvXZ+MVzC1LHbc9
	/4U5grbXayHElAy/AFi0/yRm0iMrUo9Y9Hy1MvUDAlKV9HkKOPktVXGs42G+28IDLqwF
	k0kqZ52jJq3YPWxmCTU5r1fJOzdrvUiVnUgSs5y13SSdSLy3Tka4+SVb0sXoKpjwuFdi
	/O6p9lu/DTMyOln+O5yVCqtEK7lJ/7FK5KviaTQX8v+BCKim/5GYSTYvQLMBhPgpL087
	evhNvVW7EWef0K0rW1uQP+zO9tODVoVWuh2LszCMzcHNUya7OgVqcFHV3qYXxb5Yfi/M
	NrFw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=1RE3zPQCho2CSUqX2Fi6yhyEhHSgRrQghucrS2rByR0=;
	b=X2edd8Es6MDZm0yxP8b5HeyiBb88SHFDart9PyRBk+WfwciFsiKT/qD7rQum8UFYGx
	EcshCdYJPRMG4XT2V4kABPXbgGevkijyfBOXkX5qBQQoINvJ5iuI70n8vfGYHBQlPgKH
	KdV2hqfv2wLlEOgAC0IA4k3YwOv3CNU4KkiMu6SIR18aWAYHruRBweE3Lqaje98sKXfe
	GyjuAhVgNB4HvW7r+6vU0ugdhHLv44l1SsjXOeH4+eNFTH83gY/RL39/N/byREtdwvRS
	/PbKhQPz9de3rHhbj0ZbJKVCosD6i9B+I7B4RBacefChYTshGXBzm6kIdcxPI5uGBQ+K
	Hw5w==
X-Gm-Message-State: APjAAAUmn2GBwFmICBp1dLr3z3+tYelvTEe8hMSme9JHizKymixfCQc5
	9zgZ0v+6/6tGBG5R7TQSXenLsCs7a8KBsiFoB6RVvM1Y
X-Google-Smtp-Source: APXvYqwoFTlbTEiTN8qk8Ia8Q4Qm27XfILmGJh3WV7foPLu3+Hgcw0SxowHzLVO0w3mn8TLggKj4aoWqcrj55NkNeHE=
X-Received: by 2002:a05:660c:348:: with SMTP id
	b8mr9078353itl.56.1556917691932; 
	Fri, 03 May 2019 14:08:11 -0700 (PDT)
MIME-Version: 1.0
From: Emily S <easmith5555@gmail.com>
Date: Fri, 3 May 2019 16:08:03 -0500
Message-ID: <CAAV2bM2O7ve9ZvhqjFtcUysaKbKZxYqRV8idqg03Mp2-v+RFMQ@mail.gmail.com>
To: Yocto List <yocto@yoctoproject.org>
Subject: Incorporating Xilinx DNNDK into Yocto
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
X-List-Received-Date: Fri, 03 May 2019 21:08:14 -0000
Content-Type: multipart/alternative; boundary="000000000000f8e321058802259a"

--000000000000f8e321058802259a
Content-Type: text/plain; charset="UTF-8"

Hi all -

Xilinx has the Deep Neural Network Development Kit (DNNDK) that they just
released the source code for in the last month or so. They have the code
written nicely in the form of yocto recipes but it doesn't appear to be an
actual layer:
https://github.com/Xilinx/Edge-AI-Platform-Tutorials/tree/master/docs/DPU-Integration/reference-files/files
.
Is there a possibility of creating a layer for it? Or should I look into
other options, like adding it as a submodule to my custom layer
meta-l1calo: https://github.com/kratsg/meta-l1calo?

Or if anyone has additional options, suggestions are appreciated!
Thanks for the help!
Emily

--000000000000f8e321058802259a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi all -=C2=A0<div><br></div><div>Xilinx has the Deep Neur=
al Network Development Kit (DNNDK) that they just released the source code =
for in the last month or so. They have the code written nicely in the form =
of yocto recipes but it doesn&#39;t appear to be an actual layer:=C2=A0<a h=
ref=3D"https://github.com/Xilinx/Edge-AI-Platform-Tutorials/tree/master/doc=
s/DPU-Integration/reference-files/files">https://github.com/Xilinx/Edge-AI-=
Platform-Tutorials/tree/master/docs/DPU-Integration/reference-files/files</=
a>=C2=A0. Is there a possibility of creating a layer for it? Or should I lo=
ok into other options, like adding it as a submodule to my custom layer met=
a-l1calo:=C2=A0<a href=3D"https://github.com/kratsg/meta-l1calo">https://gi=
thub.com/kratsg/meta-l1calo</a>?=C2=A0</div><div><br>Or if anyone has addit=
ional options, suggestions are appreciated!=C2=A0</div><div>Thanks for the =
help!</div><div>Emily</div></div>

--000000000000f8e321058802259a--
