Return-Path: <ross.burton@intel.com>
Received: from fmsmga101.fm.intel.com (mga05.intel.com [192.55.52.89])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7733E00283
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:37:46 -0700 (PDT)
Received: from mail-qc0-f180.google.com ([209.85.216.180])
	by mga01.intel.com with ESMTP/TLS/RC4-SHA; 18 Jul 2012 06:37:46 -0700
Received: by qcmv28 with SMTP id v28so837712qcm.25
	for <yocto@yoctoproject.org>; Wed, 18 Jul 2012 06:37:45 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:content-type:x-gm-message-state;
	bh=irlIA4hM5b7hx2A7nUnmSl0k0xhAphaH+73+SDBt4CU=;
	b=Vek53gD1CHhH0UfSdflsv/UsXpfqfJW7qvQp97UuQpbvVUH8Bot9ctMV6pLaS7kKqK
	UgLUnoJSI3PNWF9C7BXfMQu5nOrXXNjB8GmificaPuwBRD0D6YuJukLH9HFbQMR808oY
	lDq1ruNHIFHYUCq4dMcapft9oXze8dz4m4g3dW0ZB0vh5whIZbBjaHBSxBT7mLABJSTG
	sdrmh+v1QQkO0timA46mFYKunFE/do6MhxqDvMKHV6mM/qS/dA141A2KSl9s6e2KSpJu
	/arcYMHvDyfJbcNVB5vKLo5lJrnKoqOOTSf4vF4OPcME02CcbCE7xZmZ3ZyoC+taADZ0
	CCOA==
Received: by 10.224.177.1 with SMTP id bg1mr5894639qab.68.1342618665075; Wed,
	18 Jul 2012 06:37:45 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.229.82.74 with HTTP; Wed, 18 Jul 2012 06:37:24 -0700 (PDT)
In-Reply-To: <CAJTo0LbGL6hakXLgVf8SuK6A-VxgnJM7JtRJObd4_amdongwWA@mail.gmail.com>
References: <5006A190.6090508@freenet.de> <5006A6F6.3040208@freenet.de>
	<CAJTo0LbGL6hakXLgVf8SuK6A-VxgnJM7JtRJObd4_amdongwWA@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 18 Jul 2012 14:37:24 +0100
Message-ID: <CAJTo0LbKTyVPKjSxSYBqMj5u574O9YQoKwxgwysmr+hJsu6Azg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Gm-Message-State: ALoCoQmq5KDfgiLpnEX6ElWJK7Ff6at5QjAbccdqscQXP08vx/Yd8G+Trkl0hHOsTeR9HqeZVNmI
Subject: Re: [Solved] Re: Error: PATH contains '.' or '', which will break the build, please remove this.
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Wed, 18 Jul 2012 13:37:46 -0000
Content-Type: text/plain; charset=UTF-8

On 18 July 2012 13:13, Burton, Ross <ross.burton@intel.com> wrote:
> I'm working on a patch to display the parsed PATH so you'll see the
> trailing empty element in that case.

How's this?

$ PATH=$PATH:
$ bitbake core-image-sato
[...]
ERROR:  OE-core's config sanity checker detected a potential misconfiguration.
    Either fix the cause of this error or at your own risk disable the
checker (see sanity.conf).
    Following is the list of potential problems / advisories:
    PATH contains '.' or '' (empty element), which will break the
build, please remove this.
Parsed PATH is ['/home/ross/Yocto/poky/scripts',
'/data/poky-master/tmp/sysroots/x86_64-linux/usr/bin/i586-poky-linux',
'/data/poky-master/tmp/sysroots/qemux86/usr/bin/crossscripts',
'/data/poky-master/tmp/sysroots/x86_64-linux/usr/sbin',
'/data/poky-master/tmp/sysroots/x86_64-linux/usr/bin',
'/data/poky-master/tmp/sysroots/x86_64-linux/sbin',
'/data/poky-master/tmp/sysroots/x86_64-linux//bin',
'/home/ross/Yocto/poky/scripts', '/home/ross/Yocto/poky/bitbake/bin/',
'/home/ross/Yocto/poky/scripts', '/home/ross/Yocto/poky/bitbake/bin/',
'/home/ross/BUILD/bin', '/home/ross/bin', '/usr/local/bin',
'/usr/bin', '/bin', '/usr/local/games', '/usr/games', '']

ERROR: Execution of event handler 'check_sanity_eventhandler' failed
ERROR: Command execution failed: Exited with 1

Ross

