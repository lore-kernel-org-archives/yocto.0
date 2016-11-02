Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 070B4E00ACE; Wed,  2 Nov 2016 07:17:48 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.181 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.181 listed in list.dnswl.org]
Received: from mail-qt0-f181.google.com (mail-qt0-f181.google.com
	[209.85.216.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C97F0E009FA
	for <yocto@yoctoproject.org>; Wed,  2 Nov 2016 07:17:43 -0700 (PDT)
Received: by mail-qt0-f181.google.com with SMTP id n6so9643557qtd.1
	for <yocto@yoctoproject.org>; Wed, 02 Nov 2016 07:17:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=EHroQYP/Z5gkkOsSkNtYMyiLZlapmG9gVlpSFWIYkMo=;
	b=nFDd+gSpbmiKlFQreOAFlQkvS627uQBonLk+yI2NGmd3STsEPAuvozIXuFpp/04462
	ywvcyWF1vhZB/oUw9AGvnVnJq53ZiUpFdC7Sw65Trch5n8o6NmiVoj7LJkLHFSg6Dg6s
	QOzTYkk6M4n7iX9ZQpvTORO5eoivks+pxrBLtn90xFRjz1Sakfc5pWMR5ovxzdHisTyI
	1xBBFc7/EiyiYpdlO2xGS196uhhRldC3vSxM3s4A3PE+sVWhHOy/z/eGYpUyGaD5r1hK
	tvhTpz8GvYadGEP4+EG2J1lWexVzLTMdMXBImDt4+iTnSR+W2KbDemUeV/EJ3kvnsv12
	V6xQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=EHroQYP/Z5gkkOsSkNtYMyiLZlapmG9gVlpSFWIYkMo=;
	b=h9UeJ9Pq0Y8hRDigdKqOJaXlDL3vK5s9HQMQSZ9RDKmUA6R9L1LCCvq5jMlJ2beq/m
	fluaq+K1DIxdcN57rVNWVvEyTPIyyvjaGkbwMCp5lyKAt2JPElpMbJJ2wowt7tl08JXk
	nMv/g2k7HeWdKaIGcAsZjAqXPOE6BStKe4k2vnCYVWQIe3i5PNjz60l9bPBorEv6ZZPd
	gEj8nMBj37WvNgpevPCzi7mr2OmMA7QhXpn9gSnRiQyw4Sizsloot7Z5XSshb1cWOH7G
	gRHrP3YnAoEAQtn3xFl6u9/sBUkxTr9eIo0xdpKuwNN4ZM0tI8ZSyBomweq22cC4ODTD
	o85w==
X-Gm-Message-State: ABUngvdK9G9ZIZZp9ghmpX0A3aU3q+BKQof/IsoOpSVj06SuU44C81tHYVeb/jjmWTCda8K5xD9XzskXozvm33F7
X-Received: by 10.200.40.101 with SMTP id 34mr190995qtr.38.1478096263343; Wed,
	02 Nov 2016 07:17:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.85.208 with HTTP; Wed, 2 Nov 2016 07:17:22 -0700 (PDT)
In-Reply-To: <CAEjjReLcovpDJoMi-AO8stp7CR5gEAe9K8xCCCUL6+v2=py6yQ@mail.gmail.com>
References: <CAEjjReLcovpDJoMi-AO8stp7CR5gEAe9K8xCCCUL6+v2=py6yQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 2 Nov 2016 14:17:22 +0000
Message-ID: <CAJTo0LZN5N5r58kn52yTgL32X+PF6RX4=Kr5ntdNHBQ0HucgwA@mail.gmail.com>
To: "Chris Z." <winotu.email@gmail.com>
Cc: yoctoproject <yocto@yoctoproject.org>
Subject: Re: [sstate-cache] using sstate-cache in parallel builds
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
X-List-Received-Date: Wed, 02 Nov 2016 14:17:48 -0000
Content-Type: multipart/alternative; boundary=001a1140451cb881e50540521add

--001a1140451cb881e50540521add
Content-Type: text/plain; charset=UTF-8

On 2 November 2016 at 13:36, Chris Z. <winotu.email@gmail.com> wrote:

> Is it secure to use in parallel sstate-cache for building images for
> different target machines ?
>

Short answer: yes.

The hashes will be different so there's no risk of conflicting files for
the target, so it's only native recipes that may conflict.  The worst case
situation here in two parallel builds is that they'll both build the same
recipe and put it into sstate, there isn't any risk of corruption.

Ross

--001a1140451cb881e50540521add
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 2 November 2016 at 13:36, Chris Z. <span dir=3D"ltr">&lt;<a href=3D"mail=
to:winotu.email@gmail.com" target=3D"_blank">winotu.email@gmail.com</a>&gt;=
</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .=
8ex;border-left:1px #ccc solid;padding-left:1ex"><div>Is it secure to use i=
n parallel sstate-cache for building images for different target machines ?=
<br></div><div></div></blockquote></div><br>Short answer: yes.</div><div cl=
ass=3D"gmail_extra"><br></div><div class=3D"gmail_extra">The hashes will be=
 different so there&#39;s no risk of conflicting files for the target, so i=
t&#39;s only native recipes that may conflict.=C2=A0 The worst case situati=
on here in two parallel builds is that they&#39;ll both build the same reci=
pe and put it into sstate, there isn&#39;t any risk of corruption.</div><di=
v class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></di=
v>

--001a1140451cb881e50540521add--
