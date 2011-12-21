Return-Path: <kergoth@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 26624E0123C
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 07:53:03 -0800 (PST)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by qcsc2 with SMTP id c2so5589307qcs.35
	for <yocto@yoctoproject.org>; Wed, 21 Dec 2011 07:53:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=53Uv6VgPjsRepQ1QfsPO6qLnwDke7LfiboEVgelderw=;
	b=WBP8BYtVvb/Qw53vWZXp/ddij4h/DPz/gRzE2Z8rgFiALOSaMyBZYJVOH55AteDkjz
	pm2pVwOinXPIp0a1ha1DsWWHGupaGmRdK+npaSYFGT/ylrffBSoBijEn3AwunvCTy8gI
	BRMkxpKLjDWFJ1wH4B7ElsiKWG+j1aoB0fdrw=
Received: by 10.229.105.87 with SMTP id s23mr2731790qco.147.1324482782203;
	Wed, 21 Dec 2011 07:53:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.229.187.141 with HTTP; Wed, 21 Dec 2011 07:52:41 -0800 (PST)
In-Reply-To: <cover.1324456294.git.dvhart@linux.intel.com>
References: <cover.1324456294.git.dvhart@linux.intel.com>
From: Chris Larson <kergoth@gmail.com>
Date: Wed, 21 Dec 2011 08:52:41 -0700
Message-ID: <CABcZANmbKdn+dzftgQwNRN1ExYEUkhO906LJG8Pw0Cu+U0cRYg@mail.gmail.com>
To: Darren Hart <dvhart@linux.intel.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [RFC PATCH 0/9] New distribution definition for poky-tiny
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
X-List-Received-Date: Wed, 21 Dec 2011 15:53:03 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Dec 21, 2011 at 2:02 AM, Darren Hart <dvhart@linux.intel.com> wrote:
> For example, I could not discover a way to use
> oe_filter_out inside poky-tiny.conf to remove "keyboard" for MACHINE_FEATURES.

This might be best handled via inclusion of a .inc which defines an
event handler or anonymous python function that removes it. The
problem with the := + oe_filter_out method is that it forces an
immediate variable expansion right there, which can cause problems in
some cases.
-- 
Christopher Larson

