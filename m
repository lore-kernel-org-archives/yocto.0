Return-Path: <bnousilal@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 481F2E00D2E; Mon, 25 Jul 2016 22:55:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bnousilal[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f171.google.com (mail-io0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F824E00D25
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 22:55:32 -0700 (PDT)
Received: by mail-io0-f171.google.com with SMTP id b62so196858318iod.3
	for <yocto@yoctoproject.org>; Mon, 25 Jul 2016 22:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=NB/QCAggbgziNok3eAMU70eFvNoxr4bjDZ7Mk6YX1pg=;
	b=dBR2gPQeGsj3EhqByH5FNk5VWB2zZrluns42dnjDCInwcIFA9ZxJaDtxTTTf+ZrrBh
	HSLa3UVh9YYRIq3aml62hk9sZeYAVbs8Teh4VMK+i0bKQLTN9CrSvh6O/PrTeEk1H+Pv
	aDYCHg2+wMjIuau/5RmppMccXfBPVAF5O7+sTiIs9mc3ulvYBQqWrEpnmWri+wwMKFb0
	+jFapDmmyvm8jMnSQWNCJdXwaMn0pJbT5nVll4SvoB5f9FVJf+vfyv4u5PfCV1+YibH1
	96dVFlmjsMTLwHiomZdFwVbEByCXc0+8+31cuEBqbeqGsh3FUN5YBDRQ4xcdIAV5ouQC
	Ndug==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=NB/QCAggbgziNok3eAMU70eFvNoxr4bjDZ7Mk6YX1pg=;
	b=E/JrNKpX9XuZnup/rAuTRm3PJF1pw8o1uKtffTgv6Cl1KyBZ14XXRs0xQdsfm9ek+5
	Tu6sft3p6ID7nVJqsnqogfLa0im1LY+fnqnd1hz8iio+6pXx8zN8iSKNbAxCTF6K6WXT
	+pLVb1zZfUWMyRaVTl2Y5tvuGJzAk2K6hfU0FTh4243lOzkOdL/u3qLy3RSPnC9rDsYe
	T7MW5im15fVonyA4d/LTavWGTENAwVw3+2zYBLBgrQrEYLUaMqBHmfe7+x/sj8KNfPvh
	SvEsAlNHlJErd5TwzK/Z2RcZCn05XsFGKi4HbcGMblsh8SIXr0OXlAcZBqy6rTG+sEqV
	33Og==
X-Gm-Message-State: AEkoousC/5oPa0B7w0V3KZ7A48x2yVwYyKHC017NuPqfQqn1WnMgrB0An0ZgtLM+QQRNRjDuNay41meFKH5zzA==
X-Received: by 10.202.94.9 with SMTP id s9mr11430611oib.174.1469512532053;
	Mon, 25 Jul 2016 22:55:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.157.42.168 with HTTP; Mon, 25 Jul 2016 22:55:31 -0700 (PDT)
From: nousi <bnousilal@gmail.com>
Date: Tue, 26 Jul 2016 11:25:31 +0530
Message-ID: <CAJ5vXcRgkgH8by89cv9Hi_g=Vo18kXAENCwy2zUNb00UTaat1w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: config file
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
X-List-Received-Date: Tue, 26 Jul 2016 05:55:38 -0000
Content-Type: multipart/alternative; boundary=001a113d5cdc7756a50538838cc2

--001a113d5cdc7756a50538838cc2
Content-Type: text/plain; charset=UTF-8

Hi,

I have downloaded the poky repo and it is clean.
I do not find any .config file in poky directory.
Please, point me to the location under poky tree to copy the .config file
from the external source so that bitbake can use .config file configuration.

-- 


*Thanks & Regards,B.Nousilal,*

--001a113d5cdc7756a50538838cc2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I have downloaded=C2=A0the poky rep=
o and it is clean.</div><div>I do not find any .config file in poky directo=
ry.</div><div>Please, point me to the=C2=A0location under poky tree to copy=
 the .config file from the=C2=A0external source so that bitbake=C2=A0can us=
e .config file configuration.</div><div><div><br></div>-- <br><div class=3D=
"gmail_signature" data-smartmail=3D"gmail_signature"><i style=3D"color:rgb(=
51,51,255)"><font style=3D"font-family:arial,helvetica,sans-serif" size=3D"=
2">Thanks &amp; Regards,<br>B.Nousilal,<br></font></i><br></div>
</div></div>

--001a113d5cdc7756a50538838cc2--
