Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A27E2E005BD; Mon, 22 Sep 2014 10:28:43 -0700 (PDT)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6EE14E0034C
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 10:28:30 -0700 (PDT)
Received: by mail-qg0-f46.google.com with SMTP id q108so3218871qgd.19
	for <yocto@yoctoproject.org>; Mon, 22 Sep 2014 10:28:29 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=N2vXCydbG88kZw1WTEx67cSxdHjEJesMA1LssWOeGRQ=;
	b=m54OW5LfwQeD7NMaM2yEW0CkWydO46sjO3YaQ1rQpLkuX8p94SGPtxfUNAoM45FnG3
	UyZ3BW3toLCHXPZk7nANmshrSOqntk6QF6+WOd3/bNfbo5E1hnmRI8gDqz4TjFza92qX
	e8WBGUEWBDjwiKZbil9Uewxosxim/JNsIx1NyrJ2dUuQx7/uDXIS6iP/3t/pjQDaUWOQ
	ioA1tUFa7edEViITHEGCiBYpdR4t74lcVtOs6T1Iamb/bussDlcoS413REjVA1s0c+w2
	9ofr73RpysVcVmn8j+kKLi+YwWC5jO+89P0S4I9b6DK1IPAxlF8zowUC9dbk8SQ/+Tlu
	kGPQ==
X-Gm-Message-State: ALoCoQn1YcSQC1nuAql87Q4Cb/wuedc3fyBUeVaw631yaaA+sGk+02u2lj5et8XdFpaQmuRmppId
X-Received: by 10.140.40.84 with SMTP id w78mr11169824qgw.87.1411406909319;
	Mon, 22 Sep 2014 10:28:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Mon, 22 Sep 2014 10:28:09 -0700 (PDT)
In-Reply-To: <AC825E12842FCA4C9E6DDED8AF00318F1FB79231@FMSMSX106.amr.corp.intel.com>
References: <AC825E12842FCA4C9E6DDED8AF00318F1FB70C57@FMSMSX106.amr.corp.intel.com>
	<CAJTo0LaFn30Fxx2UeJbAdH94Kv1uLbDisiMXHNCHu49POoscwg@mail.gmail.com>
	<AC825E12842FCA4C9E6DDED8AF00318F1FB79231@FMSMSX106.amr.corp.intel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 22 Sep 2014 18:28:09 +0100
Message-ID: <CAJTo0LYt=tZxtDO0qmOT+aNNdZxMOEqfum=dXrQO1UumYkQLJA@mail.gmail.com>
To: "Summers, John S" <john.s.summers@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Darren Hart <dvhart@linux.intel.com>
Subject: Re: Packages util-linux and gettext both showing undefined reference
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
X-List-Received-Date: Mon, 22 Sep 2014 17:28:43 -0000
Content-Type: text/plain; charset=UTF-8

On 22 September 2014 18:05, Summers, John S <john.s.summers@intel.com> wrote:
> DISTRO            = "poky-tiny"

I expect this is what's causing the problem.  poky-tiny is very
cut-down.  CC'ing Darren for a more informed comment.

Ross

