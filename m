Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0EA5DE0027C
	for <yocto@yoctoproject.org>; Tue, 26 Feb 2013 12:30:55 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B1209F811E1; Tue, 26 Feb 2013 13:30:54 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 8B2F6F81188;
	Tue, 26 Feb 2013 13:30:53 -0700 (MST)
Message-ID: <512D1B8F.7060705@mlbassoc.com>
Date: Tue, 26 Feb 2013 13:31:11 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <512CE547.10600@mlbassoc.com>
	<CAJTo0LZaoP5i=Zf2UnX2435DeDmgSO0Zb4FZ7PnzQ9v1257Hfw@mail.gmail.com>
	<512CF9FC.9060303@mlbassoc.com>
	<CAJTo0LadNQ1DEhKg6sHKt8M5-76xiijndMiDwY4E6Ratbw8OMA@mail.gmail.com>
In-Reply-To: <CAJTo0LadNQ1DEhKg6sHKt8M5-76xiijndMiDwY4E6Ratbw8OMA@mail.gmail.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: X video extensions
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
X-List-Received-Date: Tue, 26 Feb 2013 20:30:55 -0000
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-02-26 11:30, Burton, Ross wrote:
> On 26 February 2013 18:07, Gary Thomas <gary@mlbassoc.com> wrote:
>> Here's what I get from xvinfo:
>>    X-Video Extension version 2.2
>>    screen #0
>>    no adaptors present
>>
>> So I guess the extension is there but my display doesn't support it?
>> How would I go about making that work?
>
> XVideo has to be implemented by the drivers, what X video driver are you using?

xf86-video-omap on OMAP4430

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

