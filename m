Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0412E0073D; Wed, 14 Mar 2018 19:37:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f54.google.com (mail-pg0-f54.google.com [74.125.83.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A2D6E00CB3
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 19:37:35 -0700 (PDT)
Received: by mail-pg0-f54.google.com with SMTP id r26so2217188pgv.13
	for <yocto@yoctoproject.org>; Wed, 14 Mar 2018 19:37:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=Kf6BjZz45pBLcAvyT3TcUmFuotuSYAkf/YjX9/cne9o=;
	b=i2WRbl3qrDUkXjgYiAVVHTqm+6ifjTeq+eXvEzaNa24bYhnWc1A1pFmMWsSXF9r9hG
	SZBzFT3TjfruZHNp/ydOL0wnieZo3xy3Kjm9WZIlhiONDh6G83NDA4RsXAe1vvfg0dCc
	313ItA/bfdUrwA5o+IKZxKBe0sp6zUSdMs4dUMn6yLwIqWBwOkJUVLFJmwCsXfmrF/Ur
	WingjlDFga0ueBxFYHSpK4jRITASgpXvJdz2tUDrDGEs+jT056m8fBkJ5f8dqvgHjAE3
	wVbQ4BAS/BVOZ7C1GPbVzgsR0NVfYUHeEOj+M3qsZOpc3hs6ECLmXlxmxvmYHUPdaq3c
	F5og==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=Kf6BjZz45pBLcAvyT3TcUmFuotuSYAkf/YjX9/cne9o=;
	b=Y3Mr5oeFbwvI+QqP9EuM7sOo95q3uYndlvZ8kwYouVIFtet6FXJumNAJaSYBHXLRGb
	fgNmr2vlx0WkNWJuoOfcb1zw1TNfOIT+mnHtC5U6rwOH0Z0kNrjlt+/GCXYjwvx5YQvs
	KC0PtiAFj4GdbuTT76j/vF7FP8QHZaUskN0+P8jdNtHauMirmbtkmYhuhrZIsw+fNA+n
	mTGXpfc9qJQF+Rh7PhaMySTRB0PlXMssL9fF6BQB5Y3kOfVEwSELbaKrANJurOLGtHPm
	tpYRz0mHQnrDEypgeynPG3xFeTNQeFmbhzQmbCUGcEgbMDqQvZcHto/DbE2LgOuPWjgt
	GKKw==
X-Gm-Message-State: AElRT7HSaDVGq4o5BHa7MR3w+0DwC9sPvwAUvsygCvPpcGLEC8AA0HbB
	Yd01kq+fN2+CvJsMfWUcEp7ocTB3gHm3zwsKs1k=
X-Google-Smtp-Source: AG47ELvExmg0wkA4uCSr8fm2Qiw4mKwAtGHA3ENWK0frQbXfDiTDmwKvFwfcSZyEY6PzUNyZHeJeXs5TvnGcS1jaRaA=
X-Received: by 10.98.28.202 with SMTP id c193mr6316157pfc.109.1521081455474;
	Wed, 14 Mar 2018 19:37:35 -0700 (PDT)
MIME-Version: 1.0
References: <CAO80zYuPGBh0syB4s_G6nrMgD7Ac9OePa=uM=8pPM6YhVnrGsQ@mail.gmail.com>
In-Reply-To: <CAO80zYuPGBh0syB4s_G6nrMgD7Ac9OePa=uM=8pPM6YhVnrGsQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 15 Mar 2018 02:37:25 +0000
Message-ID: <CAMKF1soMC8sPr_LZZN=gkvEUV_fiQ9dSQ1O+7mCJcT01-zOROQ@mail.gmail.com>
To: ikjn <tiffang@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: How can I check "shared-library-to-package mapping"
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
X-List-Received-Date: Thu, 15 Mar 2018 02:37:36 -0000
Content-Type: multipart/alternative; boundary="94eb2c039802d3fc0505676a5f67"

--94eb2c039802d3fc0505676a5f67
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 14, 2018 at 8:50 AM ikjn <tiffang@gmail.com> wrote:

> Hi.
>
> My recipe 'A' installs pre-built shared libraries, but I get file_rdeps
> error on
> 'B' recipe's package_qa task, which has runtime dependency on A's so files.
>

Yes however it depends on SONAME being added to the shared objects when
they are linked otherwise shlibs code is not able to auto detect the
dependency

>
> I believed that bitbake automatically creates RDEPENDS_B += "A" regarding
> "shared-library-to-package mapping" [1] . so I didn't declare RDEPENDS on B
> recipe.
>
> Can anybody describe the detailed process of "so/package mapping"?
> Should I look into insane.bbclass?
>
> Thanks.
>
> [1]
> https://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#automatically-added-runtime-dependencies
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--94eb2c039802d3fc0505676a5f67
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br><div class=3D"gmail_quote"><div dir=3D"auto">On Wed, Mar 14, 2018 =
at 8:50 AM ikjn &lt;<a href=3D"mailto:tiffang@gmail.com">tiffang@gmail.com<=
/a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Hi.<div><br></d=
iv><div>My recipe &#39;A&#39; installs pre-built shared libraries, but I ge=
t file_rdeps error on=C2=A0<div>&#39;B&#39; recipe&#39;s package_qa task, w=
hich has runtime dependency on A&#39;s so files.</div><div></div></div></di=
v></blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">Yes however it=
 depends on SONAME being added to the shared objects when they are linked o=
therwise shlibs code is not able to auto detect the dependency=C2=A0</div><=
blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px=
 #ccc solid;padding-left:1ex"><div><div><div><br></div><div>I believed that=
 bitbake automatically creates RDEPENDS_B +=3D &quot;A&quot; regarding &quo=
t;shared-library-to-package mapping&quot; [1] . so I didn&#39;t declare RDE=
PENDS on B recipe.</div><div><br></div><div>Can anybody describe the detail=
ed process of &quot;so/package mapping&quot;?</div><div>Should I look into =
insane.bbclass?</div><div><br></div><div>Thanks.</div><div><br></div><div>[=
1]=C2=A0 <a href=3D"https://www.yoctoproject.org/docs/2.2/ref-manual/ref-ma=
nual.html#automatically-added-runtime-dependencies" target=3D"_blank">https=
://www.yoctoproject.org/docs/2.2/ref-manual/ref-manual.html#automatically-a=
dded-runtime-dependencies</a></div></div></div>
--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--94eb2c039802d3fc0505676a5f67--
