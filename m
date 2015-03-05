Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E25A6E008CC; Thu,  5 Mar 2015 04:16:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A87DE00718
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 04:16:38 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 3ABE6F811DA; Thu,  5 Mar 2015 05:16:38 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id BFED7F811DA;
	Thu,  5 Mar 2015 05:16:37 -0700 (MST)
Message-ID: <54F8492B.2010205@mlbassoc.com>
Date: Thu, 05 Mar 2015 05:16:43 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <54F798FD.4090200@mlbassoc.com>
	<CAJTo0Lb+8aUN8Ufgx-5W6zfs=V_CK=eY2DgeeGeGJUyz0u22gA@mail.gmail.com>
In-Reply-To: <CAJTo0Lb+8aUN8Ufgx-5W6zfs=V_CK=eY2DgeeGeGJUyz0u22gA@mail.gmail.com>
Subject: Re: New gst-player
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
X-List-Received-Date: Thu, 05 Mar 2015 12:16:44 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 2015-03-04 23:32, Burton, Ross wrote:
>
> On 4 March 2015 at 23:45, Gary Thomas <gary@mlbassoc.com <mailto:gary@mlbassoc.com>> wrote:
>
>     I like that owl has been replaced by gst-player, but I need
>     some help figuring out how to get it working :-(  If you ask
>     it to play something and it doesn't have the appropriate
>     plugins available, it just sits there and acts stupid (no
>     error popup, nothing...).  For example, I tried to play a
>     MP4 file downloaded from YouTube and it complained:
>        Now playing /home/root/Vlad+Louise.mp4
>        Missing plugin: H.264 decoder
>            ...
>        Missing plugin: MPEG-4 AAC decoder
>            ...
>     (those are only the relevant lines which I got by running it
>     by hand in a terminal window).
>
>     Any idea what I need to get installed to play this file?
>
>
> Yes, we should probably patch it to hook into those signals and show a dialog with more useful diagnostics.
>
> If you have recent Intel HW, gstreamer-vaapi-1.0 will handle H264 in hardware.  Otherwise gstreamer-libav has an AAC decoder and a software H264 decoder.

Intel hardware?  Nah, everything here is ARM :-)

Using gstreamer1.0-libav seems to work, but it's really power hungry
(i.e can cause my board's power supply over current!).  Does this
plugin just hook into libav?  I've tried playing the same file using
mplayer (which does use libav) and it doesn't have the same power
issues.

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

