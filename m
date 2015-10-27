Return-Path: <kernel@tekno-soft.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 95A6CE0088C; Tue, 27 Oct 2015 01:39:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 363 seconds by postgrey-1.32 at yocto-www;
	Tue, 27 Oct 2015 01:39:40 PDT
Received: from mail.tekno-soft.it (li153-180.members.linode.com
	[109.74.206.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 00253E0071C
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 01:39:40 -0700 (PDT)
Received: from dragon.tekno-soft.it
	(host142-53-static.94-94-b.business.telecomitalia.it [94.94.53.142])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: robyf@tekno-soft.it)
	by mail.tekno-soft.it (Postfix) with ESMTPSA id 162A617727
	for <yocto@yoctoproject.org>; Tue, 27 Oct 2015 08:33:40 +0000 (UTC)
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAOd_LFwgMqDUBKzxjs50G+=F0TgFg8ZuoCBX6jqs6p8fLFQibg@mail.gmail.com>
From: Roberto Fichera <kernel@tekno-soft.it>
Organization: TeknoSOFT
Message-ID: <562F36CD.5000307@tekno-soft.it>
Date: Tue, 27 Oct 2015 09:33:17 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.3.0
MIME-Version: 1.0
In-Reply-To: <CAOd_LFwgMqDUBKzxjs50G+=F0TgFg8ZuoCBX6jqs6p8fLFQibg@mail.gmail.com>
X-Intuitive-System-MailScanner-Information: Please contact the ISP for more
	information
X-Intuitive-System-MailScanner-ID: 162A617727.AC100
X-Intuitive-System-MailScanner: Found to be clean
X-Intuitive-System-MailScanner-From: kernel@tekno-soft.it
X-Mailman-Approved-At: Wed, 28 Oct 2015 08:19:42 -0700
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
X-List-Received-Date: Tue, 27 Oct 2015 08:39:42 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 10/26/2015 08:18 PM, Cliff Brake wrote:
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
> How long have you been using OE?  _____
>
> How do you use OE/Yocto?
> [ X ] product development
> [  ] hobby/research/education/yocto core developer, etc
>
> What distro do you use?
> [ X ] Poky
> [  ] Angstrom
> [  ] nodistro or custom
>
> How do you organize multiple git repos?
> [ X ] Git submodules
> [  ] Repo
> [  ] Other
>
> What packaging system?
> [  ] OPKG
> [ X ] RPM
> [  ] Other
>
> What GUI toolkits?
> [ X ] Qt
> [ X ] Gtk
> [  ] EFL
> [ X ] HTML5/JS
> [  ] Other
>
> What init system?
> [  ] systemd
> [  ] sysvinit
> [ X ] busybox init
> [  ] Other
>
> What libc?
> [ X ] glibc
> [  ] uclibc
> [  ] musl
> [  ] Other
>
> How do you develop custom applications?
> [  ] application-SDK
> [  ] devshell
> [ X ] develop on PC, test on target
> [  ] Other
>
> What language do you primarily use for custom applications?
> [ X ] C
> [ X ] C++
> [ X ] Python
> [  ] Javascript
> [  ] Lua
> [  ] Other
>
> What do you use for Continuous Integration?
> [ X ] Buildbot
> [  ] Jenkins
> [  ] Other
>
> Do you use any any of the tooling projects
> (https://www.yoctoproject.org/tools-resources/projects) such as ADT,
> Hob, Toaster, etc?

bitbake

>
> _______________________
>
> Reasons or explanations are appreciated, and please feel free to
> include additional choices/information you think are relevant.
>
> Thanks,
> Cliff


