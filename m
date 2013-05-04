Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f172.google.com (mail-ve0-f172.google.com
	[209.85.128.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E9A9E01308
	for <yocto@yoctoproject.org>; Fri,  3 May 2013 17:35:22 -0700 (PDT)
Received: by mail-ve0-f172.google.com with SMTP id da11so2002201veb.31
	for <yocto@yoctoproject.org>; Fri, 03 May 2013 17:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:mime-version:sender:in-reply-to:references:from:date
	:x-google-sender-auth:message-id:subject:to:cc:content-type;
	bh=bjRaXCupx61XXrNaFVt4ekAdUASvjMXVA/72Yp/37tI=;
	b=qr2yhuE2No3GMBS54bfc7ES2MrHrLu6WRJcXfpFsJbNTLst+8hBUwXJgqC/0ccLt/A
	DnbHaQkhlhmJim9n/rElRdzqmnZV5lNICnmP52I/HXS5WCgc8EWar+YulrhldySuJCNL
	hPxUF5bxUJD0WDGe7d6Lj9mw3AttmuT0G5oaBEfP+iHs+eqP7+YmnEKDVjYcbE1iHxwh
	pxD+IDfqz+fX61jy8EpF4CIlH0VnOLBHHcdiJ3BmuuvTSWGlhcgyLdlLOZ8A0bzUJZzs
	Y/rdwhoxm7gbUfKtaSzRpscBNzsBsFk36ye+rBVnbXlvaFvEe18aQxuKTmyFIkxQeIyi
	lpHQ==
X-Received: by 10.220.103.209 with SMTP id l17mr4285301vco.39.1367627722213;
	Fri, 03 May 2013 17:35:22 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.48.5 with HTTP; Fri, 3 May 2013 17:35:02 -0700 (PDT)
In-Reply-To: <ABB6A20C-CB31-45DC-A74F-26424B52F84E@spidercloud.com>
References: <ABB6A20C-CB31-45DC-A74F-26424B52F84E@spidercloud.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Sat, 4 May 2013 01:35:02 +0100
X-Google-Sender-Auth: NOoaT1aWoNSPCcS2wFuTLc4zWKg
Message-ID: <CANyK_8cMUdVdMkEDpUhqxCy2-0HjnCZqoUVwiGpkT5ZVvH0zHg@mail.gmail.com>
To: Ben Warren <Ben.Warren@spidercloud.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Trouble integrating meta-virtualization
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
X-List-Received-Date: Sat, 04 May 2013 00:35:23 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 4 May 2013 00:44, Ben Warren <Ben.Warren@spidercloud.com> wrote:
> Hello,
>
> I'm trying to build an image using some components from meta-virtualization,
> and it's failing because it can't find many of the dependent modules.  I'm
> posting this on the main yocto mailing list since it's more of a general
> question of 'where are these things?'
>

Each layer should have a README file specifying its dependencies. See
https://git.yoctoproject.org/cgit/cgit.cgi/meta-virtualization/tree/README
or README in your local clone of the tree.

In this case the layer seems to depend on meta-oe and meta-networking,
both within the meta-openembedded group of layers.

Hope this helps,

--
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

