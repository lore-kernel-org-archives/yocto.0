Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f179.google.com (mail-ie0-f179.google.com
	[209.85.223.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DBD61E017A4;
	Wed,  6 Nov 2013 15:42:16 -0800 (PST)
Received: by mail-ie0-f179.google.com with SMTP id aq17so392909iec.24
	for <multiple recipients>; Wed, 06 Nov 2013 15:42:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=7Mydlkv7LKkPigSQzZ3w6kydnAPtiBRLwSp7R4D4E6Q=;
	b=hhz6axqKN9T8NubsgcWYrGLRdHnbHtNaWkomrf8P5/rdz+foS/+R01MvzDtJHQpSy7
	14cEjIslKjbLHJNVKbybhhhS+6aEhD/Jz0IoGKXUMER1+eisuYCzFQbPcf92gH3HvrPb
	zKwrzfimTwE2Gmux1+9hQY4xAUnr2VhbKdxShRHbciNWz7LPN+4T32YKut9oVVm9SJTL
	ultEi4bSUpYILwJT9DnVZEEsHXmjQoO9W7boyIlyaChRT+sGSu2mInuFa+tw/+hguBn1
	bugSdQ9QfNhmEPYCOyEN82icXN3shXboyab+Azj+BMdSvYKgmnA3mhcwPFedZY8E54lL
	t/hg==
X-Received: by 10.50.87.36 with SMTP id u4mr135906igz.40.1383781335453; Wed,
	06 Nov 2013 15:42:15 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Wed, 6 Nov 2013 15:41:55 -0800 (PST)
In-Reply-To: <CAPhnLPCvpeN=VvM81DOWEAeLE-=vOb8eTtQ11JiOdoFre40t-w@mail.gmail.com>
References: <CAPhnLPCvpeN=VvM81DOWEAeLE-=vOb8eTtQ11JiOdoFre40t-w@mail.gmail.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Wed, 6 Nov 2013 21:41:55 -0200
Message-ID: <CAMCfZKG7Of4MbTCM-2VPd9_Ka6Y2yMSxgQnR-g_4cpuAGLLOLQ@mail.gmail.com>
To: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
Cc: yocto-announce@yoctoproject.org,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Toaster Alpha Release for dora-10.0.0
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
X-List-Received-Date: Wed, 06 Nov 2013 23:42:21 -0000
Content-Type: multipart/alternative; boundary=089e0111d0d8f2a8fc04ea8ab22a

--089e0111d0d8f2a8fc04ea8ab22a
Content-Type: text/plain; charset=ISO-8859-1

2013/11/6 Flanagan, Elizabeth <elizabeth.flanagan@intel.com>

> Please see the wiki on how to start the system.
>
> https://wiki.yoctoproject.org/wiki/Toaster#To_get_it_up_and_running:
>

The sequence of commands mentions to stop toaster and then opens
http://localhost:8000/, but if I do that the service is not available. So,
I believe that the sequence must be:

   - to see the web interface: xdg-open http://localhost:8000/
   - to stop Toaster: source toaster stop


Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--089e0111d0d8f2a8fc04ea8ab22a
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
2013/11/6 Flanagan, Elizabeth <span dir=3D"ltr">&lt;<a href=3D"mailto:eliza=
beth.flanagan@intel.com" target=3D"_blank">elizabeth.flanagan@intel.com</a>=
&gt;</span><br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":brq" style=3D"overflow:hidden">Please see the =
wiki on how to start the system.<br>


<br>
<a href=3D"https://wiki.yoctoproject.org/wiki/Toaster#To_get_it_up_and_runn=
ing" target=3D"_blank">https://wiki.yoctoproject.org/wiki/<span class=3D"">=
Toaster</span>#To_get_it_up_and_running</a>:</div></blockquote></div><br>Th=
e sequence of commands mentions to stop toaster and then opens=A0<a href=3D=
"http://localhost:8000/">http://localhost:8000/</a>, but if I do that the s=
ervice is not available. So, I believe that the sequence must be:</div>

<div class=3D"gmail_extra"><ul style><li style><span style=3D"color:rgb(0,0=
,0);font-family:sans-serif;font-size:12.727272033691406px;line-height:19.04=
8295974731445px">to see the web interface:=A0</span><code style=3D"backgrou=
nd-color:rgb(249,249,249);color:rgb(0,0,0);line-height:19.048295974731445px=
">xdg-open=A0<a href=3D"http://localhost:8000/" class=3D"" rel=3D"nofollow"=
 style=3D"text-decoration:none;color:rgb(51,102,187);background-image:url(h=
ttps://wiki.yoctoproject.org/wiki/skins/monobook/external.png);padding:0px =
13px 0px 0px;background-repeat:no-repeat no-repeat">http://localhost:8000/<=
/a></code><br>

</li><li style><span style=3D"color:rgb(0,0,0);font-family:sans-serif;font-=
size:12.727272033691406px;line-height:19.048295974731445px">to stop Toaster=
:=A0</span><code style=3D"background-color:rgb(249,249,249);color:rgb(0,0,0=
);line-height:19.048295974731445px">source toaster stop</code><br>

</li></ul><br clear=3D"all"><div><div dir=3D"ltr"><div>Regards,</div><div><=
br></div>--<br>*dS<br>Diego Sueiro<br><br>/*long live rock &#39;n roll*/</d=
iv></div>
</div></div>

--089e0111d0d8f2a8fc04ea8ab22a--
