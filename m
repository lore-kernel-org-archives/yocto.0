Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (hermes.mlbassoc.com [64.234.241.98])
	by mx1.pokylinux.org (Postfix) with ESMTP id 4F5C64C801DA
	for <yocto@yoctoproject.org>; Tue, 26 Jul 2011 11:48:01 -0500 (CDT)
Received: by mail.chez-thomas.org (Postfix, from userid 999)
	id CD41D166021E; Tue, 26 Jul 2011 10:48:00 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by mail.chez-thomas.org (Postfix) with ESMTP id 0B74916601D5;
	Tue, 26 Jul 2011 10:48:00 -0600 (MDT)
Message-ID: <4E2EEFBF.5030804@mlbassoc.com>
Date: Tue, 26 Jul 2011 10:47:59 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; U; Linux i686; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc15 Thunderbird/3.1.10
MIME-Version: 1.0
To: Jeff Mitchell <jmitchell@ll.mit.edu>
References: <4E205D20.2060106@ll.mit.edu>
In-Reply-To: <4E205D20.2060106@ll.mit.edu>
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Tue, 26 Jul 2011 16:48:01 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2011-07-15 09:30, Jeff Mitchell wrote:
> Darren Hart suggested I send this to the list...
>
> Attached is a picture of my screen running Terminal. This is on a BeagleBoard xM rev C connected via its HDMI out to a DVI adapter and then into a Dell UltraSharp monitor. Angstrom
> doesn't display these problems, so the setup should be fine.
>
> I'm not quite sure what is causing this. The resolution is also fairly low, and I haven't had any success using boot parameters (either the older video=omapfb:mode variant or the
> newer DSS2 omapfb.mode variant).

Did you ever find out what is causing this?

When you say that it works on one system (Poky?) vs another (Angstrom?)
are they both running the same version of U-Boot?  I'm seeing this same
behaviour on one of my boards, but only when I run U-Boot from 2011.06

BTW - why did you send your original query to the Poky list?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

