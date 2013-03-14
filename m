Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qa0-f49.google.com (mail-qa0-f49.google.com
	[209.85.216.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03BF5E0145F
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 07:47:31 -0700 (PDT)
Received: by mail-qa0-f49.google.com with SMTP id o13so1264233qaj.8
	for <yocto@yoctoproject.org>; Thu, 14 Mar 2013 07:47:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=pxG3vVlCg7koIlmgRWoHPJNqa3A409p8WQfy72X814g=;
	b=Nv0UDmXJ2S44c5CkEjdMdvgPZpNLJGukUsp1OnBLPaOTSeJ3r+42ArYKqpfJpXQ1zl
	Ag+jIFr6O90T9FgSGrchQZGKrYKdbVM6vxGfvpRq5ESwDcEmSqz0mzsNQspHe0HnUeQ1
	kISVMspGX/ycAKestF3tA8ZoLaLI+TU78A+k/r0tY1lUeRbf0oquRmrQe/UTGx5boysT
	7IRg+PK3nr/titea0oOMW5pADJ+C5eWFYKQPH2hluKMfFULgvCKQPWKHQp+AbBxzgNB6
	RusfapLvd59n4I/at47hUvLO+qwDwjmW+gYqCvzPSKWg1K0P55qCuxRB6JoH0cvzfktD
	X/ig==
MIME-Version: 1.0
X-Received: by 10.49.97.134 with SMTP id ea6mr3094343qeb.33.1363272451135;
	Thu, 14 Mar 2013 07:47:31 -0700 (PDT)
Received: by 10.49.67.98 with HTTP; Thu, 14 Mar 2013 07:47:30 -0700 (PDT)
In-Reply-To: <khsn0u$1gr$1@ger.gmane.org>
References: <khsn0u$1gr$1@ger.gmane.org>
Date: Thu, 14 Mar 2013 15:47:30 +0100
Message-ID: <CAFyqS9pbxN3n7xKY+85gTyH=Q_VZMX3+buhw7xEK5DeXzopV6g@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: Kurt Stevens <kurtmyles@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Using meta-openembeded with yocto
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
X-List-Received-Date: Thu, 14 Mar 2013 14:47:32 -0000
Content-Type: multipart/alternative; boundary=047d7bd766c42e9fb304d7e39a92

--047d7bd766c42e9fb304d7e39a92
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Mar 14, 2013 at 3:32 PM, Kurt Stevens <kurtmyles@gmail.com> wrote:

> Hello all,
>
>     I am new to this list, and new to working with yocto project. I have
> been able to build bootable images for my target (atom) using yocto and
> hob,
> and am very happy and impressed.
>
>     I would also like to use some of the layers within meta-oe
> (specifically
> apache and mysql), but I don't know how to go about using the layers from
> yocto.
>
>     If someone could help me get started, I would greatly appreciate it.
>
> Thanks,
>
> Kurt Stevens
>
> Hi Stevens.
  Just download and place the meta-openembedded somewhere in your path. I
put it under poky together with the rest, then update your
build/conf/bblayers.conf file and add <path>/meta-openembedded/meta-oe to
the list in BBLAYERS.

Hans

--047d7bd766c42e9fb304d7e39a92
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">On Thu, Mar 14, 2013 at 3:32 PM, Kurt St=
evens <span dir=3D"ltr">&lt;<a href=3D"mailto:kurtmyles@gmail.com" target=
=3D"_blank">kurtmyles@gmail.com</a>&gt;</span> wrote:<br><blockquote class=
=3D"gmail_quote" style=3D"margin:0pt 0pt 0pt 0.8ex;border-left:1px solid rg=
b(204,204,204);padding-left:1ex">

Hello all,<br>
<br>
=A0 =A0 I am new to this list, and new to working with yocto project. I hav=
e<br>
been able to build bootable images for my target (atom) using yocto and hob=
,<br>
and am very happy and impressed.<br>
<br>
=A0 =A0 I would also like to use some of the layers within meta-oe (specifi=
cally<br>
apache and mysql), but I don&#39;t know how to go about using the layers fr=
om<br>
yocto.<br>
<br>
=A0 =A0 If someone could help me get started, I would greatly appreciate it=
.<br>
<br>
Thanks,<br>
<br>
Kurt Stevens<br>
<br></blockquote></div>Hi Stevens.<br>=A0 Just download and place the meta-=
openembedded somewhere in your path. I put it under poky together with the =
rest, then update your build/conf/bblayers.conf file and add &lt;path&gt;/m=
eta-openembedded/meta-oe to the list in BBLAYERS.<br>

<br>Hans<br><br><br><br>

--047d7bd766c42e9fb304d7e39a92--
