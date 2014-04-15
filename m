Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f41.google.com (mail-la0-f41.google.com
	[209.85.215.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E352DE00B8C
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 07:57:50 -0700 (PDT)
Received: by mail-la0-f41.google.com with SMTP id gl10so7002628lab.14
	for <yocto@yoctoproject.org>; Tue, 15 Apr 2014 07:57:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=5yYu6sAab6ODoO89I6sUR5Beh7mIG2y1XCBRI3X9ttc=;
	b=BXHwCNEXelFtUk7hN4batNspYMYbs4HGADgBgwmgTlx3Uk8nd3aMPDcPfsbcuerVLR
	sHcU1RBQo/jCMkssQhl8SJ0e8u51DzRAwL15V/n+8I9xZgzGQfKn6PUA1/4+2X8h+6Rp
	2IhHYEagF3+HNXqJzlTmPEwM2wzkDJY8DgmwYyxsW7lqGvOKhgokVBJvnyqC0Os40T6r
	xkPKTSGljE//XTnYIWu7n4FM+4IBTbZBsSDKhtXYCFRCmvL8tB/24sFtRrULCQVbuqLI
	V8/BA0nDvFqzcr9j5IZXzb3ucbEtj7INRqnT0OwL0WLYa6Y4ezLSyqiN/1ohcRQ154ym
	nz3w==
X-Received: by 10.112.160.168 with SMTP id xl8mr1488549lbb.3.1397573868509;
	Tue, 15 Apr 2014 07:57:48 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.194 with HTTP; Tue, 15 Apr 2014 07:57:28 -0700 (PDT)
In-Reply-To: <1397565927-21177-1-git-send-email-sujith.h@gmail.com>
References: <1397565927-21177-1-git-send-email-sujith.h@gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 15 Apr 2014 07:57:28 -0700
X-Google-Sender-Auth: 54luCLL3u-oDWyB4iaax534Hzvk
Message-ID: <CABcZANk7-yLrM1QBwGJ0UR64P0btMssmVW3UCJ+b-P1gpxhwuw@mail.gmail.com>
To: Sujith H <sujith.h@gmail.com>
Cc: yocto <yocto@yoctoproject.org>, Sujith H <Sujith_Haridasan@mentor.com>
Subject: Re: [PATCH] weston: Add weston.ini
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
X-List-Received-Date: Tue, 15 Apr 2014 14:57:51 -0000
Content-Type: multipart/alternative; boundary=001a11c3888cfadde604f7160584

--001a11c3888cfadde604f7160584
Content-Type: text/plain; charset=UTF-8

On Tue, Apr 15, 2014 at 5:45 AM, Sujith H <sujith.h@gmail.com> wrote:

> From: Sujith H <Sujith_Haridasan@mentor.com>
>
> Adding weston.ini to $HOME/.config. With this change
> user can login to $HOME and launch weston with ivi-shell.
>
> Signed-off-by: Sujith H <Sujith_Haridasan@mentor.com>
>

1) the package manager shouldn't install user files, unless absolutely
necessary, and if you're going to do something like that, you should at
least split it out into a separate package, IMO
2) you hardcode /home/root rather than using the variable for root's home
directory (see bitbake.conf)
3) you don't actually mention what layer this patch is destined for. I'm
guessing meta-yocto?
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c3888cfadde604f7160584
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Apr 15, 2014 at 5:45 AM, Sujith H <span dir=3D"ltr">&lt;<a href=3D"=
mailto:sujith.h@gmail.com" target=3D"_blank">sujith.h@gmail.com</a>&gt;</sp=
an> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":4t4" class=3D"a3s" style=3D"over=
flow:hidden">From: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.c=
om">Sujith_Haridasan@mentor.com</a>&gt;<br>


<br>
Adding weston.ini to $HOME/.config. With this change<br>
user can login to $HOME and launch weston with ivi-shell.<br>
<br>
Signed-off-by: Sujith H &lt;<a href=3D"mailto:Sujith_Haridasan@mentor.com">=
Sujith_Haridasan@mentor.com</a>&gt;</div></blockquote></div><br>1) the pack=
age manager shouldn&#39;t install user files, unless absolutely necessary, =
and if you&#39;re going to do something like that, you should at least spli=
t it out into a separate package, IMO</div>

<div class=3D"gmail_extra">2) you hardcode /home/root rather than using the=
 variable for root&#39;s home directory (see bitbake.conf)</div><div class=
=3D"gmail_extra">3) you don&#39;t actually mention what layer this patch is=
 destined for. I&#39;m guessing meta-yocto?<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c3888cfadde604f7160584--
