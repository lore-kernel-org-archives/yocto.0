Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9120EE003D4
	for <yocto@yoctoproject.org>; Mon,  5 Aug 2013 09:29:43 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id B407DF811F5; Mon,  5 Aug 2013 10:29:42 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=ham version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id C0A39F811F1;
	Mon,  5 Aug 2013 10:29:40 -0600 (MDT)
Message-ID: <51FFD2F4.8000103@mlbassoc.com>
Date: Mon, 05 Aug 2013 10:29:40 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: "Burton, Ross" <ross.burton@intel.com>
References: <51FFB335.1040902@mlbassoc.com>
	<CAJTo0LbCUFz4cSmcORyfe7c+nhJDJoWURPHVVMnfpBZ9JwmYMQ@mail.gmail.com>
In-Reply-To: <CAJTo0LbCUFz4cSmcORyfe7c+nhJDJoWURPHVVMnfpBZ9JwmYMQ@mail.gmail.com>
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
X-List-Received-Date: Mon, 05 Aug 2013 16:29:43 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-05 08:50, Burton, Ross wrote:
> On 5 August 2013 15:14, Gary Thomas <gary@mlbassoc.com> wrote:
>> I'm running a system roughly based on core-image-sato except
>> that I've disabled the matchbox desktop (I only have a single
>> application).  Some things still seem to want the desktop
>> to be in place though, in particular I don't get a popup
>> keyboard on my touch screen until I see this message:
>>    Timeout waiting for org.matchbox_project.desktop.Loaded
>>
>> The problem is that this timeout is quite long - maybe a minute?
>>
>> How can I fully disable this or adjust the timeout to be shorter?
>
> That's the matchbox-keyboard init script which waits for the desktop
> to say it's loaded, easily patched out (the intention was to serialise
> the final stages of the boot so the desktop appeared quickly and then
> the keyboard loaded in the background).

I found this:
    if [ "$CMD" ]; then
       # Delay to make sure the window manager is active
       # by waiting for the desktop to say its finished loading
       dbus-wait org.matchbox_project.desktop Loaded
       exec $CMD
   fi

Can I safely just disable the dbus-wait or do I need something else
there, e.g. sleep for a few seconds, ...?  Maybe I should patch dbus-wait
(which you, Ross, wrote) to be able to specify the timeout?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

