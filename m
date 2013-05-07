Return-Path: <zaifupb@gmail.com>
Received: from mail-qe0-f48.google.com (mail-qe0-f48.google.com
	[209.85.128.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0BAAFE0127D
	for <yocto@yoctoproject.org>; Tue,  7 May 2013 15:15:28 -0700 (PDT)
Received: by mail-qe0-f48.google.com with SMTP id 9so674305qea.7
	for <yocto@yoctoproject.org>; Tue, 07 May 2013 15:15:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=B223etMs8BxFNXrU3JZy1OOE/PQdH3pnTYkGjIwOGPg=;
	b=0ok+6030F4Hn5Ez+H4swIU5hWrPKddeWTbVdXi4cZZwHmYkDk4A0ARale1YGkRJGhI
	NEhU/BqxHgWNzY+P6GMAE5qLv6ZklpM7DrD+EOEVDgF92lO6D6onRjgRwIUr4fojXMJ5
	3hDB916vo0Aq4cpsWCjMR/R6sePvtRhhLoFkWG1/542QpIHYPDjX8JUcxUBwbuvPj+Fq
	QtFirjIPu3kOqWzDKTKl2OzGN2QeqpU59f+kw1ZyBRVkRp4jrLgruzWkgeo2gduPJHix
	kUmhd6Mu1OjjfxhY0JCDBfPlEs9EoXjuTOxG2VHImQuEqhwCKOztNh72fla9dLAbDxtE
	DqJw==
MIME-Version: 1.0
X-Received: by 10.224.190.137 with SMTP id di9mr3029613qab.95.1367964928160;
	Tue, 07 May 2013 15:15:28 -0700 (PDT)
Received: by 10.229.164.76 with HTTP; Tue, 7 May 2013 15:15:28 -0700 (PDT)
In-Reply-To: <BA6FC03EA0815D428FB8A3C279ED49920740DE8F@mx.toyon.corp>
References: <CABx0rKFD26wSiabvtxBgYNVJw-uZNKddDbgDwpi3d6cb1EyCag@mail.gmail.com>
	<BA6FC03EA0815D428FB8A3C279ED49920740DE8F@mx.toyon.corp>
Date: Wed, 8 May 2013 00:15:28 +0200
Message-ID: <CABx0rKFFXwXhxz-2foVk5wLOsaeKsXn6wkSwm=F=SLX9cW4huA@mail.gmail.com>
From: Zaif upb <zaifupb@gmail.com>
To: Richard Cagley <rcagley@toyon.com>
Cc: yocto@yoctoproject.org
Subject: Re: Building Custom Images- Need help
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
X-List-Received-Date: Tue, 07 May 2013 22:15:29 -0000
Content-Type: multipart/alternative; boundary=20cf300fb30b9bfcee04dc28279d

--20cf300fb30b9bfcee04dc28279d
Content-Type: text/plain; charset=ISO-8859-1

Hello Richard,

I do not know about that tool. I will use it and will get back if i got
struck.

Thank You for your help and reply.


On Wed, May 8, 2013 at 12:05 AM, Richard Cagley <rcagley@toyon.com> wrote:

> Have you tried hob?****
>
> https://www.yoctoproject.org/documentation/hob-manual****
>
> ** **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Zaif upb
> *Sent:* Tuesday, May 07, 2013 2:52 PM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] Building Custom Images- Need help****
>
> ** **
>
> Hi all,****
>
> I am newbie for Yocto project, please help me.
>
>  I would like to know the process of making custom image for gumstix. I
> have been through this
> http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.html#usingpoky-extend-addpkg
> manual but things are not clear yet.****
>
> I can successfully build *gumstix-console-image. *I need to integrate
> Gstreamer and OpenCV libraries into that image. I do not know how to
> proceed. ****
>
> I edited *gumstix-console-image*.bb file according to  Streaming video
> with Gumstix<http://www.jumpnowtek.com/?option=com_content&view=article&id=81:gumstix-dsp-gstreamer&catid=35:gumstix&Itemid=67>as mentioned here for Gstreamer. It breaks badly.
> ****
>
> Any Idea how can I integrate them in my Image?****
>
> Thank You for your Help.****
>
> Regards,****
>
> Zaifupb****
>

--20cf300fb30b9bfcee04dc28279d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello Richard,<div><br></div><div style>I do not know abou=
t that tool. I will use it and will get back if i got struck.</div><div sty=
le><br></div><div style>Thank You for your help and reply.</div></div><div =
class=3D"gmail_extra">
<br><br><div class=3D"gmail_quote">On Wed, May 8, 2013 at 12:05 AM, Richard=
 Cagley <span dir=3D"ltr">&lt;<a href=3D"mailto:rcagley@toyon.com" target=
=3D"_blank">rcagley@toyon.com</a>&gt;</span> wrote:<br><blockquote class=3D=
"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding=
-left:1ex">
<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple"><div><p class=3D"MsoNorm=
al"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1f497d">Have you tried hob?<u></u><u></u></span></p>=
<p class=3D"MsoNormal">
<a href=3D"https://www.yoctoproject.org/documentation/hob-manual" target=3D=
"_blank">https://www.yoctoproject.org/documentation/hob-manual</a><u></u><u=
></u></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family=
:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u=
></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt"><div><div style=3D"border:none;border-top:solid #b5c4df 1.0pt;paddin=
g:3.0pt 0in 0in 0in"><p class=3D"MsoNormal"><b><span style=3D"font-size:10.=
0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b>=
<span style=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-s=
erif&quot;"> <a href=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_b=
lank">yocto-bounces@yoctoproject.org</a> [mailto:<a href=3D"mailto:yocto-bo=
unces@yoctoproject.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a=
>] <b>On Behalf Of </b>Zaif upb<br>
<b>Sent:</b> Tuesday, May 07, 2013 2:52 PM<br><b>To:</b> <a href=3D"mailto:=
yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><br><b>=
Subject:</b> [yocto] Building Custom Images- Need help<u></u><u></u></span>=
</p>
</div></div><div><div class=3D"h5"><p class=3D"MsoNormal"><u></u>=A0<u></u>=
</p><div><div><div><div><div><div><div><div><p class=3D"MsoNormal" style=3D=
"margin-bottom:12.0pt">Hi all,<u></u><u></u></p></div><p class=3D"MsoNormal=
" style=3D"margin-bottom:12.0pt">
I am newbie for Yocto project, please help me.<br><br>=A0I would like to kn=
ow the process of making custom image for gumstix. I have been through this=
=A0 <a href=3D"http://www.yoctoproject.org/docs/1.4/dev-manual/dev-manual.h=
tml#usingpoky-extend-addpkg" target=3D"_blank">http://www.yoctoproject.org/=
docs/1.4/dev-manual/dev-manual.html#usingpoky-extend-addpkg</a>=A0 manual b=
ut things are not clear yet.<u></u><u></u></p>
</div><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I can successfu=
lly build <i>gumstix-console-image. </i>I need to integrate Gstreamer and O=
penCV libraries into that image. I do not know how to proceed. <u></u><u></=
u></p>
</div><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">I edited <i>gum=
stix-console-image</i>.bb file according to=A0=A0<a href=3D"http://www.jump=
nowtek.com/?option=3Dcom_content&amp;view=3Darticle&amp;id=3D81:gumstix-dsp=
-gstreamer&amp;catid=3D35:gumstix&amp;Itemid=3D67" target=3D"_blank">Stream=
ing video with Gumstix</a> as mentioned here for Gstreamer. It breaks badly=
.<u></u><u></u></p>
</div><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Any Idea how ca=
n I integrate them in my Image?<u></u><u></u></p></div><p class=3D"MsoNorma=
l" style=3D"margin-bottom:12.0pt">Thank You for your Help.<u></u><u></u></p=
></div>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p></div><p class=3D"MsoNorma=
l">Zaifupb<u></u><u></u></p></div></div></div></div></div></div></blockquot=
e></div><br></div>

--20cf300fb30b9bfcee04dc28279d--
