Return-Path: <opensource@keylevel.com>
Received: from hxhsvr03.internetintuitive.net (hxhsvr03.internetintuitive.net
	[80.254.228.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4953AE0129F
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2011 17:07:50 -0700 (PDT)
Received: from durham.keylevel.com ([109.224.134.115]:1606
	helo=MacBook-Pro.durham.keylevel.com)
	by hxhsvr03.internetintuitive.net with esmtpa (Exim 4.69)
	(envelope-from <opensource@keylevel.com>) id 1REUoy-0001nR-16
	for yocto@yoctoproject.org; Fri, 14 Oct 2011 00:36:16 +0100
Message-Id: <D03B2E35-B463-4120-8B97-D52C736B7D56@keylevel.com>
From: Chris Tapp <opensource@keylevel.com>
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Apple Message framework v936)
Date: Fri, 14 Oct 2011 00:36:13 +0100
X-Mailer: Apple Mail (2.936)
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - hxhsvr03.internetintuitive.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - keylevel.com
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Subject: Adding mp3 support to gstreamer
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
X-List-Received-Date: Fri, 14 Oct 2011 00:07:52 -0000
Content-Type: text/plain; charset=US-ASCII; format=flowed; delsp=yes
Content-Transfer-Encoding: 7bit

I'm trying to add mp3 support to gstreamer.

I've got a task that RDEPENDS on gst-meta-audio. The image produced  
includes gstreamer, as expected.

However, there is no mp3 decoder included. I've tried setting:

COMMERCIAL_AUDIO_PLUGINS = "gst-plugins-ugly-mad", but there was still  
no mp3 support.

I then tried adding an RDEPENDS on gst-ffmpeg. gst-inspect -b showed  
this as 'blacklisted'.

So, I then tried gst-fluendo-mp3, but I get a "nothing provides" error  
at build time.

What do I need to do to get mp3 decoding added to the image?

Chris Tapp

opensource@keylevel.com
www.keylevel.com




