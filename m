Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D3F2E00D6E; Wed,  2 Mar 2016 07:58:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f179.google.com (mail-io0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4B92AE00CA6
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 07:58:08 -0800 (PST)
Received: by mail-io0-f179.google.com with SMTP id g203so263964293iof.2
	for <yocto@yoctoproject.org>; Wed, 02 Mar 2016 07:58:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Qa9X49wFEsqZk6KefO2JvCQOjSJuxy18jWjDNuJC90k=;
	b=hjU3YHdKwB3cDoMh5thJ++vtzmojeYUzZMevhhodFeqeKDcQYK/+BmwLzj/kQlZH59
	Gn3SgGX27gvvGARFKS9/rPJSRrqm6zD9fysYtmzBwGD5WZ7MOdRn8NOiCHcrYe8vqu2a
	dDvS0RB5GkiF817NODgm6HusHpmgWvbLrOMR2WxPv+IG6pZplx5XYeKJxqsiHcjNO1mm
	sGwxrAb704A0Mp8keTNDQAaVjZBEztwMN5y9XmuomvFI3pI41y+RlwHHDj9mJtELtXrA
	CtG35EljZgzeRZ+BxHbXN09F5YHK7ysZUo2jFyv7SwiO7h87OP6oCBLvB2BTZ4xDGXFL
	G2oQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Qa9X49wFEsqZk6KefO2JvCQOjSJuxy18jWjDNuJC90k=;
	b=aP74lV3k9BHOMLyYW1pySBOV7wJyVLfVWJi2WKoVY2G+L0Bw8skxbNFA6sxqE9Q6RQ
	Y9ocYeuEIDARRrurYnCJbtxSLZ9HFHDRSSBr8daEe1/vbSHaAFZdfJCyG+smBroMEdHm
	kLD1qQapZ05NsOXrXeIN9lqamczv7CxAgL0GtvJ8opQr5Db7ByUANKREwl1K7NVOnDKu
	w2G9hnAv188px8fn5iRBvWbQ9vyjIbQVGrC3y9n6jqkfLVwAenkYNOD0Jt7yBputOLOM
	PJhzdtp7CtF+HhkZwr5ydsmRN6X0DhnqB5eIAfg9w6yRaI3ELoMH/apP753RGWVtBwVU
	Jbzg==
X-Gm-Message-State: AD7BkJKRFTNjSOdCsuU6GYfbGAfV17ItHvxq0yePQ+EBZzNwsCk4rQTD2EF7mL+yZksdc3VjmfCofy7OrRzW927u
X-Received: by 10.107.134.37 with SMTP id i37mr6396073iod.148.1456934287978;
	Wed, 02 Mar 2016 07:58:07 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Wed, 2 Mar 2016 07:57:48 -0800 (PST)
In-Reply-To: <56D70862.4070509@ti.com>
References: <1456876322-11550-1-git-send-email-johannes.pointner@gmail.com>
	<CAJTo0LYtJC5ROMveR3ze8PwZjYVZrO98bJQ6MubmuPmPog2oaA@mail.gmail.com>
	<CAHvQdo1934XFM62FZfQXs8JrakeCyS-e0q+vUgE-Q+uUAVtOvA@mail.gmail.com>
	<CAJTo0LbfmyO6d3sX5VSi8hLJnWh+cE73UAY4h5Fg=+_7Pkwzog@mail.gmail.com>
	<56D70862.4070509@ti.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Mar 2016 15:57:48 +0000
Message-ID: <CAJTo0LaBkF1O0dB4ZZ-BKZ=hJk844kX_9EPzsu8qCMh7Kq5YVg@mail.gmail.com>
To: William Mills <wmills@ti.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [xcursor-transparent-theme][Patch] Add several cursors
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
X-List-Received-Date: Wed, 02 Mar 2016 15:58:12 -0000
Content-Type: multipart/alternative; boundary=001a113ed006b2b501052d12f244

--001a113ed006b2b501052d12f244
Content-Type: text/plain; charset=UTF-8

On 2 March 2016 at 15:36, William Mills <wmills@ti.com> wrote:

> How about transparent when last user input was touch-screen but normal
> when last input was mouse/touchpad?
>
> This would be done on a per DISPLAY basis not a per app basis.
>
> Of course I don't know where to put that code and if I were doing it
> today I would put it into a wayland based arch but ...
>

I guess you could do this in the window manager, calling XFixesShowCursor /
HideCursor().

Ross

--001a113ed006b2b501052d12f244
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 March 2016 at 15:36, William Mills <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:wmills@ti.com" target=3D"_blank">wmills@ti.com</a>&gt;</span> wrote:<b=
r><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:=
1px #ccc solid;padding-left:1ex"><div id=3D":1a3" class=3D"a3s" style=3D"ov=
erflow:hidden">How about transparent when last user input was touch-screen =
but normal<br>
when last input was mouse/touchpad?<br>
<br>
This would be done on a per DISPLAY basis not a per app basis.<br>
<br>
Of course I don&#39;t know where to put that code and if I were doing it<br=
>
today I would put it into a wayland based arch but ...</div></blockquote></=
div><br>I guess you could do this in the window manager, calling XFixesShow=
Cursor / HideCursor().</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a113ed006b2b501052d12f244--
