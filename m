Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BE426E00D18; Thu, 26 Oct 2017 07:02:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5B93E00BE8
	for <yocto@yoctoproject.org>; Thu, 26 Oct 2017 07:02:37 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id r68so8562248wmr.3
	for <yocto@yoctoproject.org>; Thu, 26 Oct 2017 07:02:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kD3bNBetWjTIcN03g8sYz6LskMvpEyUxARQzDnVbXDY=;
	b=LD+i4IfY9Yvf3fR6OmnSSVww4Rs73wXv9hpeM0JN0rfLXg9jJtVOjXqmT4I2ua60/h
	p6tHpxIx/ZpGFVMzDAzswTqh4rhZkDe/VJ2zpeEWNs5F9U3iNjyEAaF6ZFQJCz8QW1u+
	HDs9dQMdj7X4WMqpcQcjFcFWMBqHjANRAyG5lWZB3gejcffhEMvzASVbyey9ad4eqPSq
	jd2TEkchX672kYk7nOvngWyLrCEMcuef/jahEuOGnFjDXvkQmIDJIiOeYB9ltBOJcYxf
	xfr8s0W6q7D5WN9nLYY589HLetXbPTFh7uD5WrDI5wRw+Hnz7jwmCYUY5QjUgJXH6PHF
	kIjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kD3bNBetWjTIcN03g8sYz6LskMvpEyUxARQzDnVbXDY=;
	b=kxa+xp/D0jE4/M21LEG3soCS5kyeG5vm2t7VLESmDVgkh/4t3K31Zz8zNBWsAli9m3
	T2dwoS4hDleG2OE9i81cLVCt/DHH29pfc+1WGsGVbs7VfcEim+tDsOa0ExyLuHNijQfo
	1YbExO9X9p+5myjzy/KUUfGianSaW8JTbvwpHmLKTa0yfTUQm1GQ82Y1Y0MLvac7QY7h
	BVwkDThdBf4eI22wiVLPlyjYbdnPHXO9eo1883Stq2mDqHDy6CPrYZE7kthr/NhLQrO8
	6hcfdkRoL0kXS2TztFsOdOQfQJZpLGAkJ2dFFEP8wyk9WyDSiPoF+j2lATjWs4v45Mc9
	G9lA==
X-Gm-Message-State: AMCzsaXQFzBkfRbkrBb9BiLbpVYNx/ii10BYHpq3s5t1x/wOAsk4eikL
	qzsHkhEWhiofVXh8QuEMVR0KNgsXy6RVPyyIHXo=
X-Google-Smtp-Source: ABhQp+SZc4bcCCh0z1Wa6GNgLJVhC2ZSdzn39kF6CoBBU2x79tUPda/GUGfMVy4Uc4/Ad92leZSz2uUxIISk6ACsQDQ=
X-Received: by 10.28.165.4 with SMTP id o4mr1743893wme.68.1509026556712; Thu,
	26 Oct 2017 07:02:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.67.131 with HTTP; Thu, 26 Oct 2017 07:02:35 -0700 (PDT)
In-Reply-To: <646e07c5-824a-1c4f-7643-6d41c17d8b72@windriver.com>
References: <886279436.3600717.1508846299490.ref@mail.yahoo.com>
	<886279436.3600717.1508846299490@mail.yahoo.com>
	<646e07c5-824a-1c4f-7643-6d41c17d8b72@windriver.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Thu, 26 Oct 2017 16:02:35 +0200
Message-ID: <CAGAf8LyX8ZLroOqdKG=e2_JDE9JKMEwfWWBfN+TA1BL7=0arsw@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: How /etc/shadow packed into my final image?
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
X-List-Received-Date: Thu, 26 Oct 2017 14:02:38 -0000
Content-Type: multipart/alternative; boundary="001a114bab7cde9d36055c739fd8"

--001a114bab7cde9d36055c739fd8
Content-Type: text/plain; charset="UTF-8"

Hello Chen,

Very interesting answer you did give on this email thread... I have learned
something useful, indeed. :-)

I did try what you have suggested on target, but also, out of curiosity, on
the host (Fedora 26).

And here is what I have on the host (CLI transcript follows):

[user@localhost modules]$ uname -r
4.13.8-200.fc26.x86_64
[user@localhost modules]$ rpm -qa | grep shadow
shadow-utils-4.3.1-3.fc26.x86_64
[user@localhost modules]$ rpm -q --scripts shadow
package shadow is not installed
[user@localhost modules]$ rpm -q --scripts shadow-utils
[user@localhost modules]$

I was, after all, surprised (expected the same/similar). Any idea why this
is different?

Should be the same/similar. I'll investigate further the host problem
(seems, something/some package is missing/not installed).

Thank you,
Zoran

On Wed, Oct 25, 2017 at 4:53 AM, ChenQi <Qi.Chen@windriver.com> wrote:

