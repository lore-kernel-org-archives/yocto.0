Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 79AC1E00D71; Thu, 16 Jun 2016 05:45:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.analogue-micro.com (mail.analogue-micro.com
	[217.144.149.242])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60BB5E00D6B
	for <yocto@yoctoproject.org>; Thu, 16 Jun 2016 05:45:01 -0700 (PDT)
Received: by mail.analogue-micro.com (Postfix, from userid 999)
	id 5B05D68A01F; Thu, 16 Jun 2016 13:44:59 +0100 (BST)
Received: from zeus.mlbassoc.com (unknown [10.8.0.2])
	by mail.analogue-micro.com (Postfix) with ESMTP id A5DFA68A01C;
	Thu, 16 Jun 2016 13:44:58 +0100 (BST)
Received: from [127.0.0.1] (localhost.localdomain [127.0.0.1])
	by zeus.mlbassoc.com (Postfix) with ESMTP id 6F40B6740258;
	Thu, 16 Jun 2016 14:44:58 +0200 (CEST)
To: Yocto discussion list <yocto@yoctoproject.org>
From: Gary Thomas <gary@mlbassoc.com>
Message-ID: <57629F4A.4000403@mlbassoc.com>
Date: Thu, 16 Jun 2016 14:44:58 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
	Thunderbird/38.8.0
MIME-Version: 1.0
Subject: Switch to GTK+3
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
X-List-Received-Date: Thu, 16 Jun 2016 12:45:03 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I just tried a build from the latest Poky/Yocto master (2a85038dd)
Overall, I think the switch to GTK+3 is an improvement, but I have
a number of [usability] questions:

* I built firefox from meta-browser and noticed that on my touch only
device, it does not automatically pop-up the keyboard.  However, epiphany
does.  I've only done a little testing but that's what I observed.  Not
having this happen "on demand" (i.e. when a text field has the focus)
will make using a full screen application impossible on this hardware.

* Also on firefox, I can't seem to get the vertical scrollbar to work.
Again, with epiphany it at least works.

* The system also doesn't seem to play very nice with my GPU enhanced
i.MX6 and causes the SoC to overheat (didn't happen with GTK+2).  Makes
it rather unusable as well.

* gtk-play ran my 1GB system out of memory, just starting up :-(  This
caused a complete system lockup & I could not even restart the X server.
This application also seemed to run quite well with GTK+2

* There also seem to be a continuous stream of messages like these on the console:

   GLib-GIO-Message: Using the 'memory' GSettings backend.  Your settings will not be saved or shared with other 
applications.
   Gtk-Message: GtkDialog mapped without a transient parent. This is discouraged.

I know that these firefox vs. epiphany vs. chome vs. ... questions
are not really the responsibility of Yocto or OE-core, but it does
trickle down to those of us trying to use this framework.

Many thanks for any thoughts

n.b. I was torn what mailing list to use for this - it's tightly
tied to OE-core, but isn't really about patches or changes, more
about philosophy.  If the OE-core list is more appropriate, please
move the replies there.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

