Return-Path: <kergoth@gmail.com>
Received: from mail-lb0-f171.google.com (mail-lb0-f171.google.com
	[209.85.217.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31998E011AB
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 13:10:00 -0800 (PST)
Received: by mail-lb0-f171.google.com with SMTP id gg13so1303857lbb.16
	for <yocto@yoctoproject.org>; Tue, 29 Jan 2013 13:09:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=izYfjNHAAEvASI1k00gKcsiU7OJt9Sr9sZKeLft0r1s=;
	b=FsaHOiyvsO+zheVq3e3V/lDRwNtvop/vaJNk4rcnKSFyxdcbH02MAWsiIL6ONbPYzQ
	bPZz+Eh4ZqmdU/Tq1psLKdS/8Vsy0Ak2kwhrxGeHxI+9rs979tImVtm+vLDyqXI4NZgZ
	e3lHyIuQ1EMCWtHnJ8f6EB4pMhLBgPBWd95QrqWIRI9WWkGt0gKAZPoE9VtwkT6sQGKM
	Wx7bMj5GUTY6tWBGpy4CfRNwhxXpCZfUBXhqyo5MUqTpd74Y8pcIAz+CunOaRwysGqCP
	47Lnqu+A+r6xTwImR1ybs9Z+uBjp7+oMX1W6PlXVagrJApKCJAsVPcA92EWZg3zgyB6M
	Bo4g==
X-Received: by 10.112.87.194 with SMTP id ba2mr1037211lbb.84.1359493799608;
	Tue, 29 Jan 2013 13:09:59 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.34.10 with HTTP; Tue, 29 Jan 2013 13:09:39 -0800 (PST)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D28FAF@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB1237957D28FAF@ORSMSX101.amr.corp.intel.com>
From: Chris Larson <clarson@kergoth.com>
Date: Tue, 29 Jan 2013 14:09:39 -0700
X-Google-Sender-Auth: n9P6DhCaRQ6sqSr_oEeDTQ_CbPA
Message-ID: <CABcZAN=mOTnFvBVM3ZV1Zownr=+s4bLvi-db9jQXSzFXc2dTyg@mail.gmail.com>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: BB_DANGLINGAPPENDS_WARNONLY
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 29 Jan 2013 21:10:01 -0000
Content-Type: multipart/alternative; boundary=f46d0401fdff0003e604d473d147

--f46d0401fdff0003e604d473d147
Content-Type: text/plain; charset=UTF-8

On Tue, Jan 29, 2013 at 1:58 PM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> I can't seem to find any information on this variable other than what was
> offered in a bug (https://bugzilla.yoctoproject.org/show_bug.cgi?id=3662)
> filed against some stuff in the glossary in general.  The information
> provided there by Robert P. J. Day says it is handy when layers get out of
> sync.
>
> Can anyone out there offer more information on this variable?  Wondering
> whether this should be documented in the glossary.
>

Normally, if bitbake encounters a bbappend whose recipe no longer exists,
it treats this condition as fatal. This, as Robert says, often occurs if
layers get out of sync. For example, if oe-core bumps a recipe version and
the old one no longer exists, but the other layer hasn't updated to the new
version yet. It being fatal is a sane default, as it's important to realize
when your changes are no longer being applied. The variable you mention
changes the behavior to a warning instead.
-- 
Christopher Larson

--f46d0401fdff0003e604d473d147
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Jan 29, 2013 at 1:58 PM, Rifenbark, Scott M <span dir=3D"ltr">&lt;<=
a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">scott.m.rif=
enbark@intel.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div id=3D":54">I can&#39;t seem to find any=
 information on this variable other than what was offered in a bug (<a href=
=3D"https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3662" target=3D"_bl=
ank">https://bugzilla.yoctoproject.org/show_bug.cgi?id=3D3662</a>) filed ag=
ainst some stuff in the glossary in general. =C2=A0The information provided=
 there by Robert P. J. Day says it is handy when layers get out of sync.<br=
>


<br>
Can anyone out there offer more information on this variable? =C2=A0Wonderi=
ng whether this should be documented in the glossary.</div></blockquote></d=
iv><br>Normally, if bitbake encounters a bbappend whose recipe no longer ex=
ists, it treats this condition as fatal. This, as Robert says, often occurs=
 if layers get out of sync. For example, if oe-core bumps a recipe version =
and the old one no longer exists, but the other layer hasn&#39;t updated to=
 the new version yet. It being fatal is a sane default, as it&#39;s importa=
nt to realize when your changes are no longer being applied. The variable y=
ou mention changes the behavior to a warning instead.<br>

-- <br>Christopher Larson</div></div>

--f46d0401fdff0003e604d473d147--
