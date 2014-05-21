Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3A7F9E00B85; Wed, 21 May 2014 08:02:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f46.google.com (unknown [209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA0D8E00B6F
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 08:02:42 -0700 (PDT)
Received: by mail-qg0-f46.google.com with SMTP id q108so3369776qgd.33
	for <yocto@yoctoproject.org>; Wed, 21 May 2014 08:02:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=mFbkbX+9ZZT/PXnjAgxQjoxa2Tj7eW1rjA0tMUyVk5E=;
	b=DU7mL1+5zOn8PWGz6UZS2IC4V215YHxAB9+KUYH+6YhsuJ2YwG2pRCWXl8nVfZbpjX
	Yk169T7q5WcSrjXGOLof3+KgN5r96iiFHcn+rmdItNdqcAz3G3js8ied05Tg+1DIbFcu
	ITdEMrUBi9vrbjTH6svnhzSXF6CZOZqL6pNOIEO7M7N4zAMg3qQi1qB76fx94r6JvCyo
	fAF2+C4Ymeul1k4aDiIcREJUvOFUtacMkMqqSyvkBibKHPRMTPTXI3cGZ37AEXcpNzNn
	0AR/cTcX4MvwThB3DQijQBLygFmSanhal1TPYAjRx4aSgMZdDmAyBOXBthef3j9fVJaC
	ntuA==
X-Gm-Message-State: ALoCoQkMONZ9PJ+gf8St7etBVQbq3ObG3uGYo5Ynjt8XhxmZ5etNnYfmU2anWZz7aE8XsNIoxld+
X-Received: by 10.224.32.138 with SMTP id c10mr58450040qad.35.1400684561674;
	Wed, 21 May 2014 08:02:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 21 May 2014 08:02:21 -0700 (PDT)
In-Reply-To: <537C84D4.3030302@gmx.de>
References: <llcim8$3rn$1@ger.gmane.org>
	<CAJTo0Laf+EEiBAcmKwtU08LLPYynDavNbfuC3TaGKLe2oBtR+w@mail.gmail.com>
	<llcj8i$cfi$1@ger.gmane.org>
	<CANyK_8fjtaN6iXOXm9YqLxK25_VUbYqH8_83GOYm81GjRc9wyA@mail.gmail.com>
	<llcrst$jsc$1@ger.gmane.org> <llhs5e$jt8$1@ger.gmane.org>
	<CAJTo0LbV1AoU=qmb0S=dtbsaor4jWGckGPM80g=tETFi3Ri0sQ@mail.gmail.com>
	<537C84D4.3030302@gmx.de>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 21 May 2014 16:02:21 +0100
Message-ID: <CAJTo0LZCTV0uEeXy+zOo31NnYSgGHv=4tphusb3Nj-VMv5JacA@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Strange certificate problem with wget
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
X-List-Received-Date: Wed, 21 May 2014 15:02:45 -0000
Content-Type: text/plain; charset=UTF-8

On 21 May 2014 11:49, Auslands-KV <auslands-kv@gmx.de> wrote:
> That's it. It does't seem to know where they are. If I add the option
> with the path, it works.
>
> Do I miss something in my local.conf?

No, OpenSSL should know where they are out of this, this is probably a
problem with the OpenSSL recipe.

GnuTLS is known to integrate better in general, so you might want to
try applying this patch to switch wget to GnuTLS:

http://git.yoctoproject.org/cgit/cgit.cgi/poky-contrib/commit/?id=8f42471e4bd5505a1f2766bbc675d23e078dfdc7

Ross

