Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60439E009C8; Thu, 29 Mar 2018 14:46:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f170.google.com (mail-io0-f170.google.com
	[209.85.223.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E20AAE008D3
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 14:46:58 -0700 (PDT)
Received: by mail-io0-f170.google.com with SMTP id d5so9267839iob.9
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 14:46:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:content-transfer-encoding:in-reply-to
	:user-agent; bh=u3s4zsKy16Qhbp+poVallcmOFwLaiYzPJldMVKfui5w=;
	b=N8qZBUVx6DRN6Mai/A/FRqQU65+ezmdkOcqaTkyXT6xFWHGz9Ijbq1hJjLEdYUcvNh
	a2dYU+HHBqsWrEN9xgKeErK5nHQys/2UYg6YyYleoMjuGsp6qwLJpsGloJFpGztNGT3r
	TxJrcIT2a3TY7U+EfkOo7Euz5PDEInHdncKc+0kNFZflLLZ9WFSWCphhVgXa0yVQqU9I
	AHXXE/cw8UMIJ2jzyHlBMzgpHSLcz9pMmwoPobJ60ZswdaTizSzP7JxPLNNNcTDIVIMB
	TyHfuk7GDBprwxADvXoZaIky2fOfLGud6TcP1Z/G50RYTPvxUVPXagreRxZofA3gMPT+
	qagw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=u3s4zsKy16Qhbp+poVallcmOFwLaiYzPJldMVKfui5w=;
	b=tOxLm7gpxjDexN375vH4hDj4p4AB9i7OOeBx7S/juT8xwlobe3EWwAYDOV5HoS6ld7
	HdRY4V6uZ5YZ3c/OKEpcDp90ZwDsuS1lA8U+Gh0EhmcQ4NVXcW9wGyFYKLa7uVVy5rsy
	b+65Kh/+z7lM5agul1r7MoJ63Rg2WZgW3lTBILJ4fdXpFlCVp7uv/kGmn7xUnb2qjoTo
	jrNu/Uho2Fs5XiyDHd/jQzVnQDdTmvJS3jLIE8/FZx69Ava+G6/d8XhFqoqEd0Yg3GO9
	NB7nKX9AhIeBEACkxehD6ggNry6qGIhi+LMcAr4aLHr53MzTrxn4AzSqujN9iJb5Fh5F
	xCsA==
X-Gm-Message-State: AElRT7GDQTqgMqYKtBNBlbWeNO8LHaHsDZihQgXsiF+7oYouBnamAv3l
	3NMC0qlu5zdvsck9nkfJq12JZJUE
X-Google-Smtp-Source: AIpwx49WlEDywma2Ajp6egvq52Q/HxYSwxkhvOPirQBkVlXVA3P7yYu59ldWZwnsMEIolWcX6cgVig==
X-Received: by 10.107.24.66 with SMTP id 63mr7655631ioy.178.1522360018044;
	Thu, 29 Mar 2018 14:46:58 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id 199-v6sm2724itl.1.2018.03.29.14.46.56
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 29 Mar 2018 14:46:56 -0700 (PDT)
Date: Thu, 29 Mar 2018 17:46:54 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: Andreas =?utf-8?Q?M=C3=BCller?= <schnitzeltony@gmail.com>
Message-ID: <20180329214654.GA25163@linux-uys3>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
	<CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
	<CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
	<CALbNGRR0qo=yS2dop-3pfpAZVSC9NekDyg_aFCzURs7NM3UGvg@mail.gmail.com>
	<CALbNGRTKdu+H4eW8U1D4FxM9+LjfoOeZUC0c=irJyHmK69bdMQ@mail.gmail.com>
	<CALbNGRS06u3NTU=2XYRiga=B_rPj_rNyLwv2dC8hRUkx=mJt+A@mail.gmail.com>
	<CAHUNapQP=2OYu6qjf5QLmMbcurXRFo_O1fWg0_oiqCXDZykccA@mail.gmail.com>
	<CALbNGRTifa4-1SW2+zNCB_1a6+wHAjAYigMA1chrNMFiDb15Kg@mail.gmail.com>
	<CALbNGRRR2z6bZFtU=aRBrY8FqAxU1YLtJaD+TGAw3yA-Vr+6AA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CALbNGRRR2z6bZFtU=aRBrY8FqAxU1YLtJaD+TGAw3yA-Vr+6AA@mail.gmail.com>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi] Has anybody run VC4 + X + recent meta/masters lately
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
X-List-Received-Date: Thu, 29 Mar 2018 21:46:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Thu 2018-03-29 @ 11:34:08 PM, Andreas Müller wrote:
> On Thu, Mar 29, 2018 at 11:23 PM, Andreas Müller
> <schnitzeltony@gmail.com> wrote:
> > On Thu, Mar 29, 2018 at 11:05 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> >> I've seen the 'Modifier 0x0 vs. tiling(0x7000000000000001) mismatch' error
> >> and blank screen hundreds of times while working on getting chromium-x11
> >> accelerated. It would happen if chromium was trying to use the system
> >> gl/gles libraries instead of the ones it builds.
> > Then you should give that patch a try - change is in mesa-megadriver
> > package (building images after mesa changes takes LONG...)

The solution was to let the two gl libraries install without interfering with
each other (i.e. to separate locations). If I didn't install the ones chromium
built, it would try to use the system ones and fail. If I installed both and
it found its own, it would succeed. So I found a solution and didn't need to
dig into this 'modifier vs tiling' issue.

Having said that, I'm curious to try your patch on rpi3-64. I have never been
able to get vc4 working on x11 with a 64-bit build (it also gives a 'modifier
vs tiling' error).

> > Some appetizer: glmark on mesa 17.1.7 reports 110 / glmark on mesa
> > 17.1.7 reports 145!

cool!

