Return-Path: <andrei@gherzan.ro>
Received: from mail-we0-f169.google.com (mail-we0-f169.google.com
	[74.125.82.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 686E9E00343
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 17:02:42 -0700 (PDT)
Received: by mail-we0-f169.google.com with SMTP id t61so1133816wes.14
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 17:02:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=GjrwgLrfjsunGIbofYieBdk0NHLzkhxYqy1TOrUAwcA=;
	b=HdY7XSCJcBqkzbhsbiBSkbnwIaxJweO1yQR+VAz6LeNrH61SqhMAfYhMaOuYWOQYWS
	6Ld4L73/KqFaVRfuU4D+LWIjqhQJ2kfmzNciYIErlyo6fdGtNm33kZ5HypVn+vlWCdPC
	tZNygeoBgi4N/9/d5fFPbP7NbAhRDmLI7G4QiCL28uRluFwZTaD4+bU7fmi7y84VjTh9
	+0m/3oS7my6PnBaIFzCmahxzgIeb2dZhTq0ysHtzcMb8X735j1kXyZY65flK/LP5hQX8
	iOaL0TXh0Fp0tUbMul41+MILrWqNycY/Pe9R9y/ZoiGWN/qthWobZM051qfb4ucKIkFU
	ilXg==
X-Gm-Message-State: ALoCoQkwhigHptzFel0QutCljDtgXbmxZCOL5X2Mcquvg3FDvwVQPwjH0OWiLtQ1lPkt6MuneToz
X-Received: by 10.180.11.37 with SMTP id n5mr3941162wib.25.1377302561475; Fri,
	23 Aug 2013 17:02:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.217.91.198 with HTTP; Fri, 23 Aug 2013 17:02:21 -0700 (PDT)
X-Originating-IP: [92.86.21.113]
In-Reply-To: <20130823122632.GD3544@jama>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
	<1377018158-2983-7-git-send-email-andrei@gherzan.ro>
	<CANyK_8fT9cf__rs36niVD5mkhXySbioVT16653Zr0tQvwJkh3w@mail.gmail.com>
	<20130823122632.GD3544@jama>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Sat, 24 Aug 2013 03:02:21 +0300
Message-ID: <CAK18fxHeeE5UWPcNhg2pw+QPHeS-PVwkmOugDFsVivCSPe7eow@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 07/11] mesa: Use libgl from mesa for raspberrypi
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
X-List-Received-Date: Sat, 24 Aug 2013 00:02:48 -0000
Content-Type: multipart/alternative; boundary=001a11c25b48ece09504e4a63d03

--001a11c25b48ece09504e4a63d03
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Aug 23, 2013 at 3:26 PM, Martin Jansa <martin.jansa@gmail.com>wrote:

> On Fri, Aug 23, 2013 at 11:59:10AM +0100, Paul Barker wrote:
> > On 20 August 2013 18:02, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > > +python __anonymous () {
> > > +    import re
> > > +
> > > +    # Remove egl and gles2 configure options
> > > +    extra_oeconf = d.getVar('EXTRA_OECONF', True).split()
> > > +    take_out = ['--enable-egl', '--enable-gles2', '--enable-gles1']
> > > +    put_in = ['--disable-egl', '--disable-gles2', '--disable-gles1']
> > > +    pattern = re.compile("--with-egl-platforms")
> > > +    new_extra_oeconf = []
> > > +    for i in extra_oeconf:
> > > +        if i not in take_out and not pattern.match(i):
> > > +            new_extra_oeconf.append(i)
> > > +    for i in put_in:
> > > +        new_extra_oeconf.append(i)
> > > +    d.setVar('EXTRA_OECONF', ' '.join(new_extra_oeconf))
> > > +
> > > +    # Remove egl and gles2 from provides
> > > +    provides = d.getVar('PROVIDES', True).split()
> > > +    take_out = ['virtual/libgles2', 'virtual/egl', 'virtual/libgles1']
> > > +    new_provides = []
> > > +    for i in provides:
> > > +        if i not in take_out:
> > > +            new_provides.append(i)
> > > +    d.setVar('PROVIDES', ' '.join(new_provides))
> > > +
> > > +    # We are now machine specific
> > > +    d.setVar('PACKAGE_ARCH', d.getVar('MACHINE_ARCH'))
> > > +}
> >
> > This really needs to check whether MACHINE="raspberrypi" before
> > changing anything. I keep the same stack of layers and just change
> > MACHINE when building for raspberrypi and beagleboard.
>
>
That's definitely a good idea. Already merged the patch but will rebase /
add a new commit.


>  Be aware that it would make mesa (and everything depending on mesa)
> effectively MACHINE_ARCH.
>

I am aware of that but I don't see how to avoid this...

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--001a11c25b48ece09504e4a63d03
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Fri, Aug 23, 2013 at 3:26 PM, Martin Jansa <span dir=3D"ltr">&lt=
;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@g=
mail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"HOEnZb"><div class=3D"h5">On F=
ri, Aug 23, 2013 at 11:59:10AM +0100, Paul Barker wrote:<br>
&gt; On 20 August 2013 18:02, Andrei Gherzan &lt;<a href=3D"mailto:andrei@g=
herzan.ro">andrei@gherzan.ro</a>&gt; wrote:<br>
&gt; &gt; +python __anonymous () {<br>
&gt; &gt; + =A0 =A0import re<br>
&gt; &gt; +<br>
&gt; &gt; + =A0 =A0# Remove egl and gles2 configure options<br>
&gt; &gt; + =A0 =A0extra_oeconf =3D d.getVar(&#39;EXTRA_OECONF&#39;, True).=
split()<br>
&gt; &gt; + =A0 =A0take_out =3D [&#39;--enable-egl&#39;, &#39;--enable-gles=
2&#39;, &#39;--enable-gles1&#39;]<br>
&gt; &gt; + =A0 =A0put_in =3D [&#39;--disable-egl&#39;, &#39;--disable-gles=
2&#39;, &#39;--disable-gles1&#39;]<br>
&gt; &gt; + =A0 =A0pattern =3D re.compile(&quot;--with-egl-platforms&quot;)=
<br>
&gt; &gt; + =A0 =A0new_extra_oeconf =3D []<br>
&gt; &gt; + =A0 =A0for i in extra_oeconf:<br>
&gt; &gt; + =A0 =A0 =A0 =A0if i not in take_out and not pattern.match(i):<b=
r>
&gt; &gt; + =A0 =A0 =A0 =A0 =A0 =A0new_extra_oeconf.append(i)<br>
&gt; &gt; + =A0 =A0for i in put_in:<br>
&gt; &gt; + =A0 =A0 =A0 =A0new_extra_oeconf.append(i)<br>
&gt; &gt; + =A0 =A0d.setVar(&#39;EXTRA_OECONF&#39;, &#39; &#39;.join(new_ex=
tra_oeconf))<br>
&gt; &gt; +<br>
&gt; &gt; + =A0 =A0# Remove egl and gles2 from provides<br>
&gt; &gt; + =A0 =A0provides =3D d.getVar(&#39;PROVIDES&#39;, True).split()<=
br>
&gt; &gt; + =A0 =A0take_out =3D [&#39;virtual/libgles2&#39;, &#39;virtual/e=
gl&#39;, &#39;virtual/libgles1&#39;]<br>
&gt; &gt; + =A0 =A0new_provides =3D []<br>
&gt; &gt; + =A0 =A0for i in provides:<br>
&gt; &gt; + =A0 =A0 =A0 =A0if i not in take_out:<br>
&gt; &gt; + =A0 =A0 =A0 =A0 =A0 =A0new_provides.append(i)<br>
&gt; &gt; + =A0 =A0d.setVar(&#39;PROVIDES&#39;, &#39; &#39;.join(new_provid=
es))<br>
&gt; &gt; +<br>
&gt; &gt; + =A0 =A0# We are now machine specific<br>
&gt; &gt; + =A0 =A0d.setVar(&#39;PACKAGE_ARCH&#39;, d.getVar(&#39;MACHINE_A=
RCH&#39;))<br>
&gt; &gt; +}<br>
&gt;<br>
&gt; This really needs to check whether MACHINE=3D&quot;raspberrypi&quot; b=
efore<br>
&gt; changing anything. I keep the same stack of layers and just change<br>
&gt; MACHINE when building for raspberrypi and beagleboard.<br>
<br></div></div></blockquote><div><br></div><div style>That&#39;s definitel=
y a good idea. Already merged the patch but will rebase / add a new commit.=
 =A0</div><div>=A0</div><blockquote class=3D"gmail_quote" style=3D"margin:0=
 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">

<div class=3D"HOEnZb"><div class=3D"h5">
</div></div>Be aware that it would make mesa (and everything depending on m=
esa)<br>
effectively MACHINE_ARCH.<br></blockquote><div><br></div><div style>I am aw=
are of that but I don&#39;t see how to avoid this...=A0</div></div><div><br=
></div>-- <br><div dir=3D"ltr"><div style=3D"text-align:center"></div><div =
style=3D"text-align:center">

<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--001a11c25b48ece09504e4a63d03--
