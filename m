Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f41.google.com (mail-oa0-f41.google.com
	[209.85.219.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10FD6E00406
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 01:38:46 -0700 (PDT)
Received: by mail-oa0-f41.google.com with SMTP id j6so227386oag.28
	for <yocto@yoctoproject.org>; Wed, 21 Aug 2013 01:38:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=xptNrJ5Uzm/WYhCEhxVLjCuq07u/yz1fRGG1WpQIwSI=;
	b=CvNfIIj/k7ROu+knPdhsUmMjtRRs8VzANKBdj978yntzrq7ks7JHdrMiDaQhCzXhai
	w8x3OCLvCRcEB36+n7zWOoBQfeSXesiF7KFI28yR5iZARNeklaSkJh3jP9u0o2sOmroj
	7wDox2z0na+vK6/VzMRMvjKevI92dfD5xc/KIH4UAfH4JBaldBafwDNHXBeoyMY4ynMy
	QnYCRmiFJ6iVFoOQ7+qTrD7MzDQ4t4LjTGpw89mrN49ux9nR8uyQhSVXXMSygS0m71HN
	koYi75zNTLPphCjst1S4ePshlKl9EQZq6gfs04+MO7zpZRUI+7TTwbjVkAnoB3dQ+kjX
	Vb0g==
X-Gm-Message-State: ALoCoQmrBF9OA/lNYxEbnPJSjC0dY/w5XEmgUH/uoXJsSgzqn/am6LRkOQ59M+KafllDaI5UzWvz
X-Received: by 10.182.225.134 with SMTP id rk6mr6564410obc.40.1377074325777;
	Wed, 21 Aug 2013 01:38:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.172.4 with HTTP; Wed, 21 Aug 2013 01:38:25 -0700 (PDT)
In-Reply-To: <E8E33963-5422-4956-8C67-012CF78FFC38@gmail.com>
References: <6AEB2375-D87A-413D-878C-EF46956B7D53@gmail.com>
	<CAP71WjxRvEo+DBo41AmspUjgngQbu-AD4nxTfYB9T0kC+0V_wQ@mail.gmail.com>
	<E8E33963-5422-4956-8C67-012CF78FFC38@gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Wed, 21 Aug 2013 10:38:25 +0200
Message-ID: <CAP71WjyyRficsG+-bRs31EnHmpnaCnatVf6wdwgqT+X2Z_7rBw@mail.gmail.com>
To: Elvis Dowson <elvis.dowson@gmail.com>
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Recipe for building an Ubuntu-12.04 root filesystem
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
X-List-Received-Date: Wed, 21 Aug 2013 08:38:49 -0000
Content-Type: multipart/alternative; boundary=001a11c2f8000489fb04e4711add

--001a11c2f8000489fb04e4711add
Content-Type: text/plain; charset=ISO-8859-1

On Wed, Aug 21, 2013 at 3:04 AM, Elvis Dowson <elvis.dowson@gmail.com>wrote:

> Is there a way to replicate the build infrastructure locally in my
> environment? I have a quad core i.MX6 platform.
>

do you mean the 'ubuntu' build infrastructure? if so, this might not be the
most appropriate place to ask ;-)

a quick answer is yes, it's possible to (re)build any ubuntu (or debian)
package. you need to build 'natively'. so you are building against your
'local' install of the distro, which means that you need to install the
distro version you need (generally, you would do that in a chroot). once
you have that running, any single package can be rebuild with
dpkg-buildpackage. You can't rebuild Ubuntu (or debian) all at once. You
only (re)build packages you care about. I suggest you get on ubuntu arm
 IRC or mailing lists for more details.

cheers

nicolas

--001a11c2f8000489fb04e4711add
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Wed, Aug 21, 2013 at 3:04 AM, Elvis Dowson <span dir=3D"ltr">&lt;<a href=
=3D"mailto:elvis.dowson@gmail.com" target=3D"_blank">elvis.dowson@gmail.com=
</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div>Is there a way to replicate the build i=
nfrastructure locally in my environment? I have a quad core i.MX6 platform.=
</div>

<div></div></blockquote></div><br>do you mean the &#39;ubuntu&#39; build in=
frastructure? if so, this might not be the most appropriate place to ask ;-=
)</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">a qu=
ick answer is yes, it&#39;s possible to (re)build any ubuntu (or debian) pa=
ckage. you need to build &#39;natively&#39;. so you are building against yo=
ur &#39;local&#39; install of the distro, which means that you need to inst=
all the distro version you need (generally, you would do that in a chroot).=
 once you have that running, any single package can be rebuild with dpkg-bu=
ildpackage. You can&#39;t rebuild Ubuntu (or debian) all at once. You only =
(re)build packages you care about. I suggest you get on ubuntu arm =A0IRC o=
r mailing lists for more details.</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">cheers</div=
><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">nicolas</d=
iv></div>

--001a11c2f8000489fb04e4711add--
