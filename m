Return-Path: <picmaster@mail.bg>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54CD5E009BB; Thu, 14 May 2015 14:57:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (picmaster[at]mail.bg)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [193.201.172.118 listed in list.dnswl.org]
Received: from mx2.mail.bg (mx2.mail.bg [193.201.172.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A9972E00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 14:57:43 -0700 (PDT)
Received: from [192.168.0.62] (unknown [93.152.143.60])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by mx2.mail.bg (Postfix) with ESMTPSA id D64B76001F4F;
	Fri, 15 May 2015 00:57:40 +0300 (EEST)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mail.bg; s=default;
	t=1431640660; bh=tMk9SuR7Ga4xtCaOhvarYhStfhBY9gsi8S53IMSWgoA=;
	h=Message-ID:Date:From:MIME-Version:To:Subject:References:
	In-Reply-To:Content-Type:Content-Transfer-Encoding;
	b=GY2zWcmaLpzylJ90ciRVr0AG9o5FIywD1AgD8/2z1a4QgRZd42+Z6C8YnUsk96Fi8
	aQeAuKDJH3aORcGr2GHKmxWEY2S3SuJoDY9J20/EHsO9SNZeVtEmXW3nOS/tft+Rdf
	vNExqzy3370A3MFxWfwI/8plt4/lkGgxaI962Alw=
Message-ID: <55551A54.4000408@mail.bg>
Date: Fri, 15 May 2015 00:57:40 +0300
From: Nikolay Dimitrov <picmaster@mail.bg>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.6.0
MIME-Version: 1.0
To: Gary Thomas <gary@mlbassoc.com>, yocto@yoctoproject.org
References: <5554ADDE.7030508@mlbassoc.com>	<CAJTo0LZZsuEQfizOctX5VnK5KiCJ9iyyuTPUxtum_DpYoqmsWA@mail.gmail.com>	<5554B152.8030401@mlbassoc.com>	<CAJTo0Lai_StnhatYDa8tZvjt8jKs-EGnYgX7KvPwCOzk-1D6kQ@mail.gmail.com>	<5554BED8.2090607@mlbassoc.com>	<CAJTo0LadZdQAtCD=REUBjVbwHahnGAi1nLJMiCjZbNKzqYLECA@mail.gmail.com>	<5554CD73.5080403@mlbassoc.com>	<CAJTo0LaP4vv=hDQNjJY9LG6O4NLYi9_1DMt54OnnvqZrOwRk1Q@mail.gmail.com>
	<5554FA4A.7010003@mlbassoc.com>
In-Reply-To: <5554FA4A.7010003@mlbassoc.com>
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
X-List-Received-Date: Thu, 14 May 2015 21:57:47 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

Hi Gary,

On 05/14/2015 10:40 PM, Gary Thomas wrote:
> On 2015-05-14 10:31, Burton, Ross wrote:
>>
>> On 14 May 2015 at 17:29, Gary Thomas <gary@mlbassoc.com
>> <mailto:gary@mlbassoc.com>> wrote:
>>
>>     BTW, neither gtk-play nor gst-play seem to work correctly with
>>     an out-of-the-box qemu that I just built (from master at the
>>     time of fido release - rev 515a8b790e08a48aaf64a6b7237e2b39390e35f6)
>>
>>     I'm not much of an x86 user - how would I build (which $MACHINE, etc)
>>     to run on my generic [Dell] laptop so I can test it there?
>>
>>
>> For a real x86 machine, intel-corei7-64 from meta-intel.
>>
>
> Interesting - gst-play/gtk-play works correctly on this target.
> Now I have to figure out why it doesn't work on the other systems
> I tested.
>
> Should I submit bugs against the QEMU targets as they get it
> even more wrong than the i.MX6 targets??
>
> Query: my laptop [test device] has two ALSA sound devices,
> HDMI and the internal PCH.  It has picked the HDMI as default
> and I get no sound when no HDMI monitor attached.  How do I
> select the other sound device (from sato desktop would be
> best, but I'd settle for any answer)

How about this:

gst-launch playbin ... ! alsasink device="hw:1,0"

Regards,
Nikolay

