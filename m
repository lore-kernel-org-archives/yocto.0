Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 901FCE00C44; Wed,  1 Nov 2017 14:19:11 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.83.65 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.83.65 listed in dnsbl.sorbs.net]
Received: from mail-pg0-f65.google.com (mail-pg0-f65.google.com [74.125.83.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CA101E00AAF
	for <yocto@yoctoproject.org>; Wed,  1 Nov 2017 14:19:09 -0700 (PDT)
Received: by mail-pg0-f65.google.com with SMTP id p9so3162806pgc.8
	for <yocto@yoctoproject.org>; Wed, 01 Nov 2017 14:19:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=A6eJpV4clS0jwuIUZNwdwxYtoHkLTJHeyXkoUNPLJ2E=;
	b=YgKV2f7Vxl+lOfibRP/n3rx9e1NHGbEOOp/eQv6tDz3v6g5ARs/JueBnEsp7aTY9j9
	TyrL1uC2A7lG1OL1vhql6F+Ey+8fiBpRV9/EY5KXg2V9oIPIIUeepB39qQZvdcNMfKYk
	wVVwMaajhlvHBfpbGPmUm4dbwxlilllKzmXf97T2oAe9WmSqnTXJT563tRjDWoZLA+dY
	kFCpZwGS7+HCXhk3nQd128Ha+AIW+0F8mfzGggGOQR7Mywj9UQqY+HA7Miy6OZ85NKmO
	BGLaLyEZMUKeJ4DJhPwUc2R23hMZYjO2MMGs0RILY+Fs+tGZ9HoHD8yVX4yhXJ/nuAoa
	HISw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=A6eJpV4clS0jwuIUZNwdwxYtoHkLTJHeyXkoUNPLJ2E=;
	b=gdZzr8s9/U7hOoAvKlGq6RSIuhyJTtJQfyquCNTe7iu4oywyaUlNqDUmT9y6rS6Y4S
	1hbLUtc8OixSRg3jUdTcEW3DR6CZ3Y7Xm8RJSKMDOSQmNtD1deGPk3FAA/iXvACoAsHx
	9lSeQdZuPrKtjytex+UNq+fY5tS/dGwLf/c+XzFZtmFOeidzbM5SU423CqqwFbmSRIdl
	HFXjJHvxZ1RzX3pdpj42KeSZ+McoRKyhiT0vbNowbf3bs2vTzFli1yn51rnf8Y3xrwA1
	cOBeHFA0UiGI+xeA3CQPdot/Qg9JtBHaLsoOM2OzuEnKOxkPk0B2YR3FyprCOoZ9zoAj
	MpLg==
X-Gm-Message-State: AMCzsaVLP4Ntht6vJGnCbfJqECJsohceOrl9GWAKJUoKUWlm1WJHuCvU
	bYxPEqzmC+n85LlmKNzJjyxk1PgO0agKkwnfSX4=
X-Google-Smtp-Source: ABhQp+RyiI5PC3YLOVbG0DNCz0tU2gUNO5PT31Auj/PzMqR6I0k0WUOqIpubRv0r/eFfeF6jGAXaEMlT10wLDfCuBmY=
X-Received: by 10.101.74.129 with SMTP id b1mr1151743pgu.341.1509571148826;
	Wed, 01 Nov 2017 14:19:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.187.66 with HTTP; Wed, 1 Nov 2017 14:18:38 -0700 (PDT)
In-Reply-To: <CAFeBWL7EzxmSUHpgb80rwB+cpkKuiZa7gKC0MHVgm5Y9QJ76eA@mail.gmail.com>
References: <CAFeBWL7V1TNoGj4gpc5QkQ4mraFwUmvt77sAAxyGTmrivTQ-Mw@mail.gmail.com>
	<1509546479.13007.35.camel@collabora.co.uk>
	<CAFeBWL79uCL0tci-9YDTeUYLFZGoND1t7yx5rMi3rPJFNt9iOg@mail.gmail.com>
	<CAJTo0LbcS5eG2SxZpWiEXvw0+Nh5DPBJ9gxjb50S9ZfnNAKnwg@mail.gmail.com>
	<CAFeBWL7EzxmSUHpgb80rwB+cpkKuiZa7gKC0MHVgm5Y9QJ76eA@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 1 Nov 2017 14:18:38 -0700
Message-ID: <CAMKF1spqqN32T6kXHwCDzG3tXFFA3YE8u_rPMgQxZZ9br7P_Tg@mail.gmail.com>
To: Adam Lee <adam.yh.lee@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Checking for xwayland
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
X-List-Received-Date: Wed, 01 Nov 2017 21:19:11 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, Nov 1, 2017 at 2:03 PM, Adam Lee <adam.yh.lee@gmail.com> wrote:
> I believe something is incorrect in my distro level configuration. Apart
> from including x11 and wayland in DISTRO_FEATURES, what else can I check to
> build core-image-weston?
>
> build@6e35408e8fa5:~/tisdk/build$ bitbake core-image-weston
> NOTE: Started PRServer with DBfile:
> /home/build/tisdk/build/cache/prserv.sqlite3, IP: 127.0.0.1, PORT: 42704,
> PID: 13401
> Loading cache: 100%
> |###########################################################################################################|
> Time: 0:00:02
> Loaded 3286 entries from dependency cache.
> Parsing recipes: 100%
> |#########################################################################################################|
> Time: 0:00:01
> Parsing of 2538 .bb files complete (2537 cached, 1 parsed). 3286 targets,
> 272 skipped, 0 masked, 0 errors.
> WARNING: No recipes available for:
>
> /home/build/tisdk/sources/meta-openamp/recipes-bsp/device-tree/device-tree-generation_%.bbappend
> NOTE: Resolving any missing task queue dependencies
> ERROR: Nothing RPROVIDES 'weston-xwayland' (but
> /home/build/tisdk/sources/oe-core/meta/recipes-graphics/images/core-image-weston.bb
> RDEPENDS on or otherwise requires it)
> NOTE: Runtime target 'weston-xwayland' is unbuildable, removing...
> Missing or unbuildable dependency chain was: ['weston-xwayland']
> ERROR: Required build target 'core-image-weston' has no buildable providers.
> Missing or unbuildable dependency chain was: ['core-image-weston',
> 'weston-xwayland']
>
> Summary: There was 1 WARNING message shown.
> Summary: There were 2 ERROR messages shown, returning a non-zero exit code.
>
>
>
> On Wed, Nov 1, 2017 at 12:53 PM Burton, Ross <ross.burton@intel.com> wrote:
>>
>> On 1 November 2017 at 15:58, Adam Lee <adam.yh.lee@gmail.com> wrote:
>>>
>>> Thanks Fabien, I definitely don't have Xwayland in my rootfs. My manifest
>>> is missing xserver-xorg-xwayland as well.
>>>
>>> Which image are you using? I thought including of  "x11 wayland" was
>>> sufficient. Perhaps not..?
>>>
>>
>> Are you refering to DISTRO_FEATURES?  That just controls what is
>> *available*, not what goes into a particular image.  As Fabien said,
>> core-image-weston is the classic example of an image that has Weston.
>>

you need opengl in DISTRO_FEATURES as well. additionally
weston-xwayland would need wayland and x11 in DISTRO_FEATURES

>> Ross
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

