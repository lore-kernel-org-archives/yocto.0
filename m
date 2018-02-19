Return-Path: <icastell@nayarsystems.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CD308E00E73; Mon, 19 Feb 2018 08:13:54 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9CDEBE0097D
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 08:13:52 -0800 (PST)
Received: by mail-it0-f45.google.com with SMTP id v194so9387834itb.0
	for <yocto@yoctoproject.org>; Mon, 19 Feb 2018 08:13:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nayarsystems.com; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=3sG3LFoQGZolVLKS8LMoPiZZf/Fbiyei4c236XWf9ZI=;
	b=RJLicIcAceEK02BxTaJHlMxWuMbHTj85uBomj4m4IMDk2DNqi5bUIJ9eQ+YCn758UC
	MR7CgJBPL+EU5soRnHZr+WzMChNjIjOD6nGh9GzaKXk3i1MVGN1LUlPIsDkn11aywQxB
	mLG5kBSfI/rpcsDwCTD1XEvyh7YytSq4LaEjY=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=3sG3LFoQGZolVLKS8LMoPiZZf/Fbiyei4c236XWf9ZI=;
	b=lqhSUxP52D8ZIMDqrQEl9lBv4kQtvmiDzWaAotv0mOtK6lwptSQ7V/JKijHol1shcV
	jNi1+mKWurM8VeSRYIq90wSLHGxRN5S4GS8Dm4+a0sm6aYR8p7mQiEGLYGzHOyWvZnOc
	A9jCITtbJN7vXcad5pQsBs5MGaQN3CsWLwCVa+pxqbt47jQRUAUivJqvcPav8hVVqgS6
	l7lAx49U9SPnSkHM3lQU7sE+NJMdQ74Aw8Imfmsxw2CW8W/CTdK1dVMsMpbamsrHgJTH
	rXpZqeppEnyuhxIot7jX0hayKKXngrzxSU7RBK7NMr8O/K6PcByHctzkhRf3SAbL8jHV
	Yrnw==
X-Gm-Message-State: APf1xPCA9+hLjAR2yufDOOc6IiyODAr3OqXczk4lBWS9yWLdb55WYTUF
	M2tR3RkeNK9UfphYlvmJczmd/+h2j6cBe0j0MPfR+w==
X-Google-Smtp-Source: AH8x226iRHb6j7X4oNh0/4IVTLx2aEzAIVmtrSghHickTyGQ1byE7BDhW45Tv+8pRGtCT6U0oRHujt9iaa5wi6G/tIQ=
X-Received: by 10.36.158.198 with SMTP id p189mr20919389itd.128.1519056831711; 
	Mon, 19 Feb 2018 08:13:51 -0800 (PST)
MIME-Version: 1.0
Received: by 10.2.36.84 with HTTP; Mon, 19 Feb 2018 08:13:51 -0800 (PST)
In-Reply-To: <20180219151819.GA38294@mbabyjoh-desk.ger.corp.intel.com>
References: <CAALXFYz4Zp4+FTj=VvNVNWOHqnK180YhOBykLEiZ2nTCLF6kig@mail.gmail.com>
	<CAALXFYy7nN1ZahoR_+mCLeD4U7z4zEoiNwv+mzwT8dEf+e-pmg@mail.gmail.com>
	<CAMKF1sqrDFkVB0brWidTvARLpsKGHC6NFCQhP-yF25vtS_WxYA@mail.gmail.com>
	<20180219151819.GA38294@mbabyjoh-desk.ger.corp.intel.com>
From: =?UTF-8?Q?Iv=C3=A1n_Castell?= <icastell@nayarsystems.com>
Date: Mon, 19 Feb 2018 17:13:51 +0100
Message-ID: <CAALXFYxh2RWy1pvYyd0Fw=V0W6w2gZFZZ55sGNw3qMEaG_wRsQ@mail.gmail.com>
To: "Maxin B. John" <maxin.john@intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Removing busybox completely from the generated image
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
X-List-Received-Date: Mon, 19 Feb 2018 16:13:54 -0000
Content-Type: multipart/alternative; boundary="94eb2c05d830d92a00056592faaf"

