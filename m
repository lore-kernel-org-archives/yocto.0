Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E79B8E00D5F; Tue,  6 Mar 2018 14:06:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C7028E00843
	for <yocto@yoctoproject.org>; Tue,  6 Mar 2018 14:06:56 -0800 (PST)
Received: by mail-wm0-f46.google.com with SMTP id z9so1040609wmb.3
	for <yocto@yoctoproject.org>; Tue, 06 Mar 2018 14:06:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=kOvCK1od6fqmigbf9OAUkaRFM52BJrSFqEpVXDWByUQ=;
	b=DPpJZ8X6BLaAvbJWnYfctde0HLIsPCJM4BKuKQ4V6B6bn+KVhzImfsYJLljqkbyYQU
	6C+C/F5JrA6oT4U378dh1bT4+0O3+kZciab6pKAyX4jLJtPQUktcQDAqLw5z/eelHsSq
	dowYFA0BUjcDNyZ3AjvDveBVRTME16utapBMkRs8dsIFaWkdO9HGIHldDXtUOAd2Ejon
	6Ke5Wb4g9ifACyweaKRmphsa4bQ6pghBZGuZNFvVIcyxwPoA4kSygnw9+1Cgdnm8+Quj
	fbEaQy0nH5dqWFxn9aMkLgspcyHJvzzIRwKxu4xc5+REXaYnKJ3czgTlLKBeff3ZmZHX
	wXXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=kOvCK1od6fqmigbf9OAUkaRFM52BJrSFqEpVXDWByUQ=;
	b=GVttCxztySIcUbr4yfpnwZXwodbhdcQs+cbmTcYjTLBHwBCqLgtB7bveDILhzXVcQ4
	aIqrXEaiYoL9urNNjHcT6aRoreLCy1PWKSl8CDeMvRU8Ahm4Dh1+YZ3GG3+YKCylFT8o
	7SDfi8FcVk8OHtXysXMlSh2LmXaxz8JJ+6D9qqbrXQuIX4fuuRkTThw/P9Aj0k+5XZ3/
	93XbLihQqn/nR1f0MFHQyy2E8wO9GJYAv8utA8o1o7TzPzd079mqO0EOoILJYZNK5diX
	zp1JvbVjsK4S0+X8YUrjAv1TkBqqU+hWCN2W8TPun87auRDNtjSLCALSnf/WMCiYQWsl
	yllA==
X-Gm-Message-State: AElRT7EKAi4nHOjeFdsTaMmZSAghh+gTJn1Y5mu+qch2VgiKmYawmmPQ
	ctm3He901y8vCfNaZ1Z7TZ0Vkcp15U8GsiZnQ38=
X-Google-Smtp-Source: AG47ELviaEkK3mBRxrVB/oss+g3SLr9JgLc1hG2XesWpX7avHC5CYi0JFRuRR5TQCAk8bMfUVgNmu9QoR7yl0gqpi9Q=
X-Received: by 10.28.170.205 with SMTP id t196mr13185289wme.42.1520374015683; 
	Tue, 06 Mar 2018 14:06:55 -0800 (PST)
MIME-Version: 1.0
Received: by 10.223.173.193 with HTTP; Tue, 6 Mar 2018 14:06:55 -0800 (PST)
In-Reply-To: <CAFzUWGkBGD__BLGC2RXwbo6npoqMT7krRPseT1Ax-9H9PNmVJQ@mail.gmail.com>
References: <CAFzUWGnMon5XzCaRiDMpd=UBOBOX2EBFECkg2UzZTxwLnxkEvQ@mail.gmail.com>
	<CAJTo0LZmVZkR1dFtVqsc0M4jDO21F+TUUE2AKO2rmHj9jLEgdw@mail.gmail.com>
	<2e1aacc2-a6a2-4667-b258-42e1599aac79@balister.org>
	<CAFzUWGmBeaEDpmk_Xdkm2qO3=z3NBsMExvp_kr6iFgzSdGAZzQ@mail.gmail.com>
	<987a403f-44b3-f075-7a08-53d0a7aeaf55@balister.org>
	<CAFzUWG=Zjc=nPtkOeHdw23TOq7UF2kLh4ZrM-SK3_JfZSP1ouA@mail.gmail.com>
	<CAJTo0Lbq1nduSntv-ZkEfMY4vfoj9O9aU7TLjXwg8HhrLHbhRg@mail.gmail.com>
	<CAFzUWGn2=vRoJQTgBRbmw2G=DqxbYgooMh+ji0VG48oRNNyO1w@mail.gmail.com>
	<CAJTo0LbfEoJiMg1paTsFjojSBZnWFgUycw8b_qtxOzWuvMwhsQ@mail.gmail.com>
	<CAFzUWGmFW4==kSeUOXT_OXGAW-geRbJsYiLQL+Wd6Ath45a5hg@mail.gmail.com>
	<CAJTo0LaWRz0ku=ESyTghyCnS5rVuo70K88VhL76AQcX2kbf_BQ@mail.gmail.com>
	<CAFzUWGkBGD__BLGC2RXwbo6npoqMT7krRPseT1Ax-9H9PNmVJQ@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
Date: Tue, 6 Mar 2018 14:06:55 -0800
Message-ID: <CAJ86T=Wvf7G6PMXBPXf+X=cbc6o6GbeTsr+pGPQzS-i9hMzKTw@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: Bitbake recipe using CMake that requires python-six as part of compiling?
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
X-List-Received-Date: Tue, 06 Mar 2018 22:06:58 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 6, 2018 at 1:03 PM, Giordon Stark <kratsg@gmail.com> wrote:
> Yes. The CMakeLists file definitely doesn't install that (annoyingly).
> Playing around a bit, I created a test recipe, added these lines in my
> open62541.inc file (original recipe here)
>
> do_install_append() {
>   install -d ${D}${includedir}
>   install -m 644 ${B}/open62541.h ${D}${includedir}
> }
>
> FILES_${PN}_append = "${includedir}/open62541.h"

This is trying to put the header in the runtime package (ie the
package containing files which typically end up in the target rootfs).
Header files should be in the ${PN}-dev package instead.

Since the default packaging rules already cover header files, you
don't actually need to add anything here in order to have the header
packaged correctly - just remove that line.

Note that you also tried to use _append without a leading space -
which is wrong in this context (it's wrong in almost every context).

> and it looks like the test recipe can pick up that header file correctly. So
> I think this is correct-er (at least for code that uses #include
> <open62541.h>).
>

