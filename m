Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 833B2E00E1E; Mon, 15 Jan 2018 15:42:01 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f179.google.com (mail-qk0-f179.google.com
	[209.85.220.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0DE28E006D2
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 15:42:00 -0800 (PST)
Received: by mail-qk0-f179.google.com with SMTP id c69so9681393qkg.6
	for <yocto@yoctoproject.org>; Mon, 15 Jan 2018 15:42:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=g8Axg6ahJfvzxiHQK775c9RjIKpB/HJ6nGOkwk66UvM=;
	b=Yw+LG8k5OLmKNcTYGEB55+h6jSA9zNHo4kBd4PcptTjXoJHBmw9RMhiL9GV866weWE
	eMV9yYlT+IopK3ZVOAvO+dvY398dQqOmbnzh//SrP+xcKC2khBhGr3fvtmpA1SfjJE4u
	X7S/t17ca3babK/o9d2cV19xelpEUiV9vEdCkQvu9CTIHVxmNvEs+I4cAdHjvFjIgj3j
	ewoVesXp/MqYThj1wclpxTzfNv08CtSQnXtKuomuPPQEc0oOGx6jj4lYW8sSNtpF+pkH
	GedLwB+EP0xIwIlKY+whvVsxdbsyCB2gxyx7Pird0hIX+lXkQj0g7gP7UxluUqmx3Dmp
	Aq2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=g8Axg6ahJfvzxiHQK775c9RjIKpB/HJ6nGOkwk66UvM=;
	b=LiEsS3Ts2B034UENCIa/ZMomz5WbdEIRTzgedQzaFqtbasd1tJrV9iboO9md27vsmU
	p0nDov10r7wAO8fuRAab3stE4dtmwYRhnDzB2Mz6txYBL8XJaI0sBlo43gEAReoPaV8r
	jLQWFBtCcVqhLKWf2xj1JxZlguGjHvXZ4F+AHKhtCgnhzwTG/6VxttlfgprkmDKgmhaG
	Xj1H52JWn0jCizl5m8SC1ThpUKn8Vw8PWQkj6uG2VgVv+9Igsx97ha7VmciFry8lVFPt
	QpwQ7bJK06TPkrxK876ujPZxD5IUOpFBE1dDfVJkpiqy9zow84iwzATHW0BGBY9UAtsI
	O1fw==
X-Gm-Message-State: AKGB3mIOiAikMH4ukZPwtu4dQzebX4rIDTv0AreUnJ77riEDLN65vNYo
	/YhIresWfzoyxvqhc7zL4f52HYViR+MdEnpQgKk=
X-Google-Smtp-Source: ACJfBouSLZlpfqdfy6Yplp3N6V8aw9IynCy6Qvor99/qRb9UgvspwUJg7wNCS6ZTTPuXAZ0U+p6afcA3Nu0zq595uWM=
X-Received: by 10.55.33.162 with SMTP id f34mr51504690qki.210.1516059720131;
	Mon, 15 Jan 2018 15:42:00 -0800 (PST)
MIME-Version: 1.0
Received: by 10.12.188.146 with HTTP; Mon, 15 Jan 2018 15:41:59 -0800 (PST)
In-Reply-To: <137d31ae-329e-53ff-f495-259168b787d5@balister.org>
References: <137d31ae-329e-53ff-f495-259168b787d5@balister.org>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Tue, 16 Jan 2018 00:41:59 +0100
Message-ID: <CAGAf8Lws8HfvDvMvdpgXyTvKaVpmf5a1UUTbBc2OrTpw=mgPNA@mail.gmail.com>
To: Philip Balister <philip@balister.org>
Cc: Yocto Project <yocto@yoctoproject.org>,
	"openembedded-devel@lists.openembedded.org"
	<openembedded-devel@lists.openembedded.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: OpenEmbedded developer meeting Sunday before ELC in Portland
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
X-List-Received-Date: Mon, 15 Jan 2018 23:42:01 -0000
Content-Type: multipart/alternative; boundary="001a11406a2213a61c0562d929c5"

--001a11406a2213a61c0562d929c5
Content-Type: text/plain; charset="UTF-8"

> March 11, 2108, Portland

I guess, by this date yocto community will experience release 24.7 or
similar... If?! ;-)

Zoran
_______

On Mon, Jan 15, 2018 at 11:30 PM, Philip Balister <philip@balister.org>
wrote:

> We are setting up an OpenEmbedded developer meeting on the Sunday before
> ELC. More information to follow, I just wanted to make sure everyone had
> the date before making ELC travel arrangements.
>
> March 11, 2108, Portland
>
> Philip
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a11406a2213a61c0562d929c5
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>&gt; March 11, 2108, Portland<br><br></div>I gue=
ss, by this date yocto community will experience release 24.7 or similar...=
 If?! ;-)<br><br></div>Zoran<br>_______<br></div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote">On Mon, Jan 15, 2018 at 11:30 PM, Philip Ba=
lister <span dir=3D"ltr">&lt;<a href=3D"mailto:philip@balister.org" target=
=3D"_blank">philip@balister.org</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">We are setting up an OpenEmbedded developer meeting on the Su=
nday before<br>
ELC. More information to follow, I just wanted to make sure everyone had<br=
>
the date before making ELC travel arrangements.<br>
<br>
March 11, 2108, Portland<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Philip<br>
--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div><br></div>

--001a11406a2213a61c0562d929c5--
