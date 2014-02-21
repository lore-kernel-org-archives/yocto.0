Return-Path: <andrei@gherzan.ro>
Received: from mail-ve0-f179.google.com (mail-ve0-f179.google.com
	[209.85.128.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B00FE00809
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 04:26:33 -0800 (PST)
Received: by mail-ve0-f179.google.com with SMTP id jx11so3213981veb.10
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 04:26:32 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=d/og1RVyBpvJVGNOTl+EY+cGh39tmCCO+JDperI+KHY=;
	b=Uo4P5t6z6LXP0FJt2pfiVpdX1rQmyCHTBZXMAnEut4wjiMsiISBimV5TO/gpq1deCc
	M8bdf2mNI6/F6x2IsbWzUg35iZiF220k8/3gfZ9GD+ca5bPRQ8LrpGsmUejWdbu58Eif
	GrNaD7iHd/8GLXbpqot3K8sJBmEYWmgjaB65dfGv0jL0K2Fc/B7NLyX1FvNZKfAoK/u9
	F5BsC+6jcOePyevBLa2MPlg0DrLd7RmkHsCi2GUOkImAM8iWdqsj6krWiy/oZexVNWVV
	Cr/z6k5fDNNwi85Wu66reR9OLCHHofkDDYnhdGyDlvWToDeq2eddHfchEYgaPMZvWUSz
	n0Ng==
X-Gm-Message-State: ALoCoQlPhleE2lTVZbar5Mqtej53x/G0jtP3Y2owhFOxqSzCqpdWybMsoFrjabYf/VKMvM09HrXx
X-Received: by 10.220.139.198 with SMTP id f6mr4475609vcu.47.1392985592594;
	Fri, 21 Feb 2014 04:26:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.244.138 with HTTP; Fri, 21 Feb 2014 04:26:11 -0800 (PST)
X-Originating-IP: [89.121.200.106]
In-Reply-To: <1392981014-9412-1-git-send-email-net147@gmail.com>
References: <1392981014-9412-1-git-send-email-net147@gmail.com>
From: Andrei Gherzan <andrei@gherzan.ro>
Date: Fri, 21 Feb 2014 14:26:11 +0200
Message-ID: <CAK18fxFiq_fdnxrrJy-jAhpWq0VgcLWdj6dagq9=MkV4XZ3+ow@mail.gmail.com>
To: Jonathan Liu <net147@gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] mesa: rename .bbappend to match new version from oe-core
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
X-List-Received-Date: Fri, 21 Feb 2014 12:26:34 -0000
Content-Type: multipart/alternative; boundary=047d7b3439406c983d04f2e9bb2b

--047d7b3439406c983d04f2e9bb2b
Content-Type: text/plain; charset=ISO-8859-1

On Fri, Feb 21, 2014 at 1:10 PM, Jonathan Liu <net147@gmail.com> wrote:

> Change-Id: Ie3c7bc3e70bfd46cea64ef813c3875d1ba8d07fc
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-graphics/mesa/{mesa_9.2.2.bbappend => mesa_9.2.5.bbappend} | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  rename recipes-graphics/mesa/{mesa_9.2.2.bbappend => mesa_9.2.5.bbappend}
> (100%)
>
> diff --git a/recipes-graphics/mesa/mesa_9.2.2.bbappend
> b/recipes-graphics/mesa/mesa_9.2.5.bbappend
> similarity index 100%
> rename from recipes-graphics/mesa/mesa_9.2.2.bbappend
> rename to recipes-graphics/mesa/mesa_9.2.5.bbappend
>

Merged in master. Thanks.

-- 
*Andrei Gherzan*
m: +40.744.478.414 |  f: +40.31.816.28.12

--047d7b3439406c983d04f2e9bb2b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Fri, Feb 21, 2014 at 1:10 PM, Jonathan Liu <span dir=3D"ltr">&lt=
;<a href=3D"mailto:net147@gmail.com" target=3D"_blank">net147@gmail.com</a>=
&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Change-Id: Ie3c7bc3e70bfd46cea64ef813c3875d1=
ba8d07fc<br>
Signed-off-by: Jonathan Liu &lt;<a href=3D"mailto:net147@gmail.com">net147@=
gmail.com</a>&gt;<br>
---<br>
=A0recipes-graphics/mesa/{mesa_9.2.2.bbappend =3D&gt; mesa_9.2.5.bbappend} =
| 0<br>
=A01 file changed, 0 insertions(+), 0 deletions(-)<br>
=A0rename recipes-graphics/mesa/{mesa_9.2.2.bbappend =3D&gt; mesa_9.2.5.bba=
ppend} (100%)<br>
<br>
diff --git a/recipes-graphics/mesa/mesa_9.2.2.bbappend b/recipes-graphics/m=
esa/mesa_9.2.5.bbappend<br>
similarity index 100%<br>
rename from recipes-graphics/mesa/mesa_9.2.2.bbappend<br>
rename to recipes-graphics/mesa/mesa_9.2.5.bbappend<br></blockquote><div><b=
r></div><div>Merged in master. Thanks.=A0</div></div><div><br></div>-- <br>=
<div dir=3D"ltr"><div style=3D"text-align:center"></div><div style=3D"text-=
align:center">

<div align=3D"left" style=3D"font-family:&#39;Times New Roman&#39;;font-siz=
e:medium"><b style=3D"color:rgb(51,51,51);font-family:Arial;font-size:small=
;text-align:center">Andrei Gherzan</b><font face=3D"Arial" color=3D"#333333=
" size=3D"-1"><br>

</font><font face=3D"Arial" color=3D"#333333" size=3D"-1">m: +40.744.478.41=
4 | =A0f: +40.31.816.28.12</font><br></div></div></div>
</div></div>

--047d7b3439406c983d04f2e9bb2b--
