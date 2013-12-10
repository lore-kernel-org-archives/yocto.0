Return-Path: <diego.sueiro@gmail.com>
Received: from mail-ie0-f171.google.com (mail-ie0-f171.google.com
	[209.85.223.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 48319E00785
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 09:14:42 -0800 (PST)
Received: by mail-ie0-f171.google.com with SMTP id ar20so9132636iec.16
	for <yocto@yoctoproject.org>; Tue, 10 Dec 2013 09:14:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=hOXjkN8ZJww4rVw7iWmGKadZHlsX/Fnvv9KLEfSmHhU=;
	b=JbeEdbp7m7BCpKuRxCfUd/Ulz73CO4U5AoSDjsBaY0CrO6gkVIeSKC6Truytz/wpLD
	3G1RENAXOiyKRnXAEP9Soa5nrSc/GXZyQCY0fYH+fPBTFqsnOgHt3U/7oA79j7F4Ghht
	mZnUR41XuGe/stDnMOWn6EtG6ZBKGE4Jk78w7ZLkKkepCwXD6Ev1uHZQDHwC2iVw12NY
	lDZPcmmmE9Z6pUaoM/MO302ItGzcs1bziGF8SixYyYnk0VngLxRpExyxM17OaZ+7BlrU
	Cf0Ng57qwrXe9bpuAkfic+L+95p4j0+2yEfe3PMwD6a53aWJn+LIErkLdKw8mi4BhaN8
	Y+fA==
X-Received: by 10.50.128.137 with SMTP id no9mr21216107igb.36.1386695681974;
	Tue, 10 Dec 2013 09:14:41 -0800 (PST)
MIME-Version: 1.0
Received: by 10.64.26.233 with HTTP; Tue, 10 Dec 2013 09:14:21 -0800 (PST)
In-Reply-To: <20131210154634.GU31548@axis.com>
References: <CAMCfZKHWGAQJ95K=T-0xpQRoO+RKvgvx9AWKMP9SUPMjAnTUDQ@mail.gmail.com>
	<20131210154634.GU31548@axis.com>
From: Diego Sueiro <diego.sueiro@gmail.com>
Date: Tue, 10 Dec 2013 15:14:21 -0200
Message-ID: <CAMCfZKGk2=hoKa48fRkDE-9bgiY424UT0_AZ5VmnjNDKfDY-Sg@mail.gmail.com>
To: Olof Johansson <olof.johansson@axis.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: busybox 1.21 ash bug?
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
X-List-Received-Date: Tue, 10 Dec 2013 17:14:45 -0000
Content-Type: multipart/alternative; boundary=047d7b10cf0d8928c404ed313f1b

--047d7b10cf0d8928c404ed313f1b
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Dec 10, 2013 at 1:46 PM, Olof Johansson <olof.johansson@axis.com>wrote:

> That type of for loop is a bashism; as far as I know and can
> tell, busybox ash does not support it (even with ASH_BASH_COMPAT=y).
>
> The code that is executed when the parser finds a "for" token:
>
> ash.c: parse_command(void)
>     ...
>     switch (readtoken()) {
>     ...
>     case TFOR:
>         if (readtoken() != TWORD || quoteflag || !goodname(wordtext))
>             raise_error_syntax("bad for loop variable");
>
> Are you sure it's using busybox ash when it actually works? I can
> reproduce the error message your are seeing in both busybox 1.20
> and 1.21.
>

>
> RANDOM is also an extension, but one that is supported by busybox
> (or rather, can be). The default defconfig in oe-core does not
> enable it, see ASH_RANDOM_SUPPORT.
>
I have a bbappend to enable it.

What a shame. I'm really sorry about the buzz.

I'm working based on Angstrom distribution setup-scripts, and for dylan
version it is using bash as the default shell and for dora version it is
using the ash from busybox.


Regards,

--
*dS
Diego Sueiro

/*long live rock 'n roll*/

--047d7b10cf0d8928c404ed313f1b
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Dec 10, 2013 at 1:46 PM, Olof Johansson <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:olof.johansson@axis.com" target=3D"_blank">olof.johansson@axis=
.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div id=3D":25n" style=3D"overflow:hidden">That type of fo=
r loop is a bashism; as far as I know and can<br>


tell, busybox ash does not support it (even with ASH_BASH_COMPAT=3Dy).<br>
<br>
The code that is executed when the parser finds a &quot;for&quot; token:<br=
>
<br>
ash.c: parse_command(void)<br>
=A0 =A0 ...<br>
=A0 =A0 switch (readtoken()) {<br>
=A0 =A0 ...<br>
=A0 =A0 case TFOR:<br>
=A0 =A0 =A0 =A0 if (readtoken() !=3D TWORD || quoteflag || !goodname(wordte=
xt))<br>
=A0 =A0 =A0 =A0 =A0 =A0 raise_error_syntax(&quot;bad for loop variable&quot=
;);<br>
<br>
Are you sure it&#39;s using busybox ash when it actually works? I can<br>
reproduce the error message your are seeing in both busybox 1.20<br>
and 1.21.<br></div></blockquote></div></div><div class=3D"gmail_extra"><div=
 class=3D"gmail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0p=
x 0px 0px 0.8ex;border-left-width:1px;border-left-color:rgb(204,204,204);bo=
rder-left-style:solid;padding-left:1ex">

<div id=3D":25n" style=3D"overflow:hidden"><br>
<br>
RANDOM is also an extension, but one that is supported by busybox<br>
(or rather, can be). The default defconfig in oe-core does not<br>
enable it, see ASH_RANDOM_SUPPORT.</div></blockquote><div style>I have a bb=
append to enable it.=A0</div></div><div class=3D"gmail_extra"><br></div>Wha=
t a shame. I&#39;m really sorry about the buzz.</div><div class=3D"gmail_ex=
tra">

<br></div><div class=3D"gmail_extra">I&#39;m working based on Angstrom dist=
ribution setup-scripts, and for dylan version it is using bash as the defau=
lt shell and for dora version it is using the ash from busybox.<br><br><br =
clear=3D"all">

<div><div dir=3D"ltr"><div>Regards,</div><div><br></div>--<br>*dS<br>Diego =
Sueiro<br><br>/*long live rock &#39;n roll*/<br></div></div>
</div></div>

--047d7b10cf0d8928c404ed313f1b--