--94eb2c05d830d92a00056592faaf
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

2018-02-19 16:18 GMT+01:00 Maxin B. John <maxin.john@intel.com>:

> Hi,
>
> On Mon, Feb 19, 2018 at 02:17:38AM -0800, Khem Raj wrote:
> > On Mon, Feb 19, 2018 at 12:35 AM, Iv=C3=A1n Castell
> > <icastell@nayarsystems.com> wrote:
> > > I have tried breaking apart packagegroup-core-boot, making a copy in =
my
> > > custom layer, removing the line referencing busybox:
> > >
> > >     ## VIRTUAL-RUNTIME_login_manager ?=3D "busybox"
>
> Have you considered "toybox" ? It probably wouldn't work right-away. Stil=
l,
> toybox was designed to provide a replacement for busybox. It is available
> in "meta-oe"
>
> http://cgit.openembedded.org/meta-openembedded/tree/meta-
> oe/recipes-core/toybox/toybox_0.7.5.bb
>
>

Thank you for the information, I will take into account that tool for
future embedded projects. However, the focus of this issue was to remove
completely busybox from the image, not replacing it by another application
box.

I have created a bbappend with a fragment of the busybox configuration
disabling syslog and udhcpc applets. It works. However the busybox binary
and a lot of applets are still there (adduser, unzip, fbset, traceroute,
and more).

Disabling all different applets and installing native tools instead could
be the right way to procede. Not a nice solution, but at least it should
work...

--94eb2c05d830d92a00056592faaf
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><div class=3D"gmail_extra"><br><div class=3D"gmail_quo=
te">2018-02-19 16:18 GMT+01:00 Maxin B. John <span dir=3D"ltr">&lt;<a href=
=3D"mailto:maxin.john@intel.com" target=3D"_blank">maxin.john@intel.com</a>=
&gt;</span>:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex">Hi,<br>
<span class=3D""><br>
On Mon, Feb 19, 2018 at 02:17:38AM -0800, Khem Raj wrote:<br>
&gt; On Mon, Feb 19, 2018 at 12:35 AM, Iv=C3=A1n Castell<br>
&gt; &lt;<a href=3D"mailto:icastell@nayarsystems.com">icastell@nayarsystems=
.com</a>&gt; wrote:<br>
&gt; &gt; I have tried breaking apart packagegroup-core-boot, making a copy=
 in my<br>
&gt; &gt; custom layer, removing the line referencing busybox:<br>
&gt; &gt;<br>
&gt; &gt;=C2=A0 =C2=A0 =C2=A0## VIRTUAL-RUNTIME_login_manager ?=3D &quot;bu=
sybox&quot;<br>
<br>
</span>Have you considered &quot;toybox&quot; ? It probably wouldn&#39;t wo=
rk right-away. Still,<br>
toybox was designed to provide a replacement for busybox. It is available<b=
r>
in &quot;meta-oe&quot;<br>
<br>
<a href=3D"http://cgit.openembedded.org/meta-openembedded/tree/meta-oe/reci=
pes-core/toybox/toybox_0.7.5.bb" rel=3D"noreferrer" target=3D"_blank">http:=
//cgit.openembedded.org/<wbr>meta-openembedded/tree/meta-<wbr>oe/recipes-co=
re/toybox/toybox_<wbr>0.7.5.bb</a><br>
<span class=3D""><br></span></blockquote><div><br></div><div><br></div><div=
><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-=
size:small;font-style:normal;font-variant-ligatures:normal;font-variant-cap=
s:normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent=
:0px;text-transform:none;white-space:normal;word-spacing:0px;background-col=
or:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:ini=
tial;float:none;display:inline"><span style=3D"color:rgb(34,34,34);font-fam=
ily:arial,sans-serif;font-size:small;font-style:normal;font-variant-ligatur=
es:normal;font-variant-caps:normal;font-weight:400;letter-spacing:normal;te=
xt-align:start;text-indent:0px;text-transform:none;white-space:normal;word-=
spacing:0px;background-color:rgb(255,255,255);text-decoration-style:initial=
;text-decoration-color:initial;float:none;display:inline">Thank you for the=
 information, I</span>=C2=A0will take into account that tool for future emb=
