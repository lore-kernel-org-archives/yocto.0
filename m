Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6EB26E006EC; Wed,  7 May 2014 03:24:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.44 listed in list.dnswl.org]
Received: from mail-qg0-f44.google.com (mail-qg0-f44.google.com
	[209.85.192.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0E012E003C7
	for <yocto@yoctoproject.org>; Wed,  7 May 2014 03:24:44 -0700 (PDT)
Received: by mail-qg0-f44.google.com with SMTP id i50so825825qgf.31
	for <yocto@yoctoproject.org>; Wed, 07 May 2014 03:24:43 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=b/EffmJC5OEXRbIl/OWECogp56S+ExIjQH9w5fmwiEs=;
	b=ie4e0LC93K9pn0GzI9+HBUZrPfpY7VUL3R4kq6j+WcOhawRK8K0OsDNSV96UlPrZHW
	GtgwVGF8WB0V/OXgV+qfkuhLDXVuPaVRxBHvfsn3/v+homvTFVTpwE/6uvk9pAANwZuV
	S+vART4ipl1zA32R/PnIPS8lKsug9I1KysvCeATjj4R+2Rlm79xJfCcjXMLsSIfa5Rb0
	ASw2DS4PlevVzUr0r948+kEWHRbXSlwL4MfrVkU1jYfq93UnmdtFD0YYkJHHRieFNaiW
	gSGiZFVboYpksCQOQq1vJ0P9u2OkRi4PpIl7892fbh5DJZ6IfDdt+wDlxwFA3rovUwjI
	J04A==
X-Gm-Message-State: ALoCoQnQBZhUGs/ClXMNcAkOfsMsph2fDrVncg2+EFa0GeCx+9uPQIFjfTkJAZB2ESm93DuNL7Cd
X-Received: by 10.140.48.161 with SMTP id o30mr59509798qga.68.1399458283494;
	Wed, 07 May 2014 03:24:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 7 May 2014 03:24:23 -0700 (PDT)
In-Reply-To: <lkcshi$dep$1@ger.gmane.org>
References: <lkcshi$dep$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 7 May 2014 11:24:23 +0100
Message-ID: <CAJTo0LZ7=Zs3pcP30htX7_GfpWoOvfYU-Cg-71T7pTuLkazGLQ@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: replace udhcpc
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
X-List-Received-Date: Wed, 07 May 2014 10:24:49 -0000
Content-Type: text/plain; charset=UTF-8

On 7 May 2014 09:57, Neuer User <auslands-kv@gmx.de> wrote:
> What should I do best on Yocto? Replace udhcpc with dhclient? If so, how
> should that be done?

Personally I prefer using connman for this, it does all the usual
hotplug and connect magic.  If size is an issue, you can disable the
3g and wifi DISTRO_FEATURES if you don't need support for that.

Ross

