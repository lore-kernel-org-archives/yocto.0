Return-Path: <chmorgan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1F389E00AA6; Wed, 28 Oct 2015 00:32:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (chmorgan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f172.google.com (mail-ig0-f172.google.com
	[209.85.213.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6F243E00A9A
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 00:32:34 -0700 (PDT)
Received: by igdg1 with SMTP id g1so100840988igd.1
	for <yocto@yoctoproject.org>; Wed, 28 Oct 2015 00:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=4DMiFPiIam0hwgRrMiqqHA9q5K44+4olnMFEKv1izzo=;
	b=ougUMyFR7dSpuWfmjw+IxA69lcthh3X9lS1NQUyM7AshVjBMV3Tm6+xH50e+OCkOg4
	vOeR1ltwYbhuqeEv5G7j6Dezvp5p7F7HKxbywr0wsF+8MbmvsS19xMDEsk4WInX2tK8Y
	Z8h6SFP65/4QB5oW3j+aWWBiPKBrRg2KLZW192ZijgUs0COtD1DBwL01BozL406NLIl2
	TI3mfD9hAQpDYg2rNep5YrClr9totre0SyR2LoCcBYDr/nVnsk728ZSSyaVaV3z9omfD
	v/9dc5FT3uwWnl56T71gg4iGC7kYGq2UKZCXEOYQsENozx++f3DBhom2FOBZJGFq69M+
	xMTw==
X-Received: by 10.50.124.6 with SMTP id me6mr1505376igb.20.1446017554211; Wed,
	28 Oct 2015 00:32:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.182.136 with HTTP; Wed, 28 Oct 2015 00:32:14 -0700 (PDT)
In-Reply-To: <CAOd_LFwgMqDUBKzxjs50G+=F0TgFg8ZuoCBX6jqs6p8fLFQibg@mail.gmail.com>
References: <CAOd_LFwgMqDUBKzxjs50G+=F0TgFg8ZuoCBX6jqs6p8fLFQibg@mail.gmail.com>
From: Chris Morgan <chmorgan@gmail.com>
Date: Wed, 28 Oct 2015 03:32:14 -0400
Message-ID: <CAAPegz397TCZgX_3AAdDKfBCSPX3x-b2kf29Q=43tYHTdCpWgQ@mail.gmail.com>
To: openembedded-devel@lists.openembedded.org
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [oe] OE/Yocto developer survey
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
X-List-Received-Date: Wed, 28 Oct 2015 07:32:38 -0000
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 26, 2015 at 3:18 PM, Cliff Brake <cbrake@bec-systems.com> wrote:
> Hi,
>
> I'd like to get some feedback on the following questions -- feel free
> to respond to list, or directly to me, and I'll withhold your
> name/company from any results.
>
> I would like to collect feedback until 2015-11-02, and will summarize
> the results after that.
>
> My goal with this survey is to get a sense for best practices and what
> is most commonly used among Yocto/OE developers so I can better advise
> clients using Yocto/OE.  Hopefully this will also generate some
> interesting discussions.
>
> How long have you been using OE?  3 years_____
>
> How do you use OE/Yocto?
> [x] product development
> [  ] hobby/research/education/yocto core developer, etc
>
> What distro do you use?
> [ ] Poky
> [  ] Angstrom
> [ x ] nodistro or custom (based on poky)
>
> How do you organize multiple git repos?
> [x] Git submodules
> [  ] Repo
> [  ] Other
>
> What packaging system?
> [  ] OPKG
> [  ] RPM
> [x] Other (none, just a single output fs)
>
> What GUI toolkits?
> [ x ] Qt
> [  ] Gtk
> [  ] EFL
> [  ] HTML5/JS
> [  ] Other
>
> What init system?
> [ x ] systemd
> [  ] sysvinit
> [  ] busybox init
> [  ] Other
>
> What libc?
> [ x ] glibc (I think, we don't appear to override DISTRO_FEATURES_LIBC)
> [  ] uclibc
> [  ] musl
> [  ] Other
>
> How do you develop custom applications?
> [  ] application-SDK
> [  ] devshell
> [ x ] develop on PC, test on target
> [  ] Other
>
> What language do you primarily use for custom applications?
> [ x ] C
> [ x ] C++
> [  ] Python
> [  ] Javascript
> [  ] Lua
> [  ] Other
>
> What do you use for Continuous Integration?
> [ x ] Buildbot
> [  ] Jenkins
> [  ] Other
>
> Do you use any any of the tooling projects
> (https://www.yoctoproject.org/tools-resources/projects) such as ADT,
> Hob, Toaster, etc?
>
> _______________________
>
> Reasons or explanations are appreciated, and please feel free to
> include additional choices/information you think are relevant.
>
> Thanks,
> Cliff


Company name currently withheld. Yocto being used to build the
software image for a consumer hardware product.

Chris

