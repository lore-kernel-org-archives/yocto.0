Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5582DE00A80; Mon, 13 Mar 2017 06:27:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.175 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DC374E00A64
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 06:27:21 -0700 (PDT)
Received: by mail-qk0-f175.google.com with SMTP id y76so222107292qkb.0
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 06:27:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=UFtGdXWI43T1Hr2eLC+l5eGjTSu/95UU0F2xfpEACxk=;
	b=y+tdFaGcf2VsCcv9ZssGoqNGcykN3ZbYf0HZjjFj1CLnMwibt8gbgqXn/c1tTGBPIO
	WGS3wiGx8uJDjF247Ks66qAKgVOYbOo7WMcqfoyTgNIdpVHAJj9sIahBp7egS50ucnVd
	rFmWWwk6Gwo2+k3CCWkX0Q5ii2vLFolAI7xVe5vNTBLJX6UaeNKA88jrXV8MvWZLlqbw
	Exg02S0tdMC8Ti6qpHZPta4s1YlgfpuT+iL+Gx5RVLfy8UTRcZ/J2OP3ETzLAKwYrknS
	Wixn6nuFdvddAqaGYyeKgBt62ceH3TtYAibHzQgJS8NKnrVsnx02+0TE06vIc56MEUNz
	p+QA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=UFtGdXWI43T1Hr2eLC+l5eGjTSu/95UU0F2xfpEACxk=;
	b=mP1x2IsTS/IwW3EE9nt+wzshqWlJdtxaUwae90LKB0f683parcQ7oTg1aLSjw+/FFK
	zaHRzgIelFYOwiT267JZCiCF7sjHe7n/zBu2+hwxF+R0xw3VX6jCIVXrLUvTMeNK2LCN
	DdrROEbsZ/Mkr6tJAO/Wd9xOIGYQpKh6pBmZtrrjauqVDfGbi6DT0rP+XlTEKL+HYo0m
	G+F3Mf/D9tcB2R1CuxYTTuh7rhiFz/qt6fcMlF6XPZq4cjgJMuafHg8Syh0RhFic0Qfg
	rnOqCV95lSIRcCEszuDkdPGk1kDfVUV/oaNKpgKNRyLj7CEUdR8P8ZCPO5IKrbN93H3H
	aRcA==
X-Gm-Message-State: AMke39leECYRMdDesrD0QxZyG8aIpOiN/NKJGl+FtSeEBpc0lqv9DreW2g5PXCBZTKZEqitdPJQBQ16FdQHkVAH5
X-Received: by 10.55.1.134 with SMTP id u6mr34966648qkg.36.1489411640885; Mon,
	13 Mar 2017 06:27:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Mon, 13 Mar 2017 06:27:00 -0700 (PDT)
In-Reply-To: <CALDHXteSY2m8mwzM2nE-WyQKimR31QXSFNx-bnKJjoPA1zYB=w@mail.gmail.com>
References: <CALDHXteSY2m8mwzM2nE-WyQKimR31QXSFNx-bnKJjoPA1zYB=w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 13 Mar 2017 13:27:00 +0000
Message-ID: <CAJTo0LZzf1Ge1_jD-J326M3v+d_DvRGjuZJCYUMhyR1twMmRTw@mail.gmail.com>
To: ravikiran j <ravikiran.j@mistralsolutions.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: GUI supported by Yocto project
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
X-List-Received-Date: Mon, 13 Mar 2017 13:27:23 -0000
Content-Type: multipart/alternative; boundary=001a114046c4c811e6054a9cabb4

--001a114046c4c811e6054a9cabb4
Content-Type: text/plain; charset=UTF-8

On 13 March 2017 at 13:22, ravikiran j <ravikiran.j@mistralsolutions.com>
wrote:

> what are all different GUI supported by  the Yocto project ?
>

That's quite a vague question.  A short answer is that oe-core supports X11
and Wayland, has the GTK+ 2 and GTK+3 toolkits, and there are layers for
Qt4 and Qt5.

More are available, if there's a particular library you're after then
search https://layers.openembedded.org for it.

Ross

--001a114046c4c811e6054a9cabb4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 13 March 2017 at 13:22, ravikiran j <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:ravikiran.j@mistralsolutions.com" target=3D"_blank">ravikiran.j@mistral=
solutions.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb=
(204,204,204);border-left-style:solid;padding-left:1ex"><div>what are all d=
ifferent GUI supported by=C2=A0 the Yocto project ?<br></div></blockquote><=
/div><br>That&#39;s quite a vague question.=C2=A0 A short answer is that oe=
-core supports X11 and Wayland, has the GTK+ 2 and GTK+3 toolkits, and ther=
e are layers for Qt4 and Qt5.</div><div class=3D"gmail_extra"><br></div><di=
v class=3D"gmail_extra">More are available, if there&#39;s a particular lib=
rary you&#39;re after then search=C2=A0<a href=3D"https://layers.openembedd=
ed.org">https://layers.openembedded.org</a> for it.</div><div class=3D"gmai=
l_extra"><br></div><div class=3D"gmail_extra">Ross</div></div>

--001a114046c4c811e6054a9cabb4--
