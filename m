Return-Path: <cliff.brake@gmail.com>
Received: from mail-vc0-f176.google.com (mail-vc0-f176.google.com
	[209.85.220.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D4101E004AB
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 07:15:58 -0700 (PDT)
Received: by vcbgb22 with SMTP id gb22so3211124vcb.35
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 07:15:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=C9LJZGyKwJbZEgCwT6EttE1tW6AZFfCJLI43DiKh+Y4=;
	b=PFlZ3GEqLzlKEcmIWXRg5BpQl2ciR2aH/OG9Cmi3rwP+EENXwUp7R1cBjzvus0Ubpy
	CYtwoHoRURIaRKME1Kvm+WCTXsfYAKLFj4H1ndWoyIZU9LixEhNGVD3ekCttMeiv1JWr
	e+xxJFRKqehkYCyNAH9pFca67zGSkvZJngDWj5npEoXOtpqaNngJSLRYs0RXXQS6m1eC
	QqvNntVT53/5Mr5NQDVHKN6m6L72u2uLsVIXGkWwkMXRlAYhYY+Xuj2m2j+AbSItRLIs
	dP40Z2GcSD7daxP7QIHtG8cbZURVYCvdcxXl0qHdxZZFweXIy2zEvQ27/YGNQqFZk/Re
	fLUA==
MIME-Version: 1.0
Received: by 10.58.247.165 with SMTP id yf5mr1108255vec.50.1348150558117; Thu,
	20 Sep 2012 07:15:58 -0700 (PDT)
Received: by 10.59.5.2 with HTTP; Thu, 20 Sep 2012 07:15:58 -0700 (PDT)
In-Reply-To: <CAB3sqtYTWOy4YyFRn70Krs5aFCZW+5A=RC4Z32NqDr74vaAngw@mail.gmail.com>
References: <CAB3sqtYTWOy4YyFRn70Krs5aFCZW+5A=RC4Z32NqDr74vaAngw@mail.gmail.com>
Date: Thu, 20 Sep 2012 10:15:58 -0400
Message-ID: <CAOd_LFz1z0RsSVe+Wm+2LWm46XRjQR+am2=uYpYA_LodaBjM5Q@mail.gmail.com>
From: Cliff Brake <cliff.brake@gmail.com>
To: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: bitbake check out from svn
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
X-List-Received-Date: Thu, 20 Sep 2012 14:15:59 -0000
Content-Type: multipart/alternative; boundary=047d7bf0f14e1ecea604ca22c342

--047d7bf0f14e1ecea604ca22c342
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Sep 20, 2012 at 8:26 AM, Tarek El-Sherbiny <
tarek.elsherbiny@gmail.com> wrote:

> I'm writing a recipe to checkout files from local svn. Here is my URI:
>
> SRC_URI =
> "svn://svn.ad-group.adh/svn/dev_repos/Generation3_app;module=trunk;protocol=http"
>

Are you trying to fetch from the tip of the trunk?  In this case, you may
need something like:

SRCREV = "${AUTOREV}"
PV = "1.0+svnr${SRCPV}"
PR = "r6"

SRC_URI = "svn://<my repo>;module=monitor4;proto=https"

Cliff

-- 
=================
http://bec-systems.com

--047d7bf0f14e1ecea604ca22c342
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div class=3D"gmail_quote">On Thu, Sep 20, 2012 at 8:26 AM, Tarek El-Sherbi=
ny <span dir=3D"ltr">&lt;<a href=3D"mailto:tarek.elsherbiny@gmail.com" targ=
et=3D"_blank">tarek.elsherbiny@gmail.com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex">
I&#39;m writing a recipe to checkout files from local svn. Here is my URI:<=
div><br></div><div>SRC_URI =3D &quot;svn://svn.ad-group.adh/svn/dev_repos/G=
eneration3_app;module=3Dtrunk;protocol=3Dhttp&quot;</div></blockquote><div>=
<br>
</div><div>Are you trying to fetch from the tip of the trunk? =A0In this ca=
se, you may need something like:</div><div><br></div><div><div>SRCREV =3D &=
quot;${AUTOREV}&quot;</div><div>PV =3D &quot;1.0+svnr${SRCPV}&quot;</div><d=
iv>
PR =3D &quot;r6&quot;</div><div><br></div><div>SRC_URI =3D &quot;svn://&lt;=
my repo&gt;;module=3Dmonitor4;proto=3Dhttps&quot;</div></div><div><br></div=
><div>Cliff</div><div><br></div></div>-- <br>=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D<br><a href=3D"http://bec-systems.com" target=3D"_blan=
k">http://bec-systems.com</a><br>


--047d7bf0f14e1ecea604ca22c342--
