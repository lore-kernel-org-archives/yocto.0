Return-Path: <srifenbark@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5F2B1E0090C; Mon, 11 Mar 2019 08:47:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (srifenbark[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.49 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ed1-f49.google.com (mail-ed1-f49.google.com
	[209.85.208.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BDE42E00872
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 08:47:31 -0700 (PDT)
Received: by mail-ed1-f49.google.com with SMTP id p27so4441405edc.6
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2019 08:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=oDUqwZQ47myq7UnZfF1xyt5VrgHuOYam0BvdkVepJJo=;
	b=iv5AiAJWwBp2S1Mtxg/bCn6NYYty6WCTnIhRD6fGSSv77pFyTIvfdmHecNYvJn2mWj
	BYOsn65BUTgLQ6q6JdAZc69HZ1jLkK+TDo66sbda7CuhDMxq4Y7Dh6Pw03C6W8p3n+uP
	rvqg7vMPHCTijlnZ2bdjZeu2RJlaugZRA1IMlG/3+XFjwfSYI58RTJAsRlmhsFRqx+vl
	Yh8H5SLzbXzh8hTHC8w4DSWNm/eSjNDvPyBzaTjOIBgpm0/Blb/nXOtstCuDiUmKXorM
	sDKVWtyFhLNX1qd9yjeuyJAZ1j71UTcn0vy7590CvIzcyVh33bEFnFOIibChVZa1tujk
	mRzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=oDUqwZQ47myq7UnZfF1xyt5VrgHuOYam0BvdkVepJJo=;
	b=KOEIC8YCxxHUVW1NBMq16TrDX+Q0LlBvpJGwuF1ziSUCtHvLuJW8pfRtUYMOX8cu7w
	lTT3SPqrLaUBK6dGgXeum55EMIbZfDNsmMUiVz8U8WZfsQv8UgaFlKr+IqAKT3kq0yAD
	rkW+KxuVWQmYgEGhazwyEfsqeowl3Gmmzx7hHt15oqBV0uMj4jCjuEWC/TENd1XNKrYj
	5csar9b2VyAhGqoy8T2WEElp68QeFpFcfwZptM1T7SJzBcfNlciOP8kXl9kqa8um2l7Y
	0V0yZKs4qi8hibwxBtxknAi8POJtjplKCIJ9aKhQiXG7fjZhgCpjnq7uUGTC3ompdyc3
	XrGw==
X-Gm-Message-State: APjAAAXwLrSmd2Oei6SbGbgELp1wSzABa0DALcTKmXzBW6zGI/Fm6YSB
	9vZaqXEIc/iUh2uauvWrQtx8l96E3UtymQVQwx4=
X-Google-Smtp-Source: APXvYqy3ycT0205emu75zj1RQXx1extQAHPuKL10SyEXx6q+NEbGT8tXklzhCmOkyNkbxhbSlTIv4JR3ujZw/ylOVo0=
X-Received: by 2002:a50:978e:: with SMTP id e14mr42749686edb.234.1552319250913;
	Mon, 11 Mar 2019 08:47:30 -0700 (PDT)
MIME-Version: 1.0
References: <CAGk+JegHkafvb7NnPs8V5=fWMM_9GKj3Rk1NHSa3kNDpJi70sw@mail.gmail.com>
In-Reply-To: <CAGk+JegHkafvb7NnPs8V5=fWMM_9GKj3Rk1NHSa3kNDpJi70sw@mail.gmail.com>
From: Scott Rifenbark <srifenbark@gmail.com>
Date: Mon, 11 Mar 2019 09:47:18 -0600
Message-ID: <CAFNP8OuuixdStE_LrRLhXbAtW-XuhE_2ehqzPucFL5iETvQCNA@mail.gmail.com>
To: rahul chauhan <rahulchauhankitps@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Guidance to start yocto project.
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
X-List-Received-Date: Mon, 11 Mar 2019 15:47:32 -0000
Content-Type: multipart/alternative; boundary="000000000000875d940583d37d3e"

--000000000000875d940583d37d3e
Content-Type: text/plain; charset="UTF-8"

H Rahul,

I would start with the
https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html
manual.  Gets you up and running.

Scott

On Mon, Mar 11, 2019 at 9:32 AM rahul chauhan <rahulchauhankitps@gmail.com>
wrote:

> Hello,
>
> I am beginner with yocto project and i want to learn the yocto project and
> start working on it.
> can you please guide how can i proceed step by step and  what are the
> prerequisites?
>
> Thanks and Regards
> Rahul Chauhan
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000875d940583d37d3e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>H Rahul, <br></div><div><br></div><d=
iv>I would start with the <a href=3D"https://www.yoctoproject.org/docs/2.6.=
1/brief-yoctoprojectqs/brief-yoctoprojectqs.html">https://www.yoctoproject.=
org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html</a> manual.=
=C2=A0 Gets you up and running.</div><div><br></div><div>Scott<br></div></d=
iv></div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_att=
r">On Mon, Mar 11, 2019 at 9:32 AM rahul chauhan &lt;<a href=3D"mailto:rahu=
lchauhankitps@gmail.com">rahulchauhankitps@gmail.com</a>&gt; wrote:<br></di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div>H=
ello,</div><div></div><div><br></div><div>I am beginner with yocto project =
and i want to learn the yocto project and start working on it. <br></div><d=
iv> can you please guide how can i proceed step by step and=C2=A0 what are =
the prerequisites? </div><div><br></div><div>Thanks and Regards</div><div>R=
ahul Chauhan<br></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--000000000000875d940583d37d3e--
