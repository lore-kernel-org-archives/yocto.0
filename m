Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AEA02E00524; Wed, 24 May 2017 10:16:53 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.181 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.161.181 listed in dnsbl.sorbs.net]
Received: from mail-yw0-f181.google.com (mail-yw0-f181.google.com
	[209.85.161.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D917E00349
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 10:16:44 -0700 (PDT)
Received: by mail-yw0-f181.google.com with SMTP id l74so92485439ywe.2
	for <yocto@yoctoproject.org>; Wed, 24 May 2017 10:16:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=8OvvcFzzztver5NV2JHbM/0lqbBggc0RCW90NMTshHk=;
	b=m69WegPeFIoTysmoS99wk5ZMB3Mz/VzZ6Qf2RHe/CaluMVDvLLNj1pI+DWJ9LTb32n
	mGcWwel6f7zp24K5B3BOJGjQlwk7r7ZWvyZ43qF4ODxBIPKGmNpFY3CgR5U0drHerN8j
	Ka5ePn3bLt5tdBfL84fmaZUqIH6pILSq1LGFIUIR3KQ3xCiVxk9lbEMjYcJiRIRUd0kr
	2pJMOzEUGlmdBpLRD7YhWTZK0/kNMI977A+CRiQwX1KZF1NxHOBDRSGTqVHkeqXn57up
	9Tfa0bfmn/+xr89xK9LOFLpdDGz2D/XnfAud4rBaF1uTpyB1uqJPKYlkh/Mp6TWbH7EY
	coRQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=8OvvcFzzztver5NV2JHbM/0lqbBggc0RCW90NMTshHk=;
	b=cXGOrlfo8T189gjmYQ/kfRdno/mpp/BUBLHhj72G+TYSuETcW6a30HOKsDlBdzC8oj
	o1g4wznw+YYUte+onxAF1QG1E+1G1+0shfucK/cceja3R/4yNhQSJpxWx7M8D20Fg+IF
	+ZcYq6io320wBRb1g/sQ7tcbHQ4utDWXf56CWI8mx1vdQ1HwLiXRMKtiYqvf2QQa6h8B
	w4nrqki0aWB2FX7lpeiZ+urYIXRDuaIFdRxGI7vxCYkQWSSP7RyGuofc+dYSXxhhnccY
	DO2tq1usXU0VycFyiyc6YxiCZ8ADyeb0Y1joNHCQajMGWdexr0TXdBedMhlD0D5Q2k4t
	yeKA==
X-Gm-Message-State: AODbwcB2XGQrCEuD5BLBoaeyxL/ndsJe/aT6pyO2jkr4QtLHMrLayITd
	k6vWGd5UIGSYt1CJ8QSLs8FUckqP4g==
X-Received: by 10.13.200.135 with SMTP id k129mr29147633ywd.243.1495646204112; 
	Wed, 24 May 2017 10:16:44 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.162.38 with HTTP; Wed, 24 May 2017 10:16:43 -0700 (PDT)
In-Reply-To: <50e98ce0-ba47-6071-062a-b2ca557c419c@linux.intel.com>
References: <1c18599c-5bf5-d382-0bba-fc7cebb4b2ce@mlbassoc.com>
	<50e98ce0-ba47-6071-062a-b2ca557c419c@linux.intel.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Wed, 24 May 2017 19:16:43 +0200
Message-ID: <CA+chaQeKQqN-6M49Myi91RBxVM5ADT8Qu=oFQkik9sqKZKEbsA@mail.gmail.com>
To: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Gary Thomas <gary@mlbassoc.com>
Subject: Re: webkitgtk2 progress bar
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
X-List-Received-Date: Wed, 24 May 2017 17:16:53 -0000
Content-Type: multipart/alternative; boundary="001a114dbd90b4b4df0550484470"

--001a114dbd90b4b4df0550484470
Content-Type: text/plain; charset="UTF-8"

> I have 22 cores here, and it is not a luxury, but an absolute necessity
to get anything done as far as oe-core maintenance goes. Webkit's
do_compile takes about half an hour - I can almost see that progress bar
move :)

Heh, you're lucky with "oe-core maintenance".

My "bitbake world" builds have few components like this, webkitgtk (used to
have webkit1, webkit2 and webkit2-efl as separate builds), 2 chromiums (x11
and wayland), cef (luckily broken and whitelisted for a while), firefox,
qtwebengine, qtwebkit. Each taking usually even more time than "simplest"
webkitgtk2.

Building world with just oe-core takes just hour(s), add few layers like me
and it's day(s).

So progress bars are nice, but I still hate looking at them.

On Wed, May 24, 2017 at 6:43 PM, Alexander Kanavin <
alexander.kanavin@linux.intel.com> wrote:

> On 05/24/2017 05:23 PM, Gary Thomas wrote:
>
>> Now [tongue-in-cheek], can someone do something about the horrendous
>> build times for such packages (webkitgtk2 can take up to 3 hours on
>> my [no so slow] build host!)?
>>
>
> In order of decreasing tongue in cheekiness.
>
> 1. Rewrite webkit in something that is not C++ - by far the most awful
> language when it comes to compile times.
>
> 2. Use icecc.bbclass to 'borrow' computing power from colleagues
> (untested, unproven).
>
> 3. Invest into a serious CPU. I have 22 cores here, and it is not a
> luxury, but an absolute necessity to get anything done as far as oe-core
> maintenance goes. Webkit's do_compile takes about half an hour - I can
> almost see that progress bar move :)
>
> Alex
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a114dbd90b4b4df0550484470
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">&gt;=C2=A0<span style=3D"font-size:12.8px">I have 22 cores=
 here, and it is not a luxury, but an absolute necessity to get anything do=
