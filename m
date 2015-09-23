Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 563B2E00F11; Wed, 23 Sep 2015 05:05:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qk0-f169.google.com (mail-qk0-f169.google.com
	[209.85.220.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BC0BE00EA6
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 05:05:22 -0700 (PDT)
Received: by qkap81 with SMTP id p81so15994191qka.2
	for <yocto@yoctoproject.org>; Wed, 23 Sep 2015 05:05:21 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=fKkrtX8qUdJmHF6N91yBwgcBUB7twIo0BWQAT+xezDU=;
	b=fgAD7gxp74CRGCtspVZEXFIVP6qA2iEZxq3EolSv8GUgIF9WsihfY/ArOKCnqkVMo1
	oTz/KM/UD3yv/7O/8vD+W4+sQCkE/K+JtgSkirfQveIyFzKmG8+JGNyKInvHRXxH9QHo
	r/6f1JBf0rchlyEhfItpvkHxph51lLRMa5cRN47QyJzRdDqHqPP42nxMprip+pNDO5xJ
	JckfR/7m3NKaJkc5I/zmCuc4x5xc4lyAFAEHmD1ZKCUqeimaq+Bv7sRpfT94QxpcUK4/
	Z1VzCpCvpB6gMJ0MkMOz6Ynwi9U5AnbMCoWOvHXtQs9k+bOkdX1geu+YX4vUBR3K9fji
	6dpA==
X-Gm-Message-State: ALoCoQlvGLpYM3eOM3YJBs5YHU/o4KGIx2+/e7w0EzOrrUVi1+VbMdhbxXdW4YIc/kAkBfnAz1BH
X-Received: by 10.55.195.86 with SMTP id a83mr35256713qkj.72.1443009921531;
	Wed, 23 Sep 2015 05:05:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.94.86 with HTTP; Wed, 23 Sep 2015 05:05:02 -0700 (PDT)
In-Reply-To: <CAJv4cO0rD_wNZDYAMxJdD2wJRUs6omi99j26FSj=+fzgJyWGbw@mail.gmail.com>
References: <CAJv4cO0rD_wNZDYAMxJdD2wJRUs6omi99j26FSj=+fzgJyWGbw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 23 Sep 2015 13:05:02 +0100
Message-ID: <CAJTo0LbvQ9A=Lm5DBKLvSPFwMAJdF8Fb7gKLMe2ygcHETjWe7A@mail.gmail.com>
To: "Mark O'Donovan" <shiftee@eircom.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Webkit2gtk opengl issue
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
X-List-Received-Date: Wed, 23 Sep 2015 12:05:26 -0000
Content-Type: multipart/alternative; boundary=001a1142b950c7e3a4052068edf4

--001a1142b950c7e3a4052068edf4
Content-Type: text/plain; charset=UTF-8

On 23 September 2015 at 12:53, Mark O'Donovan <shiftee@eircom.net> wrote:

> I am working on an am335x based project, with a webkitgtk
> program on the screen, displaying a simple webpage.
>
> I want to use a standard yocto kernel, which I believe
> means I must do without the SGX hardware acceleration
> until an open-source driver is available.
>
> Thus in fido I had added opengl to DISTRO_FEATURES_remove
> This worked with webkitgtk 1.x
>
> The webkitgtk 2.x recipe  also specifies opengl as optional.
> However it depends on gtk+3 which depends on libepoxy
> which requires virtual/egl.
>
> Is this an oversight??
>
> Is it possible to build webkit 2.x without opengl??
>

You can't builf GTK+3 without OpenGL right now, so you'll have to add
opengl to DISTRO_FEATURES and live with having mesa installed.

I'm hoping that someone contributes a "null" backend to libepoxy so we can
build GTK+3 without OpenGL in the future, but nobody has done that yet.

Ross

--001a1142b950c7e3a4052068edf4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 September 2015 at 12:53, Mark O&#39;Donovan <span dir=3D"ltr">&lt;<a =
href=3D"mailto:shiftee@eircom.net" target=3D"_blank">shiftee@eircom.net</a>=
&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0=
 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div id=3D":3bm" class=
=3D"a3s" style=3D"overflow:hidden">I am working on an am335x based project,=
 with a webkitgtk<br>
program on the screen, displaying a simple webpage.<br>
<br>
I want to use a standard yocto kernel, which I believe<br>
means I must do without the SGX hardware acceleration<br>
until an open-source driver is available.<br>
<br>
Thus in fido I had added opengl to DISTRO_FEATURES_remove<br>
This worked with webkitgtk 1.x<br>
<br>
The webkitgtk 2.x recipe=C2=A0 also specifies opengl as optional.<br>
However it depends on gtk+3 which depends on libepoxy<br>
which requires virtual/egl.<br>
<br>
Is this an oversight??<br>
<br>
Is it possible to build webkit 2.x without opengl??</div></blockquote></div=
><br>You can&#39;t builf GTK+3 without OpenGL right now, so you&#39;ll have=
 to add opengl to DISTRO_FEATURES and live with having mesa installed.</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">I&#39;m ho=
ping that someone contributes a &quot;null&quot; backend to libepoxy so we =
can build GTK+3 without OpenGL in the future, but nobody has done that yet.=
</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross<=
/div></div>

--001a1142b950c7e3a4052068edf4--
