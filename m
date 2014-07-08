Return-Path: <rstreif@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8AEC4E00566; Tue,  8 Jul 2014 15:42:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.174 listed in list.dnswl.org]
Received: from mail-ig0-f174.google.com (mail-ig0-f174.google.com
	[209.85.213.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 56FC3E00547
	for <yocto@yoctoproject.org>; Tue,  8 Jul 2014 15:42:50 -0700 (PDT)
Received: by mail-ig0-f174.google.com with SMTP id c1so1225470igq.13
	for <yocto@yoctoproject.org>; Tue, 08 Jul 2014 15:42:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=/IjIG4Qnosqt0u+kIzCWPssNLgGWJr+lXwMe6kFpgy0=;
	b=H8dpcB24Eg21pyZu4wVgqrdU0ubP6k2u+lDnilikag4FK228Dbebel+uDFGmOU0zrB
	16ZKc99kSHnkQUE7YwyMjfw9ZjbmYf+5WRSPNeoB4WRCGGIoGbR1yBqAeP9IUTfVljH0
	tMHU4K2c8JfeeJeekx87D1gpMBU7HntLkYNBw=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=/IjIG4Qnosqt0u+kIzCWPssNLgGWJr+lXwMe6kFpgy0=;
	b=TcwKpz+fQa80wNz2okCP0h8txzK2Am4cY9SpQCc2fNF32SfgnbyUfBauE2LNgm00+7
	/OvRNZmIFMgCh/qgtgVCVH9dViTw/OggvNqJHmivknwYdP/wXJRMs1AvTnjNnw8izlCQ
	/bEqbefPU9v/pdahZYwd7NiJMO1ge5ysKlEUq8+IXfG/YgHY1P0evghRgRz7t+A4VE+a
	3QfWD9uKxSgOUarfQo8m0kaOc/l0DAotAhQC7L903YDomDtXOIfpoK/bFwlSudCcM+ev
	8OkCrrarslh0iJKy/qeDBrSIRJxuEOhFFBq0+aFVSffSOFkFb6jfcocXF2eTSEpLMfji
	/ScQ==
X-Gm-Message-State: ALoCoQmhzf6WvR7CCAzZR9q3UNzHv9oa+CfUyzqno2cdX+kiZceHR8ikfCBX03gu7yxq1RuwH4lt
MIME-Version: 1.0
X-Received: by 10.50.152.98 with SMTP id ux2mr7595410igb.27.1404859370078;
	Tue, 08 Jul 2014 15:42:50 -0700 (PDT)
Received: by 10.50.225.73 with HTTP; Tue, 8 Jul 2014 15:42:50 -0700 (PDT)
In-Reply-To: <CAGM0ZdTnjLQXoh6aFeURUv1N_7-gga7wLgPg-JMjaB2-jgVWRQ@mail.gmail.com>
References: <CAGM0ZdTnjLQXoh6aFeURUv1N_7-gga7wLgPg-JMjaB2-jgVWRQ@mail.gmail.com>
Date: Tue, 8 Jul 2014 15:42:50 -0700
Message-ID: <CA+gsK-pcPST5iGiVmfVQt+CPMeKfkci_P3Zn2J-onFNj7CNGCg@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: Bharath Chandra <ellurubharath29@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: IMAGE_INSTALL
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
X-List-Received-Date: Tue, 08 Jul 2014 22:42:55 -0000
Content-Type: multipart/alternative; boundary=089e0149baaab69c3304fdb64f8b

--089e0149baaab69c3304fdb64f8b
Content-Type: text/plain; charset=UTF-8

Hi Bharath,

IMAGE_INSTALL += " \

>         coreutils \
> "
>

You may want to post your entire recipe.


> in my image file. But, I do not see any coreutils package in tmp folder.
> Let me know if my understanding is wrong.
>
>
It should be in tmp/work/i586-poky-linux/coreutils/ if you are building for
x86.

Did you check your image too?


Best regards,
Rudi

--089e0149baaab69c3304fdb64f8b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi Bharath,<br><br></div>IMAGE_INSTALL +=3D &quot; \<=
br><div class=3D"gmail_extra"><div class=3D"gmail_quote"><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">
<div dir=3D"ltr">=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 coreutils \<br>=
<div>&quot;<br clear=3D"all"><div></div></div></div></blockquote><div><br><=
/div><div>You may want to post your entire recipe.<br></div><div>=C2=A0</di=
v><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;borde=
r-left:1px solid rgb(204,204,204);padding-left:1ex">
<div dir=3D"ltr"><div><div>in my image file. But, I do not see any coreutil=
s package in tmp folder. <br>
</div><div>Let me know if my understanding is wrong. <br></div><div>=C2=A0<=
br></div></div></div></blockquote><div>It should be in tmp/work/i586-poky-l=
inux/coreutils/ if you are building for x86.<br><br></div><div>Did you chec=
k your image too?<br>
</div><div>=C2=A0<br><br></div><div>Best regards,<br>Rudi<br></div></div></=
div></div>

--089e0149baaab69c3304fdb64f8b--
