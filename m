Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7220E00A27; Tue,  8 Mar 2016 23:50:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 272CCE00911
	for <yocto@yoctoproject.org>; Tue,  8 Mar 2016 23:50:55 -0800 (PST)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 7EEDB68A019; Wed,  9 Mar 2016 07:50:54 +0000 (GMT)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id D976D68A019;
	Wed,  9 Mar 2016 07:50:53 +0000 (GMT)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id B6573674009C;
	Wed,  9 Mar 2016 08:50:52 +0100 (CET)
To: yocto@yoctoproject.org
References: <56DED4A8.6070009@mlbassoc.com>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <56DFD5DC.60008@mlbassoc.com>
Date: Wed, 9 Mar 2016 08:50:52 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.5.1
MIME-Version: 1.0
In-Reply-To: <56DED4A8.6070009@mlbassoc.com>
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
X-List-Received-Date: Wed, 09 Mar 2016 07:50:58 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2016-03-08 14:33, Gary Thomas wrote:
> I'm getting a lot of messages like this:
>    amanda: /amanda/usr/sbin/amtoc is owned by uid 1000, which is the same as the user running bitbake. This may be due
> to host contamination
>    amanda: /amanda/usr/sbin/amcrypt-ossl is owned by uid 1000, which is the same as the user running bitbake. This may
> be due to host contamination
>    amanda: /amanda/usr/sbin/amvault is owned by uid 1000, which is the same as the user running bitbake. This may be due
> to host contamination
>
> In reality, this is not really a problem.  I'm building a recipe
> which adds a user to my system image that just happens to have the
> same UID as mine (first user added, go figure).  So the messages in
> this case are quite bogus.
>
> How can I avoid them?  When I add my extra user to my image, is
> there a way to force the UID/GID to something I know is "safe"?

I solved this by adding '--system' to my USERADD setup.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

