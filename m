Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0897FE009BB; Thu, 14 May 2015 12:41:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08BBDE00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 12:40:57 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id A596DF811E0; Thu, 14 May 2015 13:40:56 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id E9003F811DC;
	Thu, 14 May 2015 13:40:55 -0600 (MDT)
Message-ID: <5554FA4A.7010003@mlbassoc.com>
Date: Thu, 14 May 2015 13:40:58 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <5554ADDE.7030508@mlbassoc.com>	<CAJTo0LZZsuEQfizOctX5VnK5KiCJ9iyyuTPUxtum_DpYoqmsWA@mail.gmail.com>	<5554B152.8030401@mlbassoc.com>	<CAJTo0Lai_StnhatYDa8tZvjt8jKs-EGnYgX7KvPwCOzk-1D6kQ@mail.gmail.com>	<5554BED8.2090607@mlbassoc.com>	<CAJTo0LadZdQAtCD=REUBjVbwHahnGAi1nLJMiCjZbNKzqYLECA@mail.gmail.com>	<5554CD73.5080403@mlbassoc.com>
	<CAJTo0LaP4vv=hDQNjJY9LG6O4NLYi9_1DMt54OnnvqZrOwRk1Q@mail.gmail.com>
In-Reply-To: <CAJTo0LaP4vv=hDQNjJY9LG6O4NLYi9_1DMt54OnnvqZrOwRk1Q@mail.gmail.com>
Subject: Re: gtk-play issues
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
X-List-Received-Date: Thu, 14 May 2015 19:41:05 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-05-14 10:31, Burton, Ross wrote:
>
> On 14 May 2015 at 17:29, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     BTW, neither gtk-play nor gst-play seem to work correctly with
>     an out-of-the-box qemu that I just built (from master at the
>     time of fido release - rev 515a8b790e08a48aaf64a6b7237e2b39390e35f6)
>
>     I'm not much of an x86 user - how would I build (which $MACHINE, etc)
>     to run on my generic [Dell] laptop so I can test it there?
>
>
> For a real x86 machine, intel-corei7-64 from meta-intel.
>

Interesting - gst-play/gtk-play works correctly on this target.
Now I have to figure out why it doesn't work on the other systems
I tested.

Should I submit bugs against the QEMU targets as they get it
even more wrong than the i.MX6 targets??

Query: my laptop [test device] has two ALSA sound devices,
HDMI and the internal PCH.  It has picked the HDMI as default
and I get no sound when no HDMI monitor attached.  How do I
select the other sound device (from sato desktop would be
best, but I'd settle for any answer)

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

