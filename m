Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45BF4E00DAF; Thu,  8 Aug 2019 01:29:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.128.65 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wm1-f65.google.com (mail-wm1-f65.google.com
	[209.85.128.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ADCB9E00BD5
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2019 01:29:38 -0700 (PDT)
Received: by mail-wm1-f65.google.com with SMTP id s3so1502981wms.2
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2019 01:29:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=O2rPMjVoHiasX1kJWr7uzJji5nh2ehUBp/A2uX5UlWI=;
	b=RbuYDOtdIAOzYpQFS9M+KSodlxpKEdk39pRmd44hekydXibuOicAhApYGBmlxFt5/F
	MQxBo/rwCXkhbzi36Rlqz99/UstzYwbGjJpLAam/mzqbrOB5xwVdUxtb1jmPmWeH1nVZ
	GpyWFobgdNaeTQaU9axHR+HT/fkRqWqqN4+5c=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=O2rPMjVoHiasX1kJWr7uzJji5nh2ehUBp/A2uX5UlWI=;
	b=g2/j9muVRzPzthxM9fJzvZiz1i4ThyW4KWmHA8ydcXGlyE82NU4kAXqwcVoTm7HjzL
	Lj5gDlkIOXNhUbtVoF8guIbp30glW7QfL8aYBk2D/r+yx00nHATbaV0yHG8ecWsQeTHe
	/B+LuEJfASvvCa/EcgEfvEp+Hs0yQBNwcjBRXq8YjxLgd69QLHZZq/zePqkHG/r0vH/b
	0NWmOEpru6Glb7SdtdWRrfkbGIyeHmizkIaxqd6LYW7+jZT/jNQZFNG8Lpu0QNUlgd2J
	qqNXlvWI3YjoakZ60naNH72nx049VoGRXy8l4jAD6Zo11UOD8dWvQ3y168Up13HbW8rI
	B5Gw==
X-Gm-Message-State: APjAAAXJbmZ9DOs3SNXPB3MwUUTnBpAOlonSN5+pSHvlz1IdFkM3Gvfu
	amgMWA7mZEBykXmW5jI12CFoiw==
X-Google-Smtp-Source: APXvYqxMi4oJOnf4IqANFQqbmtKlU9SwqpZJ4GsK+FRHD0D4qcJR0SV9eN51szoEhfrciZgzErlPVw==
X-Received: by 2002:a1c:a6cd:: with SMTP id p196mr2854418wme.111.1565252977688;
	Thu, 08 Aug 2019 01:29:37 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	f7sm94882179wrv.38.2019.08.08.01.29.33
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Thu, 08 Aug 2019 01:29:36 -0700 (PDT)
Message-ID: <f19c9e93640fd023e78b1607229f186a3e5b68f5.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Date: Thu, 08 Aug 2019 09:29:29 +0100
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634E8DB38@PGSMSX110.gar.corp.intel.com>
References: <20190801150425.40A8420251@debian10-ty-3.yocto.io>
	<9DDD2658D1FE414E99172D2DB1E4D04348211190@PGSMSX109.gar.corp.intel.com>
	<015AB11D45F2C442929CB2765DAE738634E8DB38@PGSMSX110.gar.corp.intel.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
Cc: "otavio@ossystems.com.br" <otavio@ossystems.com.br>, "Chan,
	Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>,
	"akuster808@gmail.com" <akuster808@gmail.com>
Subject: Re: QA notification for completed autobuilder build (yocto-2.6.3.rc1)
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
X-List-Received-Date: Thu, 08 Aug 2019 08:29:39 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2019-08-08 at 03:00 +0000, Jain, Sangeeta wrote:
> Hello All,
> 
> This is the full report for 2.6.3 RC1:  
> https://git.yoctoproject.org/cgit/cgit.cgi/yocto-testresults-contrib/log/?h=intel-yocto-testresults
> 
> ======= Summary ========
> No high milestone defects.  
> No new defects are found in this build.
> 
> =======QA notes=========
> One minor issue is observed, after installed core-image-sato-sdk
> image to NUC7 internal harddisk, during boot up, it hangs at the
> Yocto splash screen. Need to manual press keyboard "enter" button
> multiple times for it to continue the boot and bring the screen to
> sato GUI. No bug is filed for this issue as this seems to be a minor
> issue and QA team investigating more onto it. This bug is
> consistently reproducible.

Thanks for running the tests.

FWIW the issue above sounds very like a lack of entropy problem, you
may want to look at the kernel configuration and see how its generating
entropy. If you can see the kernel boot messages and disable the splash
screen that would help debug it.

Cheers,

Richard


