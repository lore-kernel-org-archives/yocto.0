Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id DA56E4C800B6
	for <yocto@yoctoproject.org>; Sun, 20 Feb 2011 12:28:34 -0600 (CST)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 860C91660351; Sun, 20 Feb 2011 11:28:19 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.1
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id D0A5D1660355;
	Sun, 20 Feb 2011 11:27:45 -0700 (MST)
Message-ID: <4D615D21.7010304@mlbassoc.com>
Date: Sun, 20 Feb 2011 11:27:45 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: Chris Tapp <opensource@keylevel.com>
References: <3776E9FA-795C-450E-83EF-FF154CF1B6FF@keylevel.com>	<4D6157A2.8050906@mlbassoc.com>
	<02231D24-6F1D-40B5-BD03-6DAA5A49E038@keylevel.com>
In-Reply-To: <02231D24-6F1D-40B5-BD03-6DAA5A49E038@keylevel.com>
Cc: yocto@yoctoproject.org
Subject: Re: How do I use layers to replacing system configuration files?
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
X-List-Received-Date: Sun, 20 Feb 2011 18:28:35 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 8bit

On 02/20/2011 11:23 AM, Chris Tapp wrote:
> On 20 Feb 2011, at 18:04, Gary Thomas wrote:
>
>> You'll need a meta-new/packages/netbase/netbase_4.44.bbappend file which
>> tells bitbake where to find your override files. I do this all the time,
>> for example, I have a board with two targets:
>> $ tree meta-ppc/packages/netbase/
>> meta-ppc/packages/netbase/
>> ├── netbase-4.44
>> │ ├── cobra
>> │ │ ├── interfaces
>> │ └── ppc8379
>> │ ├── interfaces
>> └── netbase_4.44.bbappend
>> $ cat meta-ppc/packages/netbase/netbase_4.44.bbappend
>> THISDIR := "${@os.path.dirname(bb.data.getVar('FILE', d, True))}"
>> FILESPATH =. "${@base_set_filespath(["${THISDIR}/${PN}-${PV}"], d)}:"
>
> Thanks. I was just looking at .bbappend when your message arrived ;-)
>
> Section 4.8 of the Poky Reference Manual shows an even easier way of doing what I need. All the .bbappend has is:
>
> FILESEXTRAPATHS := "${THISDIR}/${PN}"

That would be great (if it works).  My recipes are based on examples
which were available when the .bbappend and layers were first introduced.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

