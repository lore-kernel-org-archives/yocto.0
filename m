Return-Path: <ross.burton@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E72D4E00777
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 06:16:12 -0800 (PST)
Received: from mail-ob0-f200.google.com ([209.85.214.200])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 12 Dec 2012 06:16:11 -0800
Received: by mail-ob0-f200.google.com with SMTP id wd20so3441479obb.11
	for <yocto@yoctoproject.org>; Wed, 12 Dec 2012 06:16:11 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=PvpZ2fCbANEQUt2qUV7CtTuBPvWQtCDnmUxAv+VQjt4=;
	b=CYa88gNtFWSZTfX8KGEi27hHBuH53HBo8r5kgEyXWcLytfpuBtUEnIUHoQ+EsyjJfa
	m431mydzOcSKDoQPI2YebtXz0EUarSCqG/R3EoZq99Rv9IWm2VC2hPIEjoyXG9dikD5t
	qA4sco8VTtz5hscsZ6eHttUesKs3Q8B3iN0dT0I7+XUfjzzZvdF+rTlzQbR2R9/0YGJa
	v+htAPtk/7ilnvacbr2mQFFVMMy1vRR57Lk5lc4P2zwsmPWeciJIeJIIrAKwE07u0ro3
	FuFFA6yifvjED3bMe98cl6ADDQle7+LJnla9QGZpkD5j6oCkiHGjjAY4bIUK3OveA6OP
	V8SQ==
Received: by 10.60.169.171 with SMTP id af11mr533294oec.92.1355321771059;
	Wed, 12 Dec 2012 06:16:11 -0800 (PST)
Received: by 10.60.169.171 with SMTP id af11mr533288oec.92.1355321770926; Wed,
	12 Dec 2012 06:16:10 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.132.198 with HTTP; Wed, 12 Dec 2012 06:15:50 -0800 (PST)
In-Reply-To: <CCEE409D.1DB0A%belen.barros.pena@intel.com>
References: <CCEE409D.1DB0A%belen.barros.pena@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 12 Dec 2012 14:15:50 +0000
Message-ID: <CAJTo0LbtCBm3zDQ1kmwCpBwuVM+tk2Cvs2HsaoLw1woV3zgZCQ@mail.gmail.com>
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
X-Gm-Message-State: ALoCoQnitof9N9y6lQoFfb7DGOjLwX/FW/EBi67wD8nX/irmzyax1YpnLiCPvGvubmX/pfVoTa27cBlvRLcdQGL9xj/rJAkQcbJkvewUhAiICkiczQ4JHPAgn9hlyl47GmLaD+XRFhJHhaFeflp+4pnENuquEky+jw==
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: Building pseudo fails
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
X-List-Received-Date: Wed, 12 Dec 2012 14:16:13 -0000
Content-Type: text/plain; charset=UTF-8

On 12 December 2012 14:09, Barros Pena, Belen
<belen.barros.pena@intel.com> wrote:
> I just downloaded the Danny release to an Ubuntu 12.10 computer, and
> pseudo failed to build. Before opening a bug, I just wanted to make sure
> it's not something silly I am doing. The log file is attached and below
> I've pasted the terminal output.

It appears you need to install the "chrpath" package.  If that fixes
it then we've clearly got a mismatch between the "assumed to exist"
list and the "verified to exist" list.

Ross

