Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A759EE0123F
	for <yocto@yoctoproject.org>; Wed, 11 Jan 2012 03:36:30 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 83A3DF81258; Wed, 11 Jan 2012 04:36:29 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 7C333F81256;
	Wed, 11 Jan 2012 04:36:28 -0700 (MST)
Message-ID: <4F0D743C.5030700@mlbassoc.com>
Date: Wed, 11 Jan 2012 04:36:28 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE096D9962@POCITMSEXMB03.LntUniverse.com>
	<4F0C3A61.1090509@mlbassoc.com>
	<9BACABF0C6B14A4D8C33B42A795119BE096D9B63@POCITMSEXMB03.LntUniverse.com>
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE096D9B63@POCITMSEXMB03.LntUniverse.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Unable to set system clock
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
X-List-Received-Date: Wed, 11 Jan 2012 11:36:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2012-01-10 22:14, Navani Kamal Srivastava wrote:
> Hi Gary,
>
>> What's your hardware target?
> We are using iMX35 processor.
>
>> There is a bug #1767 that can make the system always reset the clock to the saved timestamp on boot.
> I am not pretty sure for this because I am able to set system clock using freescale provided rootfs. This problem I am getting only with poky rootfs. I guess I need to change some recipe. It would be a great help if you can help me in that.

The problem is that even when you set the date, your Poky system
does not use it when the system is rebooted because of this bug.

The simplest work-around (until the bug fix is finalized) is to
add the 'coreutils' package to your image.

>
> Thanks&  Regards,
> Navani Kamal Srivastava

n.b. Please keep replies on the mailing list so that everyone
can benefit.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

