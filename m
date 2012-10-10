Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CF6BE011DB
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:25:52 -0700 (PDT)
Received: from mail-ia0-f176.google.com ([209.85.210.176])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 10 Oct 2012 02:25:15 -0700
Received: by mail-ia0-f176.google.com with SMTP id h11so216992iae.35
	for <yocto@yoctoproject.org>; Wed, 10 Oct 2012 02:25:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=zlvrd+dXRlEqBdhysZJt/YQhlRjWzn8l3OBIHyy2A30=;
	b=R0pfC77foSf24K4JYJCfUbFxstjuGnOCr6gSTzIJeowwr5hXMn9wWS8ZxJKPcfY65E
	pmJfa9HL3F8Xcv25SdV+8FF7gdYbXbcTPQp7iHFoKfpi4ZB5H/Pz3E5Slm7pTkKcQbwi
	/OT2EGefqs0uNhs6zcsTxyP+NwEfMTqZyFAFV+Qvc5vpZ2NDiKCmS1A5d8s6y6PcgqFe
	vwvCNF9JgQva6/io5kK2J1DqqiQzOpTjIRlrfWcv0B8hU5Yzd1p4ZlBqfHaLNznWApRg
	4vpvTA888zM9uKHDpw8gBvKMxOPCLN+qZqafmB3XnWnWPy+EdwTYjAl+5d8ArhjXcM0/
	aHLw==
Received: by 10.42.97.74 with SMTP id m10mr17800875icn.42.1349861134932; Wed,
	10 Oct 2012 02:25:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.141.70 with HTTP; Wed, 10 Oct 2012 02:25:14 -0700 (PDT)
In-Reply-To: <5e3291d077a714c7fc69d8bcc308974d75baffd4.1349831664.git.nitin.a.kamble@intel.com>
References: <cover.1349831664.git.nitin.a.kamble@intel.com>
	<5e3291d077a714c7fc69d8bcc308974d75baffd4.1349831664.git.nitin.a.kamble@intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 10 Oct 2012 10:25:14 +0100
Message-ID: <CAJTo0La-n0y4jzvm5x2gFPMzV1eMm3oedvr7eaeN+WC0220seg@mail.gmail.com>
To: nitin.a.kamble@intel.com
X-Gm-Message-State: ALoCoQm8DTwcwsPoBbZ9QoYkjvCsh1kN29XNryT6AzHiDPz23gASJsuXsogUwI2LBdTSkUmk98ed
Cc: yocto@yoctoproject.org, darren.hart@intel.com
Subject: Re: [PATCHv2 2/5] crownbay.conf: specify the 8.0.4 version as preferred version of mesa-dri
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
X-List-Received-Date: Wed, 10 Oct 2012 09:25:52 -0000
Content-Type: text/plain; charset=UTF-8

On 10 October 2012 02:16,  <nitin.a.kamble@intel.com> wrote:
> Avoid following warnings while building crownbay BSPs:
>
>  NOTE: preferred version 7.11 of mesa-dri not available (for item virtual/libgl)
>  NOTE: versions of mesa-dri available: 2:8.0.4 2:8.0.4+git1+c1f4867c89adb1a6b19d66ec8ad146115909f0a7

This is the preferred version in oe-core, so wouldn't it be easier to
just drop this preferred version line and avoid this repeating itself
in the future?

Ross

