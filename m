Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81347E00D28; Thu, 31 Jan 2019 02:14:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.178 listed in list.dnswl.org]
Received: from mail-it1-f178.google.com (mail-it1-f178.google.com
	[209.85.166.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 297AEE00C91
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:14:11 -0800 (PST)
Received: by mail-it1-f178.google.com with SMTP id c9so3202136itj.1
	for <yocto@yoctoproject.org>; Thu, 31 Jan 2019 02:14:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=H++RP0KkmIS7o+oDbG1Vyw5NwIJh17DMo/TOkC//VYw=;
	b=EHAeiim96HUPnzQmiQH9NVM+0hMOjiV7V6qMuoVB86mHhOJEbOFJo4mDqcRK2NRzq6
	PmDaFi3V1kVtNp69WnUwa2svrQ5PT9aCF7nYAbjOvQR+r6kfkwgeY9GgpPWPcA633gkO
	2laUEbz4Q5zwCvzpJ6FxZ0IoC/822asYVWCSwlD1aH07sJYbP39nEQynfRvZKbv6vX5P
	dVApAdZrD7pFcEdIwJV1VgZanOovHivhjW6Xv77rsWlywVzIpWKPM5B3rWQiWeabY1eg
	vfRTZLVFJG7am6qO2jU5+rvkzNiAFQ8mAv/F7FoSlAk512hpokxmg6FexmEBLi2Cjqj4
	hWJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=H++RP0KkmIS7o+oDbG1Vyw5NwIJh17DMo/TOkC//VYw=;
	b=j5lChvgHENCtNOmdd4Pkp+8h7AoJjmY2VoxutQl5X5/fA/v3kU7qae7e7TnZQ0XkdW
	Pwl9fX7hOxo8dcMqzZ0ZSSGm9vjY6tchr4Cd97fYj/vKd78Nh39leYKfXr1ONHyftOqa
	f4qJS3Ho1G/GksOxqSouwQ7FoVS1EdS2DNI0NcpEnA2vvUcBm3QFQwt2ldQrq3hn/EY6
	S0AaCneHKXu+sRBeuK5xH37sCPYGWrfKijPOblGksoXj4Bei2TFQfDf38SEkRV0E//a0
	DJrNm8P2cYF/WsoJNbGWyrPqks/xGvpJVn070L1MmDYMl+dtZDovlXXJ99D0dWiUMgB8
	VtxQ==
X-Gm-Message-State: AJcUuke1PpPcenMH5FW2WOk/yt0kzS3i1BMifBuXECjWQzZiCOiKO/M7
	xn7JGl/QZRRcRPRoCOhgV8SD9k2G/9E024AUaq6k/w==
X-Google-Smtp-Source: ALg8bN4EovTzru/YKF4yrr/rjzkrwsxNkTJYrYxtgIPL1W+la26C4CruC5jMMxl+0FqUWA7LuC68uref1IvCZ3Qfseo=
X-Received: by 2002:a24:1d4a:: with SMTP id 71mr10503384itj.62.1548929650714; 
	Thu, 31 Jan 2019 02:14:10 -0800 (PST)
MIME-Version: 1.0
References: <CAB=6tBS=QgbPQqOJOJ7u4U-a77J7ukpm6vvHFQMXqsrdF80Wuw@mail.gmail.com>
In-Reply-To: <CAB=6tBS=QgbPQqOJOJ7u4U-a77J7ukpm6vvHFQMXqsrdF80Wuw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 31 Jan 2019 10:13:59 +0000
Message-ID: <CAJTo0LaErhs5snxmxROjaY1LFzQiNGXNaTezoOT=_LbnDdj2SA@mail.gmail.com>
To: Chuck Wolber <chuckwolber@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: pcre-config replacement
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
X-List-Received-Date: Thu, 31 Jan 2019 10:14:11 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, 31 Jan 2019 at 00:14, Chuck Wolber <chuckwolber@gmail.com> wrote:
> What is the recommended packaging approach for an upstream configure script that seems to think that it must have pcre-config (which is disabled by the binconfig-disabled class)?
>
> Looking at the source of the upstream package seems to indicate that they actually do need pcre, so this is not as simple as patching the configure script.

pkg-config.  Inherit the pkgconfig class in the recipe if it doesn't
already, and see for example
meta/recipes-devtools/swig/swig/0001-configure-use-pkg-config-for-pcre-detection.patch
in oe-core for an example.

This is an upstreamable change so ideally submit it upstream so you
don't have to carry a patch around too.

Ross

