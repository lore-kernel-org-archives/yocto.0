Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 84C2FE007DC; Fri, 26 Sep 2014 14:55:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.51 listed in list.dnswl.org]
Received: from mail-qa0-f51.google.com (mail-qa0-f51.google.com
	[209.85.216.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E267E006DB
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 14:55:10 -0700 (PDT)
Received: by mail-qa0-f51.google.com with SMTP id j7so6262955qaq.38
	for <yocto@yoctoproject.org>; Fri, 26 Sep 2014 14:55:09 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=Aw6tvEIl0qkrFxNl8/FHmpgX2ev/zszZDXtiqsLa3Ys=;
	b=C6FzvSUsHzy2e53imF6aiVVb+fTkEghXWicgbdUzHC/N4LFk+AIwxP3oeeq1yM7hAI
	+RLNMs7/JHATxLrE31D1cj9fzz6iWiCtEsgOVQBI1HITdYHlPmUrplb9fVpeYzRUpuwj
	jSDlt15yvLgShy7f7+6IbiZh51D1UtUjAo+ym5QVLVKP7Ztwiu7zuny3frpSajWoh69x
	8QOXpNuPZDlTArdE3ZV3340Z7gM6j6xzmogotj5Gum4pJ23kvAIuX8p3B9gSYX4p2FHu
	AkOzpSmDM0I7gnD99bIDRspNdsoLn5uHpEyiqyjU+9jdg9ZmTpSz7rN2L4yb2vly+/nv
	tCug==
X-Gm-Message-State: ALoCoQn41/nQBsxldOG4VY+NXYAM2Ot/URS4gbYduV30gs0ucVuDtK2jTg1a75ibsq+llO3kzCpC
X-Received: by 10.224.103.194 with SMTP id l2mr33411641qao.93.1411768509769;
	Fri, 26 Sep 2014 14:55:09 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.34.180 with HTTP; Fri, 26 Sep 2014 14:54:49 -0700 (PDT)
In-Reply-To: <30C2D590D16A5C46ADFE6521910377982FDD6F1C@AZ-US1EXMB03.global.avaya.com>
References: <30C2D590D16A5C46ADFE6521910377982FDD658D@AZ-US1EXMB03.global.avaya.com>
	<CAJTo0LZHQDW6ALvgvZZQ2snwd36TA5Ug6sKTnMWLyfUTq5GF1A@mail.gmail.com>
	<30C2D590D16A5C46ADFE6521910377982FDD6E5A@AZ-US1EXMB03.global.avaya.com>
	<CAJTo0LankC7Z_KZREj-eNciRo2RVus+Y5yc-V8dCT38mn4obbA@mail.gmail.com>
	<30C2D590D16A5C46ADFE6521910377982FDD6F1C@AZ-US1EXMB03.global.avaya.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 26 Sep 2014 22:54:49 +0100
Message-ID: <CAJTo0LYbRDv=qD23CTEFSkoEy3Mudex04SScTHezTour=+LHAA@mail.gmail.com>
To: "Vuille, Martin (Martin)" <vmartin@avaya.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Forcing fetch task when source changes
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
X-List-Received-Date: Fri, 26 Sep 2014 21:55:23 -0000
Content-Type: text/plain; charset=UTF-8

On 23 September 2014 16:46, Vuille, Martin (Martin) <vmartin@avaya.com> wrote:
> Very odd.
>
> Our BSP vendor has configured BB_SIGNATURE_HANDLER to use OEBasicHash,
> I see hashes in the stamp file names, if I change the metadata itself the change
> is detected and the tasks are run again, but changing the content of a file named
> in a "file://" SRC_URI has no effect.
>
> Any ideas?

None, sorry.  Possibly you've found a bug in the 1.2-era hashing code.
Can you lean on your BSP provider to stop using 2.5 year old releases?
:/

Ross

