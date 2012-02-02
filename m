Return-Path: <josh@linux.intel.com>
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFD43E00307
	for <yocto@yoctoproject.org>; Thu,  2 Feb 2012 13:51:58 -0800 (PST)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 02 Feb 2012 13:51:58 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,352,1309762800"; d="scan'208";a="103298541"
Received: from unknown (HELO [10.7.199.78]) ([10.7.199.78])
	by orsmga001.jf.intel.com with ESMTP; 02 Feb 2012 13:51:58 -0800
Message-ID: <4F2B057D.6000905@linux.intel.com>
Date: Thu, 02 Feb 2012 13:51:57 -0800
From: Joshua Lock <josh@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:9.0) Gecko/20111222 Thunderbird/9.0
MIME-Version: 1.0
To: "Barros Pena, Belen" <belen.barros.pena@intel.com>
References: <CB507144.6E40%belen.barros.pena@intel.com>
In-Reply-To: <CB507144.6E40%belen.barros.pena@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Hob 1.2 design - Settings dialogue
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
X-List-Received-Date: Thu, 02 Feb 2012 21:51:59 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

Hi Belen,

Sorry this is so long, I don't know how to turn off my verbose switch.

On page 4 you mention Shane's intention to have proxy settings in the UI 
- I just want to point out that this is usually an OS level 
configuration and we should be wary about how we implement it.
I'd suggest we go so far as to just have a "Change system proxy 
settings" button which launches the OS's network configuration settings.

Of course, this opens us up to potential issues around supporting the 
multitude of available network configuration tools on Linux but I'd 
suggest we start with a lowest common denominator approach and have the 
program behave intelligently.

Explicitly we can detect whether the binary gnome-control-center and the 
so file /usr/lib64/control-center-1/panels/libnetwork.so exist (being 
clever about that path, too) and if so we can execute:

"gnome-control-center display network"

Which will display the network configuration (and therefore proxy) 
settings for stock Fedora and Ubuntu desktops.


I understand why the Machines option might be more useful as a list 
widget (p5), rather than a combo box, but feel that this is devalued at 
least slightly by the fact that the list of available Machines isn't 
static and therefore it's not unlikely a user would have to scroll that 
list.
One suggestion might be to favour machines with a higher layer priority 
by listing them higher in the list?

Although the next page, 5, mentions that the machine list is a combo 
box. Is that the case?

Love the package format selection pieces!

For the two parallel threads buttons we should recommend a default value 
and set a maximum based on the number of CPU cores - I think there's 
been a lot of discussion about this but I'm not certain what the 
recommendation which came out of it was.

For the directories on page 13 would it make sense to have a reset 
button to more easily get back to the defaults?

That's all folks,
Joshua


On 02/02/12 08:58, Barros Pena, Belen wrote:
> I've uploaded a document detailing the design of the Settings dialogue for Hob 1.2 at
>
> https://wiki.yoctoproject.org/wiki/File:Settings-dialogue-design-spec-v1.0.pdf
>
> Sorry it's a boring document instead of a video: it seemed the only way to provide the necessary level of detail
>
> Let me know if you have any questions or comments.
>
> Belen
> ---------------------------------------------------------------------
> Intel Corporation (UK) Limited
> Registered No. 1134945 (England)
> Registered Office: Pipers Way, Swindon SN3 1RJ
> VAT No: 860 2173 47
>
> This e-mail and any attachments may contain confidential material for
> the sole use of the intended recipient(s). Any review or distribution
> by others is strictly prohibited. If you are not the intended
> recipient, please contact the sender and delete all copies.
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
Joshua Lock
         Yocto Project "Johannes factotum"
         Intel Open Source Technology Centre

