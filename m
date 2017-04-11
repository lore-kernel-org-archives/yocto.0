Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39F84E00B3F; Tue, 11 Apr 2017 01:34:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.213.173 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f173.google.com (mail-yb0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9BCBE00AF4
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 01:34:46 -0700 (PDT)
Received: by mail-yb0-f173.google.com with SMTP id i124so41939571ybc.3
	for <yocto@yoctoproject.org>; Tue, 11 Apr 2017 01:34:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=qF2hMg2ui8wqcgsmD0shjMEprn99caPUb/hq7nzcPqY=;
	b=XM5a50WB7Lje0W5aF8K57h/kgSkK765R65S8hw+S+iVxBPSESiW3hoc8v4r6od65dW
	JEUfTuPh9+B3BunFY0X6J20wWSE+gUQANbXk97HMTzf0H7fh96XrjOaX+xf+cQoJABmk
	wG/OjtRPZnwdc2GEXw/ftQfxKrAIUhuWTzD6TtPCtg5sM5i+FQLxSgVJW8Vvi2JTi6LZ
	F/9xynVg7SW6k3a2m6PJ1Cqc1chmqXYLCL03uX/n3hEKcaYVqqU3H93f5aYCMUKcXBrk
	bd+g2Xl8t/uwD/bwopYBulBDNVct4c5R6uco8ij0emLI50AzX3KexaFLK9JhepVXYP78
	x91g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=qF2hMg2ui8wqcgsmD0shjMEprn99caPUb/hq7nzcPqY=;
	b=A+SShtI3QfcAArPCq8NzUmFgSflzqgaDnh7F3fDKLvqwXo56Y/0lHfZ9k5/4ADZNee
	N1CEk0UPIeykAtIowG1HiyqDFUHuP3nTOlrNRTmyXRhpQ7wqoFjqpA2JsqUqvwh8so2O
	LL7szvhccG83jxiUYdY1b7BO/VX3sSRKzehio01i77/gJLNSG+aj7B++I0UFYpQ6sQjo
	ldiyMYgJK0r4PpjQNbRkO3F7S11glSz8oerFcDG3IObhh16weINK7P50jNTdCNa02Pmw
	RjPbkBoOk7TIrwmuNkHAOTKqqyDL3d7BpHeyVwJIvaFhEH6hBSvN7s2O6b0NpqFc2dLY
	YAOw==
X-Gm-Message-State: AFeK/H2+kuideScllqJQ5vjp8HzUD2m1mK5NugwUfWmIZOVFrHF70hlCa0aLzzvAxjXT6k2jeLy+lzyk7n6w4Ron
X-Received: by 10.37.223.82 with SMTP id w79mr21776747ybg.99.1491899685679;
	Tue, 11 Apr 2017 01:34:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.129.121.75 with HTTP; Tue, 11 Apr 2017 01:34:15 -0700 (PDT)
In-Reply-To: <6b8d75eafe704438b03324c35d2ce6ef@FE-MBX1014.de.bosch.com>
References: <6b8d75eafe704438b03324c35d2ce6ef@FE-MBX1014.de.bosch.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Tue, 11 Apr 2017 11:34:15 +0300
Message-ID: <CAHiDW_EOW50-6GorSP9Nna_Tg=_Y-T2ypM2eN_vZuJY_rhCDCw@mail.gmail.com>
To: "Eswaran Vinothkumar (BEG/PJ-IOT-EL)" <Vinothkumar.Eswaran@de.bosch.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Porting a middleware to Yocto
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
X-List-Received-Date: Tue, 11 Apr 2017 08:34:50 -0000
Content-Type: multipart/alternative; boundary=94eb2c089090ce7097054cdff69f

--94eb2c089090ce7097054cdff69f
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 11 April 2017 at 09:20, Eswaran Vinothkumar (BEG/PJ-IOT-EL) <
Vinothkumar.Eswaran@de.bosch.com> wrote:

> Hallo,
>
>
>
> For our new project we are planning to use Yocto as a build system to
> build customized Linux distribution. I have already created a BSP for our
> customized hardware with Linux kernel, U-boot and UBIFS rootfs image.
>
>
>
> We are internally using a middleware which acts as an abstraction to
> underlying operating system and provides APIs to application layers. Now
> the task is to port the middleware to Yocto. The middleware contains lot =
of
> make files and folders which are interdependent and I am at lost on how t=
o
> start.
>
> I have some 20 directories which contains makefiles and autotool
> configure.ac files to generate lib files.
>
>
>
> As of now I have planned to create a new Yocto layer called
> meta-middleware and a recipe file for individual folders. I then create a
> package group which will include all these recipes and can include this
> package group as dependency in the recipes of meta-application layer. I a=
m
> facing a problem like I have to include headers from other recipes. In th=
is
> case to include the headers , is it enough to add =E2=80=9CDEPENDS =3D re=
cipename=E2=80=9D ?
>

Yes, a DEPENDS should be all that's needed in the normal case. The
assumption is that the recipe you depend on installs the headers and
libraries like it should -- these will then be made available in the
sysroot of the recipe you are compiling (the location and nature of this
sysroot depends on the version of yocto). If your autotools setup is well
behaving the recipes should be fairly straight forward to write.

If you have issues with not finding headers, start by making sure that the
recipe you depend on installs things correctly: see e.g.
$WORKDIR/sysroot-destdir/ to see files that should become available in the
sysroot of a anyone depending on this recipe. If that looks fine, make sure
the depending project is doing something sane to find the headers (like
using pkg-config): see e.g. $WORKDIR/temp/log.do_configure.

Better advice probably requires you to actually show a problem case and
mention the version of Yocto you are using.

HTH,
  Jussi


> I know my question is relatively vague, but anybody who ported middleware
> from another build systems like ptxdist would have faced similar issues.
> Any input on how you planned to port these source files to Yocto would be
> helpful.
>
>
>
>
>
> Mit freundlichen Gr=C3=BC=C3=9Fen / Best regards
>
>
> *Vinothkumar Eswaran BEG-PT/PJ-IOT1*
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--94eb2c089090ce7097054cdff69f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><div class=3D"gmail_quote">On 1=
1 April 2017 at 09:20, Eswaran Vinothkumar (BEG/PJ-IOT-EL) <span dir=3D"ltr=
">&lt;<a href=3D"mailto:Vinothkumar.Eswaran@de.bosch.com" target=3D"_blank"=
>Vinothkumar.Eswaran@de.bosch.com</a>&gt;</span> wrote:<br><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid r=
gb(204,204,204);padding-left:1ex">





<div lang=3D"EN-US">
<div class=3D"gmail-m_8548389617113101367WordSection1">
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif">Hallo,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif">For our new project we are planning to use Yocto as a build system =
to build customized Linux distribution. I have already created a BSP for ou=
r customized hardware with Linux
 kernel, U-boot and UBIFS rootfs image.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif">We are internally using a middleware which acts as an abstraction t=
o underlying operating system and provides APIs to application layers. Now =
the task is to port the middleware
 to Yocto. The middleware contains lot of make files and folders which are =
interdependent and I am at lost on how to start.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif">I have some 20 directories which contains makefiles and autotool <a=
 href=3D"http://configure.ac" target=3D"_blank">configure.ac</a> files to g=
enerate lib files.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif">As of now I have planned to create a new Yocto layer called meta-mi=
ddleware and a recipe file for individual folders. I then create a package =
group which will include all these
 recipes and can include this package group as dependency in the recipes of=
 meta-application layer. I am facing a problem like I have to include heade=
rs from other recipes. In this case to include the headers , is it enough t=
o add =E2=80=9CDEPENDS =3D recipename=E2=80=9D ?</span></p></div></div></bl=
ockquote><div><br></div><div>Yes, a DEPENDS should be all that&#39;s needed=
 in the normal case. The assumption is that the recipe you depend on instal=
ls the headers and libraries like it should -- these will then be made avai=
lable in the sysroot of the recipe you are compiling (the location and natu=
re of this sysroot depends on the version of yocto). If your autotools setu=
p is well behaving the recipes should be fairly straight forward to write.<=
/div><div><br></div><div>If you have issues with not finding headers, start=
 by making sure that the recipe you depend on installs things correctly: se=
e e.g. $WORKDIR/sysroot-destdir/ to see files that should become available =
in the sysroot of a anyone depending on this recipe. If that looks fine, ma=
ke sure the depending project is doing something sane to find the headers (=
like using pkg-config): see e.g. $WORKDIR/temp/log.do_configure.</div><div>=
<br></div><div>Better advice probably requires you to actually show a probl=
em case and mention the version of Yocto you are using.</div><div><br></div=
><div>HTH,</div><div>=C2=A0 Jussi</div><div>=C2=A0</div><blockquote class=
=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex"><div lang=3D"EN-US"><div class=3D"gmail-m_=
8548389617113101367WordSection1"><p class=3D"MsoNormal"><span style=3D"font=
-size:10pt;font-family:arial,sans-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif">I know my question is relatively vague, but anybody who ported midd=
leware from another build systems like ptxdist would have faced similar iss=
ues. Any input on how you planned
 to port these source files to Yocto would be helpful.<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:10pt;font-family:arial,sans=
-serif"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span lang=3D"DE" style=3D"font-size:10pt;font-famil=
y:arial,sans-serif;color:black">Mit freundlichen Gr=C3=BC=C3=9Fen / Best re=
gards
<br>
<br>
<b>Vinothkumar Eswaran<br>
BEG-PT/PJ-IOT1</b></span><span lang=3D"DE" style=3D"font-size:8pt;font-fami=
ly:arial,sans-serif;color:black"><br>
<br>
</span><span lang=3D"DE"><u></u><u></u></span></p>
</div>
</div>

<br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div></div>

--94eb2c089090ce7097054cdff69f--
