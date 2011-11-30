Return-Path: <Bruce.Ashfield@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79325E00502
	for <yocto@yoctoproject.org>; Wed, 30 Nov 2011 14:42:51 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id pAUMgnNd027790
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Wed, 30 Nov 2011 14:42:49 -0800 (PST)
Received: from [128.224.21.107] (128.224.21.107) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Wed, 30 Nov 2011 14:42:49 -0800
Message-ID: <4ED6B167.2030500@windriver.com>
Date: Wed, 30 Nov 2011 17:42:47 -0500
From: Bruce Ashfield <bruce.ashfield@windriver.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.23) Gecko/20110922 Thunderbird/3.1.15
MIME-Version: 1.0
To: Joshua Lock <josh@linux.intel.com>
References: <alpine.DEB.2.02.1111291759160.17235@oneiric>	<1592821.2ngvXcyh81@helios>	<alpine.DEB.2.02.1111300644120.18752@oneiric>
	<4ED6AED5.8070308@linux.intel.com>
In-Reply-To: <4ED6AED5.8070308@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: how to cleanly exit a QEMU session?
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
X-List-Received-Date: Wed, 30 Nov 2011 22:42:51 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 11-11-30 05:31 PM, Joshua Lock wrote:
> On 30/11/11 03:46, Robert P. J. Day wrote:
>> On Wed, 30 Nov 2011, Paul Eggleton wrote:
>>
>>> On Tuesday 29 November 2011 18:00:31 Robert P. J. Day wrote:
>>>>    i'm sure it's in one of the docs i missed, but how does one cleanly
>>>> shut down a QEMU session and get back to the original terminal
>>>> session?  i've tried shutdown and poweroff but neither of those gives
>>>> me my shell prompt back.
>>>
>>> Which machine are you running within the emulator? I know some emulated
>>> machines don't seem to support actually powering off - does reboot work?
>>
>>    qemuppc, core-image-minimal.  interestingly, "poweroff" doesn't
>> completely close the QEMU session, but "reboot" does.  it might be
>> worth adding that to the quick start guide.
>
> The same is also true for qemuarm, we work around it in sato by munging
> the shutdown.desktop file to all restart and having the qemu scripts
> start qemu with -norestart.
>
> Clearly we should also do the shutdown.desktop munging for qemuppc
>
> What do people think to the idea of putting something into the image for
> those two specific machines which aliases poweroff to reboot?

I'd be fine with such a change, I pushed for the ARM mapping to
reboot originally, so doing the same here and an alias would make
the command line consistent with the GUI.

Bruce

>
> Joshua


