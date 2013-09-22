Return-Path: <xertz.yocto@gmail.com>
Received: from mail-vc0-f193.google.com (mail-vc0-f193.google.com
	[209.85.220.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA2D0E014F4
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2013 09:05:01 -0700 (PDT)
Received: by mail-vc0-f193.google.com with SMTP id hz10so381593vcb.8
	for <yocto@yoctoproject.org>; Sun, 22 Sep 2013 09:05:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=xJN6Ej/UxkfwC7w8VJsP5ypdDeVfr3aVMn2HlwHX8R4=;
	b=PYZjkT72kQPFnT6Z0qJvlV7nImmgnuN6FcS+eRZ7h7WNXGRPkSRdMXwzAXKAk72mZn
	7e9UebJejjLI4n/eK8Y54B7vB15XHEQcbK4sp/TLdCNsKMofMQOZIt97S9seKnJRas3r
	fE8RBVHaBNr/xt6/BoCIJ0t2B6e9oFl5tMv/W+taPgAe2MuZpXZjL/vxeftYo733hs3s
	u0sDNj/N6bYx+6ATRe1hmpz10f6kLI9lYG4+W4Fzjp+9NuI0fAS4Aq7xIZJxtcBBCR1/
	btI2ysz4fIDXA9/QvldQsPpSHw2g80ouovDUxA5IgOinu99WP5s7FAmdxIPWsmP1Phlq
	oj7A==
MIME-Version: 1.0
X-Received: by 10.58.118.130 with SMTP id km2mr17174423veb.0.1379865900649;
	Sun, 22 Sep 2013 09:05:00 -0700 (PDT)
Received: by 10.220.196.69 with HTTP; Sun, 22 Sep 2013 09:05:00 -0700 (PDT)
In-Reply-To: <523CA864.7020105@windriver.com>
References: <CAEo3mJUri=-cHU7cKdJLspWrb_k2irEFx47+npb2TBRKMLcCPw@mail.gmail.com>
	<523CA864.7020105@windriver.com>
Date: Sun, 22 Sep 2013 17:05:00 +0100
Message-ID: <CAEo3mJVqezmQM5o8+=EozeHbU2O=WM91TGnZ=AJkGWRofbQ7yw@mail.gmail.com>
From: John Doe <xertz.yocto@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Configuring linux-yocto-custom to build specific kernel modules
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
X-List-Received-Date: Sun, 22 Sep 2013 16:05:04 -0000
Content-Type: text/plain; charset=ISO-8859-1

> Is your kernel already building from linux-yocto-custom ? Or are you
> using the default linux-yocto kernel and recipes already ?

I have a project that is using linux-yocto-custom and another project
which is using the default linux-yocto kernel.

> If you are using one of the standard qemu machines, or a BSP that
> is already working with linux-yocto*, you can simply enable the module
> by creating a configuration fragment, and putting it on the SRC_URI.

The problem is that I can not find the driver (rtl8187 under
drivers/net/wireless/rtl818x) in the menuconfig. It seems all device
drivers are missing despite them being in the repository or tarball.

Cheers
J

