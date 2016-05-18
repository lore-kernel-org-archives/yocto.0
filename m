Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E55CCE00CB8; Wed, 18 May 2016 01:04:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E18DE00C55
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 01:04:21 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id x19so64523105oix.2
	for <yocto@yoctoproject.org>; Wed, 18 May 2016 01:04:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=KX+OT7Hi3aR6audrixM5d4sQDI07V5p/0hbZ2ttj5dA=;
	b=pZRTXzbTFxjEmAVGNNFNgxJEPXDPDlqGsryjBxx+osV+EvzW8Z0OwNs0tBciNVLgQg
	jw0hWwNBkSB0kp9uLeQypHDoygmjZktKjQWLZxomBBnXEIKta+Ts2QobGaYRExGtYhys
	LWmlfRcyJtJ65XW5HIlMuFtsbRRDHMZQTe0c77vnOD2yb/5Gb5cK5a5vc12bOJqywBBq
	CjJEFKqmA0qgdibVvFJAWDLW7SvU/sRyS8jqxWH3dO2hYuo4+LdtjyrPT/xzuLco5DmI
	2xqcMAHFvXSxRgrHEsygI7aeehdv5SJRVt45HAd47x/VEh7PHklJWEYB080HwKkI1Tkq
	cuCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=KX+OT7Hi3aR6audrixM5d4sQDI07V5p/0hbZ2ttj5dA=;
	b=ENC8IrcDvIdlOy3Zpebd4X9k88mZRnV+wqY7Qn0c+sj0R+91vflnycCfmrDCOAnbZI
	+5EIwXUTjRpZcot0Ta7IpnOTQKEreFdeqr9R6UmAcaX0FjzbRiTRUcKK3n8LGw5D6JBC
	fqGifr+/73MV7M56kVqd9dx38ozPcz/qTNikNlj0WdyYPOTmLecQDVxwkja7a0/y73LS
	UHTBRFmzFl673OTYgkbnF0LcHrDNbXnxzTN3WY/gBe5q8ZNHHL9duCCHVnkz91kEZ4CA
	pf+ZAkiy1A/czN9lXeNT6UWUYPdR7yRLOZml015V3MmAdOCqvEckR2GfAsuuuZmvNgwO
	851g==
X-Gm-Message-State: AOPr4FWlTrcxbIG9TLyvAQkDKf9Eorg4ek64eXuqtp7mWmWgaUwIg/a/D99SW9RMMpR0NKua4DgBYLiAqJWTmuSL
X-Received: by 10.157.37.66 with SMTP id j2mr3744065otd.119.1463558660750;
	Wed, 18 May 2016 01:04:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.61.5 with HTTP; Wed, 18 May 2016 01:03:51 -0700 (PDT)
In-Reply-To: <013e01d1b0ca$fa977f90$efc67eb0$@neuf.fr>
References: <1463478209-57439-1-git-send-email-herve.jourdain@neuf.fr>
	<1463478209-57439-2-git-send-email-herve.jourdain@neuf.fr>
	<CAJTo0LaKn2-9VoctHeaGSRJL=XJz9XoFM_TQ5q2JQvie_RC4tA@mail.gmail.com>
	<013e01d1b0ca$fa977f90$efc67eb0$@neuf.fr>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Wed, 18 May 2016 11:03:51 +0300
Message-ID: <CAHiDW_Epqd3XEC6_QPkuQEDpLAw-55Ys3ssvJkPHWV-aK7jx0A@mail.gmail.com>
To: Herve Jourdain <herve.jourdain@neuf.fr>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [matchbox-keyboard][PATCH 1/1] Addition of french keyboard
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
X-List-Received-Date: Wed, 18 May 2016 08:04:24 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 18 May 2016 at 09:03, Herve Jourdain <herve.jourdain@neuf.fr> wrote:
> I believe you=E2=80=99re aware there is another patch, 1 line patch, by J=
ussi
> Kukkonen, applied to matchbox-keyboard,
> =E2=80=9C0001-desktop-file-Hide-the-keyboard-from-app-list.patch=E2=80=9D=
, that adds
> =E2=80=9CNoDisplay=3Dtrue=E2=80=9D to matchbox-keyboard.desktop.
>
> Should anyone send it also as a patch to the branch, so it can be removed
> from the layer?
>
> Similarly, shouldn=E2=80=99t the script 80matchboxkeyboard.sh be also add=
ed to the
> branch?

I suppose there are few matchbox-keyboard users outside of oe-core,
but 80matchboxkeyboard.sh is definitely a oe-core specific script and
installing that from the upstream project would be a bit rude to the
hypothetical non-oecore user.

The =E2=80=9CNoDisplay=3Dtrue=E2=80=9D patch is more debatable but I think =
my reasoning
back then was the same: it was a oe-core configuration decision.

Jussi

