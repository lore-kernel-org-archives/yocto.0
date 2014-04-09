Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f51.google.com (mail-la0-f51.google.com
	[209.85.215.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0FEF2E00BF0
	for <yocto@yoctoproject.org>; Wed,  9 Apr 2014 16:40:00 -0700 (PDT)
Received: by mail-la0-f51.google.com with SMTP id pv20so1740792lab.10
	for <yocto@yoctoproject.org>; Wed, 09 Apr 2014 16:39:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=AYC2ZrPI3XKG/7j8iPfnyGTOAkA/qFuDKoMxmFM5mzE=;
	b=kpFDy9hDajvSYFi4lLS8huAb4nwQUToUr1IqkWpO6YsMw/KU4+OCI3vZqhk0ZBcG4g
	rYEN1NPbZyCISPBIPzsJanBgvgQxkEpmnm+oKeS8nHw3BVcw+nAIuYL8LZJ8Y4v8jQ4Q
	8Hkd8lkDUsuIy0YfjwGliiXIRMNZoNTyRlwOKTkYFuZTUPQqgG3nlEvY8zIdoPBowBzb
	/bklR64fE6wHUUXo/+vlpsQ57fos74LkH1vOqWSlOzHbnQWAS9KV99jC9fPf8SeYHVc1
	k3WLuLVkFff7xlA3b8suDn/lmuyPXD3cuWjMY3UUIrIQiRPy78aEJ+rhfT3lhcWf3hLq
	Z4/A==
X-Received: by 10.112.27.133 with SMTP id t5mr9073997lbg.21.1397086798856;
	Wed, 09 Apr 2014 16:39:58 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.35.194 with HTTP; Wed, 9 Apr 2014 16:39:38 -0700 (PDT)
In-Reply-To: <CA+gsK-qsb+UVcKsuE_NMAw_dVD-LkdkgOwayBHLPdM3QPPt2Bw@mail.gmail.com>
References: <CF6AE2C6.41DF5%belen.barros.pena@intel.com>
	<5345B327.5030203@balister.org>
	<CA+gsK-qsb+UVcKsuE_NMAw_dVD-LkdkgOwayBHLPdM3QPPt2Bw@mail.gmail.com>
From: Chris Larson <clarson@kergoth.com>
Date: Wed, 9 Apr 2014 16:39:38 -0700
X-Google-Sender-Auth: z2BEtPlzKhJ60XdcWi1b_ccs4tY
Message-ID: <CABcZAN=yHZOkzXZf0tkVSumV370y9HLAp2H3rcDtO2dV8F5WHA@mail.gmail.com>
To: Rudolf Streif <rudolf.streif@linux.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Dogfooding and usability testing Toaster
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
X-List-Received-Date: Wed, 09 Apr 2014 23:40:03 -0000
Content-Type: multipart/alternative; boundary=001a1133b04a5dc7b304f6a49e6c

--001a1133b04a5dc7b304f6a49e6c
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 9, 2014 at 4:33 PM, Rudolf Streif <rudolf.streif@linux.com>wrote:

> That is exciting. I just ran with it and started a build with toaster in
> the background. A couple of observations from the get-go:
>
>    - South 0.8.4 is also needed in addition to Django. The Toaster Wiki
>    [1] does not say that but the Contribute to Toaster page [2] does.
>    - You need to run 'sudo pip install ...' for Django and South
>    otherwise the installation fails with 'permission denied' for
>    /usr/lib/python2.7
>    - Clicking on "Show me the manual" in the Toaster UI directs to [3]
>    which requires a log in
>    - Is it possible to relocate/rename the toaster.sqlite database via
>    configuration setting? If so, could I use the same database for different
>    build environments?
>
>
Side note: you can use pip install --user ... rather than sudo pip, to
install it to your user site-packages directory under ~/.local, which won't
impact the rest of the system.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a1133b04a5dc7b304f6a49e6c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Apr 9, 2014 at 4:33 PM, Rudolf Streif <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rudolf.streif@linux.com" target=3D"_blank">rudolf.streif@linux.c=
om</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>That is exciting. I just ran with it an=
d started a build with toaster in the background. A couple of observations =
from the get-go:</div>

<div><ul><li>South 0.8.4 is also needed in addition to Django. The Toaster =
Wiki [1] does not say that but the Contribute to Toaster page [2] does.</li=
>
<li>You need to run &#39;sudo pip install ...&#39; for Django and South oth=
erwise the installation fails with &#39;permission denied&#39; for /usr/lib=
/python2.7</li><li>Clicking on &quot;Show me the manual&quot; in the Toaste=
r UI directs to [3] which requires a log in</li>


<li>Is it possible to relocate/rename the toaster.sqlite database via confi=
guration setting? If so, could I use the same database for different build =
environments?</li></ul></div></blockquote></div><br>Side note: you can use =
pip install --user ... rather than sudo pip, to install it to your user sit=
e-packages directory under ~/.local, which won&#39;t impact the rest of the=
 system.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a1133b04a5dc7b304f6a49e6c--
