Return-Path: <martin.jansa@gmail.com>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EBCCDE0141D
	for <yocto@yoctoproject.org>; Wed,  5 Dec 2012 20:23:27 -0800 (PST)
Received: by mail-wi0-f172.google.com with SMTP id o1so153147wic.11
	for <yocto@yoctoproject.org>; Wed, 05 Dec 2012 20:23:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=BdOz9AGKfVwjz1l92UP58OHpt1b0LIcRAsHA+twUZ0U=;
	b=gUazl/pPP5kspAkfaFLkV9JtyYZRxXJICINxaBShpDG8Cy4NxgSvIDItf9u3aF0CQM
	0wxxePH6Cbn9E+mrvb/LcD8wVsZmmpcao+rDCWGsNpU4oMcxePLSz6af9UF2Bfj+8Ihf
	gXHpTdAn0K663k5mTKJqMSp4LQhUiFBV+YuhRcrDt8IaO1Eltn0rrNpfcoE5bc8HJQvz
	HCJEDu+wtUrEt8t2mvT3UdkQiwBp6MIBLSBgNWBCMoSoXhdwcfyAZKsIiXftZzu2Y0qw
	fcyY9c9hugFdUvLwcrdTBoEwI+uHSfPemMwHslAuwWB2NPVd/3uRhCd2a7yczoQN9Kwv
	3RRw==
MIME-Version: 1.0
Received: by 10.216.205.79 with SMTP id i57mr62343weo.209.1354767806811; Wed,
	05 Dec 2012 20:23:26 -0800 (PST)
Received: by 10.194.84.103 with HTTP; Wed, 5 Dec 2012 20:23:26 -0800 (PST)
Received: by 10.194.84.103 with HTTP; Wed, 5 Dec 2012 20:23:26 -0800 (PST)
In-Reply-To: <cover.1354750505.git.nitin.a.kamble@intel.com>
References: <cover.1354750505.git.nitin.a.kamble@intel.com>
Date: Thu, 6 Dec 2012 05:23:26 +0100
Message-ID: <CA+chaQcJUGYNt9qh6Nvyso21KJjTHdayrmtgS+XLZnMfXyEmeA@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
To: Nitin A Kamble <nitin.a.kamble@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/1] Misc: detect trailing space in the patches
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
X-List-Received-Date: Thu, 06 Dec 2012 04:23:28 -0000
Content-Type: multipart/alternative; boundary=0016e6dbe2a3e0cd1704d0277567

--0016e6dbe2a3e0cd1704d0277567
Content-Type: text/plain; charset=UTF-8

Can you add also detection of mixed whitespace? E.g. tab followed by space
in multilinear indentation? Only as warning. Thanks
On Dec 6, 2012 12:38 AM, <nitin.a.kamble@intel.com> wrote:

> From: Nitin A Kamble <nitin.a.kamble@intel.com>
>
> This commit is for detecting trailing white space in the
> create-pull-request script.
>
> Thanks,
> Nitin
>
> The following changes since commit
> 381c4b69c7e8b452f4d3de2f8214e6e5f6a9abe7:
>
>   sstate.bbclass: fix detection of owners matching sstate files
> (2012-12-05 15:34:07 +0000)
>
> are available in the git repository at:
>   git://git.pokylinux.org/poky-contrib nitin/misc
>   http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=nitin/misc
>
> Nitin A Kamble (1):
>   create-pull-request: detect trailing white space
>
>  scripts/create-pull-request |   13 ++++++++++++-
>  1 files changed, 12 insertions(+), 1 deletions(-)
>
> --
> 1.7.3.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0016e6dbe2a3e0cd1704d0277567
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr">Can you add also detection of mixed whitespace? E.g. tab fol=
lowed by space in multilinear indentation? Only as warning. Thanks</p>
<div class=3D"gmail_quote">On Dec 6, 2012 12:38 AM,  &lt;<a href=3D"mailto:=
nitin.a.kamble@intel.com">nitin.a.kamble@intel.com</a>&gt; wrote:<br type=
=3D"attribution"><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8=
ex;border-left:1px #ccc solid;padding-left:1ex">
From: Nitin A Kamble &lt;<a href=3D"mailto:nitin.a.kamble@intel.com">nitin.=
a.kamble@intel.com</a>&gt;<br>
<br>
This commit is for detecting trailing white space in the create-pull-reques=
t script.<br>
<br>
Thanks,<br>
Nitin<br>
<br>
The following changes since commit 381c4b69c7e8b452f4d3de2f8214e6e5f6a9abe7=
:<br>
<br>
=C2=A0 sstate.bbclass: fix detection of owners matching sstate files (2012-=
12-05 15:34:07 +0000)<br>
<br>
are available in the git repository at:<br>
=C2=A0 git://<a href=3D"http://git.pokylinux.org/poky-contrib" target=3D"_b=
lank">git.pokylinux.org/poky-contrib</a> nitin/misc<br>
=C2=A0 <a href=3D"http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=3Dn=
itin/misc" target=3D"_blank">http://git.pokylinux.org/cgit.cgi/poky-contrib=
/log/?h=3Dnitin/misc</a><br>
<br>
Nitin A Kamble (1):<br>
=C2=A0 create-pull-request: detect trailing white space<br>
<br>
=C2=A0scripts/create-pull-request | =C2=A0 13 ++++++++++++-<br>
=C2=A01 files changed, 12 insertions(+), 1 deletions(-)<br>
<br>
--<br>
1.7.3.4<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0016e6dbe2a3e0cd1704d0277567--
