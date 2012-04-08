Return-Path: <kergoth@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6165AE0030B
	for <yocto@yoctoproject.org>; Sun,  8 Apr 2012 08:14:37 -0700 (PDT)
Received: by qam2 with SMTP id 2so1210991qam.14
	for <yocto@yoctoproject.org>; Sun, 08 Apr 2012 08:14:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type
	:content-transfer-encoding;
	bh=EkgNN09exyeGiVaQ6Ij3LRwSVdTUdth3vQ5eKxdfYgA=;
	b=orf71924C+MyBMk/o1GDCTAfzI2o62Ob/D1BKn5VJP+9WDcZKGd2Xh3BBnO0jZpt/R
	1yYBDjLrDJ6YPNbhHlfWKgGRGl4MzUGFKq2O1zXbNzFMKLoi8zcSuqbffovo4IjxzKzq
	H0x3DesK8DHZcmP7r9vrDpKyD8BV1e6XfrsYFIOg0SJbQHpXHKxqxwqmi5WdPEBlo/Uz
	iBtzK8zB/XkapG2wcquOtfmQt3dJbbL5byjOMkjXQABsJucB8jRJiJhgygPbTlR2pSsK
	GHHh4KlKu5MpJ8tZyOuZDVxiNBx/zHmg7bRGBJD7rePu67jIkAIC04QzJBFQwUMyvZY6
	r/vA==
Received: by 10.224.180.1 with SMTP id bs1mr5702008qab.2.1333898076606; Sun,
	08 Apr 2012 08:14:36 -0700 (PDT)
MIME-Version: 1.0
Sender: kergoth@gmail.com
Received: by 10.229.79.79 with HTTP; Sun, 8 Apr 2012 08:14:16 -0700 (PDT)
In-Reply-To: <7a1d4d43.12213.1369234af01.Coremail.caterwaul@163.com>
References: <7a1d4d43.12213.1369234af01.Coremail.caterwaul@163.com>
From: Chris Larson <clarson@kergoth.com>
Date: Sun, 8 Apr 2012 08:14:16 -0700
X-Google-Sender-Auth: eR_qObF7KnvGJMmc9BvbuJd8OwI
Message-ID: <CABcZANnzs23ZZM75FF4-BRKCzek1TLpu3d18XvWuwyZYQhYzew@mail.gmail.com>
To: caterwaul <caterwaul@163.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Problem about print in fetching
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
X-List-Received-Date: Sun, 08 Apr 2012 15:14:37 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2012/4/8 caterwaul <caterwaul@163.com>:
> I want to print out all the URI_SRC I use during the build. =C2=A0And I h=
ave
> tried 3 methods in 2 places as follow. But all of these can not print out
> the src path. Did I make some mistakes? Could anyone help me on this? Tha=
nk
> you.
>
> PLACE ONE =C2=A0in poky-edison-6.0.1/bitbake/lib/bb/fetch2/__init__.py
> class Fetch(object):
> =C2=A0 =C2=A0 def __init__(self, urls, d, cache =3D True):
> ......
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 for url in urls:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 if url not in self.ud:
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 print('=3D=3D=3D=
=3D%s' % url) # code I added
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 self.ud[url] =3D =
FetchData(url, d)
> ......
>
> PLACE TWO =C2=A0in poky-edison-6.0.1/meta/classes/base.bbclass
> python base_do_fetch() {
>
> src_uri =3D (bb.data.getVar('SRC_URI', d, True) or "").split()
> if len(src_uri) =3D=3D 0:
> return
> =C2=A0 =C2=A0 =C2=A0 =C2=A0=C2=A0print('=3D=3D=3D=3D%s' % src_url)=C2=A0#=
 code I added
> =C2=A0 =C2=A0 =C2=A0 =C2=A0 bb.note('=3D=3D=3D=3D%s' % src_url)=C2=A0# co=
de I added
> }

Both of these will result in messages going to the log file for the
task, but not the console output. By default, bitbake only shows
warnings, errors, and critical messages to the console / bitbake's UI.
Use bb.warn() or bb.error() for printf-style debugging.
--=20
Christopher Larson

