Return-Path: <ms.priyanshu.sharma@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6AAEEE00B81; Wed, 27 Mar 2019 03:50:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ms.priyanshu.sharma[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f174.google.com (mail-oi1-f174.google.com
	[209.85.167.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 562DEE0053F
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 03:50:46 -0700 (PDT)
Received: by mail-oi1-f174.google.com with SMTP id v10so8119858oib.1
	for <yocto@yoctoproject.org>; Wed, 27 Mar 2019 03:50:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=CmUEfSOkc76dUW7yDFEo1BqWuNibeIYBt1ztKZuwJOg=;
	b=JTrBWpBpsBnNW6cD14v6uzjyooVU/5kW0GHHP5JlDM7+2hWL04JiLh+2Y+NniQdbIW
	pgxSh5jN0C58VTOQIn0+U8m5JJiz3p4pAhA5I1Zy7c+dgJ+P0KW+hPoDZYO9aWn0o9HY
	LLL31UVbvDp2IH7+V45FXMzibItiRhT6OUXtPCnKYzfdsrex4z7duv/nD45qJMVaZFr8
	tkVW+FlRljmNDlGkCU/+HsEFFWYi69GMwiV9bomJ66RvWBkjAc5YWlRSNOM/XLcMYsfT
	PYPVFyI3ZhOK8PvycZFnblDAbfldCuNgchBOwNTAkU/ThsvD6fSSresA5suRqNU/gz4j
	NmvA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=CmUEfSOkc76dUW7yDFEo1BqWuNibeIYBt1ztKZuwJOg=;
	b=BOqZDnfEv7bZe5duA+TEO0DJcyGisty6v1Lqle6EgaWeTO8UMGSeagPRBU36g3tCtj
	gMik/nT23aBB4L7xTZksB0fMvo7JpsHrHQEApAEoNLG16aURvs+2A8d3dJeY/EfGkQ9k
	Am483YC+c9YyVW/oBG06kN/+qd6JJ10l2lwcRs6C+Z/svZYc4TwQ++KFDaK3bl42pflt
	OzONNzD+LkmcVae2+vbTIgINMQbPLO4gKvOT43P32EvbWplUMXpDT0i0i8gpm+EbKXpz
	k2GZUj2dM0DqDjFewI3Cy/EeSCj05SNmCjgZb/y2U5uQ1nK2q/Rdt4SpuGuqxTcWv0SC
	eDPg==
X-Gm-Message-State: APjAAAWEfV6foTJDklZ7XFV8MZanFvozaEUFONtaTBmHUFBCo1OQwSQo
	RrsiWNiyAcmREJfgY7f1NlJq65XqjaN5R4NmtcRk0g==
X-Google-Smtp-Source: APXvYqyg5XORNCdo16LGzNQCxfr1CJaj8rOEZXczVAZUo7wISL9QCZiecJqaKI8w78Dd5AUsD5qKDy0Gh9JAQjJVMbk=
X-Received: by 2002:aca:d513:: with SMTP id m19mr18123643oig.73.1553683845372; 
	Wed, 27 Mar 2019 03:50:45 -0700 (PDT)
MIME-Version: 1.0
References: <CAA_f9ePWPaPacQkJYsne0F6T-nY5j5epbgjaz+iFrxCAV+476g@mail.gmail.com>
In-Reply-To: <CAA_f9ePWPaPacQkJYsne0F6T-nY5j5epbgjaz+iFrxCAV+476g@mail.gmail.com>
From: Priyanshu Sharma <ms.priyanshu.sharma@gmail.com>
Date: Wed, 27 Mar 2019 16:20:34 +0530
Message-ID: <CAA_f9ePLea9ewu=UBf5Gv299birMfZps_DK1jOWPd3ZFJu6u5w@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: [meta-qt5][qtwayland]Qtwayland recipe fails with Yocto 2.5
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
X-List-Received-Date: Wed, 27 Mar 2019 10:50:47 -0000
Content-Type: multipart/alternative; boundary="000000000000b25e730585113592"

--000000000000b25e730585113592
Content-Type: text/plain; charset="UTF-8"

Found that the missing features.egl is provided by QTBase recipe. And in my
case, qtbase is not compiling the feature "EGL" and thats why qtwayland
fails to find it.

egl is not included in PACKAGECONFIG of qtbase recipe. However, it used to
be enabled with Yocto 2.2.
Adding it PACKAGECONFIG[eg] of qtbase is not enabling it. How can egl be
enabled in qtbase?

Warm regards,
Priyanshu Sharma

On Tue, Mar 19, 2019 at 1:23 PM Priyanshu Sharma <
ms.priyanshu.sharma@gmail.com> wrote:

> Hi All,
>
> I'm consistently getting a build failure after upgrading Poky to 2.5 from
> 2.2 on qtwayland
> Yocto recipe from meta-qt5.
>
> The error looks like :
>
> | Running configuration tests...
> | Checking for Wayland client library... yes
> | Checking for Wayland cursor library... yes
> | Checking for wayland-scanner... yes
> | Checking for Wayland EGL library... yes
> | Checking for wayland-server... yes
> | Done running configuration tests.
> |
> | Configure summary:
> |
> | Qt Wayland Drivers:
> |   EGL .................................... no
> |   Raspberry Pi ........................... no
> |   XComposite EGL ......................... no
> |   XComposite GLX ......................... no
> |   DRM EGL ................................ no
> |   libhybris EGL .......................... no
> | Qt Wayland Client ........................ yes
> | Qt Wayland Compositor .................... yes
> |
> | ERROR: Feature 'wayland-egl' was enabled, but the pre-condition 'features.wayland-client && features.opengl && features.egl && libs.wayland-egl' failed.
> |
> | ERROR: Feature 'wayland-egl' was enabled, but the pre-condition 'features.wayland-server && features.opengl && features.egl && libs.wayland-egl' failed.
> |
> | Check config.log for details.
> | WARNING: exit code 1 from a shell command.
> I've checked that only pre-condition "features.egl" is failing.
> I've my own custom recipe which is providing virtual/egl and is set as PREFERRED_PROVIDER also.
> What is the missing dependency here when virtual/egl is provided?
> What exactly is features.egl looking for? ( virtual/egl provides egl.pc )
> I've not changed anything in meta-qt5 layer. And the version is 5.9.2 QT5. However, is fails with 5.12 also.
>
>
> Warm Regards,
>
> Priyanshu Sharma
>
>
>

--000000000000b25e730585113592
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Found that the missing features.egl is provided by QTBase =
recipe. And in my case, qtbase is not compiling the feature &quot;EGL&quot;=
 and thats why qtwayland fails to find it.<div><br></div><div>egl is not in=
cluded in PACKAGECONFIG of qtbase recipe. However, it used to be enabled wi=
th Yocto 2.2.=C2=A0</div><div>Adding it PACKAGECONFIG[eg] of qtbase is not =
enabling it. How can egl be enabled in qtbase?</div><div><br></div><div>War=
m regards,</div><div>Priyanshu Sharma</div></div><br><div class=3D"gmail_qu=
ote"><div dir=3D"ltr" class=3D"gmail_attr">On Tue, Mar 19, 2019 at 1:23 PM =
Priyanshu Sharma &lt;<a href=3D"mailto:ms.priyanshu.sharma@gmail.com">ms.pr=
iyanshu.sharma@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204=
,204);padding-left:1ex"><div dir=3D"ltr"><div class=3D"gmail-m_-36340631916=
43445799gmail-gs" style=3D"margin:0px;padding:0px 0px 20px;width:1299.11px"=
><div class=3D"gmail-m_-3634063191643445799gmail-"><div id=3D"gmail-m_-3634=
063191643445799gmail-:mp" class=3D"gmail-m_-3634063191643445799gmail-ii gma=
il-m_-3634063191643445799gmail-gt" style=3D"direction:ltr;margin:8px 0px 0p=
x;padding:0px"><div id=3D"gmail-m_-3634063191643445799gmail-:mq" class=3D"g=
mail-m_-3634063191643445799gmail-a3s gmail-m_-3634063191643445799gmail-aXjC=
H" style=3D"overflow:hidden;font-variant-numeric:normal;font-variant-east-a=
sian:normal;font-stretch:normal;line-height:1.5"><div dir=3D"ltr"><div styl=
e=3D"font-family:Arial,Helvetica,sans-serif;font-size:small">Hi All,</div><=
div style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small"><br cl=
ass=3D"gmail-m_-3634063191643445799gmail-Apple-interchange-newline">I&#39;m=
 consistently getting a build failure after upgrading Poky to 2.5 from 2.2 =
on qtwayland=C2=A0</div><div style=3D"font-family:Arial,Helvetica,sans-seri=
f;font-size:small">Yocto recipe from meta-qt5.</div><div style=3D"font-fami=
ly:Arial,Helvetica,sans-serif;font-size:small"><br></div><div>The error loo=
ks like :<br><br><pre><font color=3D"#000000"><font face=3D"garamond, serif=
" style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;white-spa=
ce:pre-wrap">| Running configuration tests...
| Checking for Wayland client library... yes
| Checking for Wayland cursor library... yes
| Checking for wayland-scanner... yes
| Checking for Wayland EGL library... yes
| Checking for wayland-server... yes
| Done running configuration tests.
|=20
| Configure summary:
|=20
| Qt Wayland Drivers:
|   EGL .................................... no
|   Raspberry Pi ........................... no
|   XComposite EGL ......................... no
|   XComposite GLX ......................... no
|   DRM EGL ................................ no
|   libhybris EGL .......................... no
| Qt Wayland Client ........................ yes
| Qt Wayland Compositor .................... yes
|=20
| ERROR: Feature &#39;wayland-egl&#39; was enabled, but the pre-condition &=
#39;features.wayland-client &amp;&amp; features.opengl &amp;&amp; features.=
egl &amp;&amp; libs.wayland-egl&#39; failed.
|=20
| ERROR: Feature &#39;wayland-egl&#39; was enabled, but the pre-condition &=
#39;features.wayland-server &amp;&amp; features.opengl &amp;&amp; features.=
egl &amp;&amp; libs.wayland-egl&#39; failed.
|=20
| Check config.log for details.
| WARNING: exit code 1 from a shell command.

</font><font face=3D"arial, helvetica, sans-serif"><font face=3D"Arial, Hel=
vetica, sans-serif"><span style=3D"white-space:pre-wrap">I&#39;ve checked t=
hat only pre-condition &quot;features.egl&quot; is failing.
I&#39;ve my own custom recipe which is providing virtual/egl and is set as =
PREFERRED_PROVIDER also.
What is the missing </span></font><span style=3D"white-space:pre-wrap">depe=
ndency</span><font face=3D"Arial, Helvetica, sans-serif"><span style=3D"whi=
te-space:pre-wrap"> here when virtual/egl is provided?
What exactly is features.egl looking for? ( virtual/egl provides egl.pc )
I&#39;ve not changed anything in meta-qt5 layer. And the version is 5.9.2 Q=
T5. However, is fails with </span></font></font></font>5.12 also.</pre><pre=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;white-spac=
e:pre-wrap"><font color=3D"#000000"><font face=3D"arial, helvetica, sans-se=
rif"><br></font></font></pre><pre style=3D"font-family:Arial,Helvetica,sans=
-serif;font-size:small;white-space:pre-wrap"><font color=3D"#000000"><font =
face=3D"arial, helvetica, sans-serif">Warm Regards,</font></font></pre><pre=
 style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small;white-spac=
e:pre-wrap"><font color=3D"#000000"><font face=3D"arial, helvetica, sans-se=
rif">Priyanshu Sharma</font></font></pre></div></div><div class=3D"gmail-m_=
-3634063191643445799gmail-yj6qo" style=3D"font-family:Arial,Helvetica,sans-=
serif;font-size:small"></div><div class=3D"gmail-m_-3634063191643445799gmai=
l-adL" style=3D"font-family:Arial,Helvetica,sans-serif;font-size:small"></d=
iv></div></div><div class=3D"gmail-m_-3634063191643445799gmail-hi" style=3D=
"font-family:Roboto,RobotoDraft,Helvetica,Arial,sans-serif;font-size:medium=
;border-bottom-left-radius:1px;border-bottom-right-radius:1px;padding:0px;w=
idth:auto;background:rgb(242,242,242);margin:0px"></div></div></div><br cla=
ss=3D"gmail-m_-3634063191643445799gmail-Apple-interchange-newline"></div>
</blockquote></div>

--000000000000b25e730585113592--
