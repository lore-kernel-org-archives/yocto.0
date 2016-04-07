Return-Path: <armccurdy@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8CC36E00B37; Wed,  6 Apr 2016 17:59:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (armccurdy[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CA21E0096D
	for <yocto@yoctoproject.org>; Wed,  6 Apr 2016 17:59:52 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id u206so66558379wme.1
	for <yocto@yoctoproject.org>; Wed, 06 Apr 2016 17:59:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc; bh=Pua3uuzobX8tBUliPPb+BcVM/3/FGFiXtHGk7Sc0AkQ=;
	b=npDDRRmRYK79qCFp/anE9wLjtj72ppFNV0fX18+wRyX7oUjxX+cf9wHnTc0xKYS1qn
	wy7yn3e9gXw4SlxOnXPFOKdgJgPYtY/fzSMxXjXrhcjFHqtxVI0K53c93ynT6iPTnbG7
	c8T96WqICPkkwFFxIKMoQMfDwlqUH8VmybuwA5oIAZ7YS5DGcG4qQBj986tHi2tZVtfa
	2SA1SfdproI/bjbwyoPihWEs28g/od/fH1G7LjhyHNWdS8CwP7WTk8jE2dWIbQYDZOKo
	c6kDLLC7OVjHrqf0BE+BTOIyaCv6zY6OkgAHFquMa3qTdX7WDjN0Ndy2l3GgQ1fay80X
	ZN4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc;
	bh=Pua3uuzobX8tBUliPPb+BcVM/3/FGFiXtHGk7Sc0AkQ=;
	b=cHwk02YcSK9gh6q03nazpPc3MUoytDG3hQbj0BJSSnaqcl4it0UvfkP6dJniFv3Ii4
	DrxtRNKe0d/bmd4LOFcwbC8ueQuj2xtYAagN26Dk/7auVEO8kEJ32GYJ3AUGJaRcSxDU
	aQdV1QvFbOa23hSsqzbklb4Fxpd9CKIjlJfkuVP4KDW7F29r0h9sozVkS7OeI/H+M+kA
	QmD/rGOV69hsTdE9vjaEPWYh/QQMroAbelVgz8PloAqqFhPmETtmCkUxc10Lv1M8J6Du
	reJfBWUvnHpk47RjRHThJW9SCA7+6aHoqdY4o7Vb9eH5cm9pj7raJbdBcWEiLJGZzG86
	HILg==
X-Gm-Message-State: AD7BkJIuUbA8aqf4p7ARqtrsDskU2IXvzqYYOTSlj0Hg4vE8CGYrhgTW9B3TFswgkMp+3KdXGrknx1KWeuRPOg==
MIME-Version: 1.0
X-Received: by 10.194.57.168 with SMTP id j8mr243733wjq.43.1459990791860; Wed,
	06 Apr 2016 17:59:51 -0700 (PDT)
Received: by 10.194.201.104 with HTTP; Wed, 6 Apr 2016 17:59:51 -0700 (PDT)
In-Reply-To: <CAJTo0LZ3jZqs5hZw85+=1sDab-4XK00_YW1Ts6E3Ukgc574Lvg@mail.gmail.com>
References: <CALRMKQr4A0r2Mseu1uuQaZXpWKokjQ=ZizfkatR4J2mjpQpSvw@mail.gmail.com>
	<25644105.gyxDGl902X@rjs-zotac.streifs.net>
	<CALRMKQo7GPHQLPLTm_dO9uoQgBhGriNW9GFBoG6VOPfaqCeHAA@mail.gmail.com>
	<CAJTo0LaW9jWNK8x_MuxoSjJUsWVTBTA5mN4EtmaFFYLhAC4Edw@mail.gmail.com>
	<CALRMKQrWwR03YyenAefS1GaPQ34GhmRCz0r5GS=rR+1gx45Jqg@mail.gmail.com>
	<CAJTo0LYYRHjZGezVmKBzhv9tEtEJmAEDdMPGMCmcFy==xQVOXQ@mail.gmail.com>
	<CALRMKQri=KgPhxk-0iTUxD59PU-K0i6bfvcxkVF6i_J7UX_Agw@mail.gmail.com>
	<CAJTo0LYQO0GhOL1otLHBj7QR-b2uAxqH+CQjac_5DZT6R2_Zug@mail.gmail.com>
	<CALRMKQqD+DpqOP7HK1TPK8VY8ce6n-0wVAeSZWMa7zUWjX_nrQ@mail.gmail.com>
	<CAJTo0LZ3jZqs5hZw85+=1sDab-4XK00_YW1Ts6E3Ukgc574Lvg@mail.gmail.com>
Date: Wed, 6 Apr 2016 17:59:51 -0700
Message-ID: <CAJ86T=U++uBcuv1oAQVWFbwc3PCbz2Pf-VWmUqUStsRk8NNvvg@mail.gmail.com>
From: Andre McCurdy <armccurdy@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Rudolf J Streif <rudolf.streif@gmail.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Python do_install fails on QEMUX86-64 and corei7-64 under Debian 8.0.3 isolated station
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
X-List-Received-Date: Thu, 07 Apr 2016 00:59:56 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 6, 2016 at 3:23 PM, Burton, Ross <ross.burton@intel.com> wrote:
>
> On 6 April 2016 at 20:55, Ronald Oakes <ronaldo@brc2.com> wrote:
>>
>> For what it's worth, I may be able to work around this by using the
>> Poky-Tiny distribution, which is closer to what I'll need for the
>> minimalist system we need in the end.
>
> If you need a minimal system then you might want to look at oe-core from
> git, which has musl support integrated.  musl appears to be superiour to
> uclibc and we'll be releasing 2.1 this month.  There's a good chance that
> uclibc will be removed from oe-core entirely for the 2.2 release as musl is
> only slightly larger than uclibc but more capable.

You could also perhaps try setting DEFAULTTUNE to core2-64 instead of corei7-64.

If your development system is able to run binaries compiled for core2
then the problem might just become hidden again.

Out of interest, what is the CPU in your development system?

>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

