Return-Path: <b.hutchman@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB4B5E00566; Wed, 12 Sep 2018 07:54:56 -0700 (PDT)
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
	*      [74.125.82.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f47.google.com (mail-wm0-f47.google.com [74.125.82.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 637BFE00519
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 07:54:54 -0700 (PDT)
Received: by mail-wm0-f47.google.com with SMTP id n11-v6so2768403wmc.2
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2018 07:54:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=I5IzQwMP4zOf0mSKMl9nig5hEumshy5HxSnBEYOfSt0=;
	b=NyvX9dZ6Uk5F0eHcTpUG55S7CvZjUXQdUOkmzE3SfSFmygiV1ZeiqYoDlqtU7xxcB+
	Np0fUK4sUGuigJ/aMfDuKaMDuy12KIb3d9CDYODxoos3Sja+hMNuSiK1X5v7htcENUUw
	X0/48lCRa/gT6CjqD+puliLP14nPMeR4J2FpGaMagp8b08IIZrOTPuIB0I9L6WHbQ2Tj
	Kp1fIy3QFJKGRPz/yICBHH6SHsdtGEKEmMg0G0ifYcDxp2MF2D59NEc/faCTERJwzlrP
	wtcIWdJSuuuCJqAEmiLxVtZYs3XH8rZSfA09OvbtwKKbyoEXSKxoF37H42+2W+0FLIQt
	MBwQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=I5IzQwMP4zOf0mSKMl9nig5hEumshy5HxSnBEYOfSt0=;
	b=Cl2EZ+RiLwbZfCYYTI2zNJjVzUuHEoG/905HFTGlX9FS2hmR3c0H7XcIORDtoFb4yK
	WH8ZX+gkaedaZzqesb2ZJRROjvKwGjxhfwfKk6L6RQGOhHV1Ld+jF7I2qB9F6csQ4jny
	FC62r92x1bppAdKD3CXzwo3xONitJp13LyQnlfD+/lm7+MrW6W8EBY8P2fLG5JIvCJr2
	eXqlvSFJQ57mxbBk/zlRKLJEAhkU0VdoZSx6/VA+smpiZFa5MrD9pG0zu1QQrDyhAH1O
	4GcT3zSgZRpTk3BU2SpB37Ualt5AfGJ41iQSSDM3Vrxz2dA//TnSmfMsPF1G8XzFexFP
	Nm3g==
X-Gm-Message-State: APzg51DRzUXNBt8AVBVDMkgLny2+gNT5ziosa8SadsHtjGI3vHQ2xghn
	nITgEXPRIDbvYcUKfbgz7Fw0tvtKmFaQ89WicvhkIuw6
X-Google-Smtp-Source: ANB0VdZYZ+EjqkFsyCpkB/ZGuIXHgFV67v53TAdp9XV9OVF1WpM+E6Xgc45xWZntib7jzK6SaiC5gKQhhHtDT+spdvU=
X-Received: by 2002:a1c:b5d3:: with SMTP id
	e202-v6mr1904192wmf.23.1536764093001; 
	Wed, 12 Sep 2018 07:54:53 -0700 (PDT)
MIME-Version: 1.0
From: Brian Hutchinson <b.hutchman@gmail.com>
Date: Wed, 12 Sep 2018 10:54:41 -0400
Message-ID: <CAFZh4h9v4DimM=XMsCVR1z3P+n1MvX1zxT93hH+pYV8o7a077A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Is there a "yocto way" to rebuild sqlite amalgamation?
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
X-List-Received-Date: Wed, 12 Sep 2018 14:54:57 -0000
Content-Type: multipart/alternative; boundary="000000000000de054a0575adc5ed"

--000000000000de054a0575adc5ed
Content-Type: text/plain; charset="UTF-8"

I need to enable SQLITE_ENABLE_UPDATE_DELETE_LIMIT and while researching
how to do that I read the "amalgamation" needs to be rebuilt.  Sqlite site
gives instructions on how to do that but I was wondering if this is really
necessary in a yocto environment.  I did some searches in recipies and the
work directory where sqlite3 was built and do not get any hits at all on
"amalgamation".

Any words of wisdom?  I never heard of sqlite amalgamation or had to deal
with it before so this is a new one on me.

Regards,

Brian

--000000000000de054a0575adc5ed
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>I need to enable <code><span class=3D"gmail-str">SQLI=
TE_ENABLE_UPDATE_DELETE_LIMIT and while researching how to do that I read t=
he &quot;amalgamation&quot; needs to be rebuilt.=C2=A0 Sqlite site gives in=
structions on how to do that but I was wondering if this is really necessar=
y in a yocto environment.=C2=A0 I did some searches in recipies and the wor=
k directory where sqlite3 was built and do not get any hits at all on &quot=
;amalgamation&quot;.</span></code></div><div><code><span class=3D"gmail-str=
"><br></span></code></div><div><code><span class=3D"gmail-str">Any words of=
 wisdom?=C2=A0 I never heard of sqlite amalgamation or had to deal with it =
before so this is a new one on me.</span></code></div><div><code><span clas=
s=3D"gmail-str"><br></span></code></div><div><code><span class=3D"gmail-str=
">Regards,</span></code></div><div><code><span class=3D"gmail-str"><br></sp=
an></code></div><div><code><span class=3D"gmail-str">Brian<br></span></code=
></div><div><code><span class=3D"gmail-str"></span></code></div></div>

--000000000000de054a0575adc5ed--
