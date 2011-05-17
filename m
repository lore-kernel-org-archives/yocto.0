Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id B07024C804C2
	for <yocto@yoctoproject.org>; Tue, 17 May 2011 06:11:22 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id 49D75166032A; Tue, 17 May 2011 05:11:21 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2-r929478 (2010-03-31) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2-r929478
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id F1C241660320;
	Tue, 17 May 2011 05:11:20 -0600 (MDT)
Message-ID: <4DD257D8.6070207@mlbassoc.com>
Date: Tue, 17 May 2011 05:11:20 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.13) Gecko/20101209 Fedora/3.1.7-0.35.b3pre.fc13
	Thunderbird/3.1.7
MIME-Version: 1.0
To: wangyang <wangyang01@cn.panasonic.com>
References: <000b01cc1379$bcc63a60$6f93c20a@psdcd.local>
	<4DD0CDCE.4000108@intel.com> <4DD1084E.30509@mlbassoc.com>
	<000401cc1430$9cd014d0$6f93c20a@psdcd.local>
In-Reply-To: <000401cc1430$9cd014d0$6f93c20a@psdcd.local>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: about how to port YOCTO
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
X-List-Received-Date: Tue, 17 May 2011 11:11:22 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 05/16/2011 07:20 PM, wangyang wrote:
>> Remember that Yocto is
>> just packaging for a Linux kernel and the user tools that surround
>> it.
>
> In other words, if I want to use Yocto to package Linux kernel and the user
> tools for new MCU,I must port Linux kernel and toolchain and GLIBC, etc. It is
> right?
>
> What Yocto do is just packaging mainstream Linux kernel(from
> http://www.kernel.org/) and something with it for different needs, it is right?

Correct.  Yocto isn't really for porting the tools to a platform,
but rather something to help you build [embedded] systems to run
on the platform.

n.b. it's polite to keep such discussions on the mailing list so that
everyone benefits.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

