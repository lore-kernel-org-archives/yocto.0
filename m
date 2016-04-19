Return-Path: <techie1304@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D798E00EA0; Tue, 19 Apr 2016 05:23:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (techie1304[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.67 listed in list.dnswl.org]
Received: from mail-oi0-f67.google.com (mail-oi0-f67.google.com
	[209.85.218.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B80EAE00D8A
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 05:22:59 -0700 (PDT)
Received: by mail-oi0-f67.google.com with SMTP id b10so1033120oig.1
	for <yocto@yoctoproject.org>; Tue, 19 Apr 2016 05:22:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to;
	bh=S7mB+A61OobiHfY7Nt+p/2SUWhw3ga/0qD8YmErL9Ac=;
	b=KhLv2RKjqXWOMZg+8y92u2K1tQyt1tjpKmoLmKE45kl1M/EZhdKvjACpVVrHa+tzNI
	PvvnCKprDQQatauw1zxBskMDN6kqnY/lq6z/FcazQEc4LMBuWai7SvZ6QUcu3JDFxGhy
	HJH4oPUVX05xmUqVb3aaC4LM3uFnLfCnpM1TWp4CNEhLrK11VgBeQKHTVBHhDfh6burK
	TRE7ucLqFZJD9Txo7dUTGIJ0Bp6KXcRAI3FkACdJ86dFRDmdE4GX0+mKsfqADqPR0F7B
	dBrKdzvV+jLqHJyng2YXrynmQNlkY+CBZYSGZSv87+aD9JljX6wLO7nvpZPpWmVTifBh
	IkPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:date:message-id:subject:from:to;
	bh=S7mB+A61OobiHfY7Nt+p/2SUWhw3ga/0qD8YmErL9Ac=;
	b=gk/2bQq/Hj32tGggERWYAAmLTT+tsA5kr9IVSSNH2ojFog9dWuRSEKyAEcIX8kGgVN
	9FbPQ/ue7gBKJUQU20OhYvtkbGIsvN+y09G1lwO3ECyBfyyURcNWCc919GYmDaisJwVv
	3dTOJX42WNoriPxoaMCoH2gTgX5SUKdPQTYFMP8NlPYyfMfvEz6l/69xI2WKDUOcsJCM
	8lNayerKQ5od+kMbaRMqnWOfE0MJ2a9EN+OBHSzAzJ1i8bU6o38CsoYWXII2+N+40s3Q
	ilIdUpI2uFCM+5rcMGBPELdZiDhQO9zKlzmXBnJhN0g3cVRSD6EW6b0YYl0N7bXmm6iu
	Vxng==
X-Gm-Message-State: AOPr4FVsFWgpzTw+m85Jeuu6ooqTOJ/pKz+8TtMX8IU6BmOtS7ES3mm52PUSPIbc/7Tel+tqqsaOFbiD0jkf2A==
MIME-Version: 1.0
X-Received: by 10.157.13.229 with SMTP id 92mr1094132ots.134.1461068578851;
	Tue, 19 Apr 2016 05:22:58 -0700 (PDT)
Received: by 10.202.173.199 with HTTP; Tue, 19 Apr 2016 05:22:58 -0700 (PDT)
Date: Tue, 19 Apr 2016 17:52:58 +0530
Message-ID: <CANX2g8nHy66MyrGHvA57Ce4V6hQTt-Hr6BihAb21WYTdLs9gvw@mail.gmail.com>
From: akash garg <techie1304@gmail.com>
To: yocto@yoctoproject.org
Subject: Enable WL1835 cape with beaglebone & yocto latest release jethro
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
X-List-Received-Date: Tue, 19 Apr 2016 12:23:01 -0000
Content-Type: multipart/alternative; boundary=001a1148d28ea294960530d589f0

--001a1148d28ea294960530d589f0
Content-Type: text/plain; charset=UTF-8

Hello Everybody,
      Can anyone help me to enable support for *WL1835 *Cape (TI module)
with *Beaglebone black *using *yocto project* latest
      release *Jethro*. How can be this module added in final image core
image sato or core image minimal.

Thanks

--001a1148d28ea294960530d589f0
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello Everybody,<br></div><div>=C2=A0 =C2=A0 =C2=A0 C=
an anyone help me to enable support for=C2=A0<b>WL1835=C2=A0</b>Cape (TI mo=
dule) with=C2=A0<b>Beaglebone black=C2=A0</b>using=C2=A0<b>yocto project</b=
>=C2=A0latest=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 release=C2=A0<b>Jethro</=
b>. How can be this module added in final image core image sato or core ima=
ge minimal.=C2=A0</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0<br clear=3D"all"><d=
iv>Thanks<br></div></div></div>

--001a1148d28ea294960530d589f0--
