Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0CBB1E00CA1; Mon, 23 Jul 2018 12:09:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kanavin[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99B2AE00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 12:09:23 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id d189-v6so3114653oib.6
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 12:09:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Oc6AqxWoss5Pq3D3kKZxTpcV6QMrl4b7G+lU3uyg5vI=;
	b=WI0wFYZskDak6p8JGi3UOrFkBMnOlG58p6oWgKI26pDAh+iKBf3IluDN9r2CYNdTOr
	hbbtdolIZFg5CI7cyalTEtIUykLOOsw2Co7lhEZ8FWeZKFlzpueKyVK5QHnPHkv15uV0
	DcDLFUYpBN1X4OQSV5tGF2dnvDCZbZlrvIoHgtpUunsAVDdMpYeAaOvz0ctzWGSMcpAq
	Bqo2ANa8StOSkC5z+A0aJTBwNMd6sec6QPJp8CtBm6aF/avycTW+QiWUT37eXA0eCBRs
	WZJHz/bwGNpM1xHzfjHgk8YSs8PXV1CaTDMRIsUdfdMvTu0FBKkuYptWJoZtc4AFG+aV
	0UPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Oc6AqxWoss5Pq3D3kKZxTpcV6QMrl4b7G+lU3uyg5vI=;
	b=dPSDlONl1J9jnSVshWsnv5eIpfvWvJdDzXNZV+yfnVp4mUPVgyEpWGuCWpfEuU76dU
	ZOq8joHAH3+Z486f41aGhAIMZUEGmPXjcnbG0c0S5nUt6KLtqX8XmuOnphvL4ETckIJC
	bxFtyI3QxdIBEjaOMMOamWH8znqw6wV/85spUPLqANiIU6r3ReesiSbtJ6WpNKJbKdQ8
	CON2IGOB0/CZ/1skERRa0bGUM4NmxASjucLv1nmkzdGS0+robAyGtFo54uRQADWrelTn
	WgxlrtbGdwBHlr7A6SDWbwuIMj5H2hv6SKEHY7lWVgTf3wB5a06s420L+ld/Jkjbu7SK
	H8lg==
X-Gm-Message-State: AOUpUlF3dzoTx++7Y5h4usdL9JfDQYHH2yaZSTXrSiI5RHuN8MoUZmmy
	wSj312OdxSIKYvvChZn7HF+8JQMUsslT8VN3zr8=
X-Google-Smtp-Source: AAOMgpdscNszpOlP5Sz1Te+4DrL854FAYFtejj4MFMlpQKewzwyRp2BnFooueQpbAgtCSXQGxrf1qx9+mLaX8jdZAr8=
X-Received: by 2002:aca:e80c:: with SMTP id f12-v6mr87979oih.38.1532372963007; 
	Mon, 23 Jul 2018 12:09:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a4a:90c5:0:0:0:0:0 with HTTP; Mon, 23 Jul 2018 12:09:22
	-0700 (PDT)
In-Reply-To: <CAJTo0LawohE+FR0g9+igixjt3QYXcRT+A-ij_3ohxr_jSLmwdg@mail.gmail.com>
References: <CALBAsRyftz1B2WKvH4Gf4eouyyfii5hjRyD9SqfGTK5XvinXHA@mail.gmail.com>
	<f55dfea1-6c9f-dd41-0bd3-5fe93126b794@windriver.com>
	<CALBAsRwS7cEcx1mp3GGx4vWeLzjW7i0MNcN-aO0o+Mog3xbdYQ@mail.gmail.com>
	<CAJTo0LawohE+FR0g9+igixjt3QYXcRT+A-ij_3ohxr_jSLmwdg@mail.gmail.com>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 23 Jul 2018 21:09:22 +0200
Message-ID: <CANNYZj_+E2Yg3_B36yb0_ZXPMuRGAZwuy7m0JtpPGZ=AeO87aQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Reg. rpm changelog
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
X-List-Received-Date: Mon, 23 Jul 2018 19:09:24 -0000
Content-Type: text/plain; charset="UTF-8"

Note that we programmatically create the rpm spec files, and there is
currently no support for writing changelogs into them.

Generally, hand-crafted changelogs are just a maintenance burden, if you ask me.

Alex

2018-07-23 20:49 GMT+02:00 Burton, Ross <ross.burton@intel.com>:
> On 23 July 2018 at 18:30, Vikram Chhibber <vikram.chhibber@gmail.com> wrote:
>> Thanks Mark. Is it possible to somehow use already created changelog while
>> building rpm?
>
> You mean that you'll maintain an independent changelog but want it to
> be in the RPM?
>
> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

