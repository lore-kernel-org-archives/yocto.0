Return-Path: <Lauri.Hintsala@bluegiga.com>
Received: from darkblue.bluegiga.com (bluegiga.fi [194.100.31.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 406EDE0030F
	for <yocto@yoctoproject.org>; Thu, 12 Jan 2012 22:47:51 -0800 (PST)
Received: from [10.1.1.28] ([10.1.1.28]) by darkblue.bluegiga.com with
	Microsoft SMTPSVC(6.0.3790.4675); Fri, 13 Jan 2012 08:47:49 +0200
Message-ID: <4F0FD395.6040908@bluegiga.com>
Date: Fri, 13 Jan 2012 08:47:49 +0200
From: Lauri Hintsala <lauri.hintsala@bluegiga.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.24) Gecko/20111108 Lightning/1.0b2 Thunderbird/3.1.16
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>
References: <9BACABF0C6B14A4D8C33B42A795119BE096D9962@POCITMSEXMB03.LntUniverse.com>	<4F0C3A61.1090509@mlbassoc.com>	<9BACABF0C6B14A4D8C33B42A795119BE096D9B63@POCITMSEXMB03.LntUniverse.com>
	<4F0D743C.5030700@mlbassoc.com>
In-Reply-To: <4F0D743C.5030700@mlbassoc.com>
X-OriginalArrivalTime: 13 Jan 2012 06:47:49.0391 (UTC)
	FILETIME=[43D541F0:01CCD1BF]
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Navani Kamal Srivastava <NAVANI.Srivastava@lnties.com>
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
X-List-Received-Date: Fri, 13 Jan 2012 06:47:53 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hello guys,

On 01/11/2012 01:36 PM, Gary Thomas wrote:
>>> There is a bug #1767 that can make the system always reset the clock
>>> to the saved timestamp on boot.
>> I am not pretty sure for this because I am able to set system clock
>> using freescale provided rootfs. This problem I am getting only with
>> poky rootfs. I guess I need to change some recipe. It would be a great
>> help if you can help me in that.
>
> The problem is that even when you set the date, your Poky system
> does not use it when the system is rebooted because of this bug.
>
> The simplest work-around (until the bug fix is finalized) is to
> add the 'coreutils' package to your image.

I found the same bug and I fixed it in December. I didn't know there was 
open bug related to that. Anyway patch is available in master branch of 
poky: 
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=91367de75575e79a94b2f90b6b7aa8740a039fc5

Regards,
Lauri Hintsala

