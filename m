Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BB6F8E006AD
	for <yocto@yoctoproject.org>; Tue, 12 Feb 2013 15:18:46 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 07AD4F811F8; Tue, 12 Feb 2013 16:18:45 -0700 (MST)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 5A7A0F8119A;
	Tue, 12 Feb 2013 16:18:44 -0700 (MST)
Message-ID: <511ACDE5.9090704@mlbassoc.com>
Date: Tue, 12 Feb 2013 16:19:01 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130106 Thunderbird/17.0.2
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Control over Sato theme
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
X-List-Received-Date: Tue, 12 Feb 2013 23:18:46 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

I'd like to be able to control the Sato theme on my system,
with a softer approach than editing the "gtk-sato-engine" package.

I tried putting updated settings in /home/root/.gtkrc-2.0 but
they don't seem to have any affect.  I can see that this file
is being read (and presumably processed) as I bring up the
desktop, but why don't the settings stick?

Any ideas how I can make this work?

Also, when I tried editing the "data/gtkrc-vga" in the gtk-sato-engine
package I was able to change some settings in the theme, but I couldn't
get consistent coverage.  For example, I tried to make the predominant
background color something other than the light gray used by Sato, but
the unselected version of buttons still have the Sato colors and I don't
see how to change that, even in the gtk-sato-engine.

Any pointers would be very useful

Thanks

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

