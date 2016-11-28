Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1991E00C41; Mon, 28 Nov 2016 15:16:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.66 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.66 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pg0-f66.google.com (mail-pg0-f66.google.com [74.125.83.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1F075E00C2D
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 15:16:13 -0800 (PST)
Received: by mail-pg0-f66.google.com with SMTP id p66so14368411pga.2
	for <yocto@yoctoproject.org>; Mon, 28 Nov 2016 15:16:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=rWBHQfJaTXv44gT2XaTVFV/LqVYTuT1Zv8kJ1WGFbMM=;
	b=OlVjKVd8iqjH/yZR0D6QabA3A+EUiOSJv+4jknkf7iJDJg7RTYm+OcksYICmpnlBhn
	F60quJv5BcHpFchVx8kmyTtTevEuhSwm0+db06+MLwqTJo0Jc0z4Wm6vklWGHHJF8cnz
	htciP+wTtVh81oa7elVQ/iYIfruNHfzmuLGOsSHT25XprBhL+T9rQuaQ9t3GVFwcQGiu
	v3g+TmBOZ9d+MhtJa3vDbRjz71/pda72xS0bm8mzWReJNgUsOmZ3UnWujIds2IHN2yLK
	T6FBUJnKejqnBfHuureiDlSkIMESoTMbwPxnFtB+gfNWkCW5kl4RoVAaDYn5xibOCHE9
	aDHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to;
	bh=rWBHQfJaTXv44gT2XaTVFV/LqVYTuT1Zv8kJ1WGFbMM=;
	b=BGwSHuDW4DsZJ6aJm28CAo7ilkGt6Jv9780CRxrrmZUW5PMlfYT0noZUSc3WDzoq+z
	caRehG7p8Zu9vLHM/DWXmhwbQzT5Cr92BYoS95HGb9Dt88x93w4AF2jc8ng5+ujr4uuH
	YKB2pvR4vZoH/h9jRKyRWIBtQeFN0iF/MLQMU2FI+1K+A8GwrxlA/oyJOWRPn2z7DBi3
	x+sk/0aFib5OT4qtdKv6HH98uIFdPnbzYD37H7am8hmTEOdHFttFbAgrhnwfC8n8DeFd
	LKrCrtTw2Oz6qXoPmiRzAfFuUA5SmAMzVEz+AlN4oPDlSKzYKF7xh2WSpHRcMUDjbz/G
	xlrA==
X-Gm-Message-State: AKaTC00j01wGMarxAhgfzbkc2Li/Tx1hCu3FDFkdolnXYk1oQCfP7ukp87xX3MRCFcqi2w==
X-Received: by 10.84.150.231 with SMTP id h94mr55366426plh.3.1480374973316;
	Mon, 28 Nov 2016 15:16:13 -0800 (PST)
Received: from ?IPv6:2601:646:8882:b8c:f08c:19b4:e718:7b0b?
	([2601:646:8882:b8c:f08c:19b4:e718:7b0b])
	by smtp.gmail.com with ESMTPSA id
	p67sm75399589pfb.2.2016.11.28.15.16.12
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 28 Nov 2016 15:16:12 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 10.1 \(3251\))
From: Khem Raj <raj.khem@gmail.com>
In-Reply-To: <20161128190745.18053-1-twoerner@gmail.com>
Date: Mon, 28 Nov 2016 15:16:11 -0800
Message-Id: <2ACF0BDF-0A7B-4A0E-BC20-B6B222F1644A@gmail.com>
References: <20161128190745.18053-1-twoerner@gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
X-Mailer: Apple Mail (2.3251)
Cc: yocto@yoctoproject.org
Subject: Re: [meta-raspberrypi][PATCH] linux-raspberrypi-base.bbclass: allow -rt kernels
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
X-List-Received-Date: Mon, 28 Nov 2016 23:16:15 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


> On Nov 28, 2016, at 11:07 AM, Trevor Woerner <twoerner@gmail.com> =
wrote:
>=20
> If the PREEMPT_RT patch is applied, the kernel version becomes, say,
> 4.4.32-rt43 (instead of 4.4.32). This confuses the version handling =
code in
> this class. Update how the version string is processed so that =
trailing rt-
> strings are properly handled, in addition to handling the existing =
cases.
>=20

This probably will solve the issue I see with 4.9-rcX recipes that are =
in my tree on kraj/master

> Signed-off-by: Trevor Woerner <twoerner@gmail.com>
> ---
> classes/linux-raspberrypi-base.bbclass | 2 +-
> 1 file changed, 1 insertion(+), 1 deletion(-)
>=20
> diff --git a/classes/linux-raspberrypi-base.bbclass =
b/classes/linux-raspberrypi-base.bbclass
> index 3a6e33d..fecac30 100644
> --- a/classes/linux-raspberrypi-base.bbclass
> +++ b/classes/linux-raspberrypi-base.bbclass
> @@ -15,7 +15,7 @@ def get_dts(d, ver=3DNone):
>         ver =3D get_kernelversion_file(staging_dir)
>=20
>     if ver is not None:
> -        min_ver =3D ver.split('.', 3)
> +        min_ver =3D re.split(r'[.-]+', ver, maxsplit=3D3)
>     else:
>         return dts
>=20
> --=20
> 2.10.2
>=20
> --=20
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


