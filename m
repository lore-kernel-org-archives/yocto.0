Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45C72E007DF; Wed,  1 Oct 2014 02:35:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.46 listed in list.dnswl.org]
Received: from mail-qg0-f46.google.com (mail-qg0-f46.google.com
	[209.85.192.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0F5FDE0034C
	for <yocto@yoctoproject.org>; Wed,  1 Oct 2014 02:35:11 -0700 (PDT)
Received: by mail-qg0-f46.google.com with SMTP id z60so253165qgd.5
	for <yocto@yoctoproject.org>; Wed, 01 Oct 2014 02:35:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Tcq0iGnIM8kB8BvUTGiO5ycaRqndSd49vCm/goCQS3k=;
	b=QlceEtEqiQs+lj5Sy/I1+1zEygdg05+opx4gnT3o6eIgC8T7vN7A8OAE9NDJSjVuXa
	yJV8rn4Fp8GsIoVyI7Fo6BzDkO0muERBdGiMoWrYFalUH5yIuQBm0QCxofc5YPEGaNVM
	vfYssAjeUOSdIxexVAD8c0TOB8v0L27odP0wFKuMvyQVM/YnwxIRfGL41kDXNnWi8+4r
	v62nF4vwZqvTclhvcUJk6adpHy/50OBG/2TxoTIujeQEjB+gjua9gXN9F30gY4YpZywt
	d3zaEdXOsKi5B43TOgUFqp1iuq1KvHYdy8tObbtqUpPVgxt1GNUEx17ez+97LSi9jr0S
	oDkQ==
X-Gm-Message-State: ALoCoQm34gpzYINO9n+j4bsMltK/F3Sc5XDtj8AajV5gAAkbQBJl7QrZ+LkAItVWkQ1PtQ/Oh93L
X-Received: by 10.224.103.194 with SMTP id l2mr22457942qao.93.1412156110666;
	Wed, 01 Oct 2014 02:35:10 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Wed, 1 Oct 2014 02:34:50 -0700 (PDT)
In-Reply-To: <20140930160017.8c4e4b9406b77e1e78d5069819454ed7.477e300d77.wbe@email14.secureserver.net>
References: <20140930160017.8c4e4b9406b77e1e78d5069819454ed7.477e300d77.wbe@email14.secureserver.net>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 1 Oct 2014 10:34:50 +0100
Message-ID: <CAJTo0LZz52aUmkiFsO0CumQQKrOzb6AcuuViQMy8gtAE6MHLTA@mail.gmail.com>
To: Ezekiel Sanborndeasis <ezekiel@sanborndeasis.net>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: fetch task not run after SRCREV updated
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
X-List-Received-Date: Wed, 01 Oct 2014 09:35:15 -0000
Content-Type: text/plain; charset=UTF-8

On 1 October 2014 00:00,  <ezekiel@sanborndeasis.net> wrote:
> obviously works fine. It appears to come down to the do_fetch stampfile. Is
> this intended functionality? It seems that if my SRCREV does not match
> against what was downloaded that should be invalidated and the fetch should
> be forced. Am I missing something?

As Gary said, this is fixed in master.  The idiomatic workaround is to
embed SRCREV into PV, such as PV=1.2.3+git${SRCSRV}.

Ross

