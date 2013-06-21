Return-Path: <anna.dushistova@gmail.com>
Received: from mail-pb0-f53.google.com (mail-pb0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 19240E006E9;
	Thu, 20 Jun 2013 23:24:17 -0700 (PDT)
Received: by mail-pb0-f53.google.com with SMTP id xb12so7228373pbc.40
	for <multiple recipients>; Thu, 20 Jun 2013 23:24:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+gUy8GXdzbj2PFKW2JMGSdsyd9MzHTivhfCp39dwLX8=;
	b=qN1/1340vVHEQkqWeKgE3WSe6iKDgDaekMZZ+RUTqOEkkdbCfvoou497lkkkmhGt61
	tbMX8lsqnBXC2iZ0jfjPOpNxmRubpJwuu1j2d5yzMEXXUX3vePiGURW3n2Q2jvgHilyb
	OVPV48vQFgu12bgdgUVIHhzG5+JO7g2tRTQzMTVw5HGI6/QecBY6g0u48dyB+jwGypYM
	fAKgASMNJ+8HB6NQ34QDMjb4qRl4iD7yr9G9PerwL6Hg1BuSTg8/w5qSJPQqjlAOqy85
	fpr/vGLGqKlNjkATwjR37qZ+PSJrpg1HqErxl18vidKoq3IhhlLxC9XBWMMzSCIH089D
	MW5w==
MIME-Version: 1.0
X-Received: by 10.68.170.193 with SMTP id ao1mr10971392pbc.18.1371795857146;
	Thu, 20 Jun 2013 23:24:17 -0700 (PDT)
Received: by 10.68.221.130 with HTTP; Thu, 20 Jun 2013 23:24:16 -0700 (PDT)
In-Reply-To: <C25AF55E-9B30-43AC-B8BF-A648E791F298@gmail.com>
References: <DUB116-W138390BF0B4871C803B01A5988C0@phx.gbl>
	<C25AF55E-9B30-43AC-B8BF-A648E791F298@gmail.com>
Date: Fri, 21 Jun 2013 10:24:16 +0400
Message-ID: <CAKL3bWWTiZ6BwCqVfso6XxSD_b6O1EE7=m8EddPaY74NWHy+kA@mail.gmail.com>
From: Anna Dushistova <anna.dushistova@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: "meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: cannot bitbake/build.compile tcf-agent for use with fsl-image-gui-sdk
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
X-List-Received-Date: Fri, 21 Jun 2013 06:24:19 -0000
Content-Type: multipart/alternative; boundary=047d7b6d94a8c5096e04dfa41c15

--047d7b6d94a8c5096e04dfa41c15
Content-Type: text/plain; charset=ISO-8859-1

Hi everyone,

On Tue, Jun 18, 2013 at 7:24 PM, Khem Raj <raj.khem@gmail.com> wrote:

> <...>
>
> Seems a missing dep on OpenSSL btw does tcf-agent work on anything other
> than x86 ?
>
>
 First of all, it's possible to compile the agent with OpenSSL disabled,
you will need to set ENABLE_SSL to 0 in your CFLAGS, see
http://git.eclipse.org/c/tcf/org.eclipse.tcf.agent.git/tree/agent/tcf/config.h#n213
.

Then, tcf-agent as the means of communication works on all the main
platforms, and as of this upcoming release,
there is an initial debug support on ARM, see
http://wiki.eclipse.org/TCF/NewIn11.

Anna.

>
> At this point I have run out of ideas about how to prepare tcf-agent to
> install on my sabrelite fsl-image-gui-sdk rootfs....
> Any help would be most welcome.
>
> for example in the 1st case how could I run apt-get as is suggested in a
> manner that would be appropriate to update yocto sources?
>
> Thank you.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--047d7b6d94a8c5096e04dfa41c15
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi everyone,<br><br><div class=3D"gmail_quote">On Tue, Jun 18, 2013 at 7:24=
 PM, Khem Raj <span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" t=
arget=3D"_blank">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote cl=
ass=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;p=
adding-left:1ex">
<div dir=3D"auto"><div><div class=3D"h5"><div>&lt;...&gt;</div><div><br></d=
iv></div></div>Seems a missing dep on OpenSSL btw does tcf-agent work on an=
ything other than x86 ?<div><br></div></div></blockquote><div><br></div><di=
v>
=A0First of all, it&#39;s possible to compile the agent with OpenSSL disabl=
ed, you will need to set ENABLE_SSL to 0 in your CFLAGS, see <a href=3D"htt=
p://git.eclipse.org/c/tcf/org.eclipse.tcf.agent.git/tree/agent/tcf/config.h=
#n213">http://git.eclipse.org/c/tcf/org.eclipse.tcf.agent.git/tree/agent/tc=
f/config.h#n213</a>.</div>
<div><br></div><div>Then, tcf-agent as the means of communication works on =
all the main platforms, and as of this upcoming release,</div><div>there is=
 an initial debug support on ARM, see <a href=3D"http://wiki.eclipse.org/TC=
F/NewIn11">http://wiki.eclipse.org/TCF/NewIn11</a>.</div>
<div><br></div><div>Anna.</div><blockquote class=3D"gmail_quote" style=3D"m=
argin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"a=
uto"><div><div><div class=3D"im"><blockquote type=3D"cite"><div><div dir=3D=
"ltr"><font face=3D"Calibri">=A0</font><font face=3D"Calibri"><br>
</font>At this point I have run out of ideas about how to prepare tcf-agent=
 to install on my sabrelite fsl-image-gui-sdk rootfs....<br>Any help would =
be most welcome.<br><br>for example in the 1st case how could I run apt-get=
 as is suggested in a manner that would be appropriate to update yocto sour=
ces?<br>
<br>Thank you.<br> 		 	   		  </div>
</div></blockquote></div><blockquote type=3D"cite"><div><span>_____________=
__________________________________</span><br><span>yocto mailing list</span=
><br><span><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a></span><br>
<span><a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_=
blank">https://lists.yoctoproject.org/listinfo/yocto</a></span><br></div></=
blockquote></div></div></div><br>__________________________________________=
_____<br>

yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br>

--047d7b6d94a8c5096e04dfa41c15--
