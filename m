Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B50DAE011F0
	for <yocto@yoctoproject.org>; Fri, 12 Aug 2011 15:54:21 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 15024166034B; Fri, 12 Aug 2011 16:54:30 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 98336166025F;
	Fri, 12 Aug 2011 16:54:28 -0600 (MDT)
Message-ID: <4E45AF24.5070804@mlbassoc.com>
Date: Fri, 12 Aug 2011 16:54:28 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>
In-Reply-To: <56EF2FAC-D4B5-4EC7-ADC1-6AE0848A51FD@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: Configuring a layer to support multiple targets
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
X-List-Received-Date: Fri, 12 Aug 2011 22:54:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-08-12 16:31, Chris Tapp wrote:
> What is the best way to configure a layer to support multiple targets that share a common base?
>
> For example, a set of targets that use the Vortex86DX SOC share common peripherals and also have per-variant peripherals.
>
> I was thinking:
>
> 1) Have a conf/machine file for each variant;
> 2) Make these use an include for the Vortex86DX SOC.
>
> However, I can't work out how to get a per-machine defconfig file. Is there some way of using the machine name to do this? Can I just use
>
> FILESEXTRAPATHS := "${THISDIR}/${PN}/${MACHINE}"
>
> in a kernel .bbappend file?

That shouldn't even be necessary. Just something like this:
   FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}"
and it will look for files in various directories
   ${THISDIR}/${PN}/${MACHINE}
   ${THISDIR}/${PN}
(and maybe some others)

For example, I have one layer for a project which supports
three different targets (all part of the same platform) using
this technique.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

