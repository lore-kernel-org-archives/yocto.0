Return-Path: <ron@ron-oakes.us>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 20C2FE00C41; Mon, 28 Nov 2016 15:56:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.161.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yw0-f174.google.com (mail-yw0-f174.google.com
	[209.85.161.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4C04E00C2D
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 15:56:24 -0800 (PST)
Received: by mail-yw0-f174.google.com with SMTP id i145so127875301ywg.2
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 15:56:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=ron-oakes-us.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=gkNWvn0DYam6bxeHYpnOuayOHXok5u6fINvjLemL1F4=;
	b=WrcH3g9EQvp23JQdDtnI1Ja98Dbfd23ld35XHtkg+sPGC85s9iTSI2z1ZTw2SpPEBf
	BEA3tSFi6Bh3/FLG3jAjYUaNroUfhN5G45RhzqsPnNeQoCymP7hR62xY1r5ucLV7Y118
	SgqVVQL1hYBQTcyWx4RaiL2Ii93TM8aALARJcUuX0KtGMulcFW4hYiaou8VK8MFUjA1x
	TEWMM7grqB490h3dNq9tR63v5Rybh1EDIIqaVUemYSzJApShEG3OUDz1ZmgBb6gfHKDw
	scn9y6Qdsu41/e3nvoGGO+xkFD65lzEmReVG1VVXoLI5pMFgkl3HuIM0CU1BAdMezV4Y
	aUsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=gkNWvn0DYam6bxeHYpnOuayOHXok5u6fINvjLemL1F4=;
	b=mZKna4QRVVY+VygUCJ8mbhpEo0QPTFn6mskb+vsZe+xcZWHyUKKISZOEs/VzhGHlb7
	/vAclRWlO6domCupRJ2cP1S/ayJCI4UD/Jasz63rJc/adZkBLpHzsbMpk9snjH9gti9n
	+XnjCjErGPT/ULEcnOUp7OhukhQ8Bfbr0KxNU8NPDkmQO11yRxuz25kfPo7M92ghqQme
	SXhKu9LT8tQoej+5iKgT5KG+21CA2/sw79tTbKYwy2ijddb5m7xo3tq38mCk0ajQ+DDy
	8rgqbdkKL49XfMF4gPfSQBYTtRRe35Pf1lvz5preLrPzHRd0pmC01JZgk6Dvw1O+S9Qw
	/KcQ==
X-Gm-Message-State: AKaTC01p+O40cezb4a7GSUth+xX+mv+M5AeiNNua24+jASth4R6FX1oKo6u5vfCyhJSEB4Xz+YKj7wgWU5H+kg==
X-Received: by 10.129.131.200 with SMTP id t191mr33675097ywf.91.1480377383705; 
	Mon, 28 Nov 2016 15:56:23 -0800 (PST)
MIME-Version: 1.0
References: <CADh9ykHD_4GO+n9hpv-bWn-JCnZaxzS5mTdmC1b1iBQGfRVR3g@mail.gmail.com>
	<CADh9ykEWV5YZLDUsGWFB0ktp5QzhqQVdU3wCqEA_G3MPF5NwAw@mail.gmail.com>
In-Reply-To: <CADh9ykEWV5YZLDUsGWFB0ktp5QzhqQVdU3wCqEA_G3MPF5NwAw@mail.gmail.com>
From: Ronald Oakes <ron@ron-oakes.us>
Date: Mon, 28 Nov 2016 23:56:12 +0000
Message-ID: <CADh9ykFkq5OUxtqdqYN8rFO5R4v-r8SWC9R_S7_FkM1vPx72zw@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Problem imaging a hard drive
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
X-List-Received-Date: Mon, 28 Nov 2016 23:56:26 -0000
Content-Type: multipart/alternative; boundary=001a114f21fa1725bf0542653812

--001a114f21fa1725bf0542653812
Content-Type: text/plain; charset=UTF-8

I was able to resolve the problem with the help of a coworker today, by
booting from the grub command line, then using grub-mkconfig to create a
configuration file, put it in /boot/grub2, then use a .bbappend file to
ensure that it would continue to be included in my image.

Ron Oakes

On Fri, Nov 25, 2016 at 3:35 PM Ronald Oakes <ron@ron-oakes.us> wrote:

> Well, I partially solved my problem.  It turns out I had a CD in the
> computer with an old boot image on it that was loading and causing
> great confusion.
>
> Now, grub appears to be loading OK, but doesn't look like it has a
> valid configuration to actually boot the image loaded onto the hard
> drive.
>
> My commands (based on the link in my first email) were:
> - Format the hard drive using mkfs.ex4 -L <name>
> - Mount it (usually by just unplugging and replugging the USB to SATA
> adaptor)
> - Copy the data from the mounted image file using cp -aV
> - Add grub using "grub2-install --recheck
> --boot-directory=/run/media/ron/<label>boot /dev/sdc"
>
> My educated guess is that either I'm missing something in my
> grub2-install command, or there is something missing in my build or
> build configuration that is causing the grub configuration to not be
> picked up when or where needed..
>
> Ron Oakes
>
> On Fri, Nov 25, 2016 at 11:44 AM, Ronald Oakes <ron@ron-oakes.us> wrote:
> > I've been trying to use the directions at
> >
> https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_on_a_hard_drive.3F
> > to create a boot drive based on my build.
> >
> > However, I keep ending up with my root being at /media/ads/, with two big
> > issues: my static IP address isn't assigned, and my path is messed up
> > leaving my applications not on it by default.
> >
> > The one main difference from the directions is that I'm using
> grub2-install
> > instead of grub-install. This is because I'm using a current RedHat
> system
> > for development due to a requirement of my client.
> >
> > I will note that at least one of my added kernel modules is being loaded,
> > since I can see related messages in the console/demesg log.
> >
> > Ron Oakes
>

--001a114f21fa1725bf0542653812
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div style=3D"white-space:pre-wrap">I was able to resolve the problem with =
the help of a coworker today, by booting from the grub command line, then u=
sing grub-mkconfig to create a configuration file, put it in /boot/grub2, t=
hen use a .bbappend file to ensure that it would continue to be included in=
 my image. <br><br>Ron Oakes</div><br><div class=3D"gmail_quote"><div dir=
=3D"ltr">On Fri, Nov 25, 2016 at 3:35 PM Ronald Oakes &lt;<a href=3D"mailto=
:ron@ron-oakes.us">ron@ron-oakes.us</a>&gt; wrote:<br></div><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex">Well, I partially solved my problem.=C2=A0 It turns out I h=
ad a CD in the<br class=3D"gmail_msg">
computer with an old boot image on it that was loading and causing<br class=
=3D"gmail_msg">
great confusion.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
Now, grub appears to be loading OK, but doesn&#39;t look like it has a<br c=
lass=3D"gmail_msg">
valid configuration to actually boot the image loaded onto the hard<br clas=
s=3D"gmail_msg">
drive.<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
My commands (based on the link in my first email) were:<br class=3D"gmail_m=
sg">
- Format the hard drive using mkfs.ex4 -L &lt;name&gt;<br class=3D"gmail_ms=
g">
- Mount it (usually by just unplugging and replugging the USB to SATA adapt=
or)<br class=3D"gmail_msg">
- Copy the data from the mounted image file using cp -aV<br class=3D"gmail_=
msg">
- Add grub using &quot;grub2-install --recheck<br class=3D"gmail_msg">
--boot-directory=3D/run/media/ron/&lt;label&gt;boot /dev/sdc&quot;<br class=
=3D"gmail_msg">
<br class=3D"gmail_msg">
My educated guess is that either I&#39;m missing something in my<br class=
=3D"gmail_msg">
grub2-install command, or there is something missing in my build or<br clas=
s=3D"gmail_msg">
build configuration that is causing the grub configuration to not be<br cla=
ss=3D"gmail_msg">
picked up when or where needed..<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
Ron Oakes<br class=3D"gmail_msg">
<br class=3D"gmail_msg">
On Fri, Nov 25, 2016 at 11:44 AM, Ronald Oakes &lt;<a href=3D"mailto:ron@ro=
n-oakes.us" class=3D"gmail_msg" target=3D"_blank">ron@ron-oakes.us</a>&gt; =
wrote:<br class=3D"gmail_msg">
&gt; I&#39;ve been trying to use the directions at<br class=3D"gmail_msg">
&gt; <a href=3D"https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put=
_Yocto_on_a_hard_drive.3F" rel=3D"noreferrer" class=3D"gmail_msg" target=3D=
"_blank">https://wiki.yoctoproject.org/wiki/How_do_I#Q:_How_do_I_put_Yocto_=
on_a_hard_drive.3F</a><br class=3D"gmail_msg">
&gt; to create a boot drive based on my build.<br class=3D"gmail_msg">
&gt;<br class=3D"gmail_msg">
&gt; However, I keep ending up with my root being at /media/ads/, with two =
big<br class=3D"gmail_msg">
&gt; issues: my static IP address isn&#39;t assigned, and my path is messed=
 up<br class=3D"gmail_msg">
&gt; leaving my applications not on it by default.<br class=3D"gmail_msg">
&gt;<br class=3D"gmail_msg">
&gt; The one main difference from the directions is that I&#39;m using grub=
2-install<br class=3D"gmail_msg">
&gt; instead of grub-install. This is because I&#39;m using a current RedHa=
t system<br class=3D"gmail_msg">
&gt; for development due to a requirement of my client.<br class=3D"gmail_m=
sg">
&gt;<br class=3D"gmail_msg">
&gt; I will note that at least one of my added kernel modules is being load=
ed,<br class=3D"gmail_msg">
&gt; since I can see related messages in the console/demesg log.<br class=
=3D"gmail_msg">
&gt;<br class=3D"gmail_msg">
&gt; Ron Oakes<br class=3D"gmail_msg">
</blockquote></div>

--001a114f21fa1725bf0542653812--
