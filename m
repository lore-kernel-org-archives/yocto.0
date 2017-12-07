Return-Path: <sherifomran2000@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7D7C1E00D6A; Wed,  6 Dec 2017 22:54:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (sherifomran2000[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f53.google.com (mail-pg0-f53.google.com [74.125.83.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3F18E00D61
	for <yocto@yoctoproject.org>; Wed,  6 Dec 2017 22:54:24 -0800 (PST)
Received: by mail-pg0-f53.google.com with SMTP id w7so3832615pgv.6
	for <yocto@yoctoproject.org>; Wed, 06 Dec 2017 22:54:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zhLZxTNivDBSkTbXFJcKG+gC4R+JktefPB9uwUzOIRM=;
	b=XTYBsPvpXKqQh3mTEib+jqrpVQIbwQftKBS84yctLMVS03yZJZ5r3hiMnKYNzgGPOx
	qABeAwhxm0Yu4comWEvWwJxGZjjzdnP81skMYbVhwkgEy7eEwwhMQpTsAqUGatNidWEX
	TbFb0/zbhC3Wkv/VAX5IauaodMjjIlJHAx3ZQ5OR8AuGhEqBp9Fj4cmK5+TEYPXQr+4n
	k3JoLsXvWqqhdjtx7uxpq4n0jmQFG0vQoRnC3vBSgVmktqvQQpjilHxobGc1Z6fp5CAr
	UK3/UsY+YYm9At9XpUTMNT0Hh6rexIoGx8ySU6+Qi6WbmAmqWxu9Kn3TT3e24xLn8lIC
	kUcA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zhLZxTNivDBSkTbXFJcKG+gC4R+JktefPB9uwUzOIRM=;
	b=XSK+isntrWOwkxnlzcdJ8eUD+82x6G5DnmVzzQAnkGyHnX35iraTfGDgaM+uIYQ0Rb
	rgUiRXY0Wzp6RF/dS/emN1CLcgiYDCrtwfG64UKoKk/WqubIxqhxhjVlZXxgterWTxeK
	vkub8iDK/oCy4PDDuNTNcACBrIxAy5nnEw3DBtPab9BR3xrJ+slYH4/OT4cYYFqduLSb
	fyYZpw0UYQ1cMIRZ2FJGIYRfGe0yWzJvO4gBApwUCTWQ1TMzlBDp+E/SfvZVfd2B03XY
	L3Q0+S17k+6m6RcXO8fUsogWaPnTSCMmw5IqjBk3MV8dGyAtlqKw2DDL19UyeMLAF5Ht
	OJ6w==
X-Gm-Message-State: AJaThX64y4BqSu9BOVbSr/rnMtpLB6x1ZrmgQPuA4LvH6KcR/qoIItMl
	HxnJegrEvwnODmywnzaC4whZIRP3W6JkAP/yibET3w==
X-Google-Smtp-Source: AGs4zMZ1DHEqwq1KIyyAYQIl2L+ghPvomfWwlv9jwrea4kvKTXj6QCrieqs5whmcXHNfwCoi6C8+zjOajqCZXwJEibA=
X-Received: by 10.159.198.76 with SMTP id y12mr25196649plt.257.1512629663526; 
	Wed, 06 Dec 2017 22:54:23 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.138.69 with HTTP; Wed, 6 Dec 2017 22:54:22 -0800 (PST)
In-Reply-To: <CAPb0b+PWXU4UAt_JGMxLJeBupmc-mcPHN35J9H0KoxyqrZ5OEA@mail.gmail.com>
References: <CAPb0b+PxnaZk5YugbYmf4xT0iFxRYAFzS0Lp_hTd7VtRRpHG6g@mail.gmail.com>
	<CALXw4G7YnNn=2ZmCAbUUNrvrvcii0_7tqB4-DAix+meh_SxFyQ@mail.gmail.com>
	<CAMKF1srRXBQOPNxOUqSF=HjgRj6wO8i5pNKecFNqSyEXEtU4Aw@mail.gmail.com>
	<CAPb0b+O6i=icrjgZ1XXLDUskpUx_qXukMaux2N7yWSaW5BufZw@mail.gmail.com>
	<CAPb0b+NOuo+mcV-nsHQ78TMCbNp+gGCYtwrDbF+N3jMD7_zM0g@mail.gmail.com>
	<CAMKF1sp8VxrjQTPmWCTH9Z5oc7Fnkvoip7z7rr6cTrznCJ=Wsw@mail.gmail.com>
	<CAPb0b+PWXU4UAt_JGMxLJeBupmc-mcPHN35J9H0KoxyqrZ5OEA@mail.gmail.com>
From: Sherif Omran <sherifomran2000@gmail.com>
Date: Thu, 7 Dec 2017 07:54:22 +0100
Message-ID: <CAPb0b+Our_5tLQKgpgrdxFuKNeo_px42XoF9dQ38pkPWQaDUKQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: tiny-linux distribution with raspberrypi error
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
X-List-Received-Date: Thu, 07 Dec 2017 06:54:25 -0000
Content-Type: multipart/alternative; boundary="089e0825c810c575b0055fba89c1"

--089e0825c810c575b0055fba89c1
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

i tried the following
bitbake -c clean rpi-basic-image (to clean the build)

added the following to the local


IMAGE_FSTYPES_append =3D " rpi-sdimg" =3D> when i copied the text from the
email, it gave class unavailable and then i found that there is a hidden
character before the end quotes from another language. By writing it, it
worked.

thank you






On Thu, Dec 7, 2017 at 6:45 AM, Sherif Omran <sherifomran2000@gmail.com>
wrote:

> I trid the rpi-sdimg as mentioned but i get IMAGE_CMD defined for
> IMAGE_FSTYOE entry 'rpi-sdimg' possibly invalid type name or missing
> support class.
> any idea how to create the rpi image.
>
> On Sun, Nov 19, 2017 at 2:59 AM, Khem Raj <raj.khem@gmail.com> wrote:
>
>> I think you can generate a SD card image which can be dd=E2=80=99ed into=
 a sd card
>> =E2=80=8Bpoky tiny by default generates an initramfs image only. =E2=80=
=8B
>> =E2=80=8B
>> =E2=80=8Byou can add
>>
>> IMAGE_FSTYPES_append =3D " rpi-sdimg=E2=80=8B"
>>
>> =E2=80=8Bin local.conf and see if you get a rpi-sdimag=E2=80=8B
>>
>>
>>
>> On Sat, Nov 18, 2017 at 10:47 AM Sherif Omran <sherifomran2000@gmail.com=
>
>> wrote:
>>
>>> I have it now being compiled and created a file called
>>> rpi-basic-image-raspberrypi0-wifi-20171118102213.rootfs.cpio.gz
>>> but how can i burn it? it is not an img file.
>>> Any clue is appreciated.
>>>
>>> On Sat, Nov 18, 2017 at 12:21 PM, Sherif Omran <
>>> sherifomran2000@gmail.com> wrote:
>>>
>>>> it worked well with
>>>>
>>>> PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-tini"
>>>>
>>>> in local.conf. However i don't know if it will work with real time
>>>> kernel .. to be tested later
>>>>
>>>>  thank you
>>>>
>>>> On Sat, Nov 18, 2017 at 10:19 AM, Khem Raj <raj.khem@gmail.com> wrote:
>>>>
>>>>> On Fri, Nov 17, 2017 at 5:34 PM, Michael Gloff <mgloff@emacinc.com>
>>>>> wrote:
>>>>> > This looks to be because poky-tiny.conf does not allow overriding o=
f
>>>>> the
>>>>> > kernel provider. You could try the below patch to use a different
>>>>> kernel.
>>>>> >
>>>>> > Michael Gloff
>>>>> >
>>>>> > diff --git a/meta-poky/conf/distro/poky-tiny.conf
>>>>> > b/meta-poky/conf/distro/poky-tiny.conf
>>>>> > index 2032bfde32..acafd9fef4 100644
>>>>> > --- a/meta-poky/conf/distro/poky-tiny.conf
>>>>> > +++ b/meta-poky/conf/distro/poky-tiny.conf
>>>>> > @@ -37,7 +37,7 @@ TCLIBC =3D "musl"
>>>>> >
>>>>> >  # Distro config is evaluated after the machine config, so we have =
to
>>>>> > explicitly
>>>>> >  # set the kernel provider to override a machine config.
>>>>> > -PREFERRED_PROVIDER_virtual/kernel =3D "linux-yocto-tiny"
>>>>> > +PREFERRED_PROVIDER_virtual/kernel ?=3D "linux-yocto-tiny"
>>>>> >  PREFERRED_VERSION_linux-yocto-tiny ?=3D "4.12%"
>>>>> >
>>>>>
>>>>> please submit this patch with sign off and git format, its good for
>>>>> inclusion upstream
>>>>>
>>>>> >  # We can use packagegroup-core-boot, but in the future we may need
>>>>> a new
>>>>> > packagegroup-core-tiny
>>>>> >
>>>>> >
>>>>> > On Thu, Nov 16, 2017 at 7:05 PM, Sherif Omran <
>>>>> sherifomran2000@gmail.com>
>>>>> > wrote:
>>>>> >>
>>>>> >> hi
>>>>> >>
>>>>> >> i am trying to compile the yocto-tiny for raspberry pi by adding t=
he
>>>>> >> distro to my local.conf
>>>>> >>
>>>>> >> DISTRO =3D "poky-tiny"  and i  get the following
>>>>> >>
>>>>> >>
>>>>> >> ERROR: nothing provides 'virtual/kernel'
>>>>> >> ERROR: linux-yocto-tiny Provides virtual/kernel but was skipped:
>>>>> >> incompatible with machine raspberrypi0-wifi (not in
>>>>> compatible_machine)
>>>>> >> ERROR: linux-yocto-rt Provides virtual/kernel but was skipped:
>>>>> >> incompatible with machine raspberrypi0-wifi (not in
>>>>> compatible_machine)
>>>>> >> ERROR: linux-yocto Provides virtual/kernel but was skipped:
>>>>> incompatible
>>>>> >> with machine raspberrypi0-wifi (not in compatible_machine)
>>>>> >> ERROR: linux-yocto-dev Provides virtual/kernel but was skipped:
>>>>> >> incompatible with machine raspberrypi0-wifi (not in
>>>>> compatible_machine)
>>>>> >> ERROR: required build target 'rpi-basic-image' has no buildable
>>>>> providers.
>>>>> >> Missing or unbuildable depency chain was: 'rpi-basic-image',
>>>>> >> 'virtual/kernel'
>>>>> >>
>>>>> >>
>>>>> >> any body has a clue to solve it?
>>>>> >>
>>>>> >> thanks
>>>>> >>
>>>>> >> --
>>>>> >> _______________________________________________
>>>>> >> yocto mailing list
>>>>> >> yocto@yoctoproject.org
>>>>> >> https://lists.yoctoproject.org/listinfo/yocto
>>>>> >>
>>>>> >
>>>>> >
>>>>> > --
>>>>> > _______________________________________________
>>>>> > yocto mailing list
>>>>> > yocto@yoctoproject.org
>>>>> > https://lists.yoctoproject.org/listinfo/yocto
>>>>> >
>>>>>
>>>>
>>>>
>>>
>>>
>

--089e0825c810c575b0055fba89c1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>i tried the following<br></div>bitbake -c c=
lean rpi-basic-image (to clean the build)<br><br></div>added the following =
to the local<br><br><br>IMAGE_FSTYPES_append =3D &quot; rpi-sdimg&quot; =3D=
&gt; when i copied the text from the email, it gave class unavailable and t=
hen i found that there is a hidden character before the end quotes from ano=
ther language. By writing it, it worked.<br><br></div>thank you<br><div><br=
><br><br><br><br></div></div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Thu, Dec 7, 2017 at 6:45 AM, Sherif Omran <span dir=3D"ltr">=
&lt;<a href=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifom=
ran2000@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote=
" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><=
div dir=3D"ltr"><div>I trid the rpi-sdimg as mentioned but i get IMAGE_CMD =
defined for IMAGE_FSTYOE entry &#39;rpi-sdimg&#39; possibly invalid type na=
me or missing support class.<br></div>any idea how to create the rpi image.=
<br></div><div class=3D"HOEnZb"><div class=3D"h5"><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Sun, Nov 19, 2017 at 2:59 AM, Khem Raj =
<span dir=3D"ltr">&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blan=
k">raj.khem@gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_q=
uote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1e=
x"><div dir=3D"ltr"><div dir=3D"auto">I think you can generate a SD card im=
age which can be dd=E2=80=99ed into a sd card</div><div dir=3D"auto"><span =
style=3D"font-family:monospace,monospace"><div class=3D"gmail_default" styl=
e=3D"font-family:monospace,monospace;display:inline">=E2=80=8Bpoky tiny by =
default generates an initramfs image only. =E2=80=8B</div>=E2=80=8B</span><=
br></div><div dir=3D"auto"><div class=3D"gmail_default" style=3D"font-famil=
y:monospace,monospace">=E2=80=8Byou can add</div><div class=3D"gmail_defaul=
t" style=3D"font-family:monospace,monospace"><br></div><div class=3D"gmail_=
default" style=3D"font-family:monospace,monospace">IMAGE_FSTYPES_append =3D=
 &quot; rpi-sdimg=E2=80=8B&quot;</div><br></div><div dir=3D"auto"><div clas=
s=3D"gmail_default" style=3D"font-family:monospace,monospace">=E2=80=8Bin l=
ocal.conf and see if you get a rpi-sdimag=E2=80=8B</div><br></div><div><div=
 class=3D"m_4540042791999285791h5"><div dir=3D"auto"><br></div><br><div cla=
ss=3D"gmail_quote"><div>On Sat, Nov 18, 2017 at 10:47 AM Sherif Omran &lt;<=
a href=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran20=
00@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" styl=
e=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);paddin=
g-left:1ex"><div><div><div>I have it now being compiled and created a file =
called rpi-basic-image-raspberrypi0-w<wbr>ifi-20171118102213.rootfs.cpio<wb=
r>.gz<br></div>but how can i burn it? it is not an img file.<br></div>Any c=
lue is appreciated. <br></div><div class=3D"gmail_extra"><br><div class=3D"=
gmail_quote">On Sat, Nov 18, 2017 at 12:21 PM, Sherif Omran <span>&lt;<a hr=
ef=3D"mailto:sherifomran2000@gmail.com" target=3D"_blank">sherifomran2000@g=
mail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><div><span><div>it worked well with<br><br>PREFERRED_PROVIDER_vi=
rtual/ker<wbr>nel =3D &quot;linux-yocto-tini&quot;<br><br></div></span>in l=
ocal.conf. However i don&#39;t know if it will work with real time kernel .=
. to be tested later<br><br>=C2=A0thank you</div><div class=3D"gmail_extra"=
><br><div class=3D"gmail_quote"><span>On Sat, Nov 18, 2017 at 10:19 AM, Khe=
m Raj <span>&lt;<a href=3D"mailto:raj.khem@gmail.com" target=3D"_blank">raj=
.khem@gmail.com</a>&gt;</span> wrote:<br></span><div><div class=3D"m_454004=
2791999285791m_-3080092133078545076gmail-m_5577605016296185275m_33190315548=
31047341m_-3521953229864195975h5"><blockquote class=3D"gmail_quote" style=
=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);padding=
-left:1ex"><span>On Fri, Nov 17, 2017 at 5:34 PM, Michael Gloff &lt;<a href=
=3D"mailto:mgloff@emacinc.com" target=3D"_blank">mgloff@emacinc.com</a>&gt;=
 wrote:<br>
&gt; This looks to be because poky-tiny.conf does not allow overriding of t=
he<br>
&gt; kernel provider. You could try the below patch to use a different kern=
el.<br>
&gt;<br>
&gt; Michael Gloff<br>
&gt;<br>
&gt; diff --git a/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; b/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; index 2032bfde32..acafd9fef4 100644<br>
&gt; --- a/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; +++ b/meta-poky/conf/distro/poky-t<wbr>iny.conf<br>
&gt; @@ -37,7 +37,7 @@ TCLIBC =3D &quot;musl&quot;<br>
&gt;<br>
&gt;=C2=A0 # Distro config is evaluated after the machine config, so we hav=
e to<br>
&gt; explicitly<br>
&gt;=C2=A0 # set the kernel provider to override a machine config.<br>
&gt; -PREFERRED_PROVIDER_virtual/ke<wbr>rnel =3D &quot;linux-yocto-tiny&quo=
t;<br>
&gt; +PREFERRED_PROVIDER_virtual/ke<wbr>rnel ?=3D &quot;linux-yocto-tiny&qu=
ot;<br>
&gt;=C2=A0 PREFERRED_VERSION_linux-yocto-<wbr>tiny ?=3D &quot;4.12%&quot;<b=
r>
&gt;<br>
<br>
</span>please submit this patch with sign off and git format, its good for<=
br>
inclusion upstream<br>
<div class=3D"m_4540042791999285791m_-3080092133078545076gmail-m_5577605016=
296185275m_3319031554831047341m_-3521953229864195975m_-8125658621375618980H=
OEnZb"><div class=3D"m_4540042791999285791m_-3080092133078545076gmail-m_557=
7605016296185275m_3319031554831047341m_-3521953229864195975m_-8125658621375=
618980h5"><br>
&gt;=C2=A0 # We can use packagegroup-core-boot, but in the future we may ne=
ed a new<br>
&gt; packagegroup-core-tiny<br>
&gt;<br>
&gt;<br>
&gt; On Thu, Nov 16, 2017 at 7:05 PM, Sherif Omran &lt;<a href=3D"mailto:sh=
erifomran2000@gmail.com" target=3D"_blank">sherifomran2000@gmail.com</a>&gt=
;<br>
&gt; wrote:<br>
&gt;&gt;<br>
&gt;&gt; hi<br>
&gt;&gt;<br>
&gt;&gt; i am trying to compile the yocto-tiny for raspberry pi by adding t=
he<br>
&gt;&gt; distro to my local.conf<br>
&gt;&gt;<br>
&gt;&gt; DISTRO =3D &quot;poky-tiny&quot;=C2=A0 and i=C2=A0 get the followi=
ng<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; ERROR: nothing provides &#39;virtual/kernel&#39;<br>
&gt;&gt; ERROR: linux-yocto-tiny Provides virtual/kernel but was skipped:<b=
r>
&gt;&gt; incompatible with machine raspberrypi0-wifi (not in compatible_mac=
hine)<br>
&gt;&gt; ERROR: linux-yocto-rt Provides virtual/kernel but was skipped:<br>
&gt;&gt; incompatible with machine raspberrypi0-wifi (not in compatible_mac=
hine)<br>
&gt;&gt; ERROR: linux-yocto Provides virtual/kernel but was skipped: incomp=
atible<br>
&gt;&gt; with machine raspberrypi0-wifi (not in compatible_machine)<br>
&gt;&gt; ERROR: linux-yocto-dev Provides virtual/kernel but was skipped:<br=
>
&gt;&gt; incompatible with machine raspberrypi0-wifi (not in compatible_mac=
hine)<br>
&gt;&gt; ERROR: required build target &#39;rpi-basic-image&#39; has no buil=
dable providers.<br>
&gt;&gt; Missing or unbuildable depency chain was: &#39;rpi-basic-image&#39=
;,<br>
&gt;&gt; &#39;virtual/kernel&#39;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; any body has a clue to solve it?<br>
&gt;&gt;<br>
&gt;&gt; thanks<br>
&gt;&gt;<br>
&gt;&gt; --<br>
&gt;&gt; ______________________________<wbr>_________________<br>
&gt;&gt; yocto mailing list<br>
&gt;&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@=
yoctoproject.org</a><br>
&gt;&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"n=
oreferrer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/y=
octo</a><br>
&gt;&gt;<br>
&gt;<br>
&gt;<br>
&gt; --<br>
&gt; ______________________________<wbr>_________________<br>
&gt; yocto mailing list<br>
&gt; <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoct=
oproject.org</a><br>
&gt; <a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noref=
errer" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto=
</a><br>
&gt;<br>
</div></div></blockquote></div></div></div><br></div>
</blockquote></div><br><br></div>
</blockquote></div></div></div></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--089e0825c810c575b0055fba89c1--
