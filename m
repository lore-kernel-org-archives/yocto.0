Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id B70FD4C808F9
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2011 12:15:09 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id B8F3B166022F; Tue, 26 Jul 2011 11:15:08 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5EF511660129;
	Tue, 26 Jul 2011 11:15:07 -0600 (MDT)
Message-ID: <4E2EF61B.3050002@mlbassoc.com>
Date: Tue, 26 Jul 2011 11:15:07 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Jeff Mitchell <jmitchell@ll.mit.edu>
References: <4E205D20.2060106@ll.mit.edu> <4E2EEFBF.5030804@mlbassoc.com>
	<4E2EF2C1.7060708@ll.mit.edu>
In-Reply-To: <4E2EF2C1.7060708@ll.mit.edu>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Color ghosting on BeagleBoard xM rev C
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
X-List-Received-Date: Tue, 26 Jul 2011 17:15:09 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-07-26 11:00, Jeff Mitchell wrote:
> On 07/26/2011 12:47 PM, Gary Thomas wrote:
>> On 2011-07-15 09:30, Jeff Mitchell wrote:
>>> Darren Hart suggested I send this to the list...
>>>
>>> Attached is a picture of my screen running Terminal. This is on a BeagleBoard xM rev C connected via its HDMI out to a DVI adapter and then into a Dell UltraSharp monitor. Angstrom
>>> doesn't display these problems, so the setup should be fine.
>>>
>>> I'm not quite sure what is causing this. The resolution is also fairly low, and I haven't had any success using boot parameters (either the older video=omapfb:mode variant or the
>>> newer DSS2 omapfb.mode variant).
>>
>> Did you ever find out what is causing this?
>
> No, but I'll be testing out a new build soon -- haven't been able to for a bit.
>
>> When you say that it works on one system (Poky?) vs another (Angstrom?)
>> are they both running the same version of U-Boot? I'm seeing this same
>> behaviour on one of my boards, but only when I run U-Boot from 2011.06
>
> Yes -- Yocto/Poky/Sato vs. Angstrom. I doubt they're running the same version of U-Boot, but I don't know the version numbers offhand.

Check the display setup.  In my case, my old U-Boot (which works great)
was using dvimode=1024x768-24@60 and the new U-Boot is using dvimode=1024x768MR-16@60
When I switch back to the old setting, even with the new U-Boot, my display
runs great again.  n.b. this may be kernel revision sensitive as well.

>
>> BTW - why did you send your original query to the Poky list?
>
> Because Darren suggested that I do so, to get various eyes on it :-)

Sounds reasonable - I only asked because your original email didn't
really spell out why it went to the Poky list.

Thanks & good luck

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

