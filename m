Received: from mail-vk1-f178.google.com (mail-vk1-f178.google.com [209.85.221.178])
 by mx.groups.io with SMTP id smtpd.web11.1889.1599802600137553149
 for <yocto@lists.yoctoproject.org>;
 Thu, 10 Sep 2020 22:36:40 -0700
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=XP91ZfbS;
 spf=pass (domain: gmail.com, ip: 209.85.221.178, mailfrom: kerenyi.nagy.zoltan@gmail.com)
Received: by mail-vk1-f178.google.com with SMTP id c25so2135034vkm.1
        for <yocto@lists.yoctoproject.org>; Thu, 10 Sep 2020 22:36:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:from:date:message-id:subject:to;
        bh=wE4o+xpP7qC5ZM2T6K+w7ErjUc3ZqW6TWu6cll9+WYc=;
        b=XP91ZfbSqG1auuN6VZTCEWQxCGCaLdeylERIbGNxdInKi+XpiS7KbF1cakPqm4S9y2
         iYs3K8KhFU/y66OKCB1Ba2Mdi4YT9TPxfkdQB3dQ/Xi19khdILAPjU5JmbwT/QZHfArT
         fb8kA8Xdof5rVsQFhqKKXlKsgzD029BLiY6Jpnz77aO/owdBLLP9eqBOzGHa94Ezf94g
         edP6ZLGcA4/A1Ry06iDNtZD1PRAdKOi66z9w0TY4+N7gFCsPaUHVkGv9+9tal0C1Enus
         HCgMjU4cSwz9/i9RJszKAkQku+RhrBaJPubYkhKgrpdIxAeVCajV4U0TyQxSiicc73ff
         JZPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
        bh=wE4o+xpP7qC5ZM2T6K+w7ErjUc3ZqW6TWu6cll9+WYc=;
        b=IuO3Q7i0lvxnDSWtF/10t/0LXL6CZWf7+HK42ljoh1uW22ZIvB2KqqTuPkRtYav6RS
         vLlO64OOyYjuMif0MBXqjD3KTK9Nx8sE0hV7B609JZ3COYgDdWbC/vp0FNyweNLJVymz
         SkkBtyXBSWMS0hx/OH4FQCyaNlvc2hzoTAiJfUqlxRsiQZ3zRmsZCd+ewlevi+qyd0fa
         R4YwZYhO8d8QVJIvSjpZS+n7diFZF1zaAYr/ca44F4tHtJ3o6iGHhlUyvhsbNvb2eKUQ
         Ez+Xkaza8yNX6AZaWY7bkcj3tmtwUsengm1NJtyrs2ZD5o+I+zPlxFpirUygF84pYYcV
         10Vw==
X-Gm-Message-State: AOAM530E/Qk+dYDqiLsfuYQLncIY5elR/77LiBvcFp/FCfCPQlEsR+dS
	zlZtdXK1Ca7xK3wGjMtledtR3t5xp8ngCTamzyy3YUM3V5KR4w==
X-Google-Smtp-Source: ABdhPJzsRDK7Fj9dr8/7tpjS8/rcerBDYkMsxFKx/7cLOeNMH6ggdLFQLxu+3SBVt//GVjbQPlyIy7grxZAJwjQNgYc=
X-Received: by 2002:a1f:ecc3:: with SMTP id k186mr109033vkh.26.1599802598730;
 Thu, 10 Sep 2020 22:36:38 -0700 (PDT)
MIME-Version: 1.0
From: kerenyi.nagy.zoltan@gmail.com
Date: Fri, 11 Sep 2020 07:36:02 +0200
Message-ID: <CAHwRhWbSTGiRK-LvMvJRH4r3uaSJQ9DJZekKrSjStOobT6GEGw@mail.gmail.com>
Subject: vwdial
To: yocto@lists.yoctoproject.org
Content-Type: multipart/alternative; boundary="0000000000009bb13105af031110"

