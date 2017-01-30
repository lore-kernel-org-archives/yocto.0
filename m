Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5BC89E00405; Mon, 30 Jan 2017 08:46:16 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.195 listed in dnsbl.sorbs.net]
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
	*      [209.85.220.195 listed in list.dnswl.org]
Received: from mail-qk0-f195.google.com (mail-qk0-f195.google.com
	[209.85.220.195])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 29420E0030B
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 08:46:12 -0800 (PST)
Received: by mail-qk0-f195.google.com with SMTP id u25so19586334qki.2
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 08:46:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=dnYG9DMt5SSqMp4RESDrCyoHXlnpJIiRdTrwWJERUBE=;
	b=kqgUphuvTYFtNIl0BuTEKWI+ghwP9LmLc62bkApU0hWSA41xDYok7RJjmHX8wvfHzO
	1qr1PjC9sYRKMYXGQvPVj78VaTO01mJMt0vl331ERM+GK0yJ+VMyh/UdwBBj4bqMyxxI
	sa4sXiiE9h6ULpkslOEXIq6ZW5SoMrR16rPY/8oQBqFTLNYyBfGojNob7zon+sXdcV/g
	VZ0ljjCLVsLTAUBmQMu7XkEiYsVCP4DAGd/M4MGiLP+V5PDGBrVamOT/kjgFCSW2MP4B
	JeHi4lAazg/+Neu7wQo7TfIfYv+UfZXsCEeTvvsB4tN47xvIJE0rGwcWijhQsMFJcinK
	nFHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=dnYG9DMt5SSqMp4RESDrCyoHXlnpJIiRdTrwWJERUBE=;
	b=I3FQEpOsxnW1ckW0PunmaRIUMWe4tKQ6A7yIIbos4jGjTPZra5+zhI7iVZqtAnsgvF
	MTttJIiB2+SOmXSvzm7w5BF+NsPBBiqJXwijLxVmw/f7WXlu6OwE+dKIC30khMAjYc/v
	Br80ShAoK+i1HZ5fUVDTNm990rKJoQh1+02tjFfvC5Mfn5QjT0JYgugmpbrOszCYWmBV
	uK9ZIE2gTib+ZBcHWZxSjra1SsgzIZNAJMjTcVaaIl0mPoohT6FWV5LDOa2CHd15iMoQ
	uYPbPU2FL+0QAwZLFpsEGDekzBiLbpE8fB1fGqtpep8hKApSEDHntDW7dxNBuamseCpc
	TJWw==
X-Gm-Message-State: AIkVDXKR+ny/AHHILYLbDzPdO4E2W7Ji2v2UTM1aDnn06em4kA95IYR60Sq7x3X19w5sSkvF9yKv0HlCiBTpzA==
X-Received: by 10.55.98.5 with SMTP id w5mr21628383qkb.165.1485794771987; Mon,
	30 Jan 2017 08:46:11 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.17 with HTTP; Mon, 30 Jan 2017 08:46:11 -0800 (PST)
In-Reply-To: <005301d27b0e$c532b900$4f982b00$@ln-systems.com>
References: <005301d27b0e$c532b900$4f982b00$@ln-systems.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 30 Jan 2017 14:46:11 -0200
Message-ID: <CAF3SDA6e7s6kei9+oYSMsG01JnsrA-HrOWUBFOuEE-crLRSHMg@mail.gmail.com>
To: colin.helliwell@ln-systems.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Making header of out-of-tree module available
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
X-List-Received-Date: Mon, 30 Jan 2017 16:46:16 -0000
Content-Type: multipart/alternative; boundary=94eb2c0574ac97f39a0547528d4b

--94eb2c0574ac97f39a0547528d4b
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

You don't, you make your library depends on your driver, and not on kernel
exported headers. In my case I add the header to the -dev package and make
the library compilation depend on kernel module.

# kernel-module-foo.bb
FILES_${PN}-dev =3D "/usr/include/foo/linux/foo.h"

# libfoo.bb
DEPENDS =3D "kernel-module-foo"

Cheers

2017-01-30 13:37 GMT-02:00 <colin.helliwell@ln-systems.com>:

> I have a recipe which builds my own (out-of-tree) driver module =E2=80=93=
 this
> packages/installs the module fine. (It=E2=80=99s recipe has =E2=80=9Cinhe=
rit module=E2=80=9D).
>
> Now I=E2=80=99m writing a recipe to build a library which uses the driver=
. What=E2=80=99s
> needed to get the driver=E2=80=99s header file =E2=80=98exported=E2=80=99=
 so that it can be
> included by the library=E2=80=99s recipe?
>
> Thanks
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>


--=20
*"Do or do not. There is no try"*
  *Yoda Master*

--94eb2c0574ac97f39a0547528d4b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>You don&#39;t, you make your library depends on your =
driver, and not on kernel exported headers. In my case I add the header to =
the -dev package and make the library compilation depend on kernel module.<=
br><br></div># <a href=3D"http://kernel-module-foo.bb">kernel-module-foo.bb=
</a><br><div><div>FILES_${PN}-dev =3D &quot;/usr/include/foo/linux/foo.h&qu=
ot; <br><br></div><div># <a href=3D"http://libfoo.bb">libfoo.bb</a><br></di=
v><div>DEPENDS =3D &quot;kernel-module-foo&quot;<br><br></div><div>Cheers<b=
r></div></div></div><div class=3D"gmail_extra"><br><div class=3D"gmail_quot=
e">2017-01-30 13:37 GMT-02:00  <span dir=3D"ltr">&lt;<a href=3D"mailto:coli=
n.helliwell@ln-systems.com" target=3D"_blank">colin.helliwell@ln-systems.co=
m</a>&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 =
0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div link=3D"#0563C1" v=
link=3D"#954F72" lang=3D"EN-GB"><div class=3D"m_2051084174770489391WordSect=
ion1"><p class=3D"MsoNormal">I have a recipe which builds my own (out-of-tr=
ee) driver module =E2=80=93 this packages/installs the module fine. (It=E2=
=80=99s recipe has =E2=80=9Cinherit module=E2=80=9D). <u></u><u></u></p><p =
class=3D"MsoNormal">Now I=E2=80=99m writing a recipe to build a library whi=
ch uses the driver. What=E2=80=99s needed to get the driver=E2=80=99s heade=
r file =E2=80=98exported=E2=80=99 so that it can be included by the library=
=E2=80=99s recipe?<u></u><u></u></p><p class=3D"MsoNormal">Thanks<u></u><u>=
</u></p><p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p></div></div><br>--<b=
r>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail=
_signature" data-smartmail=3D"gmail_signature"><div style=3D"text-align:rig=
ht"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b=
>Yoda Master</b></i><br></div></div>
</div>

--94eb2c0574ac97f39a0547528d4b--