edded projects. However, th</span>e focus of this issue was to remove compl=
etely busybox from the image, not replacing it by another application box.<=
br></div><div><span style=3D"color:rgb(34,34,34);font-family:arial,sans-ser=
if;font-size:small;font-style:normal;font-variant-ligatures:normal;font-var=
iant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;tex=
t-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;backgr=
ound-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-c=
olor:initial;float:none;display:inline"><br></span></div><div><span style=
=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:small;font-s=
tyle:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-wei=
ght:400;letter-spacing:normal;text-align:start;text-indent:0px;text-transfo=
rm:none;white-space:normal;word-spacing:0px;background-color:rgb(255,255,25=
5);text-decoration-style:initial;text-decoration-color:initial;float:none;d=
isplay:inline">I have created a bbappend with a fragment of the busybox con=
figuration disabling=C2=A0</span><span style=3D"color:rgb(34,34,34);font-fa=
mily:arial,sans-serif;font-style:normal;font-variant-ligatures:normal;font-=
variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;=
text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;bac=
kground-color:rgb(255,255,255);text-decoration-style:initial;text-decoratio=
n-color:initial;font-size:12.8px;float:none;display:inline">syslog and=C2=
=A0<span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-siz=
e:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-caps:=
normal;font-weight:400;letter-spacing:normal;text-align:start;text-indent:0=
px;text-transform:none;white-space:normal;word-spacing:0px;background-color=
:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:initi=
al;float:none;display:inline">udhcpc applets. It works. However the busybox=
 binary and a lot of applets are still there (adduser,=C2=A0unzip,=C2=A0fbs=
et, traceroute, and more).=C2=A0</span></span></div><div><span style=3D"col=
or:rgb(34,34,34);font-family:arial,sans-serif;font-style:normal;font-varian=
t-ligatures:normal;font-variant-caps:normal;font-weight:400;letter-spacing:=
normal;text-align:start;text-indent:0px;text-transform:none;white-space:nor=
mal;word-spacing:0px;background-color:rgb(255,255,255);text-decoration-styl=
e:initial;text-decoration-color:initial;font-size:12.8px;float:none;display=
:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fo=
nt-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant=
-caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-in=
dent:0px;text-transform:none;white-space:normal;word-spacing:0px;background=
-color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color=
:initial;float:none;display:inline"><br></span></span></div><div><span styl=
e=3D"color:rgb(34,34,34);font-family:arial,sans-serif;font-size:12.8px;font=
-style:normal;font-variant-ligatures:normal;font-variant-caps:normal;font-w=
eight:400;letter-spacing:normal;text-align:start;text-indent:0px;text-trans=
form:none;white-space:normal;word-spacing:0px;text-decoration-style:initial=
;text-decoration-color:initial;background-color:rgb(255,255,255);float:none=
;display:inline"><span style=3D"color:rgb(34,34,34);font-family:arial,sans-=
serif;font-size:12.8px;font-style:normal;font-variant-ligatures:normal;font=
-variant-caps:normal;font-weight:400;letter-spacing:normal;text-align:start=
;text-indent:0px;text-transform:none;white-space:normal;word-spacing:0px;ba=
ckground-color:rgb(255,255,255);text-decoration-style:initial;text-decorati=
on-color:initial;float:none;display:inline">Disabling all different applets=
 and installing native tools instead could be the right way to procede. Not=
 a nice solution, but at least it should work...</span></span><div class=3D=
"gmail-yj6qo" style=3D"color:rgb(34,34,34);font-family:arial,sans-serif;fon=
t-size:12.8px;font-style:normal;font-variant-ligatures:normal;font-variant-=
caps:normal;font-weight:400;letter-spacing:normal;text-align:start;text-ind=
ent:0px;text-transform:none;white-space:normal;word-spacing:0px;background-=
color:rgb(255,255,255);text-decoration-style:initial;text-decoration-color:=
initial"></div><br class=3D"gmail-Apple-interchange-newline"></div><br></di=
v><div><br></div><div>=C2=A0</div></div>
</div></div>

--94eb2c05d830d92a00056592faaf--
