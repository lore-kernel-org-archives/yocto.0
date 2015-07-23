Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A7C27E0096A; Thu, 23 Jul 2015 02:54:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.175 listed in list.dnswl.org]
Received: from mail-qk0-f175.google.com (mail-qk0-f175.google.com
	[209.85.220.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 625E2E008EC
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 02:54:32 -0700 (PDT)
Received: by qkdl129 with SMTP id l129so169794068qkd.0
	for <yocto@yoctoproject.org>; Thu, 23 Jul 2015 02:54:31 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=PJftZsj8qhrdeLzmDGar7GKmzw0yYxJWpoTdbKFxPVE=;
	b=VVPZzwzusIo6ygoM59Vf+3hUFJVQYNpXt3TwtcYynGzxRN8u2O5SByYYMLh1fb74kf
	v2fg/KEXPBgmBMp1LN363yf8Ro0EMd8376EmK+NhCMrgUhX5c88tgg9GeGxKy3ciHJBq
	MA7i35qbP7SLuV0we1Lf9+Gc1n/m1inX26h/BmQr+MrAW8/kyDlV3fkYaFNvZamMm1BR
	fpD8zHy5bQRR5/FQmU/qBQvv06yFhPLGjJ/gyY/22Td9zg9RhPHl8Z3rkUnMKako5IiH
	Hkvvn8K2/E+0uAyR5IR9avKPbC2yztqrUroBq0bOfL+RZfkcYRwc6HP5Qz0Gj4gYjl0u
	6CRA==
X-Gm-Message-State: ALoCoQkWFZwA2AVggjnxbjtaz/iuIEpfs8KbI5z7B7R4gf+MzgoPF/qQEtPxj/Wr9u4qg5enosCk
X-Received: by 10.140.20.115 with SMTP id 106mr10366434qgi.87.1437645271849;
	Thu, 23 Jul 2015 02:54:31 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.102.195 with HTTP; Thu, 23 Jul 2015 02:54:12 -0700 (PDT)
In-Reply-To: <55B033F6.0@mlbassoc.com>
References: <858020079.672977.1437603410191.JavaMail.yahoo@mail.yahoo.com>
	<55B033F6.0@mlbassoc.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 23 Jul 2015 10:54:12 +0100
Message-ID: <CAJTo0LZSFsZF+xOm_TH+JHRUw=11f2_S9DiqZ0gHQjoigrkzgA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: raspberry Pi core-image-sato
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
X-List-Received-Date: Thu, 23 Jul 2015 09:54:36 -0000
Content-Type: multipart/alternative; boundary=001a11c128b4bdfeee051b87dfb5

--001a11c128b4bdfeee051b87dfb5
Content-Type: text/plain; charset=UTF-8

On 23 July 2015 at 01:23, Gary Thomas <gary@mlbassoc.com> wrote:

> You must have added something to your image - core-image-sato does
> not include libepoxy by default.
>

"Well actually", if your using oe-core master and DISTRO_FEATURES includes
wayland then xserver-xorg will build the xwayland server, which requires
libepoxy.

Ross

--001a11c128b4bdfeee051b87dfb5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 23 July 2015 at 01:23, Gary Thomas <span dir=3D"ltr">&lt;<a href=3D"mail=
to:gary@mlbassoc.com" target=3D"_blank">gary@mlbassoc.com</a>&gt;</span> wr=
ote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border=
-left:1px #ccc solid;padding-left:1ex"><div id=3D":3ox" class=3D"a3s" style=
=3D"overflow:hidden">You must have added something to your image - core-ima=
ge-sato does<br>
not include libepoxy by default.</div></blockquote></div><br>&quot;Well act=
ually&quot;, if your using oe-core master and DISTRO_FEATURES includes wayl=
and then xserver-xorg will build the xwayland server, which requires libepo=
xy.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ro=
ss</div></div>

--001a11c128b4bdfeee051b87dfb5--
