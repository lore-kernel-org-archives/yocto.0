Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B0E00E00990; Wed, 18 Jan 2017 01:19:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.170 listed in dnsbl.sorbs.net]
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9278EE00985
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 01:19:18 -0800 (PST)
Received: by mail-io0-f170.google.com with SMTP id v96so7373908ioi.0
	for <yocto@yoctoproject.org>; Wed, 18 Jan 2017 01:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=XlpdUug70YXFN8qQLa7t67k1zquMNihrCgBywDP7YZE=;
	b=dOhklBOPCWevi4wA79HNtBeMziMbVB8dzc06mQUngbDpRRqphCfnHHzCBHfgsDWkDD
	STZluNOwjQ8OuxHhsSVMJllrR7f4zWo6Gkkcf9wS7Ny1wb8YONFDl+ODkmMjJd8ET+ex
	j1JWM6Vzb+IRg2SCT83bdRPkhGhN0cPwegNBG/vM6ZQCfQSbA6tD01PuN/OP3/XV6mhp
	Im1Zwp2d1JEO6NbGRbBgBOLZvc5hXly/0zLVxzZ4wcImGss0xPHE4qMtdGg0OavTtB7h
	QncZMB37qPYOPIOfhUUZCdoC7SI6mffb/z6u2vHsqgJlI0TqLA4hPSZHPE7LVIzD8eLs
	OVLA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=XlpdUug70YXFN8qQLa7t67k1zquMNihrCgBywDP7YZE=;
	b=a0aaMaOz4dj873T2vFCF5i9z3hSpn0rrumt26DrbhpvKsNBFA/cYfj7QdxdjU6jJcR
	yn9yDs+0Neb17Ze5vcvMxxwHXGJGgTDf2GdM4jGPwfgW21iLdOif8Yp78CvgR0Wyc4Bh
	UhTt3a1KkgxCwvgCC/j0DubOMu3yAr1w6lgXHZSiPsB6O+lxLqnFErqxDPJU/XmNrYSe
	0IyNtnHogOlxINV/WJmTv456lAD+s2IgV/G/OmYp2wv6kuR43GP8lPtTkBglN4JBL9kX
	wkBJlcIwcRzz3GzPmjlmFmFiiYHD6v5o6GJ0XD7pFIV42FoMzuDd0fLd75mR53lYgsch
	irfQ==
X-Gm-Message-State: AIkVDXLdqi0uFj3Rf4V0nn7nOf4nr9BzjZxwNxUvUpAtPNoBOxoF47BD9uujzabprcoelO8J
X-Received: by 10.107.18.230 with SMTP id 99mr2351314ios.45.1484731157776;
	Wed, 18 Jan 2017 01:19:17 -0800 (PST)
Received: from pohly-mobl1 (p5DE8EE7C.dip0.t-ipconnect.de. [93.232.238.124])
	by smtp.gmail.com with ESMTPSA id
	y125sm726790ity.13.2017.01.18.01.19.15
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 18 Jan 2017 01:19:16 -0800 (PST)
Message-ID: <1484731154.19478.117.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Gary Thomas <gary@mlbassoc.com>
Date: Wed, 18 Jan 2017 10:19:14 +0100
In-Reply-To: <48565564-9e2f-f8e7-e3da-21aad9fca0a3@mlbassoc.com>
References: <48565564-9e2f-f8e7-e3da-21aad9fca0a3@mlbassoc.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: x86 testing
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
X-List-Received-Date: Wed, 18 Jan 2017 09:19:20 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2017-01-18 at 08:02 +0100, Gary Thomas wrote:
> I'm trying to track down some recent changes in the X server
> (using the latest Poky/Yocto master).  I've had failures on
> a number of the embedded targets I work with, so I thought
> I'd give it a go on platforms with a larger base - x86 machines.
> 
> It used to be that I could run qemu and it would pop up a separate
> window that emulated a display+keyboard+mouse.  That doesn't seem
> to be the same now, or at least I don't see how to make it work.

qemu-native was changed to not depend on SDL. Instead of opening its own
window, it now provides access via VNC.

If you want the old behavior back, you need to compile with (from Poky's
local.conf.sample):

# By default qemu will build with a builtin VNC server where graphical output can be
# seen. The two lines below enable the SDL backend too. By default libsdl-native will
# be built, if you want to use your host's libSDL instead of the minimal libsdl built
# by libsdl-native then uncomment the ASSUME_PROVIDED line below.
PACKAGECONFIG_append_pn-qemu-native = " sdl"
PACKAGECONFIG_append_pn-nativesdk-qemu = " sdl"
#ASSUME_PROVIDED += "libsdl-native"

> Advice on this would be great as I need to test the "native" X
> setup, not VNC connections.

For the guest OS it shouldn't make a difference whether qemu uses its
own window or VNC.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




