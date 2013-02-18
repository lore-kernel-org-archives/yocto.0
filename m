Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f182.google.com (mail-vc0-f182.google.com
	[209.85.220.182]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 89A15E0070F
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2013 09:34:02 -0800 (PST)
Received: by mail-vc0-f182.google.com with SMTP id fl17so3764275vcb.27
	for <yocto@yoctoproject.org>; Mon, 18 Feb 2013 09:34:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=6lau+Vpo+qb3hHLuckN4hFeqcM7T8WB2xaBenAWpqWU=;
	b=TudmOcP8n7YopzqVfFcqqAU+a+gwOEBeFKgliY9VH813o9DA4eeKIyAdgmGWomruNw
	10dSE2z7PSUj0k7nJ2laXa6z06rjE1CwtwZg6xRVRz7GemmUuMz3O4XTgMWgjWPAsmf4
	4pxvRld6dEXb4IG+wRtDe5Ue+LaLvtN3m7KX3DT16sfNfv9WYDc0FqjelR8bA1irVdwM
	wppmX8SHabszSAbX6rk3Brv3KizYzFGz59Ja8pBtni4cFFjlT4Vdpf8HOpbsAa+8DcCb
	5YHDNGNUzs8mUPCiIia5PVkjpPLWYqYymtKekh+xR4z5gv8Cf59pzeydn7qelC9T6vri
	Ak+w==
X-Received: by 10.220.157.18 with SMTP id z18mr16589296vcw.72.1361208841542;
	Mon, 18 Feb 2013 09:34:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.58.85.36 with HTTP; Mon, 18 Feb 2013 09:33:41 -0800 (PST)
In-Reply-To: <CAJTo0La+-Sghu1X4-ja-DnzjHY9Sm3ATczD2pwGu6hed8qfsGQ@mail.gmail.com>
References: <CAF6bG8fg4nUAg5aDRFoH=T2jTZ-cMHwY+VmX2hhUcUoiWke=jA@mail.gmail.com>
	<CAJTo0La+-Sghu1X4-ja-DnzjHY9Sm3ATczD2pwGu6hed8qfsGQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 18 Feb 2013 17:33:41 +0000
Message-ID: <CAJTo0LYNBdaa7mirU+aNqO8e-hv=o91nrCkn4dMqsB7K7RRdmw@mail.gmail.com>
To: Marko Lindqvist <cazfi74@gmail.com>
X-Gm-Message-State: ALoCoQkm1nvD4osGTZ8o8J4GpZ1pGSIRXFDHVggcr/htB1M+JpAoSynvd6xNM0ypYPBKH2fUWYGG
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH] Fix oprofileui build with automake-1.13
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
X-List-Received-Date: Mon, 18 Feb 2013 17:34:02 -0000
Content-Type: text/plain; charset=UTF-8

On 18 February 2013 17:31, Burton, Ross <ross.burton@intel.com> wrote:
> Merged to oprofileui master, thanks.

I lie - I don't have permission to push there.  I'll find someone who
either can push or can give me access to push.

Ross

