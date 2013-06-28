Return-Path: <satyaswaroop.damarla@gmail.com>
Received: from mail-vb0-f54.google.com (mail-vb0-f54.google.com
	[209.85.212.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AB4FBE01482
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 23:41:42 -0700 (PDT)
Received: by mail-vb0-f54.google.com with SMTP id q12so1408864vbe.41
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 23:41:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=ekwiKHMT3leoER5QbwC5unvEGBF59OWuCgabPzqc2So=;
	b=ROwDndAADCj+StM+QGFzdx6Yc+QSqIzj6aXpeG5MK9rZrazVM79+icNnO2wz6JJQBB
	0P3+O/BYD0cO/aFZwBTVRIt+4/u0rzs6iqbtwxR0IHyzT99VaAgTe9s/Uwta6TGeCU2u
	l+RF1fWwjfrW/SV26qotKJTvEdTRip1GUPPEM94oCslxNdHLjac3rioD0RvSEHRP7q93
	LTxM4M2t37UvIpiz5v/I9Uy3/izdb1WAtgFk6Kt5htm9AjFFkpUv41gyn8XnaF2YXa7d
	rXxr6+6Z0NwV68PxyeHAXS27yYytgo7/f7yUrBoD7jgiR1GfvKwC1X8vpM/D24U4P1Qv
	WcUg==
MIME-Version: 1.0
X-Received: by 10.52.164.227 with SMTP id yt3mr4262066vdb.107.1372401702024;
	Thu, 27 Jun 2013 23:41:42 -0700 (PDT)
Received: by 10.52.94.241 with HTTP; Thu, 27 Jun 2013 23:41:41 -0700 (PDT)
In-Reply-To: <20130627164803.09187edf@e6520eb>
References: <CAFMfyzL4zn208FJUOsBq8ZqCU3RejEJ0F8-XzEDVf0xSrGGWrw@mail.gmail.com>
	<20130627164019.133ccec1@e6520eb> <20130627164803.09187edf@e6520eb>
Date: Fri, 28 Jun 2013 08:41:41 +0200
Message-ID: <CAFMfyz+JwrUL_CYEnq76PF7KhyxuBiz8hNkuqBm0renUQVn4ng@mail.gmail.com>
From: DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com>
To: =?ISO-8859-1?Q?Eric_B=E9nard?= <eric@eukrea.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Qt4 - qmake in toolchain for Qt/X11
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
X-List-Received-Date: Fri, 28 Jun 2013 06:41:43 -0000
Content-Type: multipart/alternative; boundary=001a11c20692f03af704e0312ba0

--001a11c20692f03af704e0312ba0
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi Eric,

Can you explain how does that work.. I develop an application on qte and it
works on qt/x11... Is it because qt is cross-platform compatible...

Greets,
Sati


On Thu, Jun 27, 2013 at 4:48 PM, Eric B=E9nard <eric@eukrea.com> wrote:

> Le Thu, 27 Jun 2013 16:40:19 +0200,
> Eric B=E9nard <eric@eukrea.com> a =E9crit :
>
> > Hi,
> >
> > Le Thu, 27 Jun 2013 11:01:11 +0200,
> > DAMARLA Satya Swaroop <satyaswaroop.damarla@gmail.com> a =E9crit :
> > > I have a small confusion.... In my image, I have normal Qt4 packages
> > > installed and they are working good. Now, when I wanted to develop a =
Qt
> > > application for my image, I compiled a toolchain but unfortunately, I
> don't
> > > find qmake installed.
> > >
> > > After browsing the directories I found the following
> > >
> > > damarla@linuxbuildsrv:~/openYocto/poky/meta/recipes-qt/packagegroups$
> ls -la
> > > total 40
> > > drwxrwxr-x 2 damarla damarla 4096 Jun 17 13:50 .
> > > drwxrwxr-x 9 damarla damarla 4096 Jun 17 13:50 ..
> > > -rw-rw-r-- 1 damarla damarla  104 Jun 17 13:50
> > > nativesdk-packagegroup-qte-toolchain-host.bb
> > > -rw-rw-r-- 1 damarla damarla   95 Jun 17 13:50
> > > nativesdk-packagegroup-qt-toolchain-host.bb
> > > -rw-rw-r-- 1 damarla damarla  178 Jun 17 13:50
> > > nativesdk-packagegroup-qt-toolchain-host.inc
> > > -rw-rw-r-- 1 damarla damarla 1458 Jun 17 13:50
> packagegroup-core-qt4e.bb
> > > -rw-rw-r-- 1 damarla damarla  501 Jun 17 13:50 packagegroup-core-qt.b=
b
> > > -rw-rw-r-- 1 damarla damarla  136 Jun 17 13:50
> > > packagegroup-qte-toolchain-target.bb
> > > -rw-rw-r-- 1 damarla damarla  335 Jun 17 13:50
> > > packagegroup-qt-toolchain-target.bb
> > > -rw-rw-r-- 1 damarla damarla 1123 Jun 17 13:50
> > > packagegroup-qt-toolchain-target.inc
> > >
> > > Now in order to get "qmake" for my toolchain I am not able to
> understand
> > > which package group should I include from the above.
> >
> > bitbake meta-toolchain-qte
> > recipe in :
> > ./meta/recipes-qt/meta/meta-toolchain-qte.bb
> >
> oops sorry I didn't read you wanted Qt/X11 :-(
>
> Anyway you can base your work one meta-toolchain-qte to integrate the
> Qt/X11 packages.
>
> Eric
>

--001a11c20692f03af704e0312ba0
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Eric,<div><br></div><div>Can you explain how does that =
work.. I develop an application on qte and it works on qt/x11... Is it beca=
use qt is cross-platform compatible...</div><div><br></div><div>Greets,</di=
v>
<div>Sati</div></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail=
_quote">On Thu, Jun 27, 2013 at 4:48 PM, Eric B=E9nard <span dir=3D"ltr">&l=
t;<a href=3D"mailto:eric@eukrea.com" target=3D"_blank">eric@eukrea.com</a>&=
gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Le Thu, 27 Jun 2013 16:40:19 +0200,<br>
Eric B=E9nard &lt;<a href=3D"mailto:eric@eukrea.com">eric@eukrea.com</a>&gt=
; a =E9crit :<br>
<div><div class=3D"h5"><br>
&gt; Hi,<br>
&gt;<br>
&gt; Le Thu, 27 Jun 2013 11:01:11 +0200,<br>
&gt; DAMARLA Satya Swaroop &lt;<a href=3D"mailto:satyaswaroop.damarla@gmail=
.com">satyaswaroop.damarla@gmail.com</a>&gt; a =E9crit :<br>
&gt; &gt; I have a small confusion.... In my image, I have normal Qt4 packa=
ges<br>
&gt; &gt; installed and they are working good. Now, when I wanted to develo=
p a Qt<br>
&gt; &gt; application for my image, I compiled a toolchain but unfortunatel=
y, I don&#39;t<br>
&gt; &gt; find qmake installed.<br>
&gt; &gt;<br>
&gt; &gt; After browsing the directories I found the following<br>
&gt; &gt;<br>
&gt; &gt; damarla@linuxbuildsrv:~/openYocto/poky/meta/recipes-qt/packagegro=
ups$ ls -la<br>
&gt; &gt; total 40<br>
&gt; &gt; drwxrwxr-x 2 damarla damarla 4096 Jun 17 13:50 .<br>
&gt; &gt; drwxrwxr-x 9 damarla damarla 4096 Jun 17 13:50 ..<br>
&gt; &gt; -rw-rw-r-- 1 damarla damarla =A0104 Jun 17 13:50<br>
&gt; &gt; <a href=3D"http://nativesdk-packagegroup-qte-toolchain-host.bb" t=
arget=3D"_blank">nativesdk-packagegroup-qte-toolchain-host.bb</a><br>
&gt; &gt; -rw-rw-r-- 1 damarla damarla =A0 95 Jun 17 13:50<br>
&gt; &gt; <a href=3D"http://nativesdk-packagegroup-qt-toolchain-host.bb" ta=
rget=3D"_blank">nativesdk-packagegroup-qt-toolchain-host.bb</a><br>
&gt; &gt; -rw-rw-r-- 1 damarla damarla =A0178 Jun 17 13:50<br>
&gt; &gt; nativesdk-packagegroup-qt-toolchain-host.inc<br>
&gt; &gt; -rw-rw-r-- 1 damarla damarla 1458 Jun 17 13:50 <a href=3D"http://=
packagegroup-core-qt4e.bb" target=3D"_blank">packagegroup-core-qt4e.bb</a><=
br>
&gt; &gt; -rw-rw-r-- 1 damarla damarla =A0501 Jun 17 13:50 <a href=3D"http:=
//packagegroup-core-qt.bb" target=3D"_blank">packagegroup-core-qt.bb</a><br=
>
&gt; &gt; -rw-rw-r-- 1 damarla damarla =A0136 Jun 17 13:50<br>
&gt; &gt; <a href=3D"http://packagegroup-qte-toolchain-target.bb" target=3D=
"_blank">packagegroup-qte-toolchain-target.bb</a><br>
&gt; &gt; -rw-rw-r-- 1 damarla damarla =A0335 Jun 17 13:50<br>
&gt; &gt; <a href=3D"http://packagegroup-qt-toolchain-target.bb" target=3D"=
_blank">packagegroup-qt-toolchain-target.bb</a><br>
&gt; &gt; -rw-rw-r-- 1 damarla damarla 1123 Jun 17 13:50<br>
&gt; &gt; packagegroup-qt-toolchain-target.inc<br>
&gt; &gt;<br>
&gt; &gt; Now in order to get &quot;qmake&quot; for my toolchain I am not a=
ble to understand<br>
&gt; &gt; which package group should I include from the above.<br>
&gt;<br>
&gt; bitbake meta-toolchain-qte<br>
&gt; recipe in :<br>
&gt; ./meta/recipes-qt/meta/<a href=3D"http://meta-toolchain-qte.bb" target=
=3D"_blank">meta-toolchain-qte.bb</a><br>
&gt;<br>
</div></div>oops sorry I didn&#39;t read you wanted Qt/X11 :-(<br>
<br>
Anyway you can base your work one meta-toolchain-qte to integrate the<br>
Qt/X11 packages.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Eric<br>
</font></span></blockquote></div><br></div>

--001a11c20692f03af704e0312ba0--
