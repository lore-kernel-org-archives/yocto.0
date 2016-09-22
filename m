Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F2CC0E00D34; Thu, 22 Sep 2016 00:18:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (oliver.graute[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.68 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 952B9E00566
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 00:18:05 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id 133so12417075wmq.2
	for <yocto@yoctoproject.org>; Thu, 22 Sep 2016 00:18:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=hqHVVmgf+JM8S+Lz1Sy0p7xVT8PT/oF2Xo7fN1bV8Dg=;
	b=rZzwwwNjSlRtoCPq/P9S39PgBuf/kp8Fx5Oo/C/XMYIkJr/HglbvX197FG6k1PFT9x
	b5GDc1NVDmD3peB5zGnXNCFEWUKH4mBsnLdU9yfyMIbK4HCQeWbbZLiDmt1Nwsrk3FiN
	636p/8I/kv9HLbji/W5sE0iNWY8ZjKRjlMJ71qvjM2TJ+Z4RIktc8yV8q7CGKUv3hQfD
	fUteyhlxIKwuEGXeo71mMEAOcH5Mh53DnsUjsmxHwois9gCxN69HCSS91JrpfMvfheBZ
	B7wUMkOH/x4BdtGMXw2CAQYzOyDXGE3jWTLT3q5Dk3Bc3DjR9KbHFIFSmFPlP1oZnz1z
	vQYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id
	:mail-followup-to:references:mime-version:content-disposition
	:in-reply-to:user-agent;
	bh=hqHVVmgf+JM8S+Lz1Sy0p7xVT8PT/oF2Xo7fN1bV8Dg=;
	b=PmbObhk1MvmzMBYmlluq5LuCiih3DYrra0hJ0t4TVHC8bo0StrW/7r+cr+IkZoXPXw
	BJWhJ5E0bf1DTGqb6LTnXE6FGT6rlWJGECw2VHbNlXQ/HYCdGN3X15q53pEJ2ZfyckpY
	2wTwT1rZiQUqxlozWjKDt09/05Mfk8XT4btlfHFzQfR7rvA+zTgMtB4eWwg5i0WDZBQj
	t2TrZ9dYnpzKjqeR5LLRE/SplEsFuwsR+rO/XVifkqFAEtMRIXuvvErP5+w+10JPjUYk
	q4c70SgwKZHBOTocfd+uVZPzX9c5kpwKPFBpnN9jp0+cSz2IJ75B3NbgaLBkwdB3kWnT
	hOWQ==
X-Gm-Message-State: AA6/9RnoyxVpU4qlJrJQ+CrN/mTP5BJvsI38wDNUPHRjy4YKJbxAXo4mguhdFXKpUwJq3w==
X-Received: by 10.194.134.101 with SMTP id pj5mr587093wjb.59.1474528684271;
	Thu, 22 Sep 2016 00:18:04 -0700 (PDT)
Received: from localhost (x55b1e508.dyn.telefonica.de. [85.177.229.8])
	by smtp.gmail.com with ESMTPSA id
	i78sm8136192wmc.13.2016.09.22.00.18.03
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Thu, 22 Sep 2016 00:18:03 -0700 (PDT)
Date: Thu, 22 Sep 2016 09:16:43 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20160922071643.GE27958@graute-opti>
Mail-Followup-To: yocto@yoctoproject.org, armccurdy@gmail.com
References: <20160916082406.GB27958@graute-opti>
	<CAJ86T=WaKHQFXfSuvAm4wQUfa=xr_CBmK8-ZovaystYGM=9ukA@mail.gmail.com>
	<20160919115820.GC27958@graute-opti>
MIME-Version: 1.0
In-Reply-To: <20160919115820.GC27958@graute-opti>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: build ntp with openssl support
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
X-List-Received-Date: Thu, 22 Sep 2016 07:18:09 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 19/09/16, Oliver Graute wrote:
> On 16/09/16, Andre McCurdy wrote:
> > On Fri, Sep 16, 2016 at 1:24 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
> > > Hello,
> > >
> > > how can I build ntp with openssl support?
> > >
> > > I already created a ntp_%.bbappend file to extend the recipe ntp_4.2.8p4.bb.
> > >
> > > FILESEXTRAPATHS_prepend := "${THISDIR}/files:"
> > 
> > You don't really need this line unless you are adding a file to
> > SRC_URI or replacing a file already in SRC_URI with your own version.
> > 
> > > PACKAGECONFIG += "openssl"
> > 
> > This will enable openssl, but it will also disable all the default
> > PACKAGECONFIG options (cap, debug and refclocks) which is probably not
> > what you want. Try this instead:
> > 
> >   PACKAGECONFIG_append = " openssl"
> > 
> > Note the space between " and openssl. It's required.
> 
> ok now I see the right configure script options during the configuration
> of the ntp build.
> 
> --with-openssl-libdir=/home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/lib
> --with-openssl-incdir=/home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/include
> --with-crypto
> 
> But ntp is still build without openssl support. The configure scripts
> can't find the relevant openssl stuff.
> 
> configure:34762: checking for openssl library directory
> configure:34802: result: no
> configure:34807: WARNING: libcrypto and libssl not found in any of /home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/lib
> configure:34811: checking for openssl include directory
> configure:34833: result: /home/graute/5411_IBIS/yocto/build-imx6ulevk-nand/tmp/sysroots/imx6ulevk/usr/include
> configure:34877: checking if we will use crypto
> configure:34879: result: no
> configure:35109: checking if we want to use OpenSSL's crypto random (if available)
> configure:35119: result: yes
> 
> some clue whats wrong here?

in my sysroots/imx6ulevk/usr/lib I have

ls -la libssl*

libssl3.so
libssl.a
libssl.so -> libssl.so.1.0.0
libssl.so.1.0.0

ls -la libcrypt*

libcrypt.a
libcrypt_pic.a
libcrypt_pic.map
libcrypt.so -> ../../lib/libcrypt.so.1


but no libcrypto.so. I guess thats the reason why my ntp configure
script is complaining.

Some ideas how to get libcrypto.so in my /usr/lib folder in the yocto
sysroot?

some explenation whats the difference between libcrypt.so and libcrypto.so?

Best Regards,

Oliver

