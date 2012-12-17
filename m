Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f48.google.com (mail-la0-f48.google.com
	[209.85.215.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF49EE011AB
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 07:25:07 -0800 (PST)
Received: by mail-la0-f48.google.com with SMTP id m13so4799179lah.35
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2012 07:25:06 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=y9rBcyhCfZ6kSd3Sd2OQCeR3Kfw+OlsM7w+pbPPyt2M=;
	b=B5g0f31j1+2fIUNhbX4BDNNuJ8X0lS6zROFjkxu1RcxpoaN55Su74qiCx+N37ausI/
	K+EFAvYG22Au+x3rZUI2VMLxFwzx26dZfVsYpCzuvFDq4pDcF0P5P/5U9QeQoTU/TeGN
	BfiBUpMPGVq9WN9lTxxNty8GhXpul7WcmzL5nxGGTpa5kWAyObUl2xvwZrw3bNcdUU26
	uiNnu1pGcmfQD0C8UFywfA740Kmj87G5sn5uVgvCBwnF8mrXQ76updhTV/9GDT41/BGJ
	Vqd+CCKLzzO6s5WfrH5sIfP8BeBnwwCHoJ5OmNXxX9o4iczTlE+POnozLFZEc17/eEZt
	0uUw==
Received: by 10.112.16.69 with SMTP id e5mr6100469lbd.43.1355757905895; Mon,
	17 Dec 2012 07:25:05 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.34.10 with HTTP; Mon, 17 Dec 2012 07:24:45 -0800 (PST)
In-Reply-To: <CANsDNf39kE=R4EhFpVsGQWP1AD1VSFgNWNxw4h1A2_nSuRUkUA@mail.gmail.com>
References: <CANsDNf39kE=R4EhFpVsGQWP1AD1VSFgNWNxw4h1A2_nSuRUkUA@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Mon, 17 Dec 2012 08:24:45 -0700
X-Google-Sender-Auth: NDduDQtAaGitTbu3GGP72lzfA1Y
Message-ID: <CABcZANkkB3z_hXB8wLM4Ds5zzVLn6yhHzkoTdJqDFH9j1RiHug@mail.gmail.com>
To: Alex Gonzalez <alex@lindusembedded.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Specifying different make flags for different tasks.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 17 Dec 2012 15:25:08 -0000
Content-Type: multipart/alternative; boundary=f46d0401fb4161e13a04d10dfc6e

--f46d0401fb4161e13a04d10dfc6e
Content-Type: text/plain; charset=UTF-8

On Mon, Dec 17, 2012 at 1:36 AM, Alex Gonzalez <alex@lindusembedded.com>wrote:

> I am using EXTRA_OEMAKE to pass extra flags to make.
>
> How can I pass different flags for different tasks?
>
> In this case I am compiling an external kernel module and I need
> different make flags for the do_make_scripts and do_compile tasks. If
> I set EXTRA_OEMAKE in the recipe, all tasks use the same make flags.
>

You could use the task-<taskname> override. E.g.:

EXTRA_OEMAKE_append_task-do_compile = " FOO=bar"
-- 
Christopher Larson

--f46d0401fb4161e13a04d10dfc6e
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Mon, Dec 1=
7, 2012 at 1:36 AM, Alex Gonzalez <span dir=3D"ltr">&lt;<a href=3D"mailto:a=
lex@lindusembedded.com" target=3D"_blank">alex@lindusembedded.com</a>&gt;</=
span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":or">I am using EXTRA_OEMAKE to p=
ass extra flags to make.<br>
<br>
How can I pass different flags for different tasks?<br>
<br>
In this case I am compiling an external kernel module and I need<br>
different make flags for the do_make_scripts and do_compile tasks. If<br>
I set EXTRA_OEMAKE in the recipe, all tasks use the same make flags.</div><=
/blockquote></div><br>You could use the task-&lt;taskname&gt; override. E.g=
.:</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">EXT=
RA_OEMAKE_append_task-do_compile =3D &quot; FOO=3Dbar&quot;<br>

-- <br>Christopher Larson<br>
</div>

--f46d0401fb4161e13a04d10dfc6e--
