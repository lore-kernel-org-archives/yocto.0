Return-Path: <ross.burton@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53CABE0127A
	for <yocto@yoctoproject.org>; Sun,  7 Oct 2012 14:27:51 -0700 (PDT)
Received: from mail-we0-f176.google.com ([74.125.82.176])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 07 Oct 2012 14:27:49 -0700
Received: by mail-we0-f176.google.com with SMTP id z53so2486906wey.35
	for <yocto@yoctoproject.org>; Sun, 07 Oct 2012 14:27:48 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=date:from:to:cc:message-id:in-reply-to:references:subject:x-mailer
	:mime-version:content-type:content-transfer-encoding
	:content-disposition:x-gm-message-state;
	bh=aaXlp3xJ2kedlDflRrndFxdTiW+8qbyu/Y7NTwxwnzU=;
	b=UCwOMYs+x+XjdHDDOKU7lX8jT+AEHVI+hLa6vDdTmzFljummV8+61O3fdjsyj3mL7H
	OguCgYPnM/11B/tYzWVgQ7lDoMspyq1R3GwxSVK74BOVNHQf6Liqpwmj3l47X6su0Q3g
	o824ENkqCzq1Pzp89JucIJYh1OG2G6odnT59KLU17IsJ3N4jERAJCxFWYgV7Vup/qSiA
	shL1hIzQ0U/+TNogYxau43MJZUs3RW8XHWu3LtKQpIjdZUx8al0CGHox7A9AeAupD6kM
	2HTs+jUCp78ZB+7gX9ICrOkDPLiH1YypS9L/eDfVBfTFWPwV81Mu1T6IHNLza6WvbQYE
	AoGQ==
Received: by 10.181.13.208 with SMTP id fa16mr16817218wid.11.1349645267934;
	Sun, 07 Oct 2012 14:27:47 -0700 (PDT)
Received: from [192.168.1.7] (35.106.2.81.in-addr.arpa. [81.2.106.35])
	by mx.google.com with ESMTPS id cl8sm16022988wib.10.2012.10.07.14.27.43
	(version=SSLv3 cipher=OTHER); Sun, 07 Oct 2012 14:27:45 -0700 (PDT)
Date: Sun, 7 Oct 2012 22:27:41 +0100
From: Ross Burton <ross.burton@intel.com>
To: Edward Vidal <vidal.develone@gmail.com>
Message-ID: <F8C937E243F84E4999ED5A30B667DCFB@intel.com>
In-Reply-To: <CANwz6nzXviQwG=S-5nAF9wF70tQ4PyrZNLTHFHODA5WWJfkCTw@mail.gmail.com>
References: <CANwz6nzXviQwG=S-5nAF9wF70tQ4PyrZNLTHFHODA5WWJfkCTw@mail.gmail.com>
X-Mailer: sparrow 1.6.3 (build 1172)
MIME-Version: 1.0
X-Gm-Message-State: ALoCoQkgvzHYUWYOOotrDyQVftCkwa5ldlNmJR8aKke+mA52hUcgNx+uBklwKOmqGZzZcsVrPsEi
Cc: yocto@yoctoproject.org
Subject: Re: core-image-sato keyboard
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
X-List-Received-Date: Sun, 07 Oct 2012 21:27:51 -0000
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

On Saturday, 6 October 2012 at 20:20, Edward Vidal wrote:
> Hello,
> Just built core-image-sato for beagleboard xM C.
> I have a usb keyboard and mouse connected. The Mouse works but not the keyboard when Terminal is selected. The virtual keyboard works okay.
> 


Does the keyboard work at a console?  Can you try an alternative keyboard and USB socket to rule out weird behaviour with the keyboard or USB socket?

Ross

