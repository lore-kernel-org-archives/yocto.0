Return-Path: <ross.burton@intel.com>
Received: from mail-qe0-f54.google.com (mail-qe0-f54.google.com
	[209.85.128.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6CAFE00818
	for <yocto@yoctoproject.org>; Thu, 19 Dec 2013 02:19:33 -0800 (PST)
Received: by mail-qe0-f54.google.com with SMTP id cy11so727235qeb.41
	for <yocto@yoctoproject.org>; Thu, 19 Dec 2013 02:19:33 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:content-type;
	bh=pCRNr6lVvLIqyPFatXmPMW2Jf8XqlZ2nUhTheu8iVyk=;
	b=iTEcKigxAIh0tCLI/BWqtT4Hh8jlWFvwIsfY7ut+nlUgTzuh8jSZW2WAyEUjkeV8W7
	s2yWpwOoQ3TEUP7PzKpBK+GUO+dAThiU4X3wIpEva8gwcbPn85mfGBHLJcHhgFCauw1e
	QhXw7kqx3ebV7TdJXXEz5gbMK0Q7TsLyAuiAFIyN+DHQyGpIDaqRlyY0ZUvmpPiplb+P
	voXQFZG12qNcgD3vuD0nCY/rORPqVt/TimxI1FC++Qh8l7QnAX8dUhrMKd84AbtVWSi/
	AdXIrBCrZ7boZUTzwBT/ElsiDJPl1yvJhYOzI7qvDnm/OpH+495jpb18HtjUYCIaQBwF
	5iyg==
X-Gm-Message-State: ALoCoQladfAqYZiNCFWaA0zAeL7985qTjvrdCQqV6kLpMULJpMVXGkfp91tsaTYl5rtnwz6Fp92q
X-Received: by 10.224.165.12 with SMTP id g12mr975656qay.89.1387448372951;
	Thu, 19 Dec 2013 02:19:32 -0800 (PST)
MIME-Version: 1.0
Received: by 10.96.179.105 with HTTP; Thu, 19 Dec 2013 02:19:12 -0800 (PST)
In-Reply-To: <CAOJdAdUgs_X_5=BA1-v14C+0Xc3hYLwgf-DJbzJsCsW+fNP1cA@mail.gmail.com>
References: <CAOJdAdUOjV56ZBDAp6YhKU2x4cVrmLz=7Ku76WHcu33Oc3g3Mw@mail.gmail.com>
	<CAJTo0LYy9NGjGckfGZN4KN7MhriKtSdzxJTVPU8e0j7m+f-SzQ@mail.gmail.com>
	<CAOJdAdVH7rqVRagMf7p2TxyWcbqpdfoSOpvjmqf2p=ewEuF+fw@mail.gmail.com>
	<CAJTo0LZFeYgPBs0Dphys6=HgNkto2DF8=fx7VfOSDueerUnKrg@mail.gmail.com>
	<CAOJdAdUgs_X_5=BA1-v14C+0Xc3hYLwgf-DJbzJsCsW+fNP1cA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 19 Dec 2013 10:19:12 +0000
Message-ID: <CAJTo0LZJ_b8Sr1ON_S3KRnEjoNU1JtYP81JiUoUZLTE7ZwcSgQ@mail.gmail.com>
To: wuteng wu <wutengss@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libxml2 error
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
X-List-Received-Date: Thu, 19 Dec 2013 10:19:36 -0000
Content-Type: text/plain; charset=UTF-8

Please don't take conversations off the list, so that other can
help/learn.  If your mailer doesn't automatically include
yocto@yoctoproject.org when replying, please add it.

On 19 December 2013 07:16, wuteng wu <wutengss@gmail.com> wrote:
> After changed all those "without-python" to "with-python", i try to build
> the Yocto again, but i get error:
>
> | In file included from
> /home/teng/poky/build-atmel/tmp/work/cortexa9hf-vfp-poky-linux-gnueabi/libxml2/2.9.1-r0/libxml2-2.9.1/python/libxml.c:28:0:
> |
> /home/teng/poky/build-atmel/tmp/work/cortexa9hf-vfp-poky-linux-gnueabi/libxml2/2.9.1-r0/libxml2-2.9.1/python/libxml_wrap.h:108:5:
> error: unknown type name 'xmlCatalogPtr'
> |      xmlCatalogPtr obj;
> |      ^
> |
> /home/teng/poky/build-atmel/tmp/work/cortexa9hf-vfp-poky-linux-gnueabi/libxml2/2.9.1-r0/libxml2-2.9.1/python/libxml_wrap.h:254:37:
> error: unknown type name 'xmlCatalogPtr'
> |  PyObject * libxml_xmlCatalogPtrWrap(xmlCatalogPtr obj);

I suggest you approach the libxml2 maintainers about this compile
error.  There's a mailing list and IRC channel listed on their web
site.

Ross

