Return-Path: <kergoth@gmail.com>
Received: from mail-la0-f47.google.com (mail-la0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8AF96E015D3
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:34:39 -0800 (PST)
Received: by mail-la0-f47.google.com with SMTP id ep20so1698704lab.34
	for <yocto@yoctoproject.org>; Thu, 14 Nov 2013 07:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=NCF4bTU1UkBKMm/8EUhqg8skfdEKFpPXO9noVxXbwvQ=;
	b=hh+L817E9HpRcG1QBj6NZr4kPKs2QZRYtec+UoilXshqPyn0JjJAkCdIV2h6x8THbf
	euVUzvJUMk1eQ83FR/HhZlZnk1A6/2DLmrZHFjuUUd6XYED0LgPQtLfu35zOc1Ky+R+P
	equDjcHhted5Wfyh6NubuephawShNeQ84Mbls+ATH2tWBDfZsOMNghVd9Bbn2J8RBmKX
	hpkmllvXdc2uXHSkN5l0J97kNPk10+Cc+DgLGwcO1Spgxhw4vQ84Mc7mfVB5qfVxvNYJ
	g8oalYZXRpF9d4R+cpMJX7rYZ64R0a0e4lQ8S1zHb8xO3IPDwlu50x/OkcBa0khAasR6
	KJhQ==
X-Received: by 10.152.116.109 with SMTP id jv13mr1215607lab.30.1384443278547; 
	Thu, 14 Nov 2013 07:34:38 -0800 (PST)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.112.53.197 with HTTP; Thu, 14 Nov 2013 07:34:18 -0800 (PST)
In-Reply-To: <52845CCD.6040901@benjammin.net>
References: <52845CCD.6040901@benjammin.net>
From: Chris Larson <clarson@kergoth.com>
Date: Thu, 14 Nov 2013 08:34:18 -0700
X-Google-Sender-Auth: Zz7NSNyTKsvLEpRr84zBA_DoQUQ
Message-ID: <CABcZANmPqv79FwV2Tw-pbG+jDW-eY9zxxLJ1UWeYEef521TUbw@mail.gmail.com>
To: ben <ben@benjammin.net>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Stalled with setting up Yocto 1.5 on CentOS 6.4 with Python 2.7.3
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
X-List-Received-Date: Thu, 14 Nov 2013 15:34:41 -0000
Content-Type: multipart/alternative; boundary=001a11c3675ed465a004eb24d1c7

--001a11c3675ed465a004eb24d1c7
Content-Type: text/plain; charset=UTF-8

On Wed, Nov 13, 2013 at 10:17 PM, ben <ben@benjammin.net> wrote:

> This is my first foray into embedded linux Yocto-Style.
>
> I've got an RPM for Python2.7 installed that doesn't trash my system
> (which needs 2.6.6).
>
> But the initial 'source oe-init-build-env' doesn't work...
>
> Google is not helping me find a definitive page to instruct getting around
> this (looked on wiki too).
>
> Little help?
>

I've had the best results using the buildtools-tarball that yocto itself
can produce. Use a more recent host to 'bitbake buildtools-tarball', then
execute the shell archive it puts in tmp/deploy/sdk/ on the CentOS 5 or 6
machine, and source its setup script before sorucing oe-init-build-env.
-- 
Christopher Larson
clarson at kergoth dot com
Founder - BitBake, OpenEmbedded, OpenZaurus
Maintainer - Tslib
Senior Software Engineer, Mentor Graphics

--001a11c3675ed465a004eb24d1c7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Nov 13, 2013 at 10:17 PM, ben <span dir=3D"ltr">&lt;<a href=3D"mail=
to:ben@benjammin.net" target=3D"_blank">ben@benjammin.net</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex">

<div id=3D":e4" style=3D"overflow:hidden">This is my first foray into embed=
ded linux Yocto-Style.<br>
<br>
I&#39;ve got an RPM for Python2.7 installed that doesn&#39;t trash my syste=
m (which needs 2.6.6).<br>
<br>
But the initial &#39;source oe-init-build-env&#39; doesn&#39;t work...<br>
<br>
Google is not helping me find a definitive page to instruct getting around =
this (looked on wiki too).<br>
<br>
Little help?</div></blockquote></div><br></div><div class=3D"gmail_extra">I=
&#39;ve had the best results using the buildtools-tarball that yocto itself=
 can produce. Use a more recent host to &#39;bitbake buildtools-tarball&#39=
;, then execute the shell archive it puts in tmp/deploy/sdk/ on the CentOS =
5 or 6 machine, and source its setup script before sorucing oe-init-build-e=
nv.<br>

-- <br>Christopher Larson<br>clarson at kergoth dot com<br>Founder - BitBak=
e, OpenEmbedded, OpenZaurus<br>Maintainer - Tslib<br>Senior Software Engine=
er, Mentor Graphics
</div></div>

--001a11c3675ed465a004eb24d1c7--
