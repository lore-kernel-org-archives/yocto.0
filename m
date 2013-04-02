Return-Path: <elizabeth.flanagan@intel.com>
Received: from mail-ve0-f170.google.com (mail-ve0-f170.google.com
	[209.85.128.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 72689E0150A
	for <yocto@yoctoproject.org>; Tue,  2 Apr 2013 14:22:04 -0700 (PDT)
Received: by mail-ve0-f170.google.com with SMTP id 15so1126760vea.15
	for <yocto@yoctoproject.org>; Tue, 02 Apr 2013 14:22:03 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type:x-gm-message-state;
	bh=9b4pUKJvdgSZQE+WsyxNgyf7qWVR0ioESzSsNxbh3b0=;
	b=BljfYipK+U9NqCC+Ub9I0/GO8Lvy9zeTWsqUBJzCnPt6wnrkSWIYJOzRXDN4sxB2RK
	UUhNZL6ZVLm1YeOx1BKbf48K7Fr7gvHaap4pl+MkxAwy+AUqexIT2T+grOxMCPAAXaMw
	ielMb3E+smtvDaljYMqTchE8bHNXJPqpltbsPsF/z5ht7QeosFGfWAS09WjAmqylEWP+
	ZWn9GQcq1NLVVCz9ZVaFPxm/jFdGnGEvng8MxOJssRwJGL+N5Ht4BhcJssGFcp0PdbGe
	/ErkiQ7X9z/oLPz5KJX/vpAtlq69t1I0lclnK/S0JSjibysn+Y0zGsavYAcH9If+5ePj
	587Q==
MIME-Version: 1.0
X-Received: by 10.52.230.167 with SMTP id sz7mr12212997vdc.81.1364937723675;
	Tue, 02 Apr 2013 14:22:03 -0700 (PDT)
Received: by 10.52.163.74 with HTTP; Tue, 2 Apr 2013 14:22:03 -0700 (PDT)
In-Reply-To: <cover.1364932393.git.stefanx.stanacar@intel.com>
References: <cover.1364932393.git.stefanx.stanacar@intel.com>
Date: Tue, 2 Apr 2013 14:22:03 -0700
Message-ID: <CAPhnLPAqTNBxsFE+wj8H5pHWsksSQMb7-keywiF1JUVuCR-FYQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Stefan Stanacar <stefanx.stanacar@intel.com>
X-Gm-Message-State: ALoCoQnEfXqUYPMo6rft7cIMmdzNGZUiYpz+5p/kE9FBoUhTKOKfnpYhi7q1nmvXg3ScDqxleXsJ
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [yocto-autobuilder][PATCH 0/1] Add support for creating lib64 multilib configs
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
X-List-Received-Date: Tue, 02 Apr 2013 21:22:04 -0000
Content-Type: multipart/alternative; boundary=089e0111affe294d1604d96754e8

--089e0111affe294d1604d96754e8
Content-Type: text/plain; charset=ISO-8859-1

Pulled (along with the nightly-multilib.conf patch) into
eflanagan/yocto-autobuilder-refactor. Thanks!

-b


On Tue, Apr 2, 2013 at 12:54 PM, Stefan Stanacar <stefanx.stanacar@intel.com
> wrote:

> The following changes since commit
> 2c1a41e7fd054dc0443b4740c9f5e14d0bf25ce4:
>
>   CreateAutoConf.py: Remove unneeded try/excepts (2013-04-02 11:59:45
> -0700)
>
> are available in the git repository at:
>
>   git://git.yoctoproject.org/poky-contrib stefans/yab2
>   http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=stefans/yab2
>
> Stefan Stanacar (1):
>   CreateAutoConf.py: add support for lib64 multilib
>
>  .../site-packages/autobuilder/buildsteps/CreateAutoConf.py     | 10
> +++++++---
>  1 file changed, 7 insertions(+), 3 deletions(-)
>
> --
> 1.8.1.4
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

--089e0111affe294d1604d96754e8
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Pulled (along with the nightly-multilib.conf patch) i=
nto eflanagan/yocto-autobuilder-refactor. Thanks!<br><br></div>-b<br></div>=
<div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Tue, Apr 2=
, 2013 at 12:54 PM, Stefan Stanacar <span dir=3D"ltr">&lt;<a href=3D"mailto=
:stefanx.stanacar@intel.com" target=3D"_blank">stefanx.stanacar@intel.com</=
a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">The following changes since commit 2c1a41e7f=
d054dc0443b4740c9f5e14d0bf25ce4:<br>
<br>
=A0 CreateAutoConf.py: Remove unneeded try/excepts (2013-04-02 11:59:45 -07=
00)<br>
<br>
are available in the git repository at:<br>
<br>
=A0 git://<a href=3D"http://git.yoctoproject.org/poky-contrib" target=3D"_b=
lank">git.yoctoproject.org/poky-contrib</a> stefans/yab2<br>
=A0 <a href=3D"http://git.yoctoproject.org/cgit.cgi/poky-contrib/log/?h=3Ds=
tefans/yab2" target=3D"_blank">http://git.yoctoproject.org/cgit.cgi/poky-co=
ntrib/log/?h=3Dstefans/yab2</a><br>
<br>
Stefan Stanacar (1):<br>
=A0 CreateAutoConf.py: add support for lib64 multilib<br>
<br>
=A0.../site-packages/autobuilder/buildsteps/CreateAutoConf.py =A0 =A0 | 10 =
+++++++---<br>
=A01 file changed, 7 insertions(+), 3 deletions(-)<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
--<br>
1.8.1.4<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</font></span></blockquote></div><br><br clear=3D"all"><br>-- <br>Elizabeth=
 Flanagan<br>Yocto Project<br>Build and Release
</div>

--089e0111affe294d1604d96754e8--
