Return-Path: <jeffrey.osier-mixon@intel.com>
Received: from orsmga101.jf.intel.com (mga06.intel.com [134.134.136.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 35E48E006D9
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 16:43:28 -0700 (PDT)
Received: from mail-vc0-f180.google.com ([209.85.220.180])
	by mga02.intel.com with ESMTP/TLS/RC4-SHA; 29 Jun 2012 16:43:27 -0700
Received: by vcbfk26 with SMTP id fk26so2491006vcb.25
	for <yocto@yoctoproject.org>; Fri, 29 Jun 2012 16:43:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=wMlA/51BGG8fx4nRnGV7aen5JQRzbZnmPc1QeJ9kb4U=;
	b=KcaApoZd9ltY6UUvMZJGpGz3YSRuuKdowt91xy3R92BpHtLXs17V5ookriuk1259X8
	WwYGCoZfweUXLcMzxmGD9aGNsqbf/EDjKwd8DNvAUe8olfuLUdR0fwinzYFjv6YS8kvZ
	MbL9ueE5HReCFI3KYWBsNSHpS+VCvUa2KGTUJhWUT8cmW9Uehf3QKyW/MSdWgij71Csv
	1/U9Rg2hP27m+/8fI0G3CJ+QjQNUzCGGsKM9sDbpt22IoAnQooxQ7WN0pUdkE2OFrmT0
	fGhbnnezs4t/UfKgk/TrGzxxsQn2jTCWf57R2ogE/jqFxg+Jw9AwDrOxJgkRuQwcug/E
	FItw==
MIME-Version: 1.0
Received: by 10.220.240.148 with SMTP id la20mr2026206vcb.39.1341013406522;
	Fri, 29 Jun 2012 16:43:26 -0700 (PDT)
Received: by 10.52.25.4 with HTTP; Fri, 29 Jun 2012 16:43:26 -0700 (PDT)
In-Reply-To: <1341005726.14293.YahooMailNeo@web121601.mail.ne1.yahoo.com>
References: <mailman.4049.1340982523.2458.yocto@yoctoproject.org>
	<1341005726.14293.YahooMailNeo@web121601.mail.ne1.yahoo.com>
Date: Fri, 29 Jun 2012 16:43:26 -0700
Message-ID: <CALZ2gZVgk4W4YPSwZ+FzZnjwdKyGpFoFLYEqq+nXg3tPrKoU-w@mail.gmail.com>
From: "Osier-mixon, Jeffrey" <jeffrey.osier-mixon@intel.com>
To: maniacbug <maniacbug@ymail.com>
X-Gm-Message-State: ALoCoQmcTpwsYeohufUbUp9wVfNuPzcEkcQtlOam/Jfdf0Qtd1sxEHtXgELfJEsfXKuoQBKx6I0m
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto Digest, Vol 21, Issue 118
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
X-List-Received-Date: Fri, 29 Jun 2012 23:43:28 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Excellent idea - now implemented!

https://wiki.yoctoproject.org/wiki/Meta-ti

thanks for the suggestion

On Fri, Jun 29, 2012 at 2:35 PM, maniacbug <maniacbug@ymail.com> wrote:
>>> Apologies if this is the wrong list, should it be on meta-ti?
>>>
>>> Does anyone here know if the yocto 'beagleboard' BSP works on the Beagl=
eBone board?
>
>> You should use the Beaglebone BSP by adding the meta-ti layer and
>> following the instructions in the meta-ti readme.
>
> Thanks!=A0 Wow, that was hard to find.=A0 https://wiki.yoctoproject.org/w=
iki/File:Meta-ti.pdf needs some inbound links!
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



--=20
Jeff Osier-Mixon=A0http://jefro.net/blog
Yocto Project Community Manager @Intel=A0http://yoctoproject.org

