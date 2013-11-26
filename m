Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f177.google.com (mail-we0-f177.google.com
	[74.125.82.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 36FFCE0077F
	for <yocto@yoctoproject.org>; Tue, 26 Nov 2013 03:13:40 -0800 (PST)
Received: by mail-we0-f177.google.com with SMTP id p61so5026386wes.8
	for <yocto@yoctoproject.org>; Tue, 26 Nov 2013 03:13:39 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4dcuaEHkkrakmv48cB88rSk8KrFU+3EJnUy0HdOLHWU=;
	b=Cy34SElNgEEuOlgKJl7zSk/wy5e++gF36HCb0GCY1OKuuKcDvd56fw+hiv7Kv3I1FC
	kdOHWYjzzrKVUYHfvZXJi5t2x54NM2qhbCLOK2MjCQk/2dT9ErrOXeZJ2u0XOS9vHBKz
	DtNj2lRthKzrnxH9WrQd30G3tGA4tjj5+Yx7rsIlBR1siVtcGpCgYNjzC3KDaQC4kXbU
	f/Ssr7tad587a0MYxtXAnnSl615fXk7b0tfrMU9LALny7l+4YPLPq7RumseM4lfd/05P
	LLFzlKzHoQiaAeoHLtet0KLQenbsN0+ZAChPQKEaf1YzZxVihYUYB9uppPNpOMeSyegE
	dIzg==
X-Gm-Message-State: ALoCoQneIAtaHbuReoZwOhfAKHQ0M9y5SBbgJNYexus/3EC3Yl4mmmG1EdihctZzOYyGjPBb3E1n
X-Received: by 10.180.187.41 with SMTP id fp9mr17587274wic.33.1385464419167;
	Tue, 26 Nov 2013 03:13:39 -0800 (PST)
MIME-Version: 1.0
Received: by 10.217.150.199 with HTTP; Tue, 26 Nov 2013 03:13:19 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1384443387-16320-1-git-send-email-alexnick87@gmail.com>
References: <1384443387-16320-1-git-send-email-alexnick87@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Tue, 26 Nov 2013 13:13:19 +0200
Message-ID: <CAK18fxHbhQDUwVP92M4knJ3vtfS3YDYdU5gZ95W9fFw4AOq_zg@mail.gmail.com>
To: Alexandru Niculita <alexnick87@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 1/1] omxplayer: Updated package to the latest version from git
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
X-List-Received-Date: Tue, 26 Nov 2013 11:13:43 -0000
Content-Type: multipart/alternative; boundary=001a11c3844c8dca9604ec1292b9

--001a11c3844c8dca9604ec1292b9
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Nov 14, 2013 at 5:36 PM, Alexandru Niculita <alexnick87@gmail.com>wrote:

> Changed the active development repository to git://
> github.com/popcornmix/omxplayer.git
> Added dbus package as a dependency.
> Installed fonts directory in the default location needed by omxplayer
>
> Change-Id: Ie2e1ae73656d3c9a5cbefbf87d0792b10fcd9430
> Signed-off-by: Alexandru Niculita <alexnick87@gmail.com>
>

Thank you Alex. Patch was merged.

ag

--001a11c3844c8dca9604ec1292b9
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On T=
hu, Nov 14, 2013 at 5:36 PM, Alexandru Niculita <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:alexnick87@gmail.com" target=3D"_blank">alexnick87@gmail.com</=
a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Changed the active development repository to=
 git://<a href=3D"http://github.com/popcornmix/omxplayer.git" target=3D"_bl=
ank">github.com/popcornmix/omxplayer.git</a><br>


Added dbus package as a dependency.<br>
Installed fonts directory in the default location needed by omxplayer<br>
<br>
Change-Id: Ie2e1ae73656d3c9a5cbefbf87d0792b10fcd9430<br>
Signed-off-by: Alexandru Niculita &lt;<a href=3D"mailto:alexnick87@gmail.co=
m">alexnick87@gmail.com</a>&gt;<br></blockquote><div><br></div><div>Thank y=
ou Alex. Patch was merged.</div><div><br></div><div>ag=A0</div></div>
</div></div>

--001a11c3844c8dca9604ec1292b9--
