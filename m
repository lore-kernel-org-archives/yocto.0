Return-Path: <gmshastri@gmail.com>
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 75CDAE006E9
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 03:45:30 -0700 (PDT)
Received: by mail-la0-f53.google.com with SMTP id fr10so3636127lab.26
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 03:45:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=xO/s/x99k/bhee4VpQ7sWMlK1JhpjvAutWGXs/yb3lc=;
	b=xjzcFuAg3iFP8yke7AOtp8mrMAjncMHpw6YleeeZw1aS5+RhCjNIslnLuxlcYzyI+M
	DXWYJuebiM5+0qBJnSPTLSN9EhoCSVjH89y8ZnQO8QAuBbz1eoZDBQ1vUR2CbCt+qRZe
	Kjo5GW4ic6MsDD0+OsQ7MjM4FHHOcjEwaAMcGnjbrzKXrrtp/phYQdVJug06npgv7FUi
	eRA/e2AyVAf8eEHvaHN7JS4lCa9TBY5NJ235FW9Kv50PooyGZ1o8ln94hNaaeCGLdynY
	qHKc5ptiwzESI3n0klKxESmSajElT9/D00oW0HuFhVy7mPyayBIZG6QRDsjlBue9bOP4
	5RUg==
MIME-Version: 1.0
X-Received: by 10.152.135.205 with SMTP id pu13mr9653214lab.48.1362998728563; 
	Mon, 11 Mar 2013 03:45:28 -0700 (PDT)
Received: by 10.114.98.66 with HTTP; Mon, 11 Mar 2013 03:45:28 -0700 (PDT)
In-Reply-To: <CAE_REAuOnhUG7GOgJHzSbGjrEyjKj8ApZ3J6W1=PtwZd2TM1Mg@mail.gmail.com>
References: <CAE_REAuOnhUG7GOgJHzSbGjrEyjKj8ApZ3J6W1=PtwZd2TM1Mg@mail.gmail.com>
Date: Mon, 11 Mar 2013 16:15:28 +0530
Message-ID: <CAE_REAuMoVX4RPkVN4UFKX0XvVPK5-b07M-53ueVeKtzWBCFWQ@mail.gmail.com>
From: Gaurang Shastri <gmshastri@gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Regarding Licensing of "mbsalign.c" available in util-linux-2.21.2 version (Yocto-1.3-Danny)
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
X-List-Received-Date: Mon, 11 Mar 2013 10:45:30 -0000
Content-Type: multipart/alternative; boundary=f46d044284f80ba20704d7a3df4d

--f46d044284f80ba20704d7a3df4d
Content-Type: text/plain; charset=ISO-8859-1

Hi All,

Any shades of light for below query ???

//Gaurang Shastri

On Fri, Mar 8, 2013 at 2:51 PM, Gaurang Shastri <gmshastri@gmail.com> wrote:

> Hi All,
>
> I have some concerns regarding util-linux-2.21.2 version . As per
> Yocto-1.3 (danny) recipe,
> {{{
>
> LICENSE_${PN}-lscpu = "GPLv3+"  <-- util-linux_2.21.2.bb
>
> LICENSE = "GPLv2+ & LGPLv2.1+ & BSD"   <-- util-linux.inc
>
> }}}
>
> So as per the above description, only lscpu is GPLv3.
>
> But while looking into the source of util-linux-2.21.2, I found out that
> "util-linux-2.21.2/lib/mbsalign.c" is GPLv3 and it is used by following
> binaries while building:
> {{{
>   -  fdisk
>   -  partx
> }}}
>
> So does it mean that the above binaries should also be GPLv3 and need to
> take care in util-linux.{bb,inc} ???
>
> Regards,
> Gaurang Shastri
>

--f46d044284f80ba20704d7a3df4d
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Hi All,<br><br>Any shades of light for below query ???<br><br>//Gaurang Sha=
stri<br><br><div class=3D"gmail_quote">On Fri, Mar 8, 2013 at 2:51 PM, Gaur=
ang Shastri <span dir=3D"ltr">&lt;<a href=3D"mailto:gmshastri@gmail.com" ta=
rget=3D"_blank">gmshastri@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi All,<br><br>I have some concerns regardin=
g util-linux-2.21.2 version . As per Yocto-1.3 (danny) recipe,<br>{{{<br><b=
r>
LICENSE_${PN}-lscpu =3D &quot;GPLv3+&quot;=A0 &lt;-- <a href=3D"http://util=
-linux_2.21.2.bb" target=3D"_blank">util-linux_2.21.2.bb</a><br>
<br>LICENSE =3D &quot;GPLv2+ &amp; LGPLv2.1+ &amp; BSD&quot;=A0=A0 &lt;-- u=
til-linux.inc<br><br>}}}<br><br>So as per the above description, only lscpu=
 is GPLv3. <br><br>But while looking into the source of util-linux-2.21.2, =
I found out that &quot;util-linux-2.21.2/lib/mbsalign.c&quot; is GPLv3 and =
it is used by following binaries while building:<br>

{{{<br>=A0 -=A0 fdisk <br>=A0 -=A0 partx<br>}}}<br><br>So does it mean that=
 the above binaries should also be GPLv3 and need to take care in util-linu=
x.{bb,inc} ???<br><br>Regards,<br>Gaurang Shastri<br>
</blockquote></div><br>

--f46d044284f80ba20704d7a3df4d--
