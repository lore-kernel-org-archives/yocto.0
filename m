Return-Path: <heinold@mi.fu-berlin.de>
Received: from outpost1.zedat.fu-berlin.de (outpost1.zedat.fu-berlin.de
	[130.133.4.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5ADE6E01409
	for <yocto@yoctoproject.org>; Wed, 18 Apr 2012 01:12:52 -0700 (PDT)
Received: from relay1.zedat.fu-berlin.de ([130.133.4.67])
	by outpost1.zedat.fu-berlin.de (Exim 4.69) with esmtp
	(envelope-from <heinold@mi.fu-berlin.de>)
	id <1SKQ0Q-0005ME-FB>; Wed, 18 Apr 2012 10:12:50 +0200
Received: from andorra.imp.fu-berlin.de ([160.45.42.84])
	by relay1.zedat.fu-berlin.de (Exim 4.69) with esmtp
	(envelope-from <heinold@mi.fu-berlin.de>)
	id <1SKQ0P-0000Wc-VR>; Wed, 18 Apr 2012 10:12:50 +0200
Received: from heinold by internal andorra.imp.fu-berlin.de with local (Exim
	4.72) id 1SKQ0M-0007g8-Ql; Wed, 18 Apr 2012 10:12:46 +0200
Date: Wed, 18 Apr 2012 10:12:46 +0200
From: Henning Heinold <heinold@inf.fu-berlin.de>
To: openembedded-devel@lists.openembedded.org
Message-ID: <20120418081246.GA28842@mi.fu-berlin.de>
References: <20120417224028.5f80ebd7@eb-e6520>
MIME-Version: 1.0
In-Reply-To: <20120417224028.5f80ebd7@eb-e6520>
User-Agent: Mutt/1.5.20 (2009-06-14)
Sender: Henning Heinold <heinold@mi.fu-berlin.de>
X-Originating-IP: 160.45.42.84
X-Mailman-Approved-At: Wed, 18 Apr 2012 07:04:46 -0700
Cc: yocto@yoctoproject.org, openembedded-core@lists.openembedded.org
Subject: Re: [oe] meta-chromium
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
X-List-Received-Date: Wed, 18 Apr 2012 08:12:52 -0000
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit

On Tue, Apr 17, 2012 at 10:40:28PM +0200, Eric Bénard wrote:
> Hi,
> 
> we have pushed the begining of our (Eukréa Electromatique's team and
> especially Denis) work to get Chromium to build with OpenEmbedded Core
> to : git://github.com/eukrea/meta-chromium.git
> https://github.com/eukrea/meta-chromium
> 
> For the moment it's only tested on ARMv7 platforms (i.MX515 and i.MX535
> based) where it seems robust and quite fast on most of the HTML5 tests
> we ran (only WebGL doesn't yet work).
> 
> Feel free to send patches to improve the recipes and add support for
> other platforms.
> 
> TODO :
> - enable WebGL with OpenGL ES support
> - support other platforms than armv7
> - merge with meta-mozilla to create a meta-browser layer
> 
> Eric

Cool and thanks.

Bye Henning

