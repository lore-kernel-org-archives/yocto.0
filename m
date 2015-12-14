Return-Path: <federicobriata@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EA788E00AA5; Mon, 14 Dec 2015 08:42:36 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (federicobriata[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f52.google.com (mail-lf0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 05CCBE002F9
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 08:42:33 -0800 (PST)
Received: by lfed137 with SMTP id d137so74153191lfe.3
	for <yocto@yoctoproject.org>; Mon, 14 Dec 2015 08:42:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=R8m3avoOFmh5F7QxpwHy/9DArCw8ZbrlRB0lpUpL1QQ=;
	b=whAtAKns5PDA81cfxvBPc04aFFpYjAPk99rJfuoX6Dq9Is9Esc7IncME6bZitiZmuf
	qsWkCwDnJLs19EuF3f+ghDcXMQzcsKUkejvR9Dknov1wDARGYU5BnKGmBmhAwTng7hUG
	TKf4GgzX6Ru7Xdl2OeQY180q9MaExsEvxvTLqJDXrkfYzeeylCnDCidjjQ2axMPYBzYl
	S8UZGmSrJ6koimX1XrBAPoAyFRCH5KZbe944/33m9XPg/RyRxUQsGKmjXGc6g9v+KQb3
	bZ236QdnTk1rgXgRyjnlRCePDxWzWnrsLEkGwiDKd515hwMiOjnUE1oBN7rR5IenmiQK
	DSBQ==
MIME-Version: 1.0
X-Received: by 10.25.77.74 with SMTP id a71mr4203008lfb.82.1450111350067; Mon,
	14 Dec 2015 08:42:30 -0800 (PST)
Received: by 10.112.151.42 with HTTP; Mon, 14 Dec 2015 08:42:30 -0800 (PST)
In-Reply-To: <CD8F00E1-5119-4467-BAB7-FDBED90619F0@gmail.com>
References: <CA+KKcbkzeEsDO63iNESUbDCAQD7R41mTzPAN65RkbFNMuq3+zA@mail.gmail.com>
	<CD8F00E1-5119-4467-BAB7-FDBED90619F0@gmail.com>
Date: Mon, 14 Dec 2015 17:42:30 +0100
Message-ID: <CA+KKcbnaG=wQU0ANCUbCQHpHT=fmwbjkdO5gqMN-xxAZWj-xBQ@mail.gmail.com>
From: Federico Pietro Briata <federicobriata@gmail.com>
To: Jens Rehsack <rehsack@gmail.com>, yocto@yoctoproject.org
Subject: Re: [meta-java] openjdk-8 fail to build
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
X-List-Received-Date: Mon, 14 Dec 2015 16:42:37 -0000
Content-Type: multipart/alternative; boundary=001a1141e0f0e7db700526de5b47

--001a1141e0f0e7db700526de5b47
Content-Type: text/plain; charset=UTF-8

Hi Jens

2015-12-13 10:03 GMT+01:00 Jens Rehsack <rehsack@gmail.com>:

>
> > Am 11.12.2015 um 18:16 schrieb Federico Pietro Briata <
> federicobriata@gmail.com>:
>
> > | ERROR: no configure script found at
> /home/federico/yocto/imx6/R6.0/build-imx6-mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8bed1496ff2/configure
>
> Are you on poky/master or cherry-picked fe506edd?


I'm on poky/master Tag: daisy-11.0.2
Hash: e3dd621197548b4cf64988e757e9bc926082db73

regards
Federico

--001a1141e0f0e7db700526de5b47
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Jens<br><div class=3D"gmail_extra"><br><div class=3D"gm=
ail_quote">2015-12-13 10:03 GMT+01:00 Jens Rehsack <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:rehsack@gmail.com" target=3D"_blank">rehsack@gmail.com</a>&=
gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0p=
x 0.8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex"><span clas=
s=3D""><br>
&gt; Am 11.12.2015 um 18:16 schrieb Federico Pietro Briata &lt;<a href=3D"m=
ailto:federicobriata@gmail.com">federicobriata@gmail.com</a>&gt;:<br>
<br>
&gt; | ERROR: no configure script found at /home/federico/yocto/imx6/R6.0/b=
uild-imx6-mx6quad/tmp/work/x86_64-linux/openjdk-8-native/72b05-r0/jdk8u-e8b=
ed1496ff2/configure<br>
<br>
</span>Are you on poky/master or cherry-picked fe506edd?</blockquote><div><=
br></div><div>I&#39;m on poky/master Tag: daisy-11.0.2<br>Hash: e3dd6211975=
48b4cf64988e757e9bc926082db73<br></div></div><br></div><div class=3D"gmail_=
extra">regards<br></div><div class=3D"gmail_extra">Federico<br></div></div>

--001a1141e0f0e7db700526de5b47--
