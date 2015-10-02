Return-Path: <kergoth@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8BA97E00C3E; Fri,  2 Oct 2015 11:21:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.176 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f176.google.com (mail-ig0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BF21EE0086D
	for <yocto@yoctoproject.org>; Fri,  2 Oct 2015 11:21:36 -0700 (PDT)
Received: by igcpb10 with SMTP id pb10so24641579igc.1
	for <yocto@yoctoproject.org>; Fri, 02 Oct 2015 11:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=XrhYK2qwNNI3JTfUft4+i7JsXmg1VKilsfd/6zxwjUo=;
	b=AqtQGOStktPliW0i9RpzMWS7J9wYlURoXmpHXn5WPXcYrFr4/Y2/WzSwJVQf2vvHdh
	i3V19VmpCUAEgt/RVGMZmOkGj7GNYMVaOMo7Eq5sTyBg4EhiWsC6bFkbUwSJGCyrvJSf
	JfklDpZ6vMZRpeRnkXbo1jPwy2CKfb2Gh2EjLjguUF74kdSpp6mYsAqOOsaZXTvVDd6M
	obgZ3b1rmlgUYHlncvA/tMg24VN6n+4dgCrwAwWOTVq6nJRCB0eKdmvf79+oxbTfzFoU
	hjKBiSavjcnFo0dWAeRPbifH5hyQ1+coNjiW8ixzZ+cZV8cOUqi6QfjuNONtyLLFvlIF
	nJZg==
X-Received: by 10.50.43.193 with SMTP id y1mr435707igl.38.1443810096332; Fri,
	02 Oct 2015 11:21:36 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.79.100.71 with HTTP; Fri, 2 Oct 2015 11:21:16 -0700 (PDT)
In-Reply-To: <CAF3SDA5BFz2bZ3k0x6y67n4C-FnEr7CU-3ZD89fMJk-TPqD-wQ@mail.gmail.com>
References: <1443801396017.79471@seescan.com>
	<CABcZANkg=UpD8pgB7B8vSj=pfveyE6WaDz1F+VMu76VSERa8Jg@mail.gmail.com>
	<CAF3SDA6J4E=1_T2jDS+0-ajtcJYqWFL2aKE_+Ly6LEfdChHdhw@mail.gmail.com>
	<CAF3SDA5BFz2bZ3k0x6y67n4C-FnEr7CU-3ZD89fMJk-TPqD-wQ@mail.gmail.com>
From: Christopher Larson <clarson@kergoth.com>
Date: Fri, 2 Oct 2015 11:21:16 -0700
X-Google-Sender-Auth: 3vtT54mRYP64Zb7ic8-hU5s6aaw
Message-ID: <CABcZANmVTBNEj-dOC-+EsfH5z9fdXqSaEXGz_8AxfSa6VAx+mw@mail.gmail.com>
To: "Daniel." <danielhilst@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: FILESEXTRAPATHS_prepend fails for systemd
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
X-List-Received-Date: Fri, 02 Oct 2015 18:21:38 -0000
Content-Type: multipart/alternative; boundary=089e0111d1beea48ce0521233bc2

--089e0111d1beea48ce0521233bc2
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 2, 2015 at 11:11 AM, Daniel. <danielhilst@gmail.com> wrote:

> But this will only work if journald.conf are the same in all systemd
> versions (since you use a _%.bbappend). A better solution would be append
> install task with a copy from your custom journald.conf to install folder,
> something like:
>
> do_install_append() {
>     cp ${S}/myjournald.conf ${D}/propper/path/to/journald.conf
> }


Which is precisely what recipetool appendfile will do for you :)
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--089e0111d1beea48ce0521233bc2
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Oct 2, 2015 at 11:11 AM, Daniel. <span dir=3D"ltr">&lt;<a href=3D"m=
ailto:danielhilst@gmail.com" target=3D"_blank">danielhilst@gmail.com</a>&gt=
;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 =
.8ex;border-left:1px #ccc solid;padding-left:1ex"><div><div>But this will o=
nly work if journald.conf are the same in all systemd versions (since you u=
se a _%.bbappend). A better solution would be append install task with a co=
py from your custom journald.conf to install folder, something like:<br><br=
></div>do_install_append() {<br></div>=C2=A0=C2=A0=C2=A0 cp ${S}/myjournald=
.conf ${D}/propper/path/to/journald.conf<br>}</blockquote></div><br>Which i=
s precisely what recipetool appendfile will do for you :)<br>-- <br><div cl=
ass=3D"gmail_signature">Christopher Larson<br>clarson at kergoth dot com<br=
>Founder - BitBake, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senio=
r Software Engineer, Mentor Graphics</div>
</div></div>

--089e0111d1beea48ce0521233bc2--
