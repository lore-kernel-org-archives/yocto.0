Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 10763E00CF5; Tue, 22 Dec 2015 04:18:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C85D5E00D19
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 04:18:44 -0800 (PST)
Received: by mail-ig0-f178.google.com with SMTP id ph11so58952833igc.1
	for <yocto@yoctoproject.org>; Tue, 22 Dec 2015 04:18:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=6nDiwhlclb07h9ZPdJ/IfHQddboMnLoJ1SufU6/+OTQ=;
	b=oXQj4kAJrm5Dy0cMnJAnaLyjMw5uvLTzBvjOLjGrkIQcZFvxWCUKwJBEsnFi+X8E2P
	3DTEimUF2WWRhi073iy6v/CKAxH9fy5M6NmsGxo+ZRrE/j34WZyw8TsBiy0iyR0d/Fm4
	Ci+GuvEs1ZPPla1oLZvZB5VPKxQbVoWX0uupb2cmtYms9X7hdtbnmZNs7EtiEiYCgBnm
	jiihDJXznJhJ04Z5y+spwNm39Z3k1W6hYOR0U5KfBJrZpN8JKk5LdPvXWD6PRDkG5F/a
	Mr0X8a0mknME3xJyMe0Ol9Wkzg8UjdvfA+SYAEJDgmDV3Mo6OpsUqjuJDZCayGhc2B6d
	3hRg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=6nDiwhlclb07h9ZPdJ/IfHQddboMnLoJ1SufU6/+OTQ=;
	b=hYE4dj20a35xFRSNSwXPfCt6T30SlpWEcqyVWqjIY1pT59qrNg/LhdaKvI/LOBf27B
	LK1oHjSWjS80OHsChnslOniD6XMShsCCszqdrht7KevOQ1rdsyR8HxQiD0EzuMRrANCZ
	Gk96fUz8X66POI+5iwN1F1dyJn1rY8dKQtHJNhEJQ/BALAYbeUxVXHKg5gwnP083HZAR
	d742STp761Pf6gE8t5iamQ2ujcdQFMztaUkKPrbXrbaw0/Vf8qqTkffPpy7nGzvnsYet
	+wYqEI2/fbTL0FEKu2JpNU9c7JB6Qi1bRWI6TzDGmLIN8WDpzLzP6mpo0AWRvEUAf74F
	dLBw==
X-Gm-Message-State: ALoCoQn2u7ZDojaGd7XBQP7b4m56Mx1K6PNK2JyDyBDPDKaigAxRJ2fSvhbfOai78XOfLb7LGhZctY4rRQnSgy8CGS7C8/qJYzN245Tq5YeAupiMN+NCziM=
X-Received: by 10.50.13.100 with SMTP id g4mr22361940igc.64.1450786723903;
	Tue, 22 Dec 2015 04:18:43 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.162.70 with HTTP; Tue, 22 Dec 2015 04:18:24 -0800 (PST)
In-Reply-To: <56793C0F.8070606@arigo-software.de>
References: <56791A82.7050809@arigo-software.de>
	<CAJTo0LYb8MokHk+gW4X1eq4orG28Uie8b8ss-YaSMZzXdyGQ6A@mail.gmail.com>
	<56793C0F.8070606@arigo-software.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 22 Dec 2015 12:18:24 +0000
Message-ID: <CAJTo0LYry1VasFEFaDjdbrq6qycruS8sLhse+FBSeq2Wfv-czw@mail.gmail.com>
To: Simon Ruetzler <sruetzler@arigo-software.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto package naming
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
X-List-Received-Date: Tue, 22 Dec 2015 12:18:59 -0000
Content-Type: multipart/alternative; boundary=089e013c661452d45205277b9be4

--089e013c661452d45205277b9be4
Content-Type: text/plain; charset=UTF-8

On 22 December 2015 at 12:03, Simon Ruetzler <sruetzler@arigo-software.de>
wrote:

> I added INHERIT_remove = "debian" to my local.conf but it's still the same.
> Where is the debian.bbclass enabled? I couldn't find it. It this the
> default?
>

INHERIT_DISTRO is where it comes from.  If you have an old release _remove
won't work.

Have a look at the default value for INHERIT_DISTRO and assign it, without
debian, in your local.conf.

Ross

--089e013c661452d45205277b9be4
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 22 December 2015 at 12:03, Simon Ruetzler <span dir=3D"ltr">&lt;<a href=
=3D"mailto:sruetzler@arigo-software.de" target=3D"_blank">sruetzler@arigo-s=
oftware.de</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div tex=
t=3D"#000000" bgcolor=3D"#FFFFFF">I added INHERIT_remove =3D &quot;debian&q=
uot; to my local.conf but it&#39;s still
    the same.<br>
    Where is the debian.bbclass enabled? I couldn&#39;t find it. It this th=
e
    default?<br></div></blockquote></div><br>INHERIT_DISTRO is where it com=
es from.=C2=A0 If you have an old release _remove won&#39;t work.</div><div=
 class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Have a look at =
the default value for INHERIT_DISTRO and assign it, without debian, in your=
 local.conf.</div><div class=3D"gmail_extra"><br></div><div class=3D"gmail_=
extra">Ross</div></div>

--089e013c661452d45205277b9be4--
