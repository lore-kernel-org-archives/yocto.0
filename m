Return-Path: <rjiejie@gmail.com>
Received: from mail-pd0-f177.google.com (mail-pd0-f177.google.com
	[209.85.192.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DE536E0027C
	for <yocto@yoctoproject.org>; Mon,  6 May 2013 18:55:30 -0700 (PDT)
Received: by mail-pd0-f177.google.com with SMTP id g10so37019pdj.22
	for <yocto@yoctoproject.org>; Mon, 06 May 2013 18:55:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:message-id:references:to:x-mailer;
	bh=W72KSIxZprlA5dGWbq0lpePMuyIAxX8Yccmwk8VKaZM=;
	b=wsf6NL9XfTnSnEQrj97UqvXP0x+5U0/XuwKMPVPWJWcLz04pHVlKaTtFqufniMCJSt
	Eh0wHYF2Lfzatp36JqDYMEQP1zhL4oAKpurOxkBr8/JHk5BhplBKVJ0dZ4lA0oxshyHT
	GtpPfdx9veQaFH04w1skQYy37g1k244a5d2WTSspNoA1iVil1yvsHnFGbmWT4cTVXffZ
	f3j7UtCEaK8MDlsSD9MA9ubBkHYM9dTsOHVAQ+GwL7IF+BTR2SFaT96EpwyYUb1puFFt
	tz8be43POaZiCuVL3I+RlAdHSsCQkyDuJI2JrfbyKplTPqZOJr2zzKwanhXtMrWBX7UI
	+5EA==
X-Received: by 10.66.102.3 with SMTP id fk3mr440015pab.181.1367891730732;
	Mon, 06 May 2013 18:55:30 -0700 (PDT)
Received: from [192.168.1.148] ([122.235.137.153])
	by mx.google.com with ESMTPSA id
	zy5sm26012196pbb.43.2013.05.06.18.55.24 for <multiple recipients>
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Mon, 06 May 2013 18:55:29 -0700 (PDT)
Mime-Version: 1.0 (Mac OS X Mail 6.3 \(1503\))
From: jojo <rjiejie@gmail.com>
In-Reply-To: <CAP71WjzcTuAbHemvAP0WPPyRJmFYetQmXHTRT=NdQak2bzQ1gw@mail.gmail.com>
Date: Tue, 7 May 2013 09:55:17 +0800
Message-Id: <C2149BE9-53DF-402A-B927-8D8D89A30158@gmail.com>
References: <26FE63BB-04B6-4226-8921-FE6D4DA9029F@gmail.com>
	<CAP71WjzcTuAbHemvAP0WPPyRJmFYetQmXHTRT=NdQak2bzQ1gw@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
X-Mailer: Apple Mail (2.1503)
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: how to enable DFB with cairo
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
X-List-Received-Date: Tue, 07 May 2013 01:55:31 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_9D31166F-EB6C-41C2-8F22-2B5473BD465D"

--Apple-Mail=_9D31166F-EB6C-41C2-8F22-2B5473BD465D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=GB2312

Hi,

	Ok & Thanks, i will have a try in 1.4 :)

Thanks,
- Jojo




=D4=DA 2013-5-6=A3=AC=CF=C2=CE=E710:44=A3=ACNicolas Dechesne =
<nicolas.dechesne@linaro.org> =D0=B4=B5=C0=A3=BA

>=20
> On Mon, May 6, 2013 at 10:08 AM, jojo <rjiejie@gmail.com> wrote:
>=20
> 	I am not familiar with yocto project, and i want to enable DFB =
render backend in cairo,
>=20
> 	du to the patches =
"http://lists.linuxtogo.org/pipermail/openembedded-core/2011-November/0130=
37.html",
>=20
> 	i know about first need to disable X11 feature in my system by =
default, but i do not know about how to disable X11,
>=20
> 	Someone can point me out any clue to enable DFB with cairo in =
yocto ?=20
>=20
> hi. you should check meta-yocto/conf/local.conf.sample.extended file, =
I think that might be of interest to you:
>=20
> # If you want to get an image based on directfb without x11, Please =
copy this variable to build/conf/local.conf                              =
                                  =20
> #DISTRO_FEATURES =3D "alsa argp bluetooth ext2 irda largefile pcmcia =
usbgadget usbhost wifi xattr nfs zeroconf pci 3g directfb =
${DISTRO_FEATURES_LIBC}"                          =20
>=20
> I, too, am using an X11-less image using these recommendations.
>=20
>=20
>=20


--Apple-Mail=_9D31166F-EB6C-41C2-8F22-2B5473BD465D
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=GB2312

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3DGB2312"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space; =
">Hi,<div><br></div><div><span class=3D"Apple-tab-span" =
style=3D"white-space:pre">	</span>Ok &amp;&nbsp;Thanks, i will have =
a try in 1.4 :)<br><div>
<span class=3D"Apple-style-span" style=3D"border-collapse: separate; =
color: rgb(0, 0, 0); font-family: 'Heiti SC'; font-style: normal; =
font-variant: normal; font-weight: normal; letter-spacing: normal; =
line-height: normal; orphans: 2; text-align: -webkit-auto; text-indent: =
0px; text-transform: none; white-space: normal; widows: 2; word-spacing: =
0px; border-spacing: 0px; -webkit-text-decorations-in-effect: none; =
-webkit-text-size-adjust: auto; -webkit-text-stroke-width: 0px; =
font-size: medium; "><span class=3D"Apple-style-span" =
style=3D"border-collapse: separate; color: rgb(0, 0, 0); font-family: =
'Heiti SC'; font-style: normal; font-variant: normal; font-weight: =
normal; letter-spacing: normal; line-height: normal; orphans: 2; =
text-align: -webkit-auto; text-indent: 0px; text-transform: none; =
white-space: normal; widows: 2; word-spacing: 0px; border-spacing: 0px; =
-webkit-text-decorations-in-effect: none; -webkit-text-size-adjust: =
auto; -webkit-text-stroke-width: 0px; font-size: medium; "><div =
style=3D"word-wrap: break-word; -webkit-nbsp-mode: space; =
-webkit-line-break: after-white-space; "><div><div><br =
class=3D"Apple-interchange-newline">Thanks,</div><div>- =
Jojo</div></div><div><br></div></div></span><br =
class=3D"Apple-interchange-newline"></span><br =
class=3D"Apple-interchange-newline">
</div>
<br><div><div>=D4=DA 2013-5-6=A3=AC=CF=C2=CE=E710:44=A3=ACNicolas =
Dechesne &lt;<a =
href=3D"mailto:nicolas.dechesne@linaro.org">nicolas.dechesne@linaro.org</a=
>&gt; =D0=B4=B5=C0=A3=BA</div><br =
class=3D"Apple-interchange-newline"><blockquote type=3D"cite"><div =
dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On =
Mon, May 6, 2013 at 10:08 AM, jojo <span dir=3D"ltr">&lt;<a =
href=3D"mailto:rjiejie@gmail.com" =
target=3D"_blank">rjiejie@gmail.com</a>&gt;</span> wrote:<br><blockquote =
class=3D"gmail_quote" style=3D"margin:0px 0px 0px =
0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);border-left=
-style:solid;padding-left:1ex">