ne as far as oe-core maintenance goes. Webkit&#39;s do_compile takes about =
half an hour - I can almost see that progress bar move :)</span><div><span =
style=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-size:1=
2.8px">Heh, you&#39;re lucky with &quot;oe-core maintenance&quot;.</span></=
div><div><span style=3D"font-size:12.8px"><br></span></div><div><span style=
=3D"font-size:12.8px">My &quot;bitbake world&quot; builds have few componen=
ts like this, webkitgtk (used to have webkit1, webkit2 and webkit2-efl as s=
eparate builds), 2 chromiums (x11 and wayland), cef (luckily broken and whi=
telisted for a while), firefox, qtwebengine, qtwebkit. Each taking usually =
even more time than &quot;simplest&quot; webkitgtk2.</span></div><div><span=
 style=3D"font-size:12.8px"><br></span></div><div><span style=3D"font-size:=
12.8px">Building world with just oe-core takes just hour(s), add few layers=
 like me and it&#39;s day(s).</span></div><div><span style=3D"font-size:12.=
8px"><br></span></div><div><span style=3D"font-size:12.8px">So progress bar=
s are nice, but I still hate looking at them.</span></div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, May 24, 2017 at 6:4=
3 PM, Alexander Kanavin <span dir=3D"ltr">&lt;<a href=3D"mailto:alexander.k=
anavin@linux.intel.com" target=3D"_blank">alexander.kanavin@linux.intel.com=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span class=3D"">O=
n 05/24/2017 05:23 PM, Gary Thomas wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Now [tongue-in-cheek], can someone do something about the horrendous<br>
build times for such packages (webkitgtk2 can take up to 3 hours on<br>
my [no so slow] build host!)?<br>
</blockquote>
<br></span>
In order of decreasing tongue in cheekiness.<br>
<br>
1. Rewrite webkit in something that is not C++ - by far the most awful lang=
uage when it comes to compile times.<br>
<br>
2. Use icecc.bbclass to &#39;borrow&#39; computing power from colleagues (u=
ntested, unproven).<br>
<br>
3. Invest into a serious CPU. I have 22 cores here, and it is not a luxury,=
 but an absolute necessity to get anything done as far as oe-core maintenan=
ce goes. Webkit&#39;s do_compile takes about half an hour - I can almost se=
e that progress bar move :)<br>
<br>
Alex<div class=3D"HOEnZb"><div class=3D"h5"><br>
<br>
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</div></div></blockquote></div><br></div>

--001a114dbd90b4b4df0550484470--
