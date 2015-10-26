Return-Path: <rkocisko@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9FA8E0059B; Mon, 26 Oct 2015 09:09:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (rkocisko[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84122E0048C
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 09:09:36 -0700 (PDT)
Received: by ioll68 with SMTP id l68so192371262iol.3
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 09:09:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=F9qrCd3kQInYNz9pyIgziSTwmM816C+m8pQUYTAO+/M=;
	b=ZhpqokNTbP3S3q7FWvcQvcByDgvGu/CEhlfStgm9JNKF7eQbCzYveqvFvGvPYehUFB
	pIq4yFg+nBNbTZ7t/AG0w9oorqQk9xnxqHWJ/aANKrMDHTWRNfZyjsJkFjBUEHURZRPZ
	RZ+peHXM1XZjeFU5KbOqXUaKmp612NB2Cw0hYJsHs9gfnnC3IZUBjiGiN79gEzYUD2XS
	0xZYWr8yab2kGwn0/cxNiMAwIFvmuN7YvZK+VXGG77J8LjVJlFFiJ+HR+8vV37lIGuff
	xCzvZG1TcayBjk8GgfDppRgsS6xK+WxzIWxR3UbhXQFsq49CmHlFvFPxbDL2SQtlMCIM
	rC1Q==
X-Received: by 10.107.169.167 with SMTP id f39mr35881789ioj.104.1445875775761; 
	Mon, 26 Oct 2015 09:09:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.146.135 with HTTP; Mon, 26 Oct 2015 09:09:16 -0700 (PDT)
In-Reply-To: <CAMKF1spu3yuRDjogf7f4WXSjWAG1GX5qkuGXieqjMeg6ceJEbQ@mail.gmail.com>
References: <CAGF=AeRkNUv6zV=LyP6WvhSMd7BQgO8xD5jnyFop+RDf+G=v7Q@mail.gmail.com>
	<CAMKF1spu3yuRDjogf7f4WXSjWAG1GX5qkuGXieqjMeg6ceJEbQ@mail.gmail.com>
From: Robert D Kocisko <rkocisko@gmail.com>
Date: Mon, 26 Oct 2015 12:09:16 -0400
Message-ID: <CAGF=AeSt1S-74hfXvK5kukf3TJREaPToiO0xtQKcx4Cf1-haEQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Turn off X screen blanking
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
X-List-Received-Date: Mon, 26 Oct 2015 16:09:37 -0000
Content-Type: multipart/alternative; boundary=001a11427cf800f14b0523043087

--001a11427cf800f14b0523043087
Content-Type: text/plain; charset=UTF-8

Thank you Khem.  I was thinking that modifying the X command line to do
this would somehow be more 'low-level' and more 'official' than using
xset.  Does anyone know if there is a difference?

I also realized that it would probably work to .bbappend the SRC_FILES
variable with another patch file that tweaks the command line.  I haven't
tried it yet though.

On Sun, Oct 25, 2015 at 10:57 AM, Khem Raj <raj.khem@gmail.com> wrote:

> On Fri, Oct 23, 2015 at 10:43 AM, Robert D Kocisko <rkocisko@gmail.com>
> wrote:
> > I am trying to disable screen blanking in X by default.  This bug talks
> > about doing the same thing but it is not currently completed:
> > https://bugzilla.yoctoproject.org/show_bug.cgi?id=7278
> >
> > I am using "dizzy" for compatibility with the meta-amd layer.  I found
> the
> > xserver-common recipe in meta-oe and I suppose I could add another patch
> > like 0015-xserver-common-disable-TCP-connections.patch, but I'd rather
> do it
> > using a .bbappend file in another layer.  My question is how I might go
> > about doing that using a bbappend file?
>
> add something like
>
> /usr/bin/xset -dpms s off s noblank s 0 0 s noexpose
>
> to rc.local or systemd service file whatever you are using.
> ensure that X server has initialised fully before running this and ofcource
> add xset to your image.
>
> >
> > Thanks,
> > Bob Kocisko
> >
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> >
>

--001a11427cf800f14b0523043087
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Thank you Khem.=C2=A0 I was thinking that modifying the X =
command line to do this would somehow be more &#39;low-level&#39; and more =
&#39;official&#39; than using xset.=C2=A0 Does anyone know if there is a di=
fference?<div><br></div><div>I also realized that it would probably work to=
 .bbappend the SRC_FILES variable with another patch file that tweaks the c=
ommand line.=C2=A0 I haven&#39;t tried it yet though.</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Sun, Oct 25, 2015 at 10:=
57 AM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com"=
 target=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid=
;padding-left:1ex"><span class=3D"">On Fri, Oct 23, 2015 at 10:43 AM, Rober=
t D Kocisko &lt;<a href=3D"mailto:rkocisko@gmail.com">rkocisko@gmail.com</a=
>&gt; wrote:<br>
&gt; I am trying to disable screen blanking in X by default.=C2=A0 This bug=
 talks<br>
&gt; about doing the same thing but it is not currently completed:<br>
&gt; <a href=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D7278" r=
el=3D"noreferrer" target=3D"_blank">https://bugzilla.yoctoproject.org/show_=
bug.cgi?id=3D7278</a><br>
&gt;<br>
&gt; I am using &quot;dizzy&quot; for compatibility with the meta-amd layer=
.=C2=A0 I found the<br>
&gt; xserver-common recipe in meta-oe and I suppose I could add another pat=
ch<br>
&gt; like 0015-xserver-common-disable-TCP-connections.patch, but I&#39;d ra=
ther do it<br>
&gt; using a .bbappend file in another layer.=C2=A0 My question is how I mi=
ght go<br>
&gt; about doing that using a bbappend file?<br>
<br>
</span>add something like<br>
<br>
/usr/bin/xset -dpms s off s noblank s 0 0 s noexpose<br>
<br>
to rc.local or systemd service file whatever you are using.<br>
ensure that X server has initialised fully before running this and ofcource=
<br>
add xset to your image.<br>
<br>
&gt;<br>
&gt; Thanks,<br>
&gt; Bob Kocisko<br>
<span class=3D"HOEnZb"><font color=3D"#888888">&gt;<br>
&gt; --<br>
&gt; _______________________________________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><b=
r>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><=
br>
&gt;<br>
</font></span></blockquote></div><br></div>

--001a11427cf800f14b0523043087--
