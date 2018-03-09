Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9CBCAE00DAE; Fri,  9 Mar 2018 14:35:46 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.51 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f51.google.com (mail-wm0-f51.google.com [74.125.82.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 396EFE00D6A
	for <yocto@yoctoproject.org>; Fri,  9 Mar 2018 14:35:44 -0800 (PST)
Received: by mail-wm0-f51.google.com with SMTP id h21so6551668wmd.1
	for <yocto@yoctoproject.org>; Fri, 09 Mar 2018 14:35:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=zjmk6SgjRKAk2AuesGb6y2mtWVZVQX3Iu+jqrb/ZJiE=;
	b=mkgPTJdqdM7S9bMTcSEX2026zvwstsxSsvlqj3Q3yDjISowcChKXaHfU/x1Nu/IneR
	H/duYdjom5b7u4Ds1INaYrVne5/uD3B2f/W8PRaHKY7TSO5LFtAQUDV59ALOjYa8COJN
	q1VakJAahfeJh19sTzB57LhMn92tYeSevdxGGXxBrXYdiZo66y3NLBH1GuFXstQcYnBq
	NqNwu+Z7KRSVLLPQL6ZRUsJWWDn3vrX40jqEyrlin8UFHBhwQu25IwihyOMwdG186POg
	u3dXX+iaf3Ln9WfA/JrFahR+xdiniOzOVrYavp573m/rdYtknLYxR1ni0h97mUeC9jjn
	R7kQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=zjmk6SgjRKAk2AuesGb6y2mtWVZVQX3Iu+jqrb/ZJiE=;
	b=AzvY0hEeexRSX4t7kzrVDZJbqUHYTrpmzTWKehW41M6SCU1HXA/HJLS0OaQBmiIfvC
	9vKX0px9ZIZrCtcAEUkl34L243HF2Fpp/64rxecfaQkAIRcxKlniHKfvPQZL98cPj0Y/
	A4vyILCMYdqASr4+JH0u0e6Mj220fJwigUw0iciECLtZHScEKnUiu9T7yonwDVnAP0fR
	5J99RB+sCgg46jbmbGE2/B16CtzpPR2yLyBfE2KJOAB7h0KbfOepjLeqmEo/LQLm1C2n
	myrZdfuGor7W5sV8f5/yTylA+9KpMoGQ+208Dix3wd3r2H7J+EVGwG39bDYzvhsT3LfE
	kShQ==
X-Gm-Message-State: AElRT7HpwINzVKJxe2TY1vwWXIkybs/Ryp3AawbgH2X2sxf5K9Sy4nOd
	2pZztwAPDtpipcQJPovskevzAPt6sTpZZVQc9tYeOg==
X-Google-Smtp-Source: AG47ELvcfYQeWNZ//Wa/TyUghPzNiS8k/xm0eHJzxSDk0XVjCgyWSigBhu8qQqmEahI4UdJlz+2Y8bbR8+rUqHF4WBM=
X-Received: by 10.28.170.205 with SMTP id t196mr342462wme.42.1520634944053;
	Fri, 09 Mar 2018 14:35:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.173.65 with HTTP; Fri, 9 Mar 2018 14:35:43 -0800 (PST)
In-Reply-To: <df083f7f-672d-b167-4fa2-4730bbec749a@asgrp.com>
References: <423f0425-653d-37ab-098d-088466ef280d@asgrp.com>
	<CAJ86T=U=vu8nELczNnKnPZPZcXGn842xSorxGsvDpxdt_mqzqQ@mail.gmail.com>
	<df083f7f-672d-b167-4fa2-4730bbec749a@asgrp.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Fri, 9 Mar 2018 14:35:43 -0800
Message-ID: <CAJ86T=Ud=aPE34VS8NBEEDuTxzjE_GHSW55L8fdww0kSvgu1XQ@mail.gmail.com>
To: Wayne Witzke <wwitzke@asgrp.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How and where does yocto find lighttpd-module-fastcgi?
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
X-List-Received-Date: Fri, 09 Mar 2018 22:35:46 -0000
Content-Type: multipart/alternative; boundary="001a1144273cac662005670269cd"

--001a1144273cac662005670269cd
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 9, 2018 at 6:18 AM, Wayne Witzke <wwitzke@asgrp.com> wrote:

> Thank you for the reply!
>
> When I wasn't adding lighttpd-module-fastcgi, it definitely was not
> including it in the build.
>

The lighttpd-module-fastcgi package is created (unconditionally) when the
lighttpd recipe is built (you can verify by checking the installable
packages under tmp/deploy/ after building lighttpd).

However, since nothing in the default images has a runtime dependency on
lighttpd-module-fastcgi, that package will only be included in the rootfs
if you manually add it (e.g. by adding to CORE_IMAGE_EXTRA_INSTALL, as you
have done).

ie you need to make the distinction between "is this package being built"
and "is this package being included in the rootfs when the image is built".

I have the lighttpd.conf file set up use mod_fastcgi, and without
> lighttpd-module-fastcgi in my local.conf file, lighttpd would fail to start
> on the embedded build, complaining that it could not find the fastcgi
> module. In fact, the same thing happens with php-cgi. I can't find anyplace
> in any of the layers that I'm using that actually references php-cgi as a
> package or option, but unless I add it to local.conf using
> EXTRA_CORE_IMAGES_INSTALL, it doesn't get included in the build.
>

It's a similar story with the php-cgi package. It's created
(unconditionally) when the php recipe is built, but will not be installed
in the rootfs unless you add it to your image.

The reason you don't find a direct reference to the string "php-cgi"
anywhere is because the php recipe defines it's list of packages in terms
of the "${PN}" variable. So the php recipe contains references to
"${PN}-cgi" but rather than "php-cgi".

--001a1144273cac662005670269cd
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">On Fri, Mar 9, 2018 at 6:18 AM, Wayne Witzke <span dir=3D"=
ltr">&lt;<a href=3D"mailto:wwitzke@asgrp.com" target=3D"_blank">wwitzke@asg=
rp.com</a>&gt;</span> wrote:<br><div class=3D"gmail_extra"><div class=3D"gm=
ail_quote"><blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.=
8ex;border-left:1px solid rgb(204,204,204);padding-left:1ex">
 =20
   =20
 =20
  <div bgcolor=3D"#FFFFFF">
    <p>Thank you for the reply!</p>
    <p>When I wasn&#39;t adding lighttpd-module-fastcgi, it definitely was
      not including it in the build.</p></div></blockquote><div><br></div>T=
he lighttpd-module-fastcgi package is created (unconditionally) when the li=
ghttpd recipe is built (you can verify by checking the installable packages=
 under tmp/deploy/ after building lighttpd).<br><div><br></div><div>However=
, since nothing in the default images has a runtime dependency on lighttpd-=
module-fastcgi, that package will only be included in the rootfs if you man=
ually add it (e.g. by adding to CORE_IMAGE_EXTRA_INSTALL, as you have done)=
.<br></div><div><br></div><div>ie you need to make the distinction between =
&quot;is this package being built&quot; and &quot;is this package being inc=
luded in the rootfs when the image is built&quot;.</div><div><br></div><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-left=
:1px solid rgb(204,204,204);padding-left:1ex"><div bgcolor=3D"#FFFFFF"><p> =
I have the lighttpd.conf file set
      up use mod_fastcgi, and without lighttpd-module-fastcgi in my
      local.conf file, lighttpd would fail to start on the embedded
      build, complaining that it could not find the fastcgi module. In
      fact, the same thing happens with php-cgi. I can&#39;t find anyplace
      in any of the layers that I&#39;m using that actually references
      php-cgi as a package or option, but unless I add it to local.conf
      using EXTRA_CORE_IMAGES_INSTALL, it doesn&#39;t get included in the
      build.</p></div></blockquote><div><br></div><div>It&#39;s a similar s=
tory with the php-cgi package. It&#39;s created (unconditionally) when the =
php recipe is built, but will not be installed in the rootfs unless you add=
 it to your image.</div><div><br></div><div>The reason you don&#39;t find a=
 direct reference to the string &quot;php-cgi&quot; anywhere is because the=
 php recipe defines it&#39;s list of packages in terms of the &quot;${PN}&q=
uot; variable. So the php recipe contains references to &quot;${PN}-cgi&quo=
t; but rather than &quot;php-cgi&quot;. <br></div></div><div class=3D"gmail=
_quote"><br></div><div class=3D"gmail_quote"><br></div></div></div>

--001a1144273cac662005670269cd--
