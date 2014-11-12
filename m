Return-Path: <rudolf.streif@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5EC5DE00860; Wed, 12 Nov 2014 15:35:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (rudolf.streif[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.49 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f49.google.com (mail-oi0-f49.google.com
	[209.85.218.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 93AB1E005B7
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 15:35:16 -0800 (PST)
Received: by mail-oi0-f49.google.com with SMTP id u20so9416809oif.36
	for <yocto@yoctoproject.org>; Wed, 12 Nov 2014 15:35:16 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=Ck5upp49+vRgwyeLFNvO5IupDYIsL/XN+li3ySJ7jKg=;
	b=BgVRt8+D1yt8fLEJix1kefp5pdT3xaGEif3rzRAvpFCXQAB/Mvy89QJKCHGYM6KhnP
	YdxoUKcuYX1QGAWZ8HNE9MLaXFnVaQ/wrpA3KHVNSEFmzVQLNzsun1NE4NBG6IaixVoP
	Pt62dGbxYYd14HlOrtQONxb3J81Vk40HmqePI40b/SzkTuh9JipVNIvLLlgi7GtHKWyD
	qkrqHMVvFyGJS40DCvxS5/RhcRjSGuCruvzgzQt2CSXWaTCnH0JdeRu5VIpf3yyCUvp6
	C2YRA7aWF9mEPM1hhEdumXFXxRryr8E8OjjnXevvk6ajVUNAedhuKpgW1ggXXkMaCfg9
	Uwrw==
MIME-Version: 1.0
X-Received: by 10.60.144.129 with SMTP id sm1mr34941189oeb.13.1415835316418;
	Wed, 12 Nov 2014 15:35:16 -0800 (PST)
Received: by 10.182.76.4 with HTTP; Wed, 12 Nov 2014 15:35:16 -0800 (PST)
In-Reply-To: <CAByxTR_FokGs5SHExf1o55j3UeeVWA_mugg+qdxAnYcR_=+-4A@mail.gmail.com>
References: <CAByxTR_FokGs5SHExf1o55j3UeeVWA_mugg+qdxAnYcR_=+-4A@mail.gmail.com>
Date: Wed, 12 Nov 2014 15:35:16 -0800
Message-ID: <CAEKp-aYUPN5kLcU75++zH+n-9ZQkUg8_zhG-+2buht_=DSP81A@mail.gmail.com>
From: Rudolf Streif <rudolf.streif@gmail.com>
To: John Unland <opensourcejohn2112@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob and Toaster Languages.
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
X-List-Received-Date: Wed, 12 Nov 2014 23:35:25 -0000
Content-Type: multipart/alternative; boundary=047d7b339f151880760507b1d9e1

--047d7b339f151880760507b1d9e1
Content-Type: text/plain; charset=UTF-8

Hi John,

Both are written in Python. Toaster is built on the Django Python web
framework (https://www.djangoproject.com/).

Cheers,
Rudi

On Wed, Nov 12, 2014 at 1:18 PM, John Unland <opensourcejohn2112@gmail.com>
wrote:

> What is Hob and Toaster written in? Figured I would like to contribute
> maybe a deployment tool when you have created a image (I know there is
> the deployment tool for Hob but it only works for .iso and .hddimg FS)
>
> Thanks,
> John
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
*Rudolf J. Streif*

--047d7b339f151880760507b1d9e1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi John,<div><br></div><div>Both are written in Python. To=
aster is built on the Django Python web framework (<a href=3D"https://www.d=
jangoproject.com/">https://www.djangoproject.com/</a>).</div><div><br></div=
><div>Cheers,</div><div>Rudi</div></div><div class=3D"gmail_extra"><br><div=
 class=3D"gmail_quote">On Wed, Nov 12, 2014 at 1:18 PM, John Unland <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:opensourcejohn2112@gmail.com" target=3D"_b=
lank">opensourcejohn2112@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">What is Hob and Toaster written in? Figured I would like to=
 contribute<br>
maybe a deployment tool when you have created a image (I know there is<br>
the deployment tool for Hob but it only works for .iso and .hddimg FS)<br>
<br>
Thanks,<br>
John<br>
<span class=3D"HOEnZb"><font color=3D"#888888">--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><div><br></div>-- <b=
r><div class=3D"gmail_signature"><font face=3D"arial, helvetica, sans-serif=
"><b>Rudolf J. Streif</b></font><div><font face=3D"garamond, serif"><br></f=
ont></div></div>
</div>

--047d7b339f151880760507b1d9e1--
