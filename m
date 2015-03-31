Return-Path: <erik.boto@pelagicore.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6E4B0E0056E; Tue, 31 Mar 2015 11:51:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-qc0-f169.google.com (mail-qc0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4051FE003A8
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 11:51:36 -0700 (PDT)
Received: by qcgx3 with SMTP id x3so21887220qcg.3
	for <yocto@yoctoproject.org>; Tue, 31 Mar 2015 11:51:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=j4spUcb09txnG3fPzXw6tb/cJJGpF/A/gW81nyifQMY=;
	b=YTXDXQyV6EaVj0/QQVNuols1tZ8gc0LOkr70JeNpArLZ188tdXVooXJxQfjTKCqmq5
	w/IljE8JAy8uxUttV4kvtxqubTjcYgJsVCsNNe+YfLk8Y8NOd4xjNSebjlRXiWP6cHoV
	TtDt91MbtGIPb4wlJ2YkADPhcj/KCWVy2XCY0k/KqV1D0zNrY32cQlGMMmXILDI+5mvo
	5X7aTAH1qMp5pMbBbp5SieDOXyLUpZKAnITh0SKcqhdgikNE8dlaoZne6dSdTtd9SfNG
	X+nPTY7pSSB57HabEMo9LZNGBb3c6HJdIfvyNy2uprgltu6crSBlK5A7QtvuU6AB7ljV
	2k8g==
X-Gm-Message-State: ALoCoQk14EQebkrRN+yfsbNztBCUanFYe1epdwZgNO75RltttokVTMv5hA3VZGKB1aIi1iEnKPHz
MIME-Version: 1.0
X-Received: by 10.140.238.79 with SMTP id j76mr51802318qhc.83.1427827895612;
	Tue, 31 Mar 2015 11:51:35 -0700 (PDT)
Received: by 10.96.184.133 with HTTP; Tue, 31 Mar 2015 11:51:35 -0700 (PDT)
In-Reply-To: <20150325105909.BF720E00954@yocto-www.yoctoproject.org>
References: <20150325105909.BF720E00954@yocto-www.yoctoproject.org>
Date: Tue, 31 Mar 2015 20:51:35 +0200
Message-ID: <CA+AhUGwpMkfmLnPpYWWtBjJGeKN_E7SgL8h+-B0aZB97kohMVQ@mail.gmail.com>
From: =?UTF-8?Q?Erik_Bot=C3=B6?= <erik.boto@pelagicore.com>
To: Gerhard de Clercq <gerhard@declercqsystems.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Yocto menuconfig not working
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
X-List-Received-Date: Tue, 31 Mar 2015 18:51:40 -0000
Content-Type: text/plain; charset=UTF-8

Hi,

Does devshell work for any package? If not, try setting an explicit
OE_TERMINAL in local.conf, e.g. OE_TERMINAL = "screen".

See http://www.yoctoproject.org/docs/current/ref-manual/ref-manual.html#var-OE_TERMINAL
for details.

Cheers,
Erik

On Wed, Mar 25, 2015 at 11:34 AM, Gerhard de Clercq
<gerhard@declercqsystems.com> wrote:
> For some reason the menuconfig menu does not come up when I try launching it
> from my Yocto installation. I am using the Toradex Yocto 1.6 system as is
> described here
> http://developer.toradex.com/software-resources/arm-family/linux/board-support-package/openembedded-%28core%29,
> with my board set to "apalis-t30". When I run either bitbake virtual/kernal
> -c menuconfig or bitbake linux-toradex -c menuconfig, it executes fine but
> finishes (without erros) before actually showing anything. Running devshell
> also gives the same results.
>
> If I just use the kernel sources on their own as is described here
> http://developer.toradex.com/software-resources/arm-family/linux/board-support-package/build-u-boot-and-linux-kernel-from-source-code,
> I can get menuconfig open using make nconfig. From the Yocto scripts it
> appears as if though the exact same kernel sources are being used. If I try
> adding adding make nconfig to the do_configure_prepend script in the
> linux-toradex_git.bb file then the commands get stuck stating that the
> process (I assume menuconfig) is running and then provides a PID for it, but
> no window or menu is displayed anywhere and the task does not seem to
> finish.
>
> PS. I am on Fedora 21 64-bit.
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

