Return-Path: <msm-oss@mcclintock.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F1F04E00C74; Thu,  3 Aug 2017 09:00:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.218.43 listed in dnsbl.sorbs.net]
Received: from mail-oi0-f43.google.com (mail-oi0-f43.google.com
	[209.85.218.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DDA0E00C6D
	for <yocto@yoctoproject.org>; Thu,  3 Aug 2017 09:00:35 -0700 (PDT)
Received: by mail-oi0-f43.google.com with SMTP id d71so16852492oih.0
	for <yocto@yoctoproject.org>; Thu, 03 Aug 2017 09:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mcclintock.net; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=u6f23aYgXoZQx5RY0LkikX8J6FguWSLlJcWPBRx6FUM=;
	b=GQI+jed7helPXE6wrVeKCvlKKRHM1cZmI7KfJ3u3ctxtxFVvxArQxB2d1mJaWtabFP
	M/eiI38VHH5HlMdBpTUT1rSPlacg9YiWvftsUnkU1yQ3Yokbzj8fUQ1c/VI8PDYCym4/
	R6IMyl+JNm/jVoiQz3VC8H6uGBlI+jf5/DwA4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=u6f23aYgXoZQx5RY0LkikX8J6FguWSLlJcWPBRx6FUM=;
	b=h/8GE9pXp05GyQBoZDrRBzfzyzU0F2ASZEUPt1jUl8LJZ/YiNSfWcV1OMVPG2mCOtG
	pu8OLhs5q1z23IuuODlJaCneSU2sY0RY5jFlfPiVxpeQk7SV13PG8+U3GHcP1KoRB42n
	ZKjEQ+59UnS8/EsPr0KOJD5N+WX/DQTiF60kK9AlVYAZURh8F6p4BpiHtYKHaPA3G4V6
	gdCB6n1/kYRmo0AKEZnyBg9lCbAN70FQZIuaIj2npkixMOakgn3uByGN6l/S0grsj1tS
	l3SaejG6ecEMlkKn+/zCG0YxoSN6RqQ4F9UFWgT+a1hl6YhZ9I4abGJAMKVmxhJLflKl
	hkpg==
X-Gm-Message-State: AIVw113kyhMcktjZxvdwc6Y1gqCjY81MbdQyjGDV4+stNfhh2VfwX5UI
	0OFyoMlgDUdmLykq/JRjmocOzMRU1fab
X-Received: by 10.202.182.11 with SMTP id g11mr2260856oif.60.1501776034666;
	Thu, 03 Aug 2017 09:00:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.32.102 with HTTP; Thu, 3 Aug 2017 09:00:14 -0700 (PDT)
In-Reply-To: <CAJTo0LaOSxrGXXXCyHJ_7XbqZCGnC-LyKWLhS5nsQTmFg4jnAg@mail.gmail.com>
References: <CA+z1-f8Fv3DYhfQcPB2v_bV6515-5hf03LBS0hTdFGhn_bfqRw@mail.gmail.com>
	<CAJTo0LaOSxrGXXXCyHJ_7XbqZCGnC-LyKWLhS5nsQTmFg4jnAg@mail.gmail.com>
From: Matthew McClintock <msm-oss@mcclintock.net>
Date: Thu, 3 Aug 2017 11:00:14 -0500
Message-ID: <CAEsOVNeMzZnGSQANcZ3w=4eMK1Tg+iDyYH-uojUu1r_5mbXZYA@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	"blackthirt33n ." <jjosburn@gmail.com>
Subject: Re: bitbake download only
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
X-List-Received-Date: Thu, 03 Aug 2017 16:00:36 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Aug 3, 2017 at 10:00 AM, Burton, Ross <ross.burton@intel.com> wrote:
> Yes,
>
> bitbake core-image-minimal -c fetchall

Or for more recent version of bitbake

bitbake core-image-minimal --runall fetch

-M

