Return-Path: <rick.liu@broadcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACA51E00D64; Wed, 14 Aug 2019 14:29:22 -0700 (PDT)
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
	*      [209.85.161.68 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-yw1-f68.google.com (mail-yw1-f68.google.com
	[209.85.161.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 093E8E00C87
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 14:29:21 -0700 (PDT)
Received: by mail-yw1-f68.google.com with SMTP id g19so126664ywe.2
	for <yocto@yoctoproject.org>; Wed, 14 Aug 2019 14:29:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=broadcom.com; s=google;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=1NHc9ytWZV+s4494zgfI/ZKGxhSCoe+VWJC41HXPKoA=;
	b=CNtuoOhYxkCzWrXmcuMjSB9fxYUH9o8RTY/sEObubDQ8hZMHnqtnqdsY52cVnd3Pyq
	Skm8MtleRmm2Z9NosCPeZ/cKBKF3LxoW4yBQ/Y29ACvxKlinS38r7FIPGs6BBTW9kpjS
	YmDQlFUy3f8P9W6fVDoaY7NVCmBpOnsMuaGSQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=1NHc9ytWZV+s4494zgfI/ZKGxhSCoe+VWJC41HXPKoA=;
	b=HJOmXQb1FauvV4pmbVn+xHE4EJ4Ec55kdrLuNSevYBkclQ2RFkDTbenvRdG4XvIqfP
	wNtQ4jbGE7OTpLvUbE2viVDkXzsr28hax9YMnqecGbM5uAzAKKUN3nzlg0yCrUORkJ71
	wDNrgI3gJR+GXwREvq3JVvYVinvoArC1XrXdv7hqULnyOzpWCxPWc+k5WElBdLPTSCgI
	lKDpOtywNJQh49l6SxNuB6ZLHAOBY9BWQAgfM78NNUGAl6W9LIUGDbVFlWatJ9k9JGSH
	LnbKJUT4oUw4TrZAHL3GeLjGp3cGA9vvLkKsgm4NRUrYhuNldb7i1V43vh1EWESn4g1N
	LB1g==
X-Gm-Message-State: APjAAAVMmiMDx65xcsWKRIPtxi5GVOkx9OIJUBdGIaE0VFqrmXsrVoSs
	RBYhxGGvwPyrtqyLeGknb2fOqBbpEn5UxhlMLEgrVVShcCTPtro=
X-Google-Smtp-Source: APXvYqw/HqIJ6YUrioMQ3Kjwq7q1b9q9OrWITVIIdRCJTQmWL4sEk+SXvkE8JF/ejkirt9Xe2qwBua1CMrKHOJgpisw=
X-Received: by 2002:a81:7a4b:: with SMTP id v72mr883045ywc.467.1565818161110; 
	Wed, 14 Aug 2019 14:29:21 -0700 (PDT)
MIME-Version: 1.0
References: <CAKmBsab+ZgVk8TrF7dre-bY-ti1N9=CuN4+gPkQXfxaAxHPhkg@mail.gmail.com>
In-Reply-To: <CAKmBsab+ZgVk8TrF7dre-bY-ti1N9=CuN4+gPkQXfxaAxHPhkg@mail.gmail.com>
From: Rick Liu <rick.liu@broadcom.com>
Date: Wed, 14 Aug 2019 14:29:10 -0700
Message-ID: <CAKmBsabULdf6a1kyBeTuA9Eze6MQkxU_HYLLeT-wjDO0_rXrjg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Re: Bitbake local.conf variable been override by weak assignment
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
X-List-Received-Date: Wed, 14 Aug 2019 21:29:22 -0000
Content-Type: text/plain; charset="UTF-8"

oops~
After I purged build/tmp and build/cache,
it just works,
so it's probably just cache issue.

# $BRCM_NXT-RELEASE-216_BRANCH [2 operations]
#   set /home/rl891036/scrach/DHELPDESK-3176/poky/build/conf/local.conf:60
#     "SIT_int_nxt_v216.1.15.0"
#   set? /home/rl891036/scrach/DHELPDESK-3176/poky/build/../meta-brcm/meta-datacenter/recipes-kernel/nxt-l2-drv/brcm-nxt-l2-drv_nxtrelease.bb:10
#     "RICK"
# pre-expansion value:
#   "SIT_int_nxt_v216.1.15.0"
BRCM_NXT-RELEASE-216_BRANCH="SIT_int_nxt_v216.1.15.0"

On Wed, Aug 14, 2019 at 1:18 PM Rick Liu <rick.liu@broadcom.com> wrote:
>
> I have defined a global default value BRCM_NXT-RELEASE-216_BRANCH in local.conf,
> and setup a weak assignment (?=) in my recipe,
> but somehow the weak assignment override the local.conf global default value.
> Does anyone have any idea?
>
> build/conf/local.conf:
> BRCM_NXT-RELEASE-216_BRANCH = "SIT_int_nxt_v216.1.15.0"
> PREFERRED_VERSION_brcm-nxt-l2-drv = "nxtrelease%"
>
> meta-brcm/meta-datacenter/recipes-kernel/nxt-l2-drv/brcm-nxt-l2drv_nxtrelese.bb:
> BRCM_NXT-RELEASE-216_BRANCH ?= "RICK"
>
> $ bitbake -e brcm-nxt-l2-drv
> # $BRCM_NXT-RELEASE-216_BRANCH [2 operations]
> #   set /home/rl891036/scrach/DHELPDESK-3176/poky/build/conf/local.conf:60
> #     [_defaultval] "SIT_int_nxt_v216.1.15.0"
> #   set? /home/rl891036/scrach/DHELPDESK-3176/poky/build/../meta-brcm/meta-datacenter/recipes-kernel/nxt-l2-drv/brcm-nxt-l2-drv_nxtrelease.bb:10
> #     "RICK"
> # pre-expansion value:
> #   "RICK"
> BRCM_NXT-RELEASE-216_BRANCH="RICK"

