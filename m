Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 328B2E006E9
	for <yocto@yoctoproject.org>; Tue, 10 Jan 2012 05:17:25 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id AF924F8123A; Tue, 10 Jan 2012 06:17:21 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from hermes.chez-thomas.org (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 10410F81237;
	Tue, 10 Jan 2012 06:17:21 -0700 (MST)
Message-ID: <4F0C3A61.1090509@mlbassoc.com>
Date: Tue, 10 Jan 2012 06:17:21 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux i686;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE096D9962@POCITMSEXMB03.LntUniverse.com>
In-Reply-To: <9BACABF0C6B14A4D8C33B42A795119BE096D9962@POCITMSEXMB03.LntUniverse.com>
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
X-List-Received-Date: Tue, 10 Jan 2012 13:17:25 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 8bit

On 2012-01-10 05:57, Navani Kamal Srivastava wrote:
> Hi,
>
> I am getting problem in changing system clock of my board.
>
> On rebooting the board after changing time, I can see the new time in kernel boot messages like
>
> “pmic_rtc pmic_rtc.1: setting system clock to 2012-01-10 18:22:15 UTC (1326219735) “
>
> but again it used to reconfigure system clock. Kindly see the boot messages which comes after above mentioned message-
>
> Configuring network interfaces... done.
>
> Tue Jan 10 10:28:00 UTC 2012
>
> INIT: Entering runlevel: 5
>
> Starting syslogd/klogd: done
>
> So now on giving “date” command at prompt I am getting the same time which was there before
>
> root@mx35pdk:~# date
>
> Tue Jan 10 10:29:17 UTC 2012
>
> What I am unable to understand is why this problem is coming with time only. Date is getting changed successfully.
>
> I am pretty sure from hardware point of view because Ltib rootfs is working fine with this board.
>
> Any replies would be appreciable.

What's your hardware target?  There is a bug #1767 that can
make the system always reset the clock to the saved timestamp
on boot.  This is probably what's happening to you.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

