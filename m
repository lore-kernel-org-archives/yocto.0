Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3773BE00405; Mon, 30 Jan 2017 12:09:30 -0800 (PST)
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
	*      [209.85.216.169 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DA9EE0030B
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 12:09:29 -0800 (PST)
Received: by mail-qt0-f169.google.com with SMTP id w20so145926072qtb.1
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 12:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=Ded+ySBEufqzQQV2xjbUdLDTxiLqA7PNWuL9xos5HK8=;
	b=kQo0bp7jPdrrcuwEm5Rhbdxvw8jU12d0xvXLC14A8uHQNt02JhdsUy6h860CrrJINH
	TPXB8CvS7PAvF8tDx9BpICrmoq1qzM41pPZm/bkvtJp7Vcf97aEXpG+/VwKigMaz9Ks3
	fQ5B0eoorOFNXC7McToXGEwXatyfxYEdMCzifUZsiHWzIAJ9G9nESmECwNwNeqxKHExz
	k04Jbp0FtFBiiURtNbDcX94Cm2MIfCLaOVG7MsQE4/Yjv8ZR849HzZ6NE6VjrBLDC+/B
	t4PX7Pf0PFgCIDBDHgBDi6XKXjdvP6Q9c4qY5oFwfaiay3WXTqf9+tiD5VulXhx6eIa6
	NoKA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=Ded+ySBEufqzQQV2xjbUdLDTxiLqA7PNWuL9xos5HK8=;
	b=uLV1UJOktyamIa5Oj7oxS0fgorZ3mbLWKIn18QGcrHgm2jhI/q0W5IqdjE+W8d+vBh
	W5fKJUtvedSpYOwwoUljKvTWtQ5J9L/NVjPkrwVkkidNAGYASf/cLy7SEh1zl2KVh+jf
	oYHU6PagPtzP/8wcZNtkmbE7hY34LTzr8V93klVmnht+n6i4QdIz6pWncva9Oz4ynG3y
	V+jPzsh8ewq56bF5mRgZ+puoPMvRKozQg5GBlgHIFT+1rjExuoUENmclA9eTiKL+uC6c
	4OPXMgAyUgRkYYsVMG3GXZRNoTtEutkqVZLv3rFd8xRi4TCsVl2FTHp9LQmkczK9mPuZ
	8F0w==
X-Gm-Message-State: AIkVDXI4Pl4c2p6VTvQiv7wQpjuscav68jk0kVkE5SGDfcXDXyKKJfOLyZ7OJEI/btACi6z3prtuEXkLu154vw==
X-Received: by 10.237.53.164 with SMTP id c33mr23215864qte.121.1485806968183; 
	Mon, 30 Jan 2017 12:09:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.96.17 with HTTP; Mon, 30 Jan 2017 12:09:27 -0800 (PST)
In-Reply-To: <CAF3SDA6VazzB3w8s6egf6qfjOqV9FuCe4rW5DgzAvwCGzLXegA@mail.gmail.com>
References: <CAF3SDA6VazzB3w8s6egf6qfjOqV9FuCe4rW5DgzAvwCGzLXegA@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Mon, 30 Jan 2017 18:09:27 -0200
Message-ID: <CAF3SDA4A65EvdF8qCv4UqsR8++vREmrz02X=5-9b=eCvnt--kw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Test packages and staging area conflicts
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
X-List-Received-Date: Mon, 30 Jan 2017 20:09:30 -0000
Content-Type: multipart/alternative; boundary=001a11c110fc8b21300547556402

--001a11c110fc8b21300547556402
Content-Type: text/plain; charset=UTF-8

I'm using this little hack:

do_install[depends] = "${RCONFLICTS_${PN}}:do_cleansstate"

But this seems not right...

Regards,

2017-01-30 17:56 GMT-02:00 Daniel. <danielhilst@gmail.com>:

> I've been using testing packages so that they can be built from SCM
> testing branches and quickdly deployed to package repository. This makes
> new testing releases avaible to software developers and they can installs
> it by using package manager. The testing packages are the same as
> production packages except that they don't go to the image, they conflict
> with production packages (so asking for installing removes the production
> package as expected) and they have a -text suffix.
>
> The problem with this aproach is that the testing and production packages
> conflict so I face this warnings at each compilation of any of both:
>
> WARNING: The recipe foo-test is trying to install files into a shared area
> when those files already exist.
>
> And buil
>
> How to aproach that? Am I doing something stupid?
>
> Regards,
>
> --
> *"Do or do not. There is no try"*
>   *Yoda Master*
>



-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a11c110fc8b21300547556402
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I&#39;m using this little hack:<br><br></di=
v>do_install[depends] =3D &quot;${RCONFLICTS_${PN}}:do_cleansstate&quot;<br=
><br></div>But this seems not right...<br><br></div>Regards,<br></div><div =
class=3D"gmail_extra"><br><div class=3D"gmail_quote">2017-01-30 17:56 GMT-0=
2:00 Daniel. <span dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail.com"=
 target=3D"_blank">danielhilst@gmail.com</a>&gt;</span>:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr"><div><div><div>I&#39;ve been using testing=
 packages so that they can be built from SCM testing branches and quickdly =
deployed to package repository. This makes new testing releases avaible to =
software developers and they can installs it by using package manager. The =
testing packages are the same as production packages except that they don&#=
39;t go to the image, they conflict with production packages (so asking for=
 installing removes the production package as expected) and they have a -te=
xt suffix.<br><br></div>The problem with this aproach is that the testing a=
nd production packages conflict so I face this warnings at each compilation=
 of any of both:<br><br>WARNING: The recipe foo-test is trying to install f=
iles into a shared area when those files already exist.<br><br></div><div>A=
nd buil<br></div><div><br></div>How to aproach that? Am I doing something s=
tupid?<br><br></div>Regards,<span class=3D"HOEnZb"><font color=3D"#888888">=
<br clear=3D"all"><div><div><div><div><br>-- <br><div class=3D"m_3378944400=
428340572gmail_signature"><div style=3D"text-align:right"><i>&quot;Do or do=
 not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master</b></i><=
br></div></div>
</div></div></div></div></font></span></div>
</blockquote></div><br><br clear=3D"all"><br>-- <br><div class=3D"gmail_sig=
nature" data-smartmail=3D"gmail_signature"><div style=3D"text-align:right">=
<i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yod=
a Master</b></i><br></div></div>
</div>

--001a11c110fc8b21300547556402--
