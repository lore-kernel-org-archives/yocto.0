Return-Path: <marek.belisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D08EEE009B1; Wed,  9 Jan 2019 06:03:03 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (marek.belisko[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.128.54 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f54.google.com (mail-wm1-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DF11BE009B1
	for <yocto@yoctoproject.org>; Wed,  9 Jan 2019 06:03:02 -0800 (PST)
Received: by mail-wm1-f54.google.com with SMTP id y139so7683554wmc.5
	for <yocto@yoctoproject.org>; Wed, 09 Jan 2019 06:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Uc7+zhS6TdCYNMu3SdI/uv8hFbzgbCSWFrC49+nvWnY=;
	b=rcFD5rYKa/paDwFgQWTy4lmVUqvXEycSmTQ+w2esFcCBIauB+j88xD+36LL9t+pSAs
	FUK3fzeynXUU5vViRkqCybL4NhyKCpcwnoGR7pu+LGMzmlyEaY4yLE/Sk+OE0e9m/d7q
	dSq3Mc0PBh0/YG4QhjlkaHwJdSto4NMtqwppYLh+S6Biza10yeqDnbI+K8jIIoIcwkt5
	/s59TT+Sk13gItXlBgP+Xwp8JvxB23KhCtSrh9rNrhNCDy6JPi0SJY3qBbUREsNZCnMc
	QmkZ6neHKcgx4tTuBhf59hbW+iXFJNk3e+CAEtfPAa65xbQ6bR5gca5ExeijJ8EPu49V
	nIcQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Uc7+zhS6TdCYNMu3SdI/uv8hFbzgbCSWFrC49+nvWnY=;
	b=tGl5T/xwP2fDHQjmm9OTg7+q+ltxcL/7OMILQow1LgqA20VooHFNKWspLSVV4EtH5z
	j5mu3v+ponFXXBkOcq89J1/9jz3/B7QojOJ6kFBu3mBYbdV8ZqVCXQzfybRVa5XAT6Ey
	hGSiMoYXx/sj6JJ59dW7UAnrbUMj0W+phR5hvQECe3ZfVbT54uvzNsRneVELTUwxsvMn
	aLowApPsY67W1+KS67gVaMM0d3IWLqrL+pjeCr2w//dfsFTk1zVB6bTlATmrawCer1tm
	NyaT7dRkaVtPko+2NlMTFWu65VTCtIxYgvjuLZLbepsGX8nPJv4jCWixGXMkYVaxLHzL
	6UTw==
X-Gm-Message-State: AJcUukcR8IRJXqScizEBOInDgLtyLLfO/cDYb/FLT6b83P1aR4HeA06X
	PiPN5CB4UORS0SpqYJcdnc/GQLmmq/dET+2sHpUNYg==
X-Google-Smtp-Source: ALg8bN7kwwBIMNNAESoS+LPvx9kUSmbqHyRDHUPZ8aKlTKgwl2NPwfI/CFIcyTSWv2ySYEpxwnw0qxTUqbnfc2vibQg=
X-Received: by 2002:a7b:cb0a:: with SMTP id u10mr6021556wmj.0.1547042581180;
	Wed, 09 Jan 2019 06:03:01 -0800 (PST)
MIME-Version: 1.0
From: Belisko Marek <marek.belisko@gmail.com>
Date: Wed, 9 Jan 2019 15:02:49 +0100
Message-ID: <CAAfyv35VLe6=Pf9Gb_3PBXj9Dj7H8CQhhP67Bshjv5xh7GDWEg@mail.gmail.com>
To: yocto <yocto@yoctoproject.org>
Subject: adding files to data partition (not rootfs)
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
X-List-Received-Date: Wed, 09 Jan 2019 14:03:03 -0000
Content-Type: multipart/alternative; boundary="00000000000080fa6a057f06eb25"

--00000000000080fa6a057f06eb25
Content-Type: text/plain; charset="UTF-8"

Hello,

I can to the problem that we have 2x rootfs + data partition where
persistent data sholud be stored. We also want to store some configuration
files in persistent data partition. I've created wic file with fixed size
of that partition but I'm not sure how to add files to that partition. Is
there some generic yocto way how to deal with that? Thanks for any pointers.

BR,

marek

-- 
as simple and primitive as possible
-------------------------------------------------
Marek Belisko - OPEN-NANDRA
Freelance Developer

Ruska Nova Ves 219 | Presov, 08005 Slovak Republic
Tel: +421 915 052 184
skype: marekwhite
twitter: #opennandra
web: http://open-nandra.com

--00000000000080fa6a057f06eb25
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I can to the problem that we hav=
e 2x rootfs=C2=A0+ data partition where persistent data sholud be stored. W=
e also want to store some configuration files in persistent data partition.=
 I&#39;ve created wic file with fixed size of that partition but I&#39;m no=
t sure how to add files to that partition. Is there some generic yocto way =
how to deal with that? Thanks for any pointers.</div><div><br></div><div>BR=
,</div><div><br></div><div>marek<br clear=3D"all"><div><br></div>-- <br><di=
v dir=3D"ltr" class=3D"gmail_signature" data-smartmail=3D"gmail_signature">=
as simple and primitive as possible<br>------------------------------------=
-------------<br>Marek Belisko - OPEN-NANDRA<br>Freelance Developer<br><br>=
Ruska Nova Ves 219 | Presov, 08005 Slovak Republic<br>Tel: +421 915 052 184=
<br>skype: marekwhite<br>twitter: #opennandra<br>web: <a href=3D"http://ope=
n-nandra.com" target=3D"_blank">http://open-nandra.com</a></div></div></div=
>

--00000000000080fa6a057f06eb25--
