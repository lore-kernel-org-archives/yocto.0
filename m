Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ECEA5E00566; Wed, 12 Sep 2018 08:12:34 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (b.hutchman[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 668FAE00519
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 08:12:34 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id y2-v6so2827222wma.1
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 08:12:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=+hvrvkz1JCjC5fTBbjnquZH22ArlHef3/WJ1MerjgBE=;
	b=jukyCw3ysowUfNxXg+qS4BX//MCQljaenkpDIMND3TmJElsza9S8T9pzORtMtZU3rE
	EPHVi6gsA3OsXmt/3Rbwl3zvmTmGVZkBH8PgvfzeS0MxBwTZrLyGEgGoQPhibpjC2/8u
	m5W9timLDX/RgjrksAtXc6UdVFLBWlTpBnaK4qfGJ/j0nmPinYRnvNgo0r97T0shCGiy
	QQIo8yxY29cssZyIU73AgCPJM2y5K7+Jw0gvL4/Fkhz2bh9dnjujtmEr7MHYPYW1d72e
	fP6tdplbB//V7LSaHYvJyqq2c5hbGL9Fj/YENqT5rExtdgxxKaWl3wZb/CSHG2qRAWvr
	gENw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=+hvrvkz1JCjC5fTBbjnquZH22ArlHef3/WJ1MerjgBE=;
	b=MvrqCjltRLhVzhmL0xM0KcHL2BuXwNx1exO6i9Hn01BarzI3OUH+a0ZXKAPa77KH/3
	JuERKfms3w5WatNDo26UxhgiZoekz+5Jbj2QVKPSFAmbTg11HNe8jiN+ImtVcYxSaBf0
	o8YFT+RNkLPKKBvRwI7eiy656tELQ3K2FDKUCg1Gnzv47rBkmfp+YBJ7pP2iQ7X0f8YN
	Dr2PEV0fNJDzrvXsYsYv+7ScX8fi01bYijlNHcjUWDaK3yQk96MxrJi5mej9B62pVemY
	MpdBbduX1WBXTMMwEZ1tjkMAEYsKmRFKK+2F4ZvjbbQfMxUBj3sbjCVDoHHoo6xAGLhL
	8Phg==
X-Gm-Message-State: APzg51BLYDFXkjJS4dS3Q2LAWzcliy5FohpuQr78Z8p6Ljm15hO3KjlG
	2+6rCzNREyjRPzxmsq+Q3IyCu42mYUOf2ak3E1s=
X-Google-Smtp-Source: ANB0VdYn31g09D2CzETIDZ2wjsH/WppdMFP9Asmp87WDK3rxvKi+HEztYr1vP13N8tO2J0RyBmYQT5UrEM6rObGZ8WQ=
X-Received: by 2002:a1c:570a:: with SMTP id
	l10-v6mr1889767wmb.56.1536765153319; 
	Wed, 12 Sep 2018 08:12:33 -0700 (PDT)
MIME-Version: 1.0
References: <CAFZh4h9v4DimM=XMsCVR1z3P+n1MvX1zxT93hH+pYV8o7a077A@mail.gmail.com>
	<CANNYZj-Tu72fapYpUOcn-ME3qOL_8nhyvqDnjX22ubvOxsRX=A@mail.gmail.com>
In-Reply-To: <CANNYZj-Tu72fapYpUOcn-ME3qOL_8nhyvqDnjX22ubvOxsRX=A@mail.gmail.com>
From: Brian Hutchinson <b.hutchman@gmail.com>
Date: Wed, 12 Sep 2018 11:12:21 -0400
Message-ID: <CAFZh4h-iHs3xE2Ud_PhKd_FnMW5kVXmYWB_VGv2WDZcnYwUBkQ@mail.gmail.com>
To: alex.kanavin@gmail.com
Cc: yocto@yoctoproject.org
Subject: Re: Is there a "yocto way" to rebuild sqlite amalgamation?
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
X-List-Received-Date: Wed, 12 Sep 2018 15:12:35 -0000
Content-Type: multipart/alternative; boundary="000000000000111e3c0575ae05e9"

--000000000000111e3c0575ae05e9
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 12, 2018 at 11:09 AM Alexander Kanavin <alex.kanavin@gmail.com>
wrote:

> These two are orthogonal. "amalgamation" is building sqlite from a
> single source file for performance and simplicity reasons, which is
> what yocto does as well, despite there being no mention of it in the
> recipe. Enabling or disabling specific sqlite features can be done
> regardless of whether amalgamation or original source code file bunch
> is in use.
>
> Alex
>
> Thanks!  That is what I was hoping for.  I set the feature in my bbappends
> file and went for broke and am just going for it rebuilding everything.
>

Regards,

Brian

--000000000000111e3c0575ae05e9
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br><div class=3D"gmail_quote"><div dir=3D"ltr">On Wed=
, Sep 12, 2018 at 11:09 AM Alexander Kanavin &lt;<a href=3D"mailto:alex.kan=
avin@gmail.com">alex.kanavin@gmail.com</a>&gt; wrote:<br></div><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px sol=
id rgb(204,204,204);padding-left:1ex"><div>These two are orthogonal. &quot;=
amalgamation&quot; is building sqlite from a<br>
single source file for performance and simplicity reasons, which is<br>
what yocto does as well, despite there being no mention of it in the<br>
recipe. Enabling or disabling specific sqlite features can be done<br>
regardless of whether amalgamation or original source code file bunch<br>
is in use.<br>
<br>
Alex<br>
<br></div>Thanks!=C2=A0 That is what I was hoping for.=C2=A0 I set the feat=
ure in my bbappends file and went for broke and am just going for it rebuil=
ding everything.<br></blockquote><div><br></div><div>Regards,</div><div><br=
></div><div>Brian<br></div></div></div>

--000000000000111e3c0575ae05e9--
