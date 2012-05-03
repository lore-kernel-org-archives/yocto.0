Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85A5FE0044A
	for <yocto@yoctoproject.org>; Thu,  3 May 2012 08:39:23 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 09801F81265; Thu,  3 May 2012 09:39:22 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1C7EBF81253;
	Thu,  3 May 2012 09:39:17 -0600 (MDT)
Message-ID: <4FA2A6A5.6030807@mlbassoc.com>
Date: Thu, 03 May 2012 09:39:17 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:12.0) Gecko/20120424 Thunderbird/12.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <880CAB78-91DC-46B5-A4BB-00D33FFA9624@gmail.com>
	<11827908.GWIN234cRG@helios>
In-Reply-To: <11827908.GWIN234cRG@helios>
Subject: Re: Build error: Could not inherit file classes/systemd.bbclass
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
X-List-Received-Date: Thu, 03 May 2012 15:39:23 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-05-03 07:21, Paul Eggleton wrote:
> On Thursday 03 May 2012 14:56:03 Elvis Dowson wrote:
>>       I've setup and configured an Ubuntu-12.04 LTS 64-bit system, and I get
>> a build error when I run the following command:
>>
>> $ bitbake -c fetchall core-image-minimal
>>
>> Pseudo is not present but is required, building this first before the main
>> build WARNING: Host distribution "Ubuntu 12.04 LTS" has not been validated
>> with this version of the build system; you may possibly experience
>> unexpected failures. It is recommended that you use a tested distribution.
>
> This can be ignored - 12.04 *is* supported; it's just that the final version
> string wasn't what I expected it to be. I'll send a patch for this soon and it
> can hopefully go into 1.2.1.
>
>> ERROR: ParseError at
>> /tool/yocto/meta-ti/recipes-misc/payload/bonescript.bb:5: Could not inherit
>> file classes/systemd.bbclass ERROR: Command execution failed: Exited with 1
>
> systemd.bbclass is part of the meta-oe layer, so you'll need to add that to
> your bblayers.conf.
>
> BTW I'm not sure if the meta-ti maintainers have finished their work to ensure
> meta-ti works with distros other than Angstrom. If they haven't you may
> experience problems.

I saw this checkin yesterday on meta-ti:
   Module: meta-ti
   Branch: refs/tags/v2012.05-yocto1.2
   Tag:    ccae351a692bf6fa17a4a1e35b89ff6efcd35c6c
   URL:    http://arago-project.org/git/meta-ti.git/?a=tag;h=ccae351a692bf6fa17a4a1e35b89ff6efcd35c6c

   Tagger: Denys Dmytriyenko <denys@ti.com>
   Date:   Wed May  2 03:41:43 2012 -0400

   2012.05 release, compatible with Yocto Project 1.2 Denzil

So it looks like it should be close at least :-)  I don't know how the
meta-ti repo on yoctoproject.org tracks the arago-project one...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

