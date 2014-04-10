Return-Path: <romain145@gmail.com>
Received: from mail-vc0-f170.google.com (mail-vc0-f170.google.com
	[209.85.220.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3DE6E00BBF
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 03:22:15 -0700 (PDT)
Received: by mail-vc0-f170.google.com with SMTP id hu19so3296396vcb.29
	for <yocto@yoctoproject.org>; Thu, 10 Apr 2014 03:22:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type; bh=sXv5c/EeruGSOjJIusxY9Y7bDyPWb63peU7J3jnzNh4=;
	b=yqhmOY79tI3ETtPKiTgLEyYlA4+Ktma+RWrfCD/YTYoZ1aB9kOiaLLhgLZVXTv/p4P
	astMpoEME3Vqw0uXPZntljYa2LiS7YRoJ+JoKVr6Us94Hjd+9A8iZgXLQCUT6bcMT6w9
	+8j1zy5Atsb8I9IEH7Oyl/NdsQOkTqfFa8Z7CFCKHNhQRXgZL3TcbVipyciHaJ20Ftse
	BwgPRyqDXUfmzQNWHF00VENcWhVWsOrJd2UhVDijuVKANePngjfkfCi2Y0uBHTu+ETKw
	P4VgHe0OIDV4L4aEl8etbwbFYidZ5VFKVXCJX4SH0ItljEvRRXuk8fSMz728Nx+AHn6K
	SLJA==
X-Received: by 10.58.46.207 with SMTP id x15mr14151580vem.17.1397125334999;
	Thu, 10 Apr 2014 03:22:14 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.236.163 with HTTP; Thu, 10 Apr 2014 03:21:54 -0700 (PDT)
In-Reply-To: <CAKfC58sPYyCdKCLusG_gbu4B1fCie0PM6YFz+chdda61Sah7RA@mail.gmail.com>
References: <CAKfC58sPYyCdKCLusG_gbu4B1fCie0PM6YFz+chdda61Sah7RA@mail.gmail.com>
From: Romain <romain145@gmail.com>
Date: Thu, 10 Apr 2014 11:21:54 +0100
Message-ID: <CAKfC58saGQftdHrdUgpXa2s3OfCYrCizSh1oR=ZoxsLv5eVUeQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: PREFERRED_PROVIDER entry in local.conf
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
X-List-Received-Date: Thu, 10 Apr 2014 10:22:17 -0000
Content-Type: multipart/alternative; boundary=089e013a18c24caced04f6ad97ba

--089e013a18c24caced04f6ad97ba
Content-Type: text/plain; charset=ISO-8859-1

Hi, any clue ?

Thanks and Regards
Romain

On 8 April 2014 18:10, Romain <romain145@gmail.com> wrote:

> Hello all,
>
> While building an image I get those notes, and I would like to lock down
> the providers for sshd and jpeg :
> NOTE: multiple providers are available for runtime sshd (openssh, dropbear)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match sshd
> NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)
> NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg
>
> I tried a few syntax in the local.conf, but none of them seem to work :
> PREFERRED_PROVIDER_virtual/sshd = "ssh-server-openssh"
> PREFERRED_PROVIDER_sshd = "ssh-server-openssh"
> PREFERRED_PROVIDER_sshd = "openssh"
> PREFERRED_PROVIDER_openssh = "sshd"
>
> Thanks !
> Romain
>

--089e013a18c24caced04f6ad97ba
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi, any clue ?<div class=3D"gmail_extra"><div><br></div><d=
iv>Thanks and Regards<br>Romain</div></div><div class=3D"gmail_extra"><br><=
div class=3D"gmail_quote">On 8 April 2014 18:10, Romain <span dir=3D"ltr">&=
lt;<a href=3D"mailto:romain145@gmail.com" target=3D"_blank">romain145@gmail=
.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div dir=3D"ltr"><p dir=3D"ltr">Hello all,</p>
<p dir=3D"ltr">While building an image I get those notes, and I would like =
to lock down the providers for sshd and jpeg :<br>
NOTE: multiple providers are available for runtime sshd (openssh, dropbear)=
<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match sshd<br>
NOTE: multiple providers are available for jpeg (jpeg, libjpeg-turbo)<br>
NOTE: consider defining a PREFERRED_PROVIDER entry to match jpeg<br></p><p>=
I tried a few syntax in the local.conf, but none of them seem to work :<br>=
PREFERRED_PROVIDER_virtual/sshd =3D &quot;ssh-server-openssh&quot;<br>PREFE=
RRED_PROVIDER_sshd =3D &quot;ssh-server-openssh&quot;<br>


PREFERRED_PROVIDER_sshd =3D &quot;openssh&quot;<br>PREFERRED_PROVIDER_opens=
sh =3D &quot;sshd&quot;</p>
<p dir=3D"ltr">Thanks !<span class=3D""><font color=3D"#888888"><br>Romain<=
br></font></span></p>
</div>
</blockquote></div><br></div></div>

--089e013a18c24caced04f6ad97ba--
