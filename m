Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF95FE013E3
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 09:52:19 -0700 (PDT)
Received: by mail-oa0-f41.google.com with SMTP id n9so2977885oag.28
	for <yocto@yoctoproject.org>; Wed, 22 May 2013 09:52:19 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=5n+jRTNogbHxjQLZYEGLUF+7LEfzvKndo8bJT3yWVi8=;
	b=myquH/5IDAV2ZbecBgUjM3uXN1hgHjWmBVW685R0Wf550baqPnf+km/jIRarvwugpM
	4Lbp6qj5NZRCs3c0VafTueitELhbhhDxIAGIXeXjzNZZ3uMKF/4Se9kqnjrC4ZnBvZp9
	fWZjMaFERvjAkYhtgtAKEBnGbv5rCKG+0cQU2V9rTKCO0dQsSkrN/1l+730Of/RgGzRS
	Dav1q9QpV0irfJB9b1oodu1b9fIYVtB6bzCYm7pHJrp26Ty+9Guv2s4WTbVyMRe6bnT3
	b7E/wKe3ymlYTiuBqREqR8aHKBfV1srOUDZZLcgZLvK5xzMetbauOWa1a6aTh1OXSzqt
	M/gg==
X-Received: by 10.182.230.198 with SMTP id ta6mr5420059obc.98.1369241539083;
	Wed, 22 May 2013 09:52:19 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.168.67 with HTTP; Wed, 22 May 2013 09:51:59 -0700 (PDT)
In-Reply-To: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
References: <CAGxOggGKPW3WQcYbo0vim833ErrjGk8fXQyyiinB56jDjvKWVg@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 22 May 2013 18:51:59 +0200
Message-ID: <CAP71WjzJjYu5Ft2hAkPs77RRf6=mbkoFbFK+XGTNnW39DFxyJg@mail.gmail.com>
To: varun bhatnagar <varun292006@gmail.com>
X-Gm-Message-State: ALoCoQlDD1B6np/CMQ4DzWDUCB+bLJphFRDd+m9RsuwlU5fur9xXKDoNATF8dz5RXqqMviXB5ye2
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: runqemu: vnc server running on ::1:5900
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
X-List-Received-Date: Wed, 22 May 2013 16:52:20 -0000
Content-Type: multipart/alternative; boundary=001a11c331128c9a5304dd5163a3

--001a11c331128c9a5304dd5163a3
Content-Type: text/plain; charset=ISO-8859-1

On Wed, May 22, 2013 at 6:45 PM, varun bhatnagar <varun292006@gmail.com>wrote:

> I have successfully created a PowerPC image using* bitbake -k
> core-image-minimal*.
> When I am trying to boot it using *runqemu qemuppc* I am getting a
> message saying* vnc server running on ::1:5900.*
>
> I searched on internet and it was written that to resolve this error *SDL
> *and *SDL-devel* package should be installed.
>
> I have installed these packages but it did not work. Still I am getting
> the same message.
> Can anyone help me out with this. Below is the screenshot of message.
>

it sounds normal to me. that message means that qemu successfully started a
VNC server. you now need to connect to the server to see the output. that
is handy when using graphical interface. if you have no UI, you can use the
'nographic' option to runqemu, and it won't use VNC, and you will get the
login console in your terminal.

--001a11c331128c9a5304dd5163a3
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, May 22, 2013 at 6:45 PM, varun bhatnagar <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:varun292006@gmail.com" target=3D"_blank">varun292006@gmail.co=
m</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>I have successfully created a PowerPC i=
mage using<b> bitbake -k core-image-minimal</b>.</div><div>When I am trying=
 to boot it using <b>runqemu qemuppc</b> I am getting a message saying<b> v=
nc server running on ::1:5900.</b></div>


<div><br></div><div>I searched on internet and it was written that to resol=
ve this error <b>SDL </b>and <b>SDL-devel</b> package should be installed.<=
/div><div><br></div><div>I have installed these packages but it did not wor=
k. Still I am getting the same message.</div>


<div>Can anyone help me out with this. Below is the screenshot of message.<=
/div><div></div></blockquote></div><br>it sounds normal to me. that message=
 means that qemu successfully started a VNC server. you now need to connect=
 to the server to see the output. that is handy when using graphical interf=
ace. if you have no UI, you can use the &#39;nographic&#39; option to runqe=
mu, and it won&#39;t use VNC, and you will get the login console in your te=
rminal.=A0</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div><=
div class=3D"gmail_extra"><br></div></div>

--001a11c331128c9a5304dd5163a3--
