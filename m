Return-Path: <kevin@corry.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B2C82E00C3D; Fri, 11 Aug 2017 14:23:46 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [216.40.44.97 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 305 seconds by postgrey-1.32 at yocto-www;
	Fri, 11 Aug 2017 14:23:45 PDT
Received: from smtprelay.hostedemail.com (smtprelay0097.hostedemail.com
	[216.40.44.97])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E78B7E00B83
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 14:23:45 -0700 (PDT)
Received: from smtprelay.hostedemail.com (10.5.19.251.rfc1918.com
	[10.5.19.251])
	by smtpgrave07.hostedemail.com (Postfix) with ESMTP id AC2D21803DCFE
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 21:18:40 +0000 (UTC)
Received: from filter.hostedemail.com (clb03-v110.bra.tucows.net
	[216.40.38.60])
	by smtprelay03.hostedemail.com (Postfix) with ESMTP id 170E6837F242
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 21:18:39 +0000 (UTC)
X-Session-Marker: 6B6576696E40636F7272792E636F6D
X-HE-Tag: dad28_2e61799368245
X-Filterd-Recvd-Size: 2180
Received: from [192.168.0.36] (24-216-189-58.dhcp.stls.mo.charter.com
	[24.216.189.58]) (Authenticated sender: kevin@corry.com)
	by omf02.hostedemail.com (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Fri, 11 Aug 2017 21:18:38 +0000 (UTC)
To: yocto@yoctoproject.org
From: Kevin Corry <kevin@corry.com>
Message-ID: <3a16e27e-3d4c-e304-8f71-0bf2719fdb13@corry.com>
Date: Fri, 11 Aug 2017 16:18:37 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.2.1
MIME-Version: 1.0
Subject: [psplash][PATCH] Fix text width calculation.
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
X-List-Received-Date: Fri, 11 Aug 2017 21:23:46 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Psplash: Fix text width calculation.

Using the "psplash-write MSG <message_text>" command, you can display messages
when the splash screen is running. As part of this, psplash needs to calculate
the height and width of the box to render on the screen to hold the text (which
will appear on top of the background image), which it does in the
psplash_fb_text_size() function in psplash-fb.c.

If the message contains multiple lines (i.e. it contains one or more newline
characters), then it looks like the intention is for psplash to use the length
of the longest single line as the width of this text box. However, there's a
bug in this calculation that leads to some multi-line messages being rendered
off the left edge of the screen, instead of properly centered.

To fix this, each time a newline is encountered, if the width of the current
line (w) is greater than the maximum line width (mw), update the maximum width.
Also, reset the current line width to zero so we can correctly calculate the
width of the next line.

Signed-off-by: Kevin Corry <kevin@corry.com>
---
 psplash-fb.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/psplash-fb.c b/psplash-fb.c
index d344e5a..c064d18 100644
--- a/psplash-fb.c
+++ b/psplash-fb.c
@@ -483,7 +483,8 @@ psplash_fb_text_size (int                *width,
       if (*c == '\n')
 	{
 	  if (w > mw)
-	    mw = 0;
+	    mw = w;
+	  w = 0;
 	  h += font->height;
 	  continue;
 	}
-- 
2.11.0


