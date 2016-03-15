Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2D7EAE00C52; Tue, 15 Mar 2016 06:44:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9FE7E00C2A
	for <yocto@yoctoproject.org>; Tue, 15 Mar 2016 06:44:22 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 60EB568A01D; Tue, 15 Mar 2016 13:44:18 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id 7E32968A01C;
	Tue, 15 Mar 2016 13:44:11 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id D4E1E67400A8;
	Tue, 15 Mar 2016 14:44:10 +0100 (CET)
From: Gary Thomas <gary@mlbassoc.com>
To: "Burton, Ross" <ross.burton@intel.com>
References: <56DED4A8.6070009@mlbassoc.com> <56DFD5DC.60008@mlbassoc.com>
	<56DFDEB1.7010705@mlbassoc.com>
	<CAJTo0Lbvhy=K-0Tcyi7PyLCksrFJMfeqEEu3Qxer8q1PHs8Bkw@mail.gmail.com>
Message-ID: <56E811AA.1090800@mlbassoc.com>
Date: Tue, 15 Mar 2016 14:44:10 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <CAJTo0Lbvhy=K-0Tcyi7PyLCksrFJMfeqEEu3Qxer8q1PHs8Bkw@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Host contamination that isn't
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
X-List-Received-Date: Tue, 15 Mar 2016 13:44:25 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

On 03/15/2016 12:44 PM, Burton, Ross wrote:
>
> On 9 March 2016 at 08:28, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     BTW, if I run 'bitbake <package> -c cleanall' where <package> is the
>     name of my recipe that is creating a user (in this case amanda), shouldn't
>     that user/group be removed from the sysroot?  It's not and it took me a
>     long time to realize this - my first attempts at adjusting the USERADD
>     parameters were simply being ignored because the user still existed.
>
>     Maybe this is a bug [that I should file]?
>
>
> Probably, and yes please.

Done: https://bugzilla.yoctoproject.org/show_bug.cgi?id=9262

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

