Return-Path: <ndec13@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9C69EE01447
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 14:54:15 -0800 (PST)
Received: by mail-vc0-f176.google.com with SMTP id fl13so9471643vcb.35
	for <yocto@yoctoproject.org>; Wed, 21 Nov 2012 14:54:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=blOC4gpNhlkZBsA7bQPNw38zraGXDrz664+so8IDQ0o=;
	b=Czvf7pwiZHHE077XAUgLc1IDeeQwdZWKsKaK42/sok7TYGwv+qq+3fXsd8C+HvUM+F
	AjOAFPLMrT6LiHE1m0WrgdgwTe68bO5zESmdWs8whg+VW41Gg+sUZ/iDelFgVIKFxveM
	fM9mK51Cs2fufnr2xiMx5Cta5auDcIrCPi+vSHTuTUpeUFIGwXDEZvFSc+Z7Q0gVcO0p
	O5xEa5F7NzUy9ChmW65jXq/jL1JG7TdIFKPQTEWxYINTI4yt3NJkfrDvR978LIUmA9As
	efhV5wtlGGrV+PhepbpuaTrDz7la7uxzYiqJoBMg/oqFRaUbOXDYECKGAW9n2b+a3qeD
	273w==
Received: by 10.220.208.141 with SMTP id gc13mr30999430vcb.55.1353538454631;
	Wed, 21 Nov 2012 14:54:14 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.248.74 with HTTP; Wed, 21 Nov 2012 14:53:54 -0800 (PST)
In-Reply-To: <CAJTo0LamS=ZF-o3MH-RHpE1THz2+Nr_KUaEEJ2Ff=9wKxii62w@mail.gmail.com>
References: <CAOT3miKZaw+s=0QSp+nh8-VnL+-ez=Lz6M849=o3UVLJfXwjhQ@mail.gmail.com>
	<CAJTo0LamS=ZF-o3MH-RHpE1THz2+Nr_KUaEEJ2Ff=9wKxii62w@mail.gmail.com>
From: Nicolas Dechesne <ndec13@gmail.com>
Date: Wed, 21 Nov 2012 23:53:54 +0100
Message-ID: <CAOT3miL57Vudm2WKvpG98OeFcHKR8-W1y6dvUCzMPc7=cNM=HA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: build error since commit: gcc: Use FILESPATH instead of FILESDIR and cleanup/simplify
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 21 Nov 2012 22:54:15 -0000
Content-Type: multipart/alternative; boundary=bcaec517a674c732fd04cf093a04

--bcaec517a674c732fd04cf093a04
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Nov 21, 2012 at 9:41 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 21 November 2012 00:44, Nicolas Dechesne <ndec13@gmail.com> wrote:
> > i was attempting a rebuild from scratch with today's master of poky, and
> i
> > was facing issues such as:
> >
> > WARNING: Failed to fetch URL
> file://gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.patch,
> > attempting MIRRORS if available
>
> That bug was only briefly in the tree, so do another pull.
>

indeed ;-) i can see the commits now.


>
> You'll then get image generation failures with libgl, which I'll be
> fixing today. :(


well, i am not there yet, as I have more build failure (as I just reported)

thanks

--bcaec517a674c732fd04cf093a04
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Wed, Nov 2=
1, 2012 at 9:41 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ro=
ss.burton@intel.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span>=
 wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 21 November 2012 00:44,=
 Nicolas Dechesne &lt;<a href=3D"mailto:ndec13@gmail.com">ndec13@gmail.com<=
/a>&gt; wrote:<br>


&gt; i was attempting a rebuild from scratch with today&#39;s master of pok=
y, and i<br>
&gt; was facing issues such as:<br>
&gt;<br>
&gt; WARNING: Failed to fetch URL file://gcc-4.3.1-ARCH_FLAGS_FOR_TARGET.pa=
tch,<br>
&gt; attempting MIRRORS if available<br>
<br>
</div>That bug was only briefly in the tree, so do another pull.<br></block=
quote><div><br></div><div>indeed ;-) i can see the commits now.</div><div>=
=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;borde=
r-left:1px #ccc solid;padding-left:1ex">


<br>
You&#39;ll then get image generation failures with libgl, which I&#39;ll be=
<br>
fixing today. :(</blockquote></div><br></div><div class=3D"gmail_extra">wel=
l, i am not there yet, as I have more build failure (as I just reported)</d=
iv><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">thanks</=
div>


--bcaec517a674c732fd04cf093a04--
