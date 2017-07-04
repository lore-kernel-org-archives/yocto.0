Return-Path: <sbabic@denx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D2F97E00B83; Tue,  4 Jul 2017 10:09:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [212.18.0.10 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54F29E00AD0
	for <yocto@yoctoproject.org>; Tue,  4 Jul 2017 10:09:06 -0700 (PDT)
Received: from frontend01.mail.m-online.net (unknown [192.168.8.182])
	by mail-out.m-online.net (Postfix) with ESMTP id 3x29TF0gYqz1qrdj;
	Tue,  4 Jul 2017 19:09:05 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.70])
	by mail.m-online.net (Postfix) with ESMTP id 3x29TF04m8z3hhsw;
	Tue,  4 Jul 2017 19:09:04 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.182])
	by localhost (dynscan1.mail.m-online.net [192.168.6.70]) (amavisd-new,
	port 10024)
	with ESMTP id PR9oezBmJMxY; Tue,  4 Jul 2017 19:09:02 +0200 (CEST)
Received: from babic.homelinux.org (host-88-217-136-221.customer.m-online.net
	[88.217.136.221]) by mail.mnet-online.de (Postfix) with ESMTP;
	Tue,  4 Jul 2017 19:09:02 +0200 (CEST)
Received: from localhost (mail.babic.homelinux.org [127.0.0.1])
	by babic.homelinux.org (Postfix) with ESMTP id DB38E4540452;
	Tue,  4 Jul 2017 19:09:01 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at babic.homelinux.org
Received: from babic.homelinux.org ([127.0.0.1])
	by localhost (mail.babic.homelinux.org [127.0.0.1]) (amavisd-new,
	port 10024)
	with ESMTP id nPtNyChaooJZ; Tue,  4 Jul 2017 19:08:58 +0200 (CEST)
Received: from [192.168.178.132] (papero.fritz.box [192.168.178.132])
	by babic.homelinux.org (Postfix) with ESMTP id 833914540441;
	Tue,  4 Jul 2017 19:08:58 +0200 (CEST)
To: =?UTF-8?B?Tmfhu41jIFRoaSBIdeG7s25o?= <so61pi.re@gmail.com>,
	Yocto <yocto@yoctoproject.org>
References: <CAGnCEbuE7OVy=RrbD91WMtSiZ2nJ90eUONMEJ=ZrMfx2FC6LhA@mail.gmail.com>
From: Stefano Babic <sbabic@denx.de>
Message-ID: <ad7604a1-743e-89f3-b810-b80beeb3f5cc@denx.de>
Date: Tue, 4 Jul 2017 19:08:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.1.1
MIME-Version: 1.0
In-Reply-To: <CAGnCEbuE7OVy=RrbD91WMtSiZ2nJ90eUONMEJ=ZrMfx2FC6LhA@mail.gmail.com>
Subject: Re: Update SRCREV doesn't work?
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
X-List-Received-Date: Tue, 04 Jul 2017 17:09:08 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-GB
Content-Transfer-Encoding: 8bit

Hi,

On 04/07/2017 18:13, Ngọc Thi Huỳnh wrote:
> Hi everyone,
> 
> I'm using poky pyro to build a beaglebone image with swupdate.
> 
> First time I built swupdate (by bitbake swupdate), it used the latest
> git version and I encountered an make error which related to swupdate only.
> 
> Then I changed swupdate version to 2017.04 (by using
> PREFERRED_VERSION_swupdate = "2017.04") but the bitbake still used the
> latest git version and I had the make error again.
> 

I cannot confirm this. I have built a custom board and setting
PREFERRED_VERSION_swupdate works without issues.

> But when I used devshell and changed the git revision to 2017.04 then
> do_configure and do_compile, everything went fine.
> 
> My question is, is there a simple way to solve this problem?
> 
> /Note:/
> The swupdate recipes for beaglebone that I'm using are from
> https://github.com/sbabic/meta-swupdate
> 
> Content of swupdate_2017.04.bb <http://swupdate_2017.04.bb>:
> 
>     require swupdate.inc
> 
>     SRCREV = "d344ec10b71293d2aaf96816266d4e6ed1d3bf6a"
> 
> 
> Content of swupdate_git.bb <http://swupdate_git.bb>
> 
>     require swupdate.inc
> 
>     DEFAULT_PREFERENCE = "-1"
> 
> 
> A snippet of swupdate.inc
> 
>     SRCREV = "${AUTOREV}"
> 
> 

Best regards,
Stefano Babic


-- 
=====================================================================
DENX Software Engineering GmbH,      Managing Director: Wolfgang Denk
HRB 165235 Munich, Office: Kirchenstr.5, D-82194 Groebenzell, Germany
Phone: +49-8142-66989-53 Fax: +49-8142-66989-80 Email: sbabic@denx.de
=====================================================================

