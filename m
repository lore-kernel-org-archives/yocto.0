Return-Path: <diego.sueiro@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D00EE00830; Fri, 24 Oct 2014 04:06:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (diego.sueiro[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.54 listed in list.dnswl.org]
Received: from mail-qg0-f54.google.com (mail-qg0-f54.google.com
	[209.85.192.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1BC26E0079E
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:06:21 -0700 (PDT)
Received: by mail-qg0-f54.google.com with SMTP id f51so725798qge.27
	for <yocto@yoctoproject.org>; Fri, 24 Oct 2014 04:06:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=qafxrAMNGroSbbY9j1xRLsTwOSEA0pM/F50+d5hKCZE=;
	b=u/czWaveCs8O1QEvW/ETEsJsjnYwxYt6VKl0D+55N031/8/Z20+GPqBY7enH/WCVfO
	uAlvOso2Fq6MoFk0j3X6ZbCODs9SAjTOvVQGxYu5ALAaRWesqQ7Xhsn1IqbEwtruZaHP
	YOUroKzLpjR+BdJw5qNYe1fwSaIw8WY20k9J19Jyk6F5abBZfjjABB7FFiN2i/hqquNO
	d1XdQzPfb4Gd5/CUBsQiUmoRAJXgpiw9n0aun3XublhR2+ZJj3iaPH+FCMWfXKiWaPHU
	XrnNiGiUEmwLi/fGSe0NMXTp2ANVC49CIYLuN5W+TlDWt+elkPBdcZJWoz3VRmteMy9u
	lMLQ==
X-Received: by 10.170.149.133 with SMTP id q127mr5336997ykc.90.1414148780969; 
	Fri, 24 Oct 2014 04:06:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.82.20 with HTTP; Fri, 24 Oct 2014 04:06:00 -0700 (PDT)
In-Reply-To: <14941a5ee26.12063369a129838.8774317176061551786@vtitan.com>
References: <14941a5ee26.12063369a129838.8774317176061551786@vtitan.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Fri, 24 Oct 2014 09:06:00 -0200
Message-ID: <CAMCfZKHH88UfJgTsAze-Osu70CppqZ-iQPxU+kYpxEJ7MozHbw@mail.gmail.com>
To: prashanthg <prashanthg@vtitan.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto Daisy - Beaglebone Black - core-image-minimal - Error: do_compile
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
X-List-Received-Date: Fri, 24 Oct 2014 11:06:29 -0000
Content-Type: multipart/alternative; boundary=001a113a8670bfd3b90506292b46

--001a113a8670bfd3b90506292b46
Content-Type: text/plain; charset=ISO-8859-1

Hi prashanthg,

On Fri, Oct 24, 2014 at 8:24 AM, prashanthg <prashanthg@vtitan.com> wrote:

> I have been facing issues with 'bitbake core-image-minimal' with Qt5
> library added for BBB.
>
> Error Log: http://pastebin.com/ADdyJnz8
>
> Build Configuration:
> BB_VERSION        = "1.22.0"
> BUILD_SYS         = "i686-linux"
> NATIVELSBSTRING   = "Ubuntu-13.10"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "beaglebone"
> DISTRO            = "poky"
> DISTRO_VERSION    = "1.6.1"
> TUNE_FEATURES     = "armv7a vfp neon callconvention-hard cortexa8"
> TARGET_FPU        = "vfp-neon"
> meta
> meta-yocto
> meta-yocto-bsp    = "daisy:bda51ee7821de9120f6f536fcabe592f2a0c8a37"
> meta-oe           = "daisy:518cd119a8724dbd485a5d5c5047de59e8fbd652"
> meta-ti           = "daisy:80924d3bba59d6920217216c73af43fdd40d0152"
> meta-qt5          = "daisy:c29c317e0f22202bfaa85329a580564bbc179089"
>
> It would be great if you can help me solve this issue.
>
> Thanks and Regards,
> Prashanth


I have Qt5.3.2 (meta-qt5 on master branch) with accelerated graphics built
and running on BBB.
I did not have seen this error.

Note that you need to remove meta-yocto-bsp from your bblayers.conf to get
the BSP support from meta-ti.


Regards,

--
*dS
Diego Sueiro

Administrador do Embarcados
www.embarcados.com.br
<http://www.embarcados.com.br/?utm_source=assinatura_diego&utm_medium=e-mail&utm_campaign=Assinatura%20Email%20Diego>

/*long live rock 'n roll*/

--001a113a8670bfd3b90506292b46
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra">Hi prashanthg,</div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Fri, Oct 24, 2014 at 8:2=
4 AM, prashanthg <span dir=3D"ltr">&lt;<a href=3D"mailto:prashanthg@vtitan.=
com" target=3D"_blank">prashanthg@vtitan.com</a>&gt;</span> wrote:<br><bloc=
kquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #cc=
c solid;padding-left:1ex"><font face=3D"verdana">I have been facing issues =
with &#39;bitbake core-image-minimal&#39; with Qt5 library added for BBB.<b=
r><br>Error Log: <a href=3D"http://pastebin.com/ADdyJnz8" target=3D"_blank"=
>http://pastebin.com/ADdyJnz8</a><br><br>Build Configuration:<br>BB_VERSION=
=A0=A0=A0=A0=A0=A0=A0 =3D &quot;1.22.0&quot;<br>BUILD_SYS=A0=A0=A0=A0=A0=A0=
=A0=A0 =3D &quot;i686-linux&quot;<br>NATIVELSBSTRING=A0=A0 =3D &quot;Ubuntu=
-13.10&quot;<br>TARGET_SYS=A0=A0=A0=A0=A0=A0=A0 =3D &quot;arm-poky-linux-gn=
ueabi&quot;<br>MACHINE=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;beaglebone&q=
uot;<br>DISTRO=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;poky&quot;<br>DIS=
TRO_VERSION=A0=A0=A0 =3D &quot;1.6.1&quot;<br>TUNE_FEATURES=A0=A0=A0=A0 =3D=
 &quot;armv7a vfp neon callconvention-hard cortexa8&quot;<br>TARGET_FPU=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;vfp-neon&quot;<br>meta=A0=A0=A0=A0=A0=A0=A0=A0=
=A0=A0=A0=A0=A0 <br>meta-yocto=A0=A0=A0=A0=A0=A0=A0 <br>meta-yocto-bsp=A0=
=A0=A0 =3D &quot;daisy:bda51ee7821de9120f6f536fcabe592f2a0c8a37&quot;<br>me=
ta-oe=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;daisy:518cd119a8724dbd485a5d5=
c5047de59e8fbd652&quot;<br>meta-ti=A0=A0=A0=A0=A0=A0=A0=A0=A0=A0 =3D &quot;=
daisy:80924d3bba59d6920217216c73af43fdd40d0152&quot;<br>meta-qt5=A0=A0=A0=
=A0=A0=A0=A0=A0=A0 =3D &quot;daisy:c29c317e0f22202bfaa85329a580564bbc179089=
&quot;<br><br>It would be great if you can help me solve this issue.<br><br=
>Thanks and Regards,<br>Prashanth</font></blockquote></div><br>I have Qt5.3=
.2 (meta-qt5 on master branch) with accelerated graphics built and running =
on BBB.</div><div class=3D"gmail_extra">I did not have seen this error.</di=
v><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Note that=
 you need to remove meta-yocto-bsp from your bblayers.conf to get the BSP s=
upport from meta-ti.<br><br><br clear=3D"all"><div><div dir=3D"ltr"><div>Re=
gards,</div><div><br></div>--<br>*dS<br>Diego Sueiro<br><br>Administrador d=
o Embarcados<br><a href=3D"http://www.embarcados.com.br/?utm_source=3Dassin=
atura_diego&amp;utm_medium=3De-mail&amp;utm_campaign=3DAssinatura%20Email%2=
0Diego" target=3D"_blank">www.embarcados.com.br</a><br><br>/*long live rock=
 &#39;n roll*/<br></div></div>
</div></div>

--001a113a8670bfd3b90506292b46--
