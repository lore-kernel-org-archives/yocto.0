Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5033EE0095F; Fri, 21 Apr 2017 09:47:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.220.177 listed in list.dnswl.org]
Received: from mail-qk0-f177.google.com (mail-qk0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1AD5BE0074B
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:47:01 -0700 (PDT)
Received: by mail-qk0-f177.google.com with SMTP id h67so76626098qke.0
	for <yocto@yoctoproject.org>; Fri, 21 Apr 2017 09:47:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=fJqAaBLsIy/STIHoLWJ1BGm3Yl2ZjPdQJR+0YlNW7i4=;
	b=AljTs6qcYQNW+uDQiHmKAcQOZBJXfvizLfG7Q1f6p+vO2e8bGJBoXUmmMsNvqocT0k
	bfy/J661MVGgxhG9yG/LEXCMA2Qd1Ml1jl78IXKQ7uEkbDroS/cUvv2MrP8lWp+Inqz7
	xU9hUxI1zqXR3zNkWIQAY96jAvZWbCpHjh9MIiKZHRGS1SgRUTIu6n+gmmmuMiJoOm0r
	SRq1tO4gEv1mK9pVTONhPeTsjOzuVEVac/ufNJTJLNKW15+PDZ//acmr2pFPjSCsWzwC
	F9eLhMPqEWy1jmzZsRjDgCCcKCVkVJQDiatLejzoUF84efP3JUix4+nb0yVePi104+UN
	/m9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=fJqAaBLsIy/STIHoLWJ1BGm3Yl2ZjPdQJR+0YlNW7i4=;
	b=iRk6AG2mySuXr97e9wU4zbTjejMM3xgAwGaHIf1E3GUYGtB5BrFOrw7gB/YNSgqsGs
	IY4JQoDOeWNzrQMaOP37NgX6iSfYMEuzj07PDZh0th/zLvYBaCzS2a3sqcOwOqF4iOdG
	EltHGqN8KDXf7oXzDCHuvzdHrzWhausvGIa7PZtP8PAWXELJH7vtRWL54XSAaRXOyMr1
	OF9oQ2Rlogd+Kue99IOrKpqc2E4mMNnL5tcDWZwqvOhHgLs+553zSL3Rr9FEgJmCCfLc
	5lj6wgUAIQXEL84V0yzGjBJeU4X6v7Qqge7t9OWW7GorL9KhRdoR0VOp6boctA57e8dQ
	kk5g==
X-Gm-Message-State: AN3rC/6PUeyv8HkZj8L7kBFUwY80Y9RO8vNXRwUqlObZs2ofRqqhIF/c
	YUEn8cuCH44MRqV3apMaAUHQxoLoi5nt
X-Received: by 10.55.191.69 with SMTP id p66mr13681219qkf.77.1492793220850;
	Fri, 21 Apr 2017 09:47:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Fri, 21 Apr 2017 09:46:40 -0700 (PDT)
In-Reply-To: <CAMafisYkjYi-Z4iYFKX365Si1hwxwN7e+SrkypfYhPxmaBO5bw@mail.gmail.com>
References: <CAMafisYkjYi-Z4iYFKX365Si1hwxwN7e+SrkypfYhPxmaBO5bw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 21 Apr 2017 17:46:40 +0100
Message-ID: <CAJTo0Lb0r7BK=Duhn4KXjq5ynVdvHEeA+jaqDAgu6_rf-JmF8w@mail.gmail.com>
To: Marc-Antoine Martin <martin.marcantoine@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Installing shared libraries ncurses for custom application
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
X-List-Received-Date: Fri, 21 Apr 2017 16:47:07 -0000
Content-Type: multipart/alternative; boundary=94eb2c043d42a6fb53054db001e8

--94eb2c043d42a6fb53054db001e8
Content-Type: text/plain; charset=UTF-8

On 19 April 2017 at 17:55, Marc-Antoine Martin <martin.marcantoine@gmail.com
> wrote:

> DEPENDS = "ncurses glibc"
> RDEPENDS_${PN} = "ncurses-libform"
>

glibc is a default dependency so you can remove that.  You can remove the
explicit RDEPENDS as bitbake will automatically add library runtime
dependencies for you.  Just have DEPENDS=ncurses, and see if that does the
right thing.

Ross

--94eb2c043d42a6fb53054db001e8
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 19 April 2017 at 17:55, Marc-Antoine Martin <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:martin.marcantoine@gmail.com" target=3D"_blank">martin.marcanto=
ine@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" st=
yle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div =
id=3D":2fb" class=3D"a3s aXjCH m15b9137ed08ba151">DEPENDS =3D &quot;ncurses=
 glibc&quot;<br>
RDEPENDS_${PN} =3D &quot;ncurses-libform&quot;<br></div></blockquote></div>=
<br>glibc is a default dependency so you can remove that.=C2=A0 You can rem=
ove the explicit RDEPENDS as bitbake will automatically add library runtime=
 dependencies for you.=C2=A0 Just have DEPENDS=3Dncurses, and see if that d=
oes the right thing.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--94eb2c043d42a6fb53054db001e8--
