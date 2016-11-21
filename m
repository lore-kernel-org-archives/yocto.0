Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 40B68E00C49; Mon, 21 Nov 2016 08:06:20 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.193 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.216.193 listed in list.dnswl.org]
Received: from mail-qt0-f193.google.com (mail-qt0-f193.google.com
	[209.85.216.193])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6CA2CE009B1
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 08:06:17 -0800 (PST)
Received: by mail-qt0-f193.google.com with SMTP id n34so25859598qtb.3
	for <yocto@yoctoproject.org>; Mon, 21 Nov 2016 08:06:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=WLK539oMGqoRbfEvc6qRv3ErY6oEfp7hVN4AfVuMHNg=;
	b=ZxSP4SWm1TLkbAoSPzClXeZSL1ZYhVuZekOFeeGgeTnP7iGg2z5A0V6u/9se+3Qd/9
	h6AtXkwNZcxlJPAC7kUSsS5bJ/uTpWxq4v6REhWJWxYGFsRX2fgGXzKATlTj2JDmx9vi
	mc4p8xOyATHIp62PWLyFTYgN6Wm92rotptjG9IMJVSG8fjTLgwr/Q4C4GVGps7e/sDRf
	oIfZ2lYl8Xun7YFGyVJGonplLz8qw+X/wZNJEBwvUGEYDbrdRqK19qonndyrz1sQRQXJ
	vHRE1/xELN7S/ml7LrAWaZaKzkZDjaBU6xpYZq2KUJ6jQx97x/v/EFa5QBP9k40VfbKn
	iFsA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=WLK539oMGqoRbfEvc6qRv3ErY6oEfp7hVN4AfVuMHNg=;
	b=Mw69W59hDBoJd8Y8ru85KVevUACrk/6YX4eVftWr/2+V0CA+zy2+Dun5pt/8+SHCWF
	ajZj57kGV+h695kZyZ7lUSsxsqo0tJjU1wlj+NmICj/hFq7OQHiQiJMVcjEnu2Qhdl1k
	SSfmUHoA8SUhfGgJRZlqQ/ebQoKYHueWEU9cknEoS8vsVNkQNPa9UytjA/8dxHyDnwG3
	75LhkX2zG9agT3WNyPBuUB790yGGMgkaqUY+dWvYd8PvXgkQ0Nd1MI78iPyY6etRoJmF
	XTgQRzHlO1teiseMGHMWVduNoCgi4x4nwB/7W0jyq67WQP+8yHEp4uLhHS08PteDZO0J
	YtRQ==
X-Gm-Message-State: AKaTC01aQYuNsLdwy1HB0Ie54cszZ2D45wGb+IZRdminCJEkDhtYml/i7sdAOoNUrXcN80jnrXR7CRhVpNtvAg==
X-Received: by 10.237.35.181 with SMTP id j50mr9613289qtc.138.1479744376571;
	Mon, 21 Nov 2016 08:06:16 -0800 (PST)
MIME-Version: 1.0
Received: by 10.237.32.99 with HTTP; Mon, 21 Nov 2016 08:06:16 -0800 (PST)
In-Reply-To: <CAJTo0LaCgn_xvLvaNgZAiNC0AX3b1j_8Us7S3HMVRM790wpcyA@mail.gmail.com>
References: <20161118213046.GB26177@openSUSE-i7.site>
	<CAJTo0LaCgn_xvLvaNgZAiNC0AX3b1j_8Us7S3HMVRM790wpcyA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
Date: Mon, 21 Nov 2016 11:06:16 -0500
Message-ID: <CAHUNapRFQJAeEcUKnqfNQYa8rb_RbkJ-fpU7qxgBdFNTnD5Vbw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: uninative workflow
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
X-List-Received-Date: Mon, 21 Nov 2016 16:06:20 -0000
Content-Type: text/plain; charset=UTF-8

Excellent! Thanks, Ross, for the explanations :-)

On Mon, Nov 21, 2016 at 9:40 AM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 18 November 2016 at 21:30, Trevor Woerner <twoerner@gmail.com> wrote:
>>
>> To be honest, I'm not entirely sure what the uninative stuff is
>> (explanations
>> or pointers to explanations appreciated!) but I'm trying to figure out how
>> to
>> work with it.
>
>
> It's a prebuild glibc designed to remove the differences between host
> distros, meaning that native sstate objects can be shared between host
> distros.  It used to be opt-in for convenience but there's a nasty build
> failure.
>
>>
>> Previously, generating an eSDK didn't require a uninative-tarball, but
>> now,
>> apparently, it does? Any idea why?
>
>
> b59eee7bebd413c7abe5626f69508e1fe47dd0ac:
>     classes/populate_sdk_ext: require uninative
>
>     It seems that possibly due to OE-Core commit
>     ac59063bee0e32d0737340974f657341717a6abe, binaries produced without
>     uninative aren't compatible with the uninative glibc. I did try earlier
>     to ensure that the eSDK could work without uninative since the default
>     configuration in OE-Core does not enable it, but it seems like I didn't
>     go far enough. Given the practical considerations, just give up and
>     require uninative to be enabled in order to build the eSDK. I'm not
>     particularly happy about this, but I don't seem much of an alternative.
>
>     Fixes [YOCTO #10566].
>
> ac59063bee0e32d0737340974f657341717a6abe:
>     uninative: Add a fix for icu-native to use the correct ABI
>
>     If no -std= option is passed to icu's configure, it defaults to CXX11.
>     This isn't what we want for uninative, so pass an explicit option
>     which selects an older ABI on newer versions of g++.
>
>     This avoids the __cxa_bad_array_new_length@CXXABI_1.3.8 symbol
>     being used.
>
>>
>> So now, in addition to building the uninative-tarball before being able to
>> build an eSDK, it also appears that I have to edit my local.conf to tell
>> the
>> build that I'm using it, where to find it, and its md5sum. The weird thing
>> is,
>> I could do "bitbake uninative-tarball" all day long, and every invocation
>> of
>> that command will generate a tarball with a different md5sum even though
>> the
>> configuration for each build is exactly the same!
>
>
> You're Doing It Wrong.  Generate the uninative tarball once, put it
> somewhere central, update configuration file.
>
> Or, just do what poky does:
>
> require conf/distro/include/yocto-uninative.inc
> INHERIT += "uninative"
>
> That uses the uninative tarball that is hosted on the yoctoproject site, so
> you only need to build your own if you don't want to trust external
> binaries.
>
> Ross

