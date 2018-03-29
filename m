Return-Path: <schnitzeltony@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 92AB5E008D3; Thu, 29 Mar 2018 14:23:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (schnitzeltony[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.170 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yb0-f170.google.com (mail-yb0-f170.google.com
	[209.85.213.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13B2BE00529
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 14:23:36 -0700 (PDT)
Received: by mail-yb0-f170.google.com with SMTP id y15-v6so2456422ybb.7
	for <yocto@yoctoproject.org>; Thu, 29 Mar 2018 14:23:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ei6pHjWknIX2N8VoyfoITqDws3whe//pEv4r3cmAWGc=;
	b=JnjTuGBzq8X2aGG7W/+M26rCxxarG3blZCOGLYJKKDAkjGnTHblLoBOaXZmMk/qCTn
	dGN/i2LayBqeoE2rtUUnMy4LNKdcEeavEPNPXyGsO52cChrsSpHcYPtAschslj+9Jdij
	y91NpaQOYQSfP2DYS5EVsqRvAeCdyFO5TARubXcFuhUKZaEooOQqqFuL4KQvV5gPb31r
	+lB+D8n450nHchbDkR84ARF/XGoZ8Iju0kqwR3Se77m8fd6/OhDOqW58gI+Hszw7mllI
	XzeMCv/EslMtS5F7f+tb2mKO+0M/JOOHCFCApmi48fg2IWUgcH0Sj0hvn+JABztKQ8QF
	bqCw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ei6pHjWknIX2N8VoyfoITqDws3whe//pEv4r3cmAWGc=;
	b=PPfaCs+EryfNKp+/rz/K59fIRtNrKrDuK5Od37NBt+jxSSKSTG1Jsd8YkiBNTHjXnb
	d3BeUaBPhKy1bXeRrV1T9BVwaGgz9U7htWbmaQgRcAWzotuolt/ehMh32PbO8Ev3EIvH
	u+4wRc76X94j0SrbwK/j/mib8r6a3H3LYOZ7hSOWH0GsOLYXlq8fttqaHxmrfq7W8/LT
	cyztQGGyxeMnQAHI4e7TgfhH97jaEI1LrCf2W0ORfF3Yb6F+YzZvazu0PGdT+u1aqatR
	QsCnNsOeQgaY9O5PDDA1ffWVerB3vOa0uWCtFOqBfop1Ayag+b/qO9R/jCfi0woOCV8L
	y5Xw==
X-Gm-Message-State: AElRT7GrkMk8/KGAwOC/77IUS1StokaRnrCfmPPTGQsZZ7p4njGRsJs5
	wKdUHAWNLFgJvEZHEyYTJl+J9P6EuvdrTiV5gpg=
X-Google-Smtp-Source: AIpwx48/RKeZWfLbL5pXHIs+WKz4XZC0ZUX+62k24hv+3He4AAJHzW/ooo3NgcbzJE6T8cFvJ7wIrobupGktEksw5pk=
X-Received: by 2002:a25:d388:: with SMTP id
	e130-v6mr5889903ybf.224.1522358616083; 
	Thu, 29 Mar 2018 14:23:36 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:a25:d105:0:0:0:0:0 with HTTP; Thu, 29 Mar 2018 14:23:35
	-0700 (PDT)
In-Reply-To: <CAHUNapQP=2OYu6qjf5QLmMbcurXRFo_O1fWg0_oiqCXDZykccA@mail.gmail.com>
References: <CALbNGRRA3Ev3mPT4ZDRO_koC_uwVWy4qXc8onJN5nSeXnE3JRg@mail.gmail.com>
	<CAHUNapQhvr8UWBuF-Z5y0ojhsfF=fUU3nfgmRdxNGi4iKdkbqA@mail.gmail.com>
	<CAMKF1sonaNhe0jznAaVFySa5z-JOBdqxDRjifq-F04kra=_rfg@mail.gmail.com>
	<CALbNGRR0qo=yS2dop-3pfpAZVSC9NekDyg_aFCzURs7NM3UGvg@mail.gmail.com>
	<CALbNGRTKdu+H4eW8U1D4FxM9+LjfoOeZUC0c=irJyHmK69bdMQ@mail.gmail.com>
	<CALbNGRS06u3NTU=2XYRiga=B_rPj_rNyLwv2dC8hRUkx=mJt+A@mail.gmail.com>
	<CAHUNapQP=2OYu6qjf5QLmMbcurXRFo_O1fWg0_oiqCXDZykccA@mail.gmail.com>
From: =?UTF-8?Q?Andreas_M=C3=BCller?= <schnitzeltony@gmail.com>
Date: Thu, 29 Mar 2018 23:23:35 +0200
Message-ID: <CALbNGRTifa4-1SW2+zNCB_1a6+wHAjAYigMA1chrNMFiDb15Kg@mail.gmail.com>
To: Trevor Woerner <twoerner@gmail.com>
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
X-List-Received-Date: Thu, 29 Mar 2018 21:23:37 -0000
Content-Type: text/plain; charset="UTF-8"

On Thu, Mar 29, 2018 at 11:05 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> I've seen the 'Modifier 0x0 vs. tiling(0x7000000000000001) mismatch' error
> and blank screen hundreds of times while working on getting chromium-x11
> accelerated. It would happen if chromium was trying to use the system
> gl/gles libraries instead of the ones it builds.
Then you should give that patch a try - change is in mesa-megadriver
package (building images after mesa changes takes LONG...)

Some appetizer: glmark on mesa 17.1.7 reports 110 / glmark on mesa
17.1.7 reports 145!

As said: will post this to mesa mailing list but for today I'll just
dance on fast-nude-horse-party :)

Have fun

Andreas