--0000000000009bb13105af031110
Content-Type: text/plain; charset="UTF-8"

Hi,

First of all, thank you for accepting me to this mailing list.
I got a Barix ipam400 OEM board, and now I've found myself in the situation
that vwdial would not compile.

The error message is this when bitBake:





*ERROR: Nothing RPROVIDES 'vwdial' (but
/home/kerenyiz/oe-core/build/../stuff/meta-barix-sdk/recipes-core/images/core-image-barix-sdk.bb
<http://core-image-barix-sdk.bb> RDEPENDS on or otherwise requires it)NOTE:
Runtime target 'vwdial' is unbuildable, removing...Missing or unbuildable
dependency chain was: ['vwdial']ERROR: Required build target
'core-image-barix-sdk' has no buildable providers.Missing or unbuildable
dependency chain was: ['core-image-barix-sdk', 'vwdial']*

I've visited openembedded and downloaded the latest (1.6) bb recipe and
patch file, but I cant figure out what's wrong.
Definitely the bb recipe file is there.

Do you have any idea how to proceed?

Thanks

Zolee

--0000000000009bb13105af031110
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"color:#333399">Hi,</=
div><div class=3D"gmail_default" style=3D"color:#333399"><br></div><div cla=
ss=3D"gmail_default" style=3D"color:#333399">First of all, thank you for ac=
cepting me to this mailing list.</div><div class=3D"gmail_default" style=3D=
"color:#333399">I got a Barix ipam400 OEM board, and now I&#39;ve found mys=
elf in the situation that vwdial would not compile.</div><div class=3D"gmai=
l_default" style=3D"color:#333399"><br></div><div class=3D"gmail_default" s=
tyle=3D"color:#333399">The error message is this when bitBake:<br></div><di=
v class=3D"gmail_default" style=3D"color:#333399"><br></div><div class=3D"g=
mail_default" style=3D"color:#333399"><i>ERROR: Nothing RPROVIDES &#39;vwdi=
al&#39; (but /home/kerenyiz/oe-core/build/../stuff/meta-barix-sdk/recipes-c=
ore/images/<a href=3D"http://core-image-barix-sdk.bb">core-image-barix-sdk.=
bb</a> RDEPENDS on or otherwise requires it)<br>NOTE: Runtime target &#39;v=
wdial&#39; is unbuildable, removing...<br>Missing or unbuildable dependency=
 chain was: [&#39;vwdial&#39;]<br>ERROR: Required build target &#39;core-im=
age-barix-sdk&#39; has no buildable providers.<br>Missing or unbuildable de=
pendency chain was: [&#39;core-image-barix-sdk&#39;, &#39;vwdial&#39;]</i><=
/div><div class=3D"gmail_default" style=3D"color:#333399"><br></div><div cl=
ass=3D"gmail_default" style=3D"color:#333399">I&#39;ve visited openembedded=
 and downloaded the latest (1.6) bb recipe and patch file, but I cant figur=
e out what&#39;s wrong.</div><div class=3D"gmail_default" style=3D"color:#3=
33399">Definitely the bb recipe file is there.</div><div class=3D"gmail_def=
ault" style=3D"color:#333399"><br></div><div class=3D"gmail_default" style=
=3D"color:#333399">Do you have any idea how to proceed?</div><div class=3D"=
gmail_default" style=3D"color:#333399"><br></div><div class=3D"gmail_defaul=
t" style=3D"color:#333399">Thanks</div><div class=3D"gmail_default" style=
=3D"color:#333399"><br></div><div class=3D"gmail_default" style=3D"color:#3=
33399">Zolee<br></div><div class=3D"gmail_default" style=3D"color:#333399">=
<br></div><div class=3D"gmail_default" style=3D"color:#333399"><br></div><d=
iv class=3D"gmail_default" style=3D"color:#333399"><br></div></div>

--0000000000009bb13105af031110--
