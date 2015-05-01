Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EE50AE00985; Fri,  1 May 2015 06:47:12 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABF96E0095C
	for <yocto@yoctoproject.org>; Fri,  1 May 2015 06:47:10 -0700 (PDT)
Received: by qgeb100 with SMTP id b100so38023261qge.3
	for <yocto@yoctoproject.org>; Fri, 01 May 2015 06:47:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=4mYFojIj/hFalUDW0jt+nJrtZ4NIJzepk/OJ2QZ6bw0=;
	b=kjAb+xZkWRvrT5sjrydqwAXfh01FKnUO5vJoV58NrgnqYIZYScb7Cj03MAhjXf+JbW
	FB/uNOE9Ko4yNN4nojj0NanFPg0ifqr2mOxTXBGZtUbkhzgMCv8RLCorZ9fd33ZtNpCU
	kZyGZB6s3XPWm9mPnq+s+FEkY/KeBZRJco6tkz8IPXBY5Ap8UdpuZsL+dtkvXYFEWUxR
	p3vSDx4CZg+4TtfQNT0WVE5A2R+BKTQaCeiUWhwDbNlbZlZU4WzOENuwDVhB0potGViu
	0YjvdFsr11YWSveykcDhw0ddNofWI15KS/WJ+gX8XHAvPDFDcWu9AV49FsDaG16PCMt6
	GbAQ==
X-Gm-Message-State: ALoCoQkYg/HUKB5dyZGLGmJi5lnTKTVLyjDqncpI9qYyU1TUbJGJYwRIw7RX6/2jJHGWutsgLaQ2
X-Received: by 10.55.50.20 with SMTP id y20mr19031236qky.58.1430488030381;
	Fri, 01 May 2015 06:47:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.231 with HTTP; Fri, 1 May 2015 06:46:49 -0700 (PDT)
In-Reply-To: <1430478583.3318.15.camel@collabora.co.uk>
References: <1430478583.3318.15.camel@collabora.co.uk>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 1 May 2015 14:46:49 +0100
Message-ID: <CAJTo0Lazg2tkAUfJJC8wZCmOd2pxqDN2HF=pK7GfVvhF-LkAVg@mail.gmail.com>
To: Joshua Lock <joshua.lock@collabora.co.uk>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: First set of fido-next changes are in testing
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
X-List-Received-Date: Fri, 01 May 2015 13:47:13 -0000
Content-Type: multipart/alternative; boundary=001a11471392e81a8c051505722c

--001a11471392e81a8c051505722c
Content-Type: text/plain; charset=UTF-8

On 1 May 2015 at 12:09, Joshua Lock <joshua.lock@collabora.co.uk> wrote:

> There have been a lot of patches proposed for fido so I wanted to let
> you know that I have just submitted a first fido-next test build to
> the autobuilder.
>
> The full set of changes can be seen in my fido-next branch:
>
> http://git.yoctoproject.org/cgit/cgit.cgi/poky
> -contrib/log/?h=joshuagl/fido-next
>

I think this calls for a https://i.imgflip.com/kx0rl.jpg...

I added one extra patch to poky-contrib:ross/fido-next and submitted that
too.

Ross

--001a11471392e81a8c051505722c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 1 May 2015 at 12:09, Joshua Lock <span dir=3D"ltr">&lt;<a href=3D"mailto=
:joshua.lock@collabora.co.uk" target=3D"_blank">joshua.lock@collabora.co.uk=
</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin=
:0px 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204)=
;border-left-style:solid;padding-left:1ex"><div id=3D":vo" class=3D"" style=
=3D"overflow:hidden">There have been a lot of patches proposed for fido so =
I wanted to let<br>
you know that I have just submitted a first fido-next test build to<br>
the autobuilder.<br>
<br>
The full set of changes can be seen in my fido-next branch:<br>
<br>
<a href=3D"http://git.yoctoproject.org/cgit/cgit.cgi/poky" target=3D"_blank=
">http://git.yoctoproject.org/cgit/cgit.cgi/poky</a><br>
-contrib/log/?h=3Djoshuagl/fido-next</div></blockquote></div><br>I think th=
is calls for a <a href=3D"https://i.imgflip.com/kx0rl.jpg.">https://i.imgfl=
ip.com/kx0rl.jpg.</a>..</div><div class=3D"gmail_extra"><br></div><div clas=
s=3D"gmail_extra">I added one extra patch to poky-contrib:ross/fido-next an=
d submitted that too.</div><div class=3D"gmail_extra"><br></div><div class=
=3D"gmail_extra">Ross</div></div>

--001a11471392e81a8c051505722c--
