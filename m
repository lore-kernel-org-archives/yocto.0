Return-Path: <elvis.dowson@gmail.com>
Received: from mail-yx0-f176.google.com (mail-yx0-f176.google.com
	[209.85.213.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5C0CE01404
	for <yocto@yoctoproject.org>; Thu,  2 Aug 2012 05:20:55 -0700 (PDT)
Received: by yenl5 with SMTP id l5so9939409yen.35
	for <yocto@yoctoproject.org>; Thu, 02 Aug 2012 05:20:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=zVBYY1x4q059PrlOPfr8tyEqSv5x+fuKamXIXzXq4Sc=;
	b=PFErjTyxxKxG1dtlGytS8crlTYp9a1KP4XFLR6wELeE0rkdvvoYzW9dUU3m8ddvkze
	hU7TVFtsXqRe0KrYE/nxOSbhhjMrF/x+P2X3nc50hFIXr2omYX7cdIvjkujXNGvvEurN
	lQUPLQROUjrgCVuPPpnWlRQWasHVpZTybq/75hDe7Q24CDfAxrNbFXMHDi04ruq+aVyX
	CJnG+hA4AiT41sQgstdUxRfPrmnqkeC22LLfY0snxgtds1haVeaLKzCSNfN+Dlg+leCf
	dL2JopF6oHuvfxW9pBxe5N4yGEw9UVUzEuNtR3NmlQoTMuHDoHUMvK1SJg2n1usc+EWX
	D3aw==
Received: by 10.50.10.166 with SMTP id j6mr3331151igb.38.1343910055056;
	Thu, 02 Aug 2012 05:20:55 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id pb3sm12917954igc.17.2012.08.02.05.20.52
	(version=TLSv1/SSLv3 cipher=OTHER);
	Thu, 02 Aug 2012 05:20:54 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <6913CD3A-3504-405D-9315-8C8D8D47502C@gmail.com>
Date: Thu, 2 Aug 2012 16:20:47 +0400
Message-Id: <0D554F91-3795-4271-9519-4E52E68D274B@gmail.com>
References: <C8B6E7F6-81CE-4DC0-A928-3D021DF1B8AA@gmail.com>
	<A278F391-405E-4AE7-A49D-E614A7E1D26C@gmail.com>
	<7033B489-BD0B-4347-BCB2-0A819E99C7A3@gmail.com>
	<CAEsOVNeU6pz6Pkciymxu+2-JgcEuj=zc7-D+5xCXsjpg7fRuXw@mail.gmail.com>
	<6913CD3A-3504-405D-9315-8C8D8D47502C@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1278)
Cc: McClintock Matthew-B29882 <B29882@freescale.com>,
	Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: GLIBCTARGETOS ?= "linux-gnueabi" for PowerPC 440 targets
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
X-List-Received-Date: Thu, 02 Aug 2012 12:20:56 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Transfer-Encoding: quoted-printable

Hi,

On Aug 2, 2012, at 10:21 AM, Khem Raj wrote:

>=20
> On Aug 1, 2012, at 8:50 PM, McClintock Matthew-B29882 =
<B29882@freescale.com> wrote:
>=20
>> Are you running with prelinking? You might try disabling that. It's =
in
>> local.conf under IMAGE_CLASSES I believe.
>>=20
>=20
> FWIW I have seen issues with prelink + ppc64 that said ppc32 + prelink =
has worked well for me
>=20

I've commented out the original USER_CLASSES variable, and removed the =
image-prelink class, in my local.conf as follows:

#USER_CLASSES ?=3D "buildstats image-mklibs image-prelink"
USER_CLASSES ?=3D "buildstats image-mklibs"

Will give it another go, and see what happens.

Elvis Dowson=

