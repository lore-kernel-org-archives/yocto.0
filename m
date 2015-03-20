Return-Path: <elizabeth.flanagan@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0F1AAE0076B; Fri, 20 Mar 2015 08:06:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.52 listed in list.dnswl.org]
Received: from mail-yh0-f52.google.com (mail-yh0-f52.google.com
	[209.85.213.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAC70E003FA
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 08:06:17 -0700 (PDT)
Received: by yhpt93 with SMTP id t93so41002039yhp.0
	for <yocto@yoctoproject.org>; Fri, 20 Mar 2015 08:06:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=hqv7ejukEMDCcf4fpviLiH0B/zrnGjoserUA2SSEJ58=;
	b=BYL8Nj+oaJYwLObm/bwOyF+5e1TnbdxkI4oa3XQ/W1G6/PkfuIpJnzvVt5IWTf7Jdx
	i80gfOGgfypddrrZV3IQfbGyPklkrBSvuX+OVhNHVVp4Dqd9roWqR3yVZpEewNKdFDEZ
	DseJgRYNzBtK4saNkqFZu3lpSP+eexDAHtqwy+HuT+PlnB/41qhTwgmGK7UyrvyogoDO
	Kd+sT+M7lvoaqtnrsnsBWVLubUHXhz44cHutq/YDrWHFRWgyxiS9PX7cXFPAbS9emasG
	H5VQcuZIrqz4h80xmWbyZM1+BPaCrIGLyb89kFbWdqZqNICcXVkbF3oj8pkOp/oTvAG+
	UtkQ==
X-Gm-Message-State: ALoCoQmFVAiZjtA9oh2L6Ejmsr6wnmlqbayDxjRiSfDnyHakwKypTa2Xm29jk3bLiusNbkQJJmN1
MIME-Version: 1.0
X-Received: by 10.52.30.34 with SMTP id p2mr62345103vdh.89.1426863976492; Fri,
	20 Mar 2015 08:06:16 -0700 (PDT)
Received: by 10.52.124.37 with HTTP; Fri, 20 Mar 2015 08:06:16 -0700 (PDT)
In-Reply-To: <550C3452.2070403@gmail.com>
References: <550C3452.2070403@gmail.com>
Date: Fri, 20 Mar 2015 15:06:16 +0000
Message-ID: <CAPhnLPBv6yZf1wAPd=WZMG6XEqLqCJBc758NcerDYJ_FLfWmZA@mail.gmail.com>
From: "Flanagan, Elizabeth" <elizabeth.flanagan@intel.com>
To: Trevor Woerner <twoerner@gmail.com>
Cc: yocto <yocto@yoctoproject.org>
Subject: Re: unpacking poky-dora-10.0.4.tar.bz2
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
X-List-Received-Date: Fri, 20 Mar 2015 15:06:23 -0000
Content-Type: text/plain; charset=UTF-8

On 20 March 2015 at 14:53, Trevor Woerner <twoerner@gmail.com> wrote:
> Hi,
>
> When I download and unpack poky-dora-10.0.4.tar.bz2 from
> http://downloads.yoctoproject.org/releases/yocto/yocto-1.5.4/poky-dora-10.0.4.tar.bz2
> I end up with a directory called
> poky-de14d21bc6633ddeb810cef051b91ee322276496 instead of (the expected?)
> poky-dora-10.0.4.
>
> Is this expected?
>

No, it's not. It's an old bug that has crept back into the release
process. The directory name should be poky-dora-10.0.4. I'll fix the
tarball ASAP.

-b

> Best regards,
>     Trevor
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Elizabeth Flanagan
Yocto Project
Build and Release

