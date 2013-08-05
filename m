Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4D791E013E8
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 09:36:54 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 58717F81202; Mon,  5 Aug 2013 10:36:54 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 89005F811F6;
	Mon,  5 Aug 2013 10:36:50 -0600 (MDT)
Message-ID: <51FFD4A2.9070604@mlbassoc.com>
Date: Mon, 05 Aug 2013 10:36:50 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <51FFB335.1040902@mlbassoc.com>
	<CAJTo0LbCUFz4cSmcORyfe7c+nhJDJoWURPHVVMnfpBZ9JwmYMQ@mail.gmail.com>
	<51FFD2F4.8000103@mlbassoc.com>
	<CAJTo0Lbg-RR8tt6v0otvuiwSyk2eFV8yAqkdsQ=UpB6_1tHvKw@mail.gmail.com>
In-Reply-To: <CAJTo0Lbg-RR8tt6v0otvuiwSyk2eFV8yAqkdsQ=UpB6_1tHvKw@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: X11 without a desktop
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
X-List-Received-Date: Mon, 05 Aug 2013 16:36:56 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-05 10:32, Burton, Ross wrote:
> On 5 August 2013 17:29, Gary Thomas <gary@mlbassoc.com> wrote:
>> Can I safely just disable the dbus-wait or do I need something else
>> there, e.g. sleep for a few seconds, ...?  Maybe I should patch dbus-wait
>> (which you, Ross, wrote) to be able to specify the timeout?
>
> You can safely disable that block.  Patches welcome for dbus-wait, I
> wrote it a *long* time ago.

OK, I'll let you know what I come up with.

BTW, 5 years *is* a long time in internet years, but not so long
for some of us "grey beards" :-)

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

