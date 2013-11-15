Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f177.google.com (mail-vc0-f177.google.com
	[209.85.220.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E170FE01611
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 14:56:58 -0800 (PST)
Received: by mail-vc0-f177.google.com with SMTP id id10so2160946vcb.22
	for <yocto@yoctoproject.org>; Fri, 15 Nov 2013 14:56:57 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=MPmQq/0TluZXidgwa2nmn6jWbIFMH93GY8vq10J7bHE=;
	b=ZXZWzlD5PIToVV88RLNhTZ5XAXN6d5pOpMfVHNNHP+W1WRhHTk7dijuAOU+t1VleDx
	gx2ToGu75So9GjajVD4TMmK2h6MywLR17fIogAzaWwQUgWE2/Dfjh5zEKQeQnDC863o+
	G6iY6kCc4iIhrljJ61q2BdX43LtUlGFvv2Fit8ivux7FGFXA4g8fImwAl325iceEfIC+
	h0F+MLX/CqI5XcChQra2JKEUmKO0R6bWPsayancntvElHw3rWUMyxHiOtA/FM8b3F0kF
	eZ0+wD/xlDP8/2KIsi/lXkXtmia8k+wTU79RC2QZkG1aCsiv2qHSkmPEuRZsUrlQhaDT
	4m4g==
X-Gm-Message-State: ALoCoQkzHn+TVmGxWGkZtUznkiXz9zsTTxtpA5aFK+u8S99jQoA99G8gi6d7pbSNWPywNss4curZ
X-Received: by 10.58.46.18 with SMTP id r18mr5849288vem.4.1384556217647; Fri,
	15 Nov 2013 14:56:57 -0800 (PST)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Fri, 15 Nov 2013 14:56:37 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1311150538110.30641@oneiric>
References: <alpine.DEB.2.02.1311150538110.30641@oneiric>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 15 Nov 2013 22:56:37 +0000
Message-ID: <CAJTo0LbYcXDDguCiVtun5qMUAgL=VxqhoHVjHKhRCdu8t4M2gw@mail.gmail.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: undocumented MACHINE_FEATURES, and what makes something a MACHINE feature?
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
X-List-Received-Date: Fri, 15 Nov 2013 22:56:59 -0000
Content-Type: text/plain; charset=UTF-8

On 15 November 2013 10:49, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>   as you can see, the only tests for 'wifi' involve either
> DISTRO_FEATURES or COMBINED_FEATURES, *not* MACHINE_FEATURES
> individually. under the circumstances, then, can 'wifi' be considered
> a legitimate MACHINE feature if it's never being tested in that
> context? (the same can be said for 'bluetooth', by the way.)

COMBINED_FEATURES is a union of MACHINE_ and DISTRO_FEATURES, so it
does make sense for them to be listed as MACHINE_FEATURES as otherwise
they can't be combined...  No point building wifi in the distro if the
machine doesn't support it, and the machine supporting wifi isn't a
reason to enable it in the distro.

Ross

