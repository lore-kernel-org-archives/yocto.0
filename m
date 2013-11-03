Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f170.google.com (mail-ie0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAF15E01934
	for <yocto@yoctoproject.org>; Sun,  3 Nov 2013 12:39:46 -0800 (PST)
Received: by mail-ie0-f170.google.com with SMTP id at1so11216744iec.15
	for <yocto@yoctoproject.org>; Sun, 03 Nov 2013 12:39:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=3BSAZIkHnSg4SaUw54UUTn1fmUPGJ44rXZ8AVY9vqqk=;
	b=ZaW/+KLmFuCm/VKXZL+12fYxA34zFsGmsJWAM7Oiia57dSSJA13EVC8KC0KjqkeBaV
	2Dge94imZSrXI/zvtdNxR+et+2yCRfUrjGYFyalPy3U+Y7xnygclmpgT7+lfMPooCNww
	XWIaIf/+Ah2PGhZ501vJPAgEYd3e722RGFjikeOObiOkpFvzPDJR/P00BF1lnX7v+A4X
	nwEjEVKPJhG/PHMnBA33HD+UGcjFWq0ujAl7YpobwrxgafPmKUs182EnnfCz4iGaha99
	/CcxuCN3cIu/IxABGEU3Ks6uR0AGETmtoudkFdXi+ODfSjye2E50RmdOsu1dvSfSRYin
	dgIg==
X-Received: by 10.43.103.133 with SMTP id di5mr852770icc.38.1383511185824;
	Sun, 03 Nov 2013 12:39:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.219.195 with HTTP; Sun, 3 Nov 2013 12:39:15 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1311020507080.20522@oneiric>
References: <alpine.DEB.2.02.1311020507080.20522@oneiric>
From: Khem Raj <raj.khem@gmail.com>
Date: Sun, 3 Nov 2013 12:39:15 -0800
Message-ID: <CAMKF1sqSFVWQwSFpdZkDTpv6diNGjw77HA-VqMdP4-uBK39xpw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: coding style: hardcoding package names instead of using PN/BPN/etc
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
X-List-Received-Date: Sun, 03 Nov 2013 20:39:47 -0000
Content-Type: text/plain; charset=UTF-8

On Sat, Nov 2, 2013 at 2:14 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel = "1"
> gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel-general = "1"
> gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel-video = "1"
> gst-va-intel.bb:ALLOW_EMPTY_gst-va-intel-vaapi = "1"
>
> i'm *assuming* the above could have been written more concisely by
> using ${PN}, correct?

yes however if you have mutating recipes into native and nativesdk and you only
want this to be effective for target recipe only then above would be ok

is there a coding style preference that users
> should be *encouraged* to use? is there a general coding style guide
> anywhere?
>

