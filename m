Return-Path: <fransmeulenbroeks@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9A97E013DC
	for <yocto@yoctoproject.org>; Tue,  1 May 2012 13:26:41 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so2199547pbb.35
	for <yocto@yoctoproject.org>; Tue, 01 May 2012 13:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding;
	bh=b/pO8UTx8SkxMRDGylVmJHZ7e7wy8MArex8rxV35nFg=;
	b=FleIoypWOj+pSCAhdOLrPGbFcU0LCF34aG42y0cT6mG28j0YhCVXbXQyB+Sn/vc17x
	u1iI9xE1vRSoM6ltonKUfTapMzSg1hN1Po/CIwtVghyRfq80pA0LzccwaNRuwFovq8bn
	e6tUnvQf6Tf73MoIHhQIeAgiawO1m/ni2Im2ZY/6iGIoq53rRcx0ClnFqKxDvqK3/SOE
	n6/uc0iLIAxTwuxeJ+8o7xkqtoummOZ/U3subux69uhbtDNzdiiATgxtwPo+mu3aOqT/
	U1e16muRBkEDXjjbRNriR/mWaWyEMjfNq9rHERnRDV2OMZMbHQ1xvv+vwifjqNKrdMc4
	JrRg==
MIME-Version: 1.0
Received: by 10.68.202.130 with SMTP id ki2mr15572425pbc.52.1335904001355;
	Tue, 01 May 2012 13:26:41 -0700 (PDT)
Received: by 10.68.48.164 with HTTP; Tue, 1 May 2012 13:26:41 -0700 (PDT)
In-Reply-To: <4FA00247.8030705@windriver.com>
References: <CACW_hTYtBp5Px_7bYcKY86fqisZEgX7PvJS4kk6JPf2Xrn8TDA@mail.gmail.com>
	<4FA00247.8030705@windriver.com>
Date: Tue, 1 May 2012 22:26:41 +0200
Message-ID: <CACW_hTZYaxGdEJNw_Nd8KES=X1KQmaJMurya63MsWAnT71YsrQ@mail.gmail.com>
From: Frans Meulenbroeks <fransmeulenbroeks@gmail.com>
To: Mark Hatle <mark.hatle@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: bsp experiences
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
X-List-Received-Date: Tue, 01 May 2012 20:26:41 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

2012/5/1 Mark Hatle <mark.hatle@windriver.com>:

[...]

>
> Once you have verified that the e300c3 binaries are functional, please se=
nd
> a your updated tune to the oe-core list... or if you prefer send it to me
> and I can review it and submit it (with your permission) to the oe-core
> list.
>
> I'm interested in keeping the tunes updated as much as reasonable for a
> growing list of supportable cores.
>
> BTW isn't the e300c3 a hard-float (standard classic PPC floating point?) =
=A0If
> so be sure to change the TUNE_FEATURES to fpu-hard.

Hi Mark,

I can send the tune file once ok; np.
Thanks for the FP remark. There was not really a difference in the
oe-classic tune files, but I noticed this might be relevant in
oe-core.
Probably I would not have noticed soon without your remark as there is
not really any FP in our code.

Best regards, Frans