> On 10/24/2017 07:58 PM, Bacheh Karaji wrote:
>
> Hi,
>
> I wanted to modify the content of /etc/shadow,
> but don't know how /etc/shadow files is packed into final image.
>
> Can anybody how it is packed and way to modify it?
> Thanks
>
>
>
>
>
> The file is created in postinst of the shadow package.
>
> Codes are like below:
> root@qemux86-64:~# rpm -q --scripts shadow
> postinstall scriptlet (using /bin/sh):
> # shadow - postinst
>     if [ "x$D" != "x" ]; then
>       rootarg="--root $D"
>     else
>       rootarg=""
>     fi
>
>     pwconv $rootarg || exit 1
>     grpconv $rootarg || exit 1
> [snip]
>
> There are several ways to modify the file, depending on your purpose.
> If you just want to modify/add/delete user/group in recipe, please try to
> make use of useradd*.bbclass.
> http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-
> manual.html#ref-classes-useradd
>
> If you want to do user/group operation in conf file, please try to make
> use of extrausers.bbclass.
> http://www.yoctoproject.org/docs/2.3.2/mega-manual/mega-
> manual.html#ref-classes-extrausers
>
> The above should be basically enough.
>
> Best Regards,
> Chen Qi
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a114bab7cde9d36055c739fd8
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Chen,<div><br></div><div>Very interesting answer you=
 did give on this email thread... I have learned something useful, indeed. =
:-)</div><div><br></div><div>I did try what you have suggested on target, b=
ut also, out of curiosity, on the host (Fedora 26).</div><div><br></div><di=
v>And here is what I have on the host (CLI transcript follows):</div><div><=
br></div><div><div>[user@localhost modules]$ uname -r</div><div>4.13.8-200.=
fc26.x86_64</div></div><div>[user@localhost modules]$ rpm -qa | grep shadow=
</div><div>shadow-utils-4.3.1-3.fc26.x86_64</div><div>[user@localhost modul=
es]$ rpm -q --scripts shadow</div><div>package shadow is not installed</div=
><div>[user@localhost modules]$ rpm -q --scripts shadow-utils</div><div>[us=
er@localhost modules]$=C2=A0</div><div><br></div><div>I was, after all, sur=
prised (expected the same/similar). Any idea why this is different?</div><d=
iv><br></div><div>Should be the same/similar. I&#39;ll investigate further =
the host problem (seems, something/some package is missing/not installed).<=
/div><div><br></div><div>Thank you,</div><div>Zoran</div></div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Wed, Oct 25, 2017 at 4:5=
3 AM, ChenQi <span dir=3D"ltr">&lt;<a href=3D"mailto:Qi.Chen@windriver.com"=
 target=3D"_blank">Qi.Chen@windriver.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF" text=3D"#000000"><div><div class=3D"h5">
    <div class=3D"m_-1969087788699224504moz-cite-prefix">On 10/24/2017 07:5=
8 PM, Bacheh Karaji
      wrote:<br>
    </div>
    <blockquote type=3D"cite">
     =20
      <div style=3D"font-family:Helvetica Neue,Helvetica,Arial,sans-serif;f=
ont-size:10px">
        <div><font size=3D"3">Hi,</font></div>
        <div><font size=3D"3"><br>
          </font></div>
        <div><font size=3D"3">I wanted to modify the content of
            /etc/shadow,</font></div>
        <div><font size=3D"3">but don&#39;t know how=C2=A0</font><span styl=
e=3D"font-size:medium">/etc/shadow files is packed into
            final image.</span></div>
        <div><font size=3D"3"><br>
          </font></div>
        <div><font size=3D"3">Can anybody how it is packed and way to
            modify it?</font></div>
        <div><font size=3D"3">Thanks</font></div>
        <br>
        <br>
      </div>
      <br>
      <fieldset class=3D"m_-1969087788699224504mimeAttachmentHeader"></fiel=
dset>
      <br>
    </blockquote>
    <br></div></div>
    The file is created in postinst of the shadow package.<br>
    <br>
    Codes are like below:<br>
    root@qemux86-64:~# rpm -q --scripts shadow<br>
    postinstall scriptlet (using /bin/sh):<br>
    # shadow - postinst<br>
    =C2=A0=C2=A0=C2=A0 if [ &quot;x$D&quot; !=3D &quot;x&quot; ]; then<br>
    =C2=A0=C2=A0=C2=A0 =C2=A0 rootarg=3D&quot;--root $D&quot;<br>
    =C2=A0=C2=A0=C2=A0 else<br>
    =C2=A0=C2=A0=C2=A0 =C2=A0 rootarg=3D&quot;&quot;<br>
    =C2=A0=C2=A0=C2=A0 fi<br>
    <br>
    =C2=A0=C2=A0=C2=A0 pwconv $rootarg || exit 1<br>
    =C2=A0=C2=A0=C2=A0 grpconv $rootarg || exit 1<br>
    [snip]<br>
    <br>
    There are several ways to modify the file, depending on your
    purpose.<br>
    If you just want to modify/add/delete user/group in recipe, please
    try to make use of useradd*.bbclass.<br>
<a class=3D"m_-1969087788699224504moz-txt-link-freetext" href=3D"http://www=
.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-usera=
dd" target=3D"_blank">http://www.yoctoproject.org/<wbr>docs/2.3.2/mega-manu=
al/mega-<wbr>manual.html#ref-classes-<wbr>useradd</a><br>
    <br>
    If you want to do user/group operation in conf file, please try to
    make use of extrausers.bbclass.<br>
<a class=3D"m_-1969087788699224504moz-txt-link-freetext" href=3D"http://www=
.yoctoproject.org/docs/2.3.2/mega-manual/mega-manual.html#ref-classes-extra=
users" target=3D"_blank">http://www.yoctoproject.org/<wbr>docs/2.3.2/mega-m=
anual/mega-<wbr>manual.html#ref-classes-<wbr>extrausers</a><br>
    <br>
    The above should be basically enough.<br>
    <br>
    Best Regards,<br>
    Chen Qi<br>
    <br>
  </div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a114bab7cde9d36055c739fd8--
