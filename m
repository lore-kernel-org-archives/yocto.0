Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3F97FE00B93; Wed,  2 Nov 2016 07:21:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,MISSING_HEADERS,
	RCVD_IN_DNSWL_NONE,RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	*  1.0 MISSING_HEADERS Missing To: header
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.217.177 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
Received: from mail-ua0-f177.google.com (mail-ua0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC0A9E009FA
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 07:21:36 -0700 (PDT)
Received: by mail-ua0-f177.google.com with SMTP id 51so13757615uai.1
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 07:21:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:cc; 
	bh=NPQEWExReWuFDaz/cr06R6NmrAmnLoeKI598y3Da5e4=;
	b=EB0A9Zudx0pkp2QA33awYtZvhW2RPOKshdxqZT1K63G6eHIWAXN00kTE3SYgPlxJms
	PPxerDn0yUPm0/70nvfxGlsA+EC0zOySLETl0tQIjUpXQYkp1g+Lg9zt7Dr+BuzcTeEA
	xpcg7OKuv4ZFCFfKE/zTYcrJj+pMycniF8cs2XyMvgZSy+Di8jzlXabf4RFBfdfhHtM9
	cuIUWo/+nBKviAuP/kKILEQeiHTtQLBjc0mhR+cbTeSxzHN3jlLzNdi8RssumRYCJr0A
	+fVYJZQ82snNA0r7rDHLTh4NsKS9dlXEg68Tue4ErqlE7ve8gqyFvuPLAHgSXguh0kPP
	exHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:cc;
	bh=NPQEWExReWuFDaz/cr06R6NmrAmnLoeKI598y3Da5e4=;
	b=lAlYIIALSgHrPIgOYAqbEk79XTwrTcQD9Q4aWq9o5EnC5WpqNNBiRgfsGBLfvtkPXd
	Js0tfk5dPDbWdosMWVqLSzXIXYz7Tj5NwjdqLM+lANiZp+/+kVjCIZMCctZ/n044UUPz
	mlt7CpoWRbvTG5JHmA5ugxtbu9MD/jAKSAGA8EJhfvnc4WrsAe3x1EgtM93Ib2fVh00H
	vN60v8bXUvMDP1j8NFfEjLMTwZ93rOpTn7wgUVrTPmV7E3eLafgv63rgRFcepxOy2meu
	ctRvmEdybosCEjddXvqW7E7JLdl7cbRce5OcLnkmeqPDBg/DkpVfnKsx3njhI5F6tO4v
	o90Q==
X-Gm-Message-State: ABUngveKaMG9+RDVtOCTeoBGU9207XkSsBIx77PUvpQ7Q71/HgYgOSG3npwRWIKDPnfct5nuyF07g9a5bYmpQw==
X-Received: by 10.176.2.110 with SMTP id 101mr2670679uas.8.1478096495625; Wed,
	02 Nov 2016 07:21:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.1.68 with HTTP; Wed, 2 Nov 2016 07:21:34 -0700 (PDT)
In-Reply-To: <43D47051-BE64-4A56-B81C-55199BB744FB@gmail.com>
References: <30C2D590D16A5C46ADFE6521910377987FF67BEA@AZ-US1EXMB02.global.avaya.com>
	<CAJTo0LaVygRC3Z5eVtgGVkCU0mgYv7SGx07+1_om0GKkf6fHvw@mail.gmail.com>
	<21973d42-dc69-ee7b-031d-ac5544823c8f@basmevissen.nl>
	<CAJTo0Lat2oz3dpRXC6tSve3drTMB+=93mfR=0-UjxYtfgqLrxw@mail.gmail.com>
	<307cf616-d7a0-be5b-1aa9-4b12f3c9abb0@basmevissen.nl>
	<CAF3SDA50-YUatuxZiq3DGP3nH2-Eq9YY-jqBVJ6yJb4yAdxh0A@mail.gmail.com>
	<CAJTo0LaPzszzTCuTaPC-KC+bNnFobKsMwAaq6e9bYpHOvHS02Q@mail.gmail.com>
	<43D47051-BE64-4A56-B81C-55199BB744FB@gmail.com>
From: "Daniel." <danielhilst@gmail.com>
Date: Wed, 2 Nov 2016 12:21:34 -0200
Message-ID: <CAF3SDA4mWT=_46pMi+_aTfDU0HNAX-3j+VhovkfAeWHFVv6gzw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto 2.2 Morty supported Linux Distros
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
X-List-Received-Date: Wed, 02 Nov 2016 14:21:39 -0000
Content-Type: multipart/alternative; boundary=001a113d1ad090d0d005405228cf

--001a113d1ad090d0d005405228cf
Content-Type: text/plain; charset=UTF-8

2016-11-01 21:35 GMT-02:00 Khem Raj <raj.khem@gmail.com>:

>
> On Nov 1, 2016, at 4:22 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
>
> On 1 November 2016 at 22:20, Daniel. <danielhilst@gmail.com> wrote:
>
>> Just as a note, I've been using archlinux for about a year and have never
>> faced "distro related problems", except when the gcc6 comes out. Anyway I'm
>> using daisy in my work. I think that making old releases supported by X
>> distro doesn't make any sense...
>>
>
> The supported list of distros is just the list of distros that are known
> to work, and if something breaks then we'll notice and fix it.  If you want
> to use arch and face the periodic problems such as new toolchain meaning
> you can't build gcc-cross, then go for it.
>
>
> Another option perhaps is to use a debian stable container with docker (
> https://hub.docker.com/r/cbrake/oe-build/)
> and you can use your favorite distro for stuff you usually do and at same
> time let OE/YP build on  a known/supported distro e.g.
> Its a bit of mind shift but I am happily using it, while my distro stays
> bleeding edge arch.
>
> e.g. see
>
> http://bec-systems.com/site/1281/using-docker-for-oeyocto-builds
>
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
>
I'm planning to move to ubuntu 16.04 as I have in home, since I'm something
like tired of reading the words "not supported" .. but I have a lot of work
to do before I can format my machine there... So, it will be arch :)

I was just notifying that I have never had problems with arch being "not
supported". The packages needed there, and the ones that can't be found at
binary repos can be found at AUR, so, arch works just fine.

Regards,

-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--001a113d1ad090d0d005405228cf
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2016-11-01 21:35 GMT-02:00 Khem Raj <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:raj.khem@gmail.com" target=3D"_blank">raj.khem@gmail.com</a>&gt;</span=
>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><div style=3D"word-wrap:break-word"><b=
r><div><span class=3D""><blockquote type=3D"cite"><div>On Nov 1, 2016, at 4=
:22 PM, Burton, Ross &lt;<a href=3D"mailto:ross.burton@intel.com" target=3D=
"_blank">ross.burton@intel.com</a>&gt; wrote:</div><br class=3D"m_-47922876=
14395585256Apple-interchange-newline"><div><div dir=3D"ltr"><div class=3D"g=
mail_extra"><br><div class=3D"gmail_quote">On 1 November 2016 at 22:20, Dan=
iel. <span dir=3D"ltr">&lt;<a href=3D"mailto:danielhilst@gmail.com" target=
=3D"_blank">danielhilst@gmail.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div>Just as a note, I&#39;ve been using archlinux for about=
 a year and have never faced &quot;distro related problems&quot;, except wh=
en the gcc6 comes out. Anyway I&#39;m using daisy in my work. I think that =
making old releases supported by X distro doesn&#39;t make any sense...<br>=
</div></blockquote></div><br></div><div class=3D"gmail_extra">The supported=
 list of distros is just the list of distros that are known to work, and if=
 something breaks then we&#39;ll notice and fix it.=C2=A0 If you want to us=
e arch and face the periodic problems such as new toolchain meaning you can=
&#39;t build gcc-cross, then go for it.=C2=A0</div></div></div></blockquote=
><div><br></div></span><div>Another option perhaps is to use a debian stabl=
e container with docker (<a href=3D"https://hub.docker.com/r/cbrake/oe-buil=
d/" target=3D"_blank">https://hub.docker.com/r/<wbr>cbrake/oe-build/</a>)</=
div><div>and you can use your favorite distro for stuff you usually do and =
at same time let OE/YP build on =C2=A0a known/supported distro e.g.</div><d=
iv>Its a bit of mind shift but I am happily using it, while my distro stays=
 bleeding edge arch.</div><div><br></div><div>e.g. see</div><div><br></div>=
<div><a href=3D"http://bec-systems.com/site/1281/using-docker-for-oeyocto-b=
uilds" target=3D"_blank">http://bec-systems.com/site/<wbr>1281/using-docker=
-for-oeyocto-<wbr>builds</a></div><br><blockquote type=3D"cite"><div><div d=
ir=3D"ltr"><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">=
Ross</div></div><span class=3D"">
-- <br>______________________________<wbr>_________________<br>yocto mailin=
g list<br><a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto=
@yoctoproject.org</a><br><a href=3D"https://lists.yoctoproject.org/listinfo=
/yocto" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yoct=
o</a><br></span></div></blockquote></div><br></div></blockquote></div><br><=
/div><div class=3D"gmail_extra">I&#39;m planning to move to ubuntu 16.04 as=
 I have in home, since I&#39;m something like tired of reading the words &q=
uot;not supported&quot; .. but I have a lot of work to do before I can form=
at my machine there... So, it will be arch :)<br><br></div><div class=3D"gm=
ail_extra">I was just notifying that I have never had problems with arch be=
ing &quot;not supported&quot;. The packages needed there, and the ones that=
 can&#39;t be found at binary repos can be found at AUR, so, arch works jus=
t fine.<br><br></div><div class=3D"gmail_extra">Regards,<br clear=3D"all"><=
/div><div class=3D"gmail_extra"><br>-- <br><div class=3D"gmail_signature" d=
ata-smartmail=3D"gmail_signature"><div style=3D"text-align:right"><i>&quot;=
Do or do not. There is no try&quot;</i><br><i>=C2=A0 </i><i><b>Yoda Master<=
/b></i><br></div></div>
</div></div>

--001a113d1ad090d0d005405228cf--
