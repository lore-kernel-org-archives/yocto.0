Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 65C7BE00975; Wed, 14 May 2014 07:43:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=RCVD_IN_DNSWL_NONE,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.192.51 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail-qg0-f51.google.com (unknown [209.85.192.51])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 96877E006EF
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 07:43:49 -0700 (PDT)
Received: by mail-qg0-f51.google.com with SMTP id q107so2981088qgd.10
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 07:43:49 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=ivchXi6jbRyqqjHgwvSI65KJr6kHTWFFeaB2mZhb/1A=;
	b=j5bP4x6Kixj1BovKMlaj1FO2sNuJ33FgRRtNeQ0f6bL8kmHxE3jZmlQtEQnbXgn5ru
	IsZ0SyEpGRFQ9sr17w7cxA46C/3eGu1QcGE/wdbCA2zx9gbxMDBZqOZXYvwR85f6ol37
	2SL5DcKF+fZMqlRJSEB68bfeoZ6JJCE+Oly4V6v1wRffQe9GyV0nd+C2ASVjhBsK2EmM
	X7FY2/6jcfkqqq2GIdDslvR7PCwYH+YxtmwJzgIbTXMFTe2ZELpEG5oVH0VA3+BYCjN7
	JRbhtNU1R3CKISazhPiC2Fp5tiwdVcjMTHTVVjy1l1GCZImGRS/5u+V0lCliynRN7siM
	Llww==
X-Gm-Message-State: ALoCoQloZ4rImjzTZfLCXaagGyXUVdq9z0n7e7FFVGPAPps4mvmlNeKvRxCyeewj/sBmyYHW+MYi
X-Received: by 10.140.25.37 with SMTP id 34mr6193416qgs.60.1400078629321; Wed,
	14 May 2014 07:43:49 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.101.77 with HTTP; Wed, 14 May 2014 07:43:29 -0700 (PDT)
In-Reply-To: <lkvuuu$eil$1@ger.gmane.org>
References: <lkvpl2$e8q$1@ger.gmane.org>
	<1400074572.84934.YahooMailNeo@web122502.mail.ne1.yahoo.com>
	<lkvsj2$vof$1@ger.gmane.org>
	<CAJTo0Laq27nBx+vPbch=PQigAhvRTMKiM7jkKUYHWgxDfgnSEw@mail.gmail.com>
	<lkvt3i$bhu$1@ger.gmane.org>
	<CAJTo0La4jbY+7Tcgf+vf6z1gaHo1tru_Dx8QGx9KLOfdMk2C9Q@mail.gmail.com>
	<lkvu7b$qf$1@ger.gmane.org>
	<CAJTo0LZM1BAkH4BHS8=nn86MfVPah5U-HxCGbHyCLjR5XjZXwg@mail.gmail.com>
	<lkvuuu$eil$1@ger.gmane.org>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 14 May 2014 15:43:29 +0100
Message-ID: <CAJTo0LYYV2yREg4EV5CtKguZPg0dfC-BnXG=NB0Bei6Oh2d-Vg@mail.gmail.com>
To: Neuer User <auslands-kv@gmx.de>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Best way to remove DISTRO_FEATURES?
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
X-List-Received-Date: Wed, 14 May 2014 14:43:55 -0000
Content-Type: text/plain; charset=UTF-8

On 14 May 2014 15:35, Neuer User <auslands-kv@gmx.de> wrote:
> Strangely, when adding the "DISTRO_FEATURES_remove" to local.conf
> instead of making a new distro, bitbake does not recompile everything?!

Well, there's some logic to avoid rebuilds if the distro features
change in a way that the recipe *can't* change, but changing the
distro name impacts *everything*.

>> Half a day for a build suggests you're building in a VM or a slow
>> laptop: I recommend using a desktop machine with plenty of RAM.
>>
> It's a VM, but just for management purposes. The host is a core-i7
> desktop machine. However, I do have Qt5 and this alone takes app 1-2
> hours to build. (Actually, only Qt5webkit alone takes more than half an
> hour). :-/

Oh, WebKit, fair enough.  :)  Doing it outside of the VM is advisable,
but try giving the VM more memory: pretty sure my average i7 can build
webkit quicker than that.

Ross

