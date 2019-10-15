Return-Path: <davis.roman84@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E45A3E00E27; Tue, 15 Oct 2019 12:04:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (davis.roman84[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.160.171 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f171.google.com (mail-qt1-f171.google.com
	[209.85.160.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58988E008D9
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2019 12:04:04 -0700 (PDT)
Received: by mail-qt1-f171.google.com with SMTP id j31so32165931qta.5
	for <yocto@yoctoproject.org>; Tue, 15 Oct 2019 12:04:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=MvW8kHzYm7AVk1FIaanHKn50YAXZ2H2m9x0DDPmaAHs=;
	b=ZkOacsc5znd1AhIn3ud07DsMpNJQitMZquZKQkPoBqaNh+ptLR5ci18wuauzT6u0sC
	JLRAa+aJ444t7tR8hZm80W0Bh7s6W2gYqHUo2Z/jv0uIkTx/SEuttL2h7QR4xTF9bdt+
	0/4ZvUm9EqxUaWlziYuq5MhqF7KpDbDeDt5Pdeu5Q59rPeaShO0fLt3XG5WjIADrH3zL
	fARKNDKCZ0NuJhvFMPWLZlqcT11G2gtlnqUEVWGA3riK4MWIyqb+Lo/qnOCJ9lY+2drB
	Q6zNC54h3uEqJm68qLVWa+fyivijqQJLUvGft5PyfuY/Wsl54jWI81hX6Vh/IEb9e9XJ
	40ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=MvW8kHzYm7AVk1FIaanHKn50YAXZ2H2m9x0DDPmaAHs=;
	b=B5I/k9gc7K0QS6O7TEZhUa6bvk9dR3KFTvhfNT5M82gls8HkbvF3eVmdYUDmFqrPKN
	yx+RKudhfoJUMAWPNFCZxu4EHjbMtNPf/f9ua5cp6nIJu3Q9SwkvLGZ0tk8QFPG7+GPz
	mp5BiDXKvJ371W8aePximWVFzKAlCpH3SCVea88pMzSEmqO6AnCQFhxlPdvQyMIZPcO5
	UvzDqZXmwnuYrcBjt2lFkCkScEKYnXlRCPt1JrLd3CWQMpwa05EUY0oB0/6wjm5KQeZm
	SyCtEEwGtWWUy8n4KkiHEwOx+XEoI6ulccpfg3a2++BbFHcPSRyNfNusODBW0xvsZXzw
	QfdQ==
X-Gm-Message-State: APjAAAWN2I1JC6hH+cMyz8rHNRe7f5ZAJosDMM4LQaz9KM1qnAymMju3
	esKIjNBD5O0i6oxHsQu3LFUcDdcj2lGIL+jCMTU=
X-Google-Smtp-Source: APXvYqyWjyNPKJeezbpzQmy1ZkS14+13m483YEEvKPGAbWIXibBm/2nj//qOuyP33xUtgE79jJeK/5clWHdVj5f+Zx4=
X-Received: by 2002:ad4:4348:: with SMTP id q8mr39108134qvs.68.1571166243162; 
	Tue, 15 Oct 2019 12:04:03 -0700 (PDT)
MIME-Version: 1.0
References: <CACfi_Z1EyksY4NrV8iRnRoyMS00qDfFgWdshOwhCd1ohqouL=A@mail.gmail.com>
	<CAJdd5GbogimYgsP4ce6KFgxv_WNqy03AeOR-h=zAM84bhXJgvA@mail.gmail.com>
In-Reply-To: <CAJdd5GbogimYgsP4ce6KFgxv_WNqy03AeOR-h=zAM84bhXJgvA@mail.gmail.com>
From: Davis Roman <davis.roman84@gmail.com>
Date: Tue, 15 Oct 2019 15:03:51 -0400
Message-ID: <CACfi_Z2r_0b84Vb+5GHyXJNM5nnUcydRqKbJVZo78jL5eaDmYQ@mail.gmail.com>
To: Joshua Watt <jpewhacker@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: using BBMULTICONFIG to create a 32-bit rootfs, kernel, u-boot that also includes a 64-bit kernel, u-boot for NXP i.mx6/i.mx8
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
X-List-Received-Date: Tue, 15 Oct 2019 19:04:09 -0000
Content-Type: multipart/alternative; boundary="000000000000ce90570594f7a5f4"

--000000000000ce90570594f7a5f4
Content-Type: text/plain; charset="UTF-8"

Hi Joshua,

Thank you for replying.

Since my last email, I enabled BBMULTICONFIG and was able to build both
32bit and 64bit machine types successfully and so i have both packages
available in their corresponding build folders.

build/tmp-imx6sxsabresd/deploy/rpm/imx6sxsabresd/kernel-4.14.98-r0.imx6sxsabresd.rpm
build/tmp-imx8mmevk/deploy/rpm/imx8mmevk/kernel-4.14.98-r0.imx8mmevk.rpm

I checked out mcdepends however I don't believe this helps me to do the
last piece which is to pull the 64-bit kernel package into my 32-bit image.
According to the yocto docs, mcdepends ensures that imageA is built only
after imageB has finished building (or at least that's how I understand it).

In parallel, I'm studying a patch that was upstreamed in 2017 for adding
support for multiple kernel packages (
http://lists.openembedded.org/pipermail/openembedded-core/2017-October/143674.html
)
This appears to be in line with what I'm looking to do however the wrinkle
is that I'm dealing with two kernels from two different machine types
whereas the patch dealt with two kernels of the same machine type.
I'm still trying to understand the implications of this. My feeling is that
I need a hybrid approach of bbmulticonfig and the above patch for adding
multiple kernel packages.

Please let me know if you have any thoughts.

Thanks,

Davis

On Fri, Oct 4, 2019 at 10:59 PM Joshua Watt <jpewhacker@gmail.com> wrote:

>
>
> On Fri, Oct 4, 2019, 7:04 PM Davis Roman <davis.roman84@gmail.com> wrote:
>
>> Hello,
>>
>> We're working on a Linux distro for two systems where one is based on
>> NXP i.mx6(32-bit,armv7) and the other i.mx8(64-bit,armv8).
>>
>> I have two machine types defined in Yocto so individually I can build
>> either one however our goal is to create a single distro that can run on
>> both processors.
>>
>> So the idea is to use BBMULTICONFIG(
>> https://www.yoctoproject.org/docs/latest/ref-manual/ref-manual.html#var-BBMULTICONFIG
>> )
>> to build two separate images,
>>
>> 1) a 32-bit distro for an i.mx6
>> 2) a 64-bit distro for an i.mx8
>>
>> and then finally, take the 32-bit distro and add the 64-bit
>> kernel+modules and u-boot.
>>
>> ---------------------------------------
>> |--------------------------------------|
>> ||           32-bit rootfs            ||
>> |--------------------------------------|
>> |-----------------   ----------------- |
>> || 32-bit kernel |   |  64-bit kernel ||
>> |-----------------   ----------------- |
>> |-----------------   ----------------- |
>> || 32-bit u-boot |   |  64-bit u-boot ||
>> |-----------------   ----------------- |
>> ---------------------------------------
>>    i.mx6solo             i.mx8m mini
>>
>> We've already tried our existing 32-bit rootfs + 64-bit kernel/u-boot on
>> the i.mx8 and the system runs.
>> So in theory, it should just be a matter of getting yocto to assemble
>> all the pieces together.
>>
>> I don't have much experience with BBMULTICONFIG so any ideas or comments
>> on how to proceed would be appreciated.
>>
>
> You are on the right track. Create two multiconfig files one for each
> machine, then user mcdepends (
> https://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#dev-enabling-multiple-configuration-build-dependencies)
> to pull the 64 bit kernel, etc. into the 32 bit image.
>
> BBMULTICONFIG is used in local.conf to select which multiconfigs you want
> to enable. In your case it would have to list both of the ones that you
> define.
>
>
>> Thank you,
>>
>> Davis
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--000000000000ce90570594f7a5f4
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Joshua,<div><br></div><div>Thank you for replying.</div=
><div><br></div><div>Since my last email, I enabled BBMULTICONFIG and was a=
ble to build both 32bit and 64bit machine types successfully and so i have =
both packages available in their corresponding build folders.</div><div><br=
></div><div>build/tmp-imx6sxsabresd/deploy/rpm/imx6sxsabresd/kernel-4.14.98=
-r0.imx6sxsabresd.rpm<br></div><div>build/tmp-imx8mmevk/deploy/rpm/imx8mmev=
k/kernel-4.14.98-r0.imx8mmevk.rpm</div><div><br></div><div>I checked out mc=
depends however I don&#39;t believe this helps me to do the last piece whic=
h is to pull the 64-bit kernel package into my 32-bit image.=C2=A0</div><di=
v>According to the yocto docs, mcdepends ensures that imageA is built only =
after imageB has finished building (or at least that&#39;s how I understand=
 it).</div><div><br></div><div>In parallel, I&#39;m studying a patch that w=
as upstreamed in 2017 for adding support for multiple kernel packages (<a h=
ref=3D"http://lists.openembedded.org/pipermail/openembedded-core/2017-Octob=
er/143674.html">http://lists.openembedded.org/pipermail/openembedded-core/2=
017-October/143674.html</a>)</div><div>This appears to be in line with what=
 I&#39;m looking to do however the wrinkle is that I&#39;m dealing with two=
 kernels from two different machine types whereas the patch dealt with two =
kernels of the same machine type.=C2=A0</div><div>I&#39;m still trying to u=
nderstand the implications of this. My feeling is that I need a hybrid appr=
oach of bbmulticonfig and the above patch for adding multiple kernel packag=
es.</div><div><br></div><div>Please let me know if you have any thoughts.</=
div><div><br></div><div>Thanks,</div><div><br>Davis</div></div><br><div cla=
ss=3D"gmail_quote"><div dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 4, 201=
9 at 10:59 PM Joshua Watt &lt;<a href=3D"mailto:jpewhacker@gmail.com">jpewh=
acker@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"auto"><div><br><br><div class=3D"gmail_quote"><d=
iv dir=3D"ltr" class=3D"gmail_attr">On Fri, Oct 4, 2019, 7:04 PM Davis Roma=
n &lt;<a href=3D"mailto:davis.roman84@gmail.com" target=3D"_blank">davis.ro=
man84@gmail.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204);pad=
ding-left:1ex"><div dir=3D"ltr"><font face=3D"monospace">Hello,<br><br>We&#=
39;re working on a Linux=C2=A0distro for two systems where one is based on<=
br>NXP i.mx6(32-bit,armv7) and the other i.mx8(64-bit,armv8).</font><div><f=
ont face=3D"monospace"><br></font></div><div><font face=3D"monospace">I hav=
e two machine types defined in Yocto so individually I can build</font></di=
v><div><font face=3D"monospace">either one however our goal is to create a =
single distro=C2=A0</font><span style=3D"font-family:monospace">that can ru=
n on both processors.</span></div><div><font face=3D"monospace"><br>So the =
idea is to use BBMULTICONFIG(</font><a href=3D"https://www.yoctoproject.org=
/docs/latest/ref-manual/ref-manual.html#var-BBMULTICONFIG" rel=3D"noreferre=
r" target=3D"_blank">https://www.yoctoproject.org/docs/latest/ref-manual/re=
f-manual.html#var-BBMULTICONFIG</a>)<div><font face=3D"monospace">to build =
two separate=C2=A0images,<br><br></font></div><div><font face=3D"monospace"=
>1) a 32-bit distro for an i.mx6</font></div><div><font face=3D"monospace">=
2) a 64-bit distro for an i.mx8</font></div><div><font face=3D"monospace"><=
br></font></div><div><font face=3D"monospace">and then finally, take the 32=
-bit distro and add the 64-bit kernel+modules and u-boot.<br><br>----------=
-----------------------------<br>|--------------------------------------|<b=
r>|| =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 32-bit rootfs =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0||<br>|--------------------------------------|<br>|----=
------------- =C2=A0 ----------------- |<br>|| 32-bit kernel | =C2=A0 | =C2=
=A064-bit kernel ||<br>|----------------- =C2=A0 ----------------- |<br>|--=
--------------- =C2=A0 ----------------- |<br>|| 32-bit u-boot | =C2=A0 | =
=C2=A064-bit u-boot ||<br>|----------------- =C2=A0 ----------------- |<br>=
---------------------------------------<br>=C2=A0 =C2=A0i.mx6solo =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 i.mx8m mini<br><br>We&#39;ve already tri=
ed our existing 32-bit rootfs=C2=A0+ 64-bit kernel/u-boot on the i.mx8 and =
the system runs.</font></div><div><font face=3D"monospace">So in theory,=C2=
=A0</font><span style=3D"font-family:monospace">it should just be a matter =
of getting yocto to assemble all the pieces</span><span style=3D"font-famil=
y:monospace">=C2=A0together.</span></div><div><span style=3D"font-family:mo=
nospace"><br></span></div><div><span style=3D"font-family:monospace">I don&=
#39;t have much experience with BBMULTICONFIG so a</span><span style=3D"fon=
t-family:monospace">ny ideas or comments on how to proceed would be appreci=
ated.</span></div></div></div></blockquote></div></div><div dir=3D"auto"><b=
r></div><div dir=3D"auto">You are on the right track. Create two multiconfi=
g files one for each machine, then user mcdepends (<a href=3D"https://www.y=
octoproject.org/docs/current/mega-manual/mega-manual.html#dev-enabling-mult=
iple-configuration-build-dependencies" target=3D"_blank">https://www.yoctop=
roject.org/docs/current/mega-manual/mega-manual.html#dev-enabling-multiple-=
configuration-build-dependencies</a>) to pull the 64 bit kernel, etc. into =
the 32 bit image.</div><div dir=3D"auto"><br></div><div dir=3D"auto">BBMULT=
ICONFIG is used in local.conf to select which multiconfigs you want to enab=
le. In your case it would have to list both of the ones that you define.</d=
iv><div dir=3D"auto"><br></div><div dir=3D"auto"><div class=3D"gmail_quote"=
><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border=
-left:1px solid rgb(204,204,204);padding-left:1ex"><div dir=3D"ltr"><div><d=
iv><font face=3D"monospace"><br>Thank you,<br><br>Davis</font></div></div><=
/div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" rel=3D"noreferrer" target=3D"_bla=
nk">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
 noreferrer" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yoct=
o</a><br>
</blockquote></div></div></div>
</blockquote></div>

--000000000000ce90570594f7a5f4--
