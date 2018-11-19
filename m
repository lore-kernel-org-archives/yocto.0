Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 56350E00C1C; Mon, 19 Nov 2018 08:29:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.46 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ua1-f46.google.com (mail-ua1-f46.google.com
	[209.85.222.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC861E00BBD
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 08:29:12 -0800 (PST)
Received: by mail-ua1-f46.google.com with SMTP id z23so10682237uam.1
	for <yocto@yoctoproject.org>; Mon, 19 Nov 2018 08:29:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=I2bg5R1uDYtP0Zb/uzD62zTaDj53/sblRHUCK3t/BD0=;
	b=XxRSc0idRcvOg48Dl7rdkxc0cufojBTaOeKhVgZxbpSDQqDK+t/CXjf9R1x6Je6rqJ
	OomM/j5hDR59BpgN/6XN4CilDZCBlPsdMGtnuokja6QunwYP9y9cEZDe8DAH7w9pEUfx
	j0fkO7Lko23kZ7fczoqokwwTxtegZnrsQJEWdF1iFPz6+1ws3HuEeHK7PWV3yafnhCtK
	5mQmr79veiUR1GXLF7cviJhx5x3PJIUvULCkv2CyOaJ8ssmHREMVEaAhqfb2JvdcilnF
	6dp9/Ke1M51tDgO3VSfwNafRnJLutgpCzfgrxp5fzTUYjNhIoRNWB4t9JSScMlKOS3gB
	cHDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=I2bg5R1uDYtP0Zb/uzD62zTaDj53/sblRHUCK3t/BD0=;
	b=HP2z7NbpwdGPsuIizVZmUlcOWew8l+kr/mOZvufM3qJn6VvUMx8b408jnVXR9oV4Fh
	Xx1+i7T2ikNbBCSc9HRANPwEDTyCoNvyExenW9arNyhIjywN3xv2Ra3QgVGXUk2VMJQc
	t6+utTtmeAIg5PHL63WawHdJz0PEZRwe2gHk5PusyvK7SXaRJu3HmnP5xUMf6OjR5VyU
	s3flK0pNHpWHn/ige0Z7co6olN6AB6rjQbar/ensDRjo8E7xJMibsd/IWQFLV409Ff98
	EfxQXSR3MCLpT6+g9nRz7lWjcmLSEIw0Dy3CJ9yigW8zkvu6WKJXLN2dIxbMt1Ov6NKC
	F5NQ==
X-Gm-Message-State: AGRZ1gJZjD58ItVO1mI9+KhI+B2LTJfXYrRxjP28yYjl2ylcv1kAj6am
	QBOosOPS3a0i81yuR85NFzwvZ+RIihbFkYs6B0gxIg==
X-Google-Smtp-Source: AJdET5cPPE1mPar1qrcZq5I9VmPV8kHjzgkRI8nmXxGttxdzumOuMOxxGZsqnZA7LbZiM0DHOUZJlDgrQZbzskCxRa4=
X-Received: by 2002:ab0:1058:: with SMTP id g24mr9746408uab.58.1542644951705; 
	Mon, 19 Nov 2018 08:29:11 -0800 (PST)
MIME-Version: 1.0
References: <1542381485-27805-1-git-send-email-fabien.lahoudere@collabora.com>
In-Reply-To: <1542381485-27805-1-git-send-email-fabien.lahoudere@collabora.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Mon, 19 Nov 2018 18:27:41 +0200
Message-ID: <CAK18fxH=1gBvoTD3fA6B3Z0=cX_43ycMZNUHzQomoN8Z8VYFbg@mail.gmail.com>
To: fabien.lahoudere@collabora.com
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] CAN: Add Pican2 support
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
X-List-Received-Date: Mon, 19 Nov 2018 16:29:14 -0000
Content-Type: multipart/alternative; boundary="0000000000005c81e8057b070439"

--0000000000005c81e8057b070439
Content-Type: text/plain; charset="UTF-8"

Hi Fabien,

On Fri, Nov 16, 2018 at 5:29 PM Fabien Lahoudere <
fabien.lahoudere@collabora.com> wrote:

> In order to make Pican 2 work, we :
> - add mcp2515.dto to the overlay list
> - add a variable to enable it in local.conf
> - create a udev rule to mount interface
>

>
> http://skpang.co.uk/catalog/pican2-canbus-board-for-raspberry-pi-23-p-1475.html
>
> Signed-off-by: Fabien Lahoudere <fabien.lahoudere@collabora.com>
>

Could you please submit this PR in github? Check the readme for more
information.
--
Andrei Gherzan

--0000000000005c81e8057b070439
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Fabien,<br><div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Fri, Nov 16, 2018 at 5:29 PM Fabien Lahoudere &lt;<a href=3D"ma=
ilto:fabien.lahoudere@collabora.com">fabien.lahoudere@collabora.com</a>&gt;=
 wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">In order to make Pican 2 wo=
rk, we :<br>
- add mcp2515.dto to the overlay list<br>
- add a variable to enable it in local.conf<br>
- create a udev rule to mount interface <br></blockquote><blockquote class=
=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padd=
ing-left:1ex">
<br>
<a href=3D"http://skpang.co.uk/catalog/pican2-canbus-board-for-raspberry-pi=
-23-p-1475.html" rel=3D"noreferrer" target=3D"_blank">http://skpang.co.uk/c=
atalog/pican2-canbus-board-for-raspberry-pi-23-p-1475.html</a><br>
<br>
Signed-off-by: Fabien Lahoudere &lt;<a href=3D"mailto:fabien.lahoudere@coll=
abora.com" target=3D"_blank">fabien.lahoudere@collabora.com</a>&gt;<br></bl=
ockquote><div><div><br></div><div>Could you please submit this PR in github=
? Check the readme for more information.<br></div><div><div>--</div>Andrei =
Gherzan</div></div><br></div></div></div>

--0000000000005c81e8057b070439--
