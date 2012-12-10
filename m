Return-Path: <elizabeth.flanagan@intel.com>
Received: from fmsmga102.fm.intel.com (mga10.intel.com [192.55.52.92])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C35E3E00777
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 09:55:51 -0800 (PST)
Received: from mail-ye0-f200.google.com ([209.85.213.200])
	by mga11.intel.com with ESMTP/TLS/RC4-SHA; 10 Dec 2012 09:55:51 -0800
Received: by mail-ye0-f200.google.com with SMTP id r13so5584217yen.11
	for <yocto@yoctoproject.org>; Mon, 10 Dec 2012 09:55:45 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:x-gm-message-state;
	bh=/QJsc2lawSWZJnBmxkD81Fp9j3xaehLXKc5757uw7a0=;
	b=egXyyq9k3APwljDljIIB9EkErOEUuGeoUi+fvN0mTsrITb0KivihYOVWhpbmES94XL
	9IfunX0kVgMDNXMOL0RBSIEz85TkwmplMFUC6r1OzlXzU0RPunChTJEfAqUCr5G53qxE
	m0KMZGHf7F+EDMPzIEIMsbq7xAmYMS++iLclfwYz6tyiZtUs4t2FNjwz0RPCeDNJx9QP
	Z2iXGhDB+qSn9jAFZFInFzqUJm2GLqOmpMLLffIGhKuehBpbtYXxSHN6vnxeOTtUXEP6
	EMMb42SCuhhxxNOXEQg0ZqQhH26l38r7KxPJGCkBjw8WYcMmW0spKn6xtXv9MS11e16R
	v+QQ==
Received: by 10.224.223.17 with SMTP id ii17mr21666661qab.13.1355162145888;
	Mon, 10 Dec 2012 09:55:45 -0800 (PST)
MIME-Version: 1.0
Received: by 10.224.223.17 with SMTP id ii17mr21666645qab.13.1355162145771;
	Mon, 10 Dec 2012 09:55:45 -0800 (PST)
Received: by 10.49.12.136 with HTTP; Mon, 10 Dec 2012 09:55:45 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1212101203550.10798@oneiric>
References: <alpine.DEB.2.02.1212101203550.10798@oneiric>
Date: Mon, 10 Dec 2012 09:55:45 -0800
Message-ID: <CAPhnLPDLp46g1yXzaBa=Li+Rw-GdCt5TjzDjtmba=8TD4HC-OQ@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-Gm-Message-State: ALoCoQkMUpX/coEkEAPT3vWt8v4yz5vpI8j5GPgY24I6rcgUZzllavbyQYzLyTwoBW+d2UCIwvM4EZryJE3OZcKXhQRi8YW0WYZalIQaxhMq276KIZ1HN/sdEng/qqnJlJ0FJaTxV0IiKMsUFptAuHB2CcNUDVPpdQ==
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: newest yocto release directories don't contain qemu kernel image
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
X-List-Received-Date: Mon, 10 Dec 2012 17:55:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Dec 10, 2012 at 9:07 AM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
>
>   in the section "Using Pre-Built Binaries and QEMU" in the QS guide
> that i contributed to, there's a link to the qemu download
> directories:
>
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.3/machines/qemu
>
> and a suggestion that one can go there and download the appropriate
> kernel for their QEMU session.
>
>   but starting with release 1.3, there is no pre-built kernel there
> anymore, so the quick start is therefore wrong.  have the pre-built
> kernels simply been dropped?  moved elsewhere?

Robert,

No, it was an error in the release script. The kernel images for qemu
have been restored and the error in my release script fixed. Thanks
for the catch.

-b

>
> rday
>
> --
>
> ========================================================================
> Robert P. J. Day                                 Ottawa, Ontario, CANADA
>                         http://crashcourse.ca
>
> Twitter:                                       http://twitter.com/rpjday
> LinkedIn:                               http://ca.linkedin.com/in/rpjday
> ========================================================================
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

