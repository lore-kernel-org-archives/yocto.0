Return-Path: <ross.burton@intel.com>
Received: from azsmga101.ch.intel.com (mga07.intel.com [143.182.124.22])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3D5AAE013EF
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 04:43:22 -0700 (PDT)
Received: from mail-ob0-f200.google.com ([209.85.214.200])
	by mga03.intel.com with ESMTP/TLS/RC4-SHA; 22 Oct 2012 04:43:21 -0700
Received: by mail-ob0-f200.google.com with SMTP id un3so7724282obb.11
	for <yocto@yoctoproject.org>; Mon, 22 Oct 2012 04:43:20 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=KQuBWz2YjtLD963FZHcD4iYYmBe72fggSvIqjCv9rpE=;
	b=TXqmvcpifIiK6WEGlgQXrqScXK6YA36ppO4RntEYIRdUMm8czPFKtWYr4YVQxTm21o
	L1L69H5/d9v/l5RNEbqaVDCjueZGWv6mxJqM7oRVK6yQbj+jLfAtST73PuiOid6ViDr0
	Z8avOgXBk4u1YSoLIH+ebzWf1ry9zj7P2HoiL7jgJ2nfD0sXzTAu+47ep+ByKtLZvpgm
	vV1tAyT7Qjl6OUXCDa8PJ1Yw+tWNNOW2UoufXG4g/5Uc9yg0hhsJMkB1EiLX1QTBryS+
	kyR7I9XuakkxP7hBf4DxHwYjbuEna6UR5dTBjc2Iua77vPV/DX8lrTVJ7D+Bbm9cwLnk
	STBw==
Received: by 10.60.171.134 with SMTP id au6mr7770427oec.69.1350906200623;
	Mon, 22 Oct 2012 04:43:20 -0700 (PDT)
Received: by 10.60.171.134 with SMTP id au6mr7770421oec.69.1350906200573; Mon,
	22 Oct 2012 04:43:20 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.46.70 with HTTP; Mon, 22 Oct 2012 04:43:00 -0700 (PDT)
In-Reply-To: <1350677288.1569.25.camel@empanada>
References: <1350487279-1681-1-git-send-email-ross.burton@intel.com>
	<1350677288.1569.25.camel@empanada>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Oct 2012 12:43:00 +0100
Message-ID: <CAJTo0LYH08HVsgkEhNDiU2qTzEh2pDdp4taeWx=1vzc6d=dhmw@mail.gmail.com>
To: Tom Zanussi <tom.zanussi@intel.com>
X-Gm-Message-State: ALoCoQnqFKk1lNfJJTQ9hwY0QdWOXasNDzg6SpuOS61CemImqnS9ZWIlC6cvkWLyu/yK4E7vHcffgrQzbQHgk33AIAJBpjg+vbFdf9m9hd1w5/PA0QVFb5vZS4R9FcyoUkp5ScgGEFgeo0V8Bw9d7CBKVNsO/bdtRg==
Cc: yocto@yoctoproject.org, dvhart@linux.intel.com
Subject: Re: Cedar Trail and gst-vaapi fixes
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
X-List-Received-Date: Mon, 22 Oct 2012 11:43:22 -0000
Content-Type: text/plain; charset=UTF-8

On 19 October 2012 21:08, Tom Zanussi <tom.zanussi@intel.com> wrote:
> I pulled the first two patches into meta-intel/master, but left the
> third behind - we still need the commercial license since the
> gst-ffmpeg requires it, and even then we still want to keep the
> VA_FEATURES so users can just set it to "" to not include video
> acceleration.

I've restored VA_FEATURES but as gst-ffmpeg is a only-if-commercial
rdependency of gst-va-intel-general (and not gst-vaapi with the
patches you merged), I don't see why the commercial checks need to be
anywhere but the rdepends of gst-va-intel-general.

(V2 just sent)

Ross

