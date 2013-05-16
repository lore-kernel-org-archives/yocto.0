Return-Path: <rstreif@linuxfoundation.org>
Received: from mail-ea0-f174.google.com (mail-ea0-f174.google.com
	[209.85.215.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3C688E0149A
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 22:16:49 -0700 (PDT)
Received: by mail-ea0-f174.google.com with SMTP id z7so1463537eaf.19
	for <yocto@yoctoproject.org>; Wed, 15 May 2013 22:16:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=+/tUYyGlp12TRIMezNitQf1kH2b6/rJhKXQwyLxFNAM=;
	b=U3PxtavnY2xlmgTmG6ne78iDxT+pdEE46HmxXe7D7u2gGBUfGww/tf7KdHs1IaRUB0
	1wx3mg8lX3sNtGZoi60hYfVkdoTFROcP9WwrEDy6GqkFAiAqfSiGEohqCv4ogBd8ICqU
	YN1roKyVuQ/Pi0ea2Sl2DXEt+hoNGdBvLHFn0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=+/tUYyGlp12TRIMezNitQf1kH2b6/rJhKXQwyLxFNAM=;
	b=aPAfOB3g+iLqXm+0OxOB3bricwnqoXjOQ/ZFe7MG1tSMY84e1Q/xZJ//nKu0nL3CVR
	mZnUFvIbiXEMh+yvF7dvuvZ1EQNVnVmDjAxB1BXtWPFUDpDCSAdHqj1uB6vIn21rU6MZ
	ZsDEAYr6jHXEGr7HAf3TrhteLLzYg5yt5TqSLJs2tFv8A3XAlfU2/iI2EuJ5XAGMzSNh
	v6mrNlqLjvNmGudwg8vnnyaqxvZp/mHb20ebOghbXB6v5GRkZ8EMNea5hhey42sX86Cw
	s1wXKIMk1UUthsIgOISmwZrd19RAhp3/fz5+ZyDiuquFj9RM0NVU3KuEwsyNZ5cfeUvJ
	2lVg==
MIME-Version: 1.0
X-Received: by 10.15.55.132 with SMTP id v4mr3908961eew.19.1368681407547; Wed,
	15 May 2013 22:16:47 -0700 (PDT)
Received: by 10.223.96.71 with HTTP; Wed, 15 May 2013 22:16:47 -0700 (PDT)
In-Reply-To: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF393A2@ORSMSX101.amr.corp.intel.com>
References: <41DEA4B02DBDEF40A0F3B6D0DDB123797FF393A2@ORSMSX101.amr.corp.intel.com>
Date: Wed, 15 May 2013 22:16:47 -0700
Message-ID: <CA+gsK-rnDcEMdc3i49qdqw73T+4qvx_OrmgRPVuKzHOWUcg71A@mail.gmail.com>
From: Rudolf Streif <rstreif@linuxfoundation.org>
To: "Rifenbark, Scott M" <scott.m.rifenbark@intel.com>
X-Gm-Message-State: ALoCoQmEu5AR5hWcNCMnAVHVgsLx6E3eBqR6cNa6RbYqc5OaozPFVJYYF4m8h9tiSPxwc+7AOG6S
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: building the BitBake manual
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
X-List-Received-Date: Thu, 16 May 2013 05:16:49 -0000
Content-Type: multipart/alternative; boundary=001a1133d1a41bb98504dccef951

--001a1133d1a41bb98504dccef951
Content-Type: text/plain; charset=ISO-8859-1

Scott,

On FC18 these packages are also called xmlto and dblatex.

xmlto has a dependency on flex which the package manager should install
automatically.
dblatex has dependencies on texlive-*.

:rjs



On Wed, May 15, 2013 at 9:07 PM, Rifenbark, Scott M <
scott.m.rifenbark@intel.com> wrote:

> When running "make" on the BB docs, my Ubuntu system was missing two
> packages: dblatex, xmlto.  Currently, the "Required Packages for the Host
> Development System" section in the YP Reference Manual does not list these
> packages as part of the "Documentation" packages.  I am thinking we should
> add these in for Ubuntu.  Can anyone tell me what the packages would be for
> Fedora, OpenSUSE, and CentOS?  Are they named the same?
>
> Thanks,
> Scott
>
> Scott Rifenbark
> Intel Corporation
> Yocto Project Documentation
> 503.712.2702
> 503.341.0418 (cell)
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--001a1133d1a41bb98504dccef951
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Scott,<div><br></div><div>On FC18 these packages are also called xmlto and =
dblatex.</div><div><br></div><div>xmlto has a dependency on flex which the =
package manager should install automatically.</div><div>dblatex has depende=
ncies on texlive-*.</div>
<div><br></div><div>:rjs</div><div><br></div><div><br><br><div class=3D"gma=
il_quote">On Wed, May 15, 2013 at 9:07 PM, Rifenbark, Scott M <span dir=3D"=
ltr">&lt;<a href=3D"mailto:scott.m.rifenbark@intel.com" target=3D"_blank">s=
cott.m.rifenbark@intel.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">When running &quot;make&quot; on the BB docs=
, my Ubuntu system was missing two packages: dblatex, xmlto. =A0Currently, =
the &quot;Required Packages for the Host Development System&quot; section i=
n the YP Reference Manual does not list these packages as part of the &quot=
;Documentation&quot; packages. =A0I am thinking we should add these in for =
Ubuntu. =A0Can anyone tell me what the packages would be for Fedora, OpenSU=
SE, and CentOS? =A0Are they named the same?<br>

<br>
Thanks,<br>
Scott<br>
<br>
Scott Rifenbark<br>
Intel Corporation<br>
Yocto Project Documentation<br>
<a href=3D"tel:503.712.2702" value=3D"+15037122702">503.712.2702</a><br>
<a href=3D"tel:503.341.0418" value=3D"+15033410418">503.341.0418</a>=A0(cel=
l)<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div><div><font face=3D"=
garamond, serif"><span style=3D"border-collapse:collapse;color:rgb(102,102,=
102);font-family:arial,sans-serif;font-size:13px"><br></span></font></div>
</div>

--001a1133d1a41bb98504dccef951--
