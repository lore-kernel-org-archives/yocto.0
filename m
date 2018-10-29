Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8507CE00BBF; Mon, 29 Oct 2018 08:01:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.167.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-oi1-f196.google.com (mail-oi1-f196.google.com
	[209.85.167.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 629ECE00A1A
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:01:03 -0700 (PDT)
Received: by mail-oi1-f196.google.com with SMTP id e3-v6so7332898oiy.6
	for <yocto@yoctoproject.org>; Mon, 29 Oct 2018 08:01:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=3WKXzOrMyf4oNvJ3zTaa/zeJshlrpr0LCarpnHUpcjI=;
	b=JcNz4f7FFExJqcEZ/sbVFBr6IvUKEtcUC/Ltrohw5jBzXSFP/1yH5FAghUpbTaC8qD
	LiT2yHjagfB2xgEJjOSzdlVEPbAkZVGdRiiJybzYCZ51Psj8ixMY/oWT8F2SnSui/21T
	WlOBADxs7RJHAM7XKV3Dn0j1x37dZ2/5Yfi0FPw4KJg30kA7cmKiT5iL4rlSjFhOlyB9
	HBWrCE6ZbKYmW21PZuVfWZnby+xNfwD3uupqtsbJKxvPLOLid/BEB+5DZFMs4Q64DiH+
	hJJoGHlylvVsA6UisUHpBDuduOggaSon9CxPIZSzqEhgqrUgBKbokcpKaAjANbk6e1Jw
	r6iA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=3WKXzOrMyf4oNvJ3zTaa/zeJshlrpr0LCarpnHUpcjI=;
	b=sHz//0bm+CpvSfiPyi2snUnaojxSxs9oxb7glo5XXJjV5hkexvQ4UDu3gpVivrEvou
	EEHFjaQCECid1eZtuQ6ZSgdve1geEUaqqRDdjX9hbNoebTk/DDivyjf37EPrtp9LhX97
	mytdkAULfXaWfXQ9AgYjAdc2N6A2obonJKGGGWBNh2lVbbBUUNqa+Y7gGPKBKnBYt5U/
	QC0bsTuxJWkhuKJaZ6nZ5z69xQM8HwEx88udUPKGylLaytmxz959QiDDCTaRvW2ypuI8
	k/fIDm8BnxPCFV0+P6pR0ILq77mxpE1gfRTUspKQvKhuNvRaC/mJQiAkfyuIFoCwNVsw
	wNxg==
X-Gm-Message-State: AGRZ1gJIsft5s8mJCOB5YJkJOVGbd390ZvebasVr7wPl7Ez1n7TF74go
	pXZLfMLqrqjooeOqY26vwfUBuHLp+F12ZjunKuKwBQ==
X-Google-Smtp-Source: AJdET5dM2EgAYTp+TNb8hqWmrK/iqoHGpef8qAgJZXdISOmOBJLS4smoCmXEmOQX2S3Ayfr+BrtAzDbVnRvauJApLMk=
X-Received: by 2002:aca:ed82:: with SMTP id
	l124-v6mr8409391oih.188.1540825262564; 
	Mon, 29 Oct 2018 08:01:02 -0700 (PDT)
MIME-Version: 1.0
References: <CACKFPN2C-=XWKStypsyUHr0ddyPrLX9-y4qJGJ+zO98=-F9vWA@mail.gmail.com>
	<CAJTo0Lb_=1H7E9K7ykakQTERt4n9j5b58Q=GV3cQwDCDhpLwvg@mail.gmail.com>
	<CACKFPN1miuCkVJDGjAKTD8=dMZ-Qy+QTQHwYp+GMOX_2K0VQ1w@mail.gmail.com>
In-Reply-To: <CACKFPN1miuCkVJDGjAKTD8=dMZ-Qy+QTQHwYp+GMOX_2K0VQ1w@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 29 Oct 2018 15:00:50 +0000
Message-ID: <CAJTo0LaVNeL3QS5LZw40sA22G9Zx=fTOqu0hYd-vmU0sOr7fPg@mail.gmail.com>
To: dimtass@gmail.com, Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: nativesdk-libxcrypt-4.0.1 is failing
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
X-List-Received-Date: Mon, 29 Oct 2018 15:01:04 -0000
Content-Type: text/plain; charset="UTF-8"

Yes, it needs to be backported.

Ross
On Mon, 29 Oct 2018 at 14:58, Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>
> Hi Ross,
>
> thanks for the reply. Shouldn't these kind of fixes that break a poky branch (like Sumo now,
> which is still in use) be merged also to the affected branches and not only future branches
> like Thud?
>
> Also, for the record anyone who has this issue, just create this file in you layer:
> recipes-core/libxcrypt/libxcrypt_%.bbappend
>
> And then add this single line:
> SRCBRANCH = "develop"
>
> Regards,
> Dimitris
>
> On Mon, Oct 29, 2018 at 3:46 PM Burton, Ross <ross.burton@intel.com> wrote:
>>
>> The fix is already queued in master-next, so will be n master/thud shortly.
>>
>> Ross
>> On Mon, 29 Oct 2018 at 13:44, Dimitris Tassopoulos <dimtass@gmail.com> wrote:
>> >
>> > Hi all,
>> >
>> > it seems that the libxcrypt recipe in poky is failing because the git repo
>> > doesn't have a master branch anymore. The default branch has changed
>> > to `develop` and the recipe can't fetch the repo when I'm building the SDK
>> > for my image.
>> >
>> > A temporary solution is to override the URL with a bbappend, but in general
>> > this has broken the recipe. This is the error that I'm getting.
>> >
>> > WARNING: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Failed to fetch URL git://github.com/besser82/libxcrypt.git;branch=master, attempting MIRRORS if available
>> > ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Fetcher failure: Unable to find revision 089479bb24acd168613757a6f12d63caa95416b4 in branch master even from upstream
>> > ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Fetcher failure for URL: 'git://github.com/besser82/libxcrypt.git;branch=master'. Unable to fetch URL from any source.
>> > ERROR: nativesdk-libxcrypt-4.0.1-r0 do_fetch: Function failed: base_do_fetch
>> > ERROR: Logfile of failure stored in: /rnd/yocto/nativeos/build/tmp/work/x86_64-nativesdk-nativeosmassdk-linux/nativesdk-libxcrypt/4.0.1-r0/temp/log.do_fetch.19081
>> > ERROR: Task (virtual:nativesdk:/rnd/yocto/nativeos/sources/poky/meta/recipes-core/libxcrypt/libxcrypt_4.0.1.bb:do_fetch) failed with exit code '1'
>> >
>> > P.S another good reason to enable the own mirrors early in the development phase.
>> > --
>> > _______________________________________________
>> > yocto mailing list
>> > yocto@yoctoproject.org
>> > https://lists.yoctoproject.org/listinfo/yocto