<div><br></div><div><span style=3D"white-space:pre-wrap">	</span>I =
am not familiar with yocto project, and i want to enable DFB render =
backend in cairo,</div><div><br></div><div><span =
style=3D"white-space:pre-wrap">	</span>du to the patches "<a =
href=3D"http://lists.linuxtogo.org/pipermail/openembedded-core/2011-Novemb=
er/013037.html" =
target=3D"_blank">http://lists.linuxtogo.org/pipermail/openembedded-core/2=
011-November/013037.html</a>",</div>

<div><br></div><div><span style=3D"white-space:pre-wrap">	</span>i =
know about first need to disable X11 feature in my system by default, =
but i do not know about how to disable =
X11,</div><div><br></div><div><span style=3D"white-space:pre-wrap">	=
</span>Someone&nbsp;can point me out any clue to enable DFB with cairo =
in yocto ?&nbsp;</div>

<div>
<span style=3D"border-collapse:separate;border-spacing:0px"><span =
style=3D"border-spacing:0px;text-indent:0px;letter-spacing:normal;font-var=
iant:normal;text-align:-webkit-auto;font-style:normal;font-weight:normal;l=
ine-height:normal;border-collapse:separate;text-transform:none;font-size:m=
edium;white-space:normal;font-family:'Heiti SC';word-spacing:0px"><div =
style=3D"word-wrap:break-word">

=
<div><div></div></div></div></span></span></div></blockquote></div><br>hi.=
 you should check meta-yocto/conf/local.conf.sample.extended file, I =
think that might be of interest to you:</div><div =
class=3D"gmail_extra"><div class=3D"gmail_extra">

<br></div><div class=3D"gmail_extra"># If you want to get an image based =
on directfb without x11, Please copy this variable to =
build/conf/local.conf &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</div><div class=3D"gmail_extra">

#DISTRO_FEATURES =3D "alsa argp bluetooth ext2 irda largefile pcmcia =
usbgadget usbhost wifi xattr nfs zeroconf pci 3g directfb =
${DISTRO_FEATURES_LIBC}" &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; =
&nbsp;&nbsp;</div><div><br></div><div style=3D"">I, too, am using an =
X11-less image using these recommendations.</div>

<div style=3D""><br></div><div style=3D""><br></div></div><div =
class=3D"gmail_extra"><br></div></div>
</blockquote></div><br></div></body></html>=

--Apple-Mail=_9D31166F-EB6C-41C2-8F22-2B5473BD465D--
