Return-Path: <fabian@opencode.eu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EC1C4E0080C; Tue,  2 Dec 2014 11:45:48 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from vs248254.vserver.de (vs248254.vserver.de [62.75.248.254])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5C50CE002F9
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 11:45:46 -0800 (PST)
X-No-Relay: not in my network
Received: from [192.168.1.18] (brsg-4dbbb208.pool.mediaWays.net [77.187.178.8])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: fabian@opencode.eu)
	by vs248254.vserver.de (Postfix) with ESMTPSA id E75B38B385D8
	for <yocto@yoctoproject.org>; Tue,  2 Dec 2014 20:45:44 +0100 (CET)
Message-ID: <547E16E8.1040409@opencode.eu>
Date: Tue, 02 Dec 2014 20:45:44 +0100
From: Fabian Schwartau <fabian@opencode.eu>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.2.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <547B7489.7090602@opencode.eu>
In-Reply-To: <547B7489.7090602@opencode.eu>
Subject: Re: gstreamers xvimagesink not working
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
X-List-Received-Date: Tue, 02 Dec 2014 19:45:49 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

I found this error message in the xorg log file:
[203203.410] (II) omapfb(0): XV: OMAPFBXVSetPortAttribute
[203203.523] (EE) omapfb(0): Failed to allocate video plane memory
[203203.523] (II) omapfb(0): XV: OMAPFBXVStopVideoGeneric (0)
[203203.548] (II) omapfb(0): XV: OMAPFBXVStopVideoGeneric (1)
I found nothing on this message on google, except a few snippets of 
source code.
Any ideas?

Am 30.11.2014 um 20:48 schrieb Fabian Schwartau:
> Hi,
> I build a core-image-x11 with beaglebone as machine. I added gstreamer
> 0.10 support which I will need in Qt. However, I am not able to play a
> video using xvimagesink like this:
> gst-launch filesrc location=/home/root/centaur_1.ogv ! oggdemux !
> theoradec ! ffmpegcolorspace  ! xvimagesink
> I get this error:
>
> Setting pipeline to PAUSED ...
> Pipeline is PREROLLING ...
> Pipeline is PREROLLED ...
> Setting pipeline to PLAYING ...
> New clock: GstSystemClock
> X Error of failed request:  BadAtom (invalid Atom parameter)
>    Major opcode of failed request:  147 (XVideo)
>    Minor opcode of failed request:  19 ()
>    Atom id in failed request:  0x3e
>    Serial number of failed request:  68
>    Current serial number in output stream:  69
>
> However, the first frame of the video shows up on the screen for a
> fraction of a second.
> As far as I understood xvimagesink uses hardware acceleration, whereas
> ximagesink does not. So what do I have to do to get it running?
> Do I have to build gstreamer-ti?

