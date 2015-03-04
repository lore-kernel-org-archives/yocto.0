Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DBDFAE00754; Wed,  4 Mar 2015 15:45:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 913FCE006EF
	for <yocto@yoctoproject.org>; Wed,  4 Mar 2015 15:44:58 -0800 (PST)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id C5927F811DA; Wed,  4 Mar 2015 16:44:57 -0700 (MST)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 4FFC6F811DA;
	Wed,  4 Mar 2015 16:44:57 -0700 (MST)
Message-ID: <54F798FD.4090200@mlbassoc.com>
Date: Wed, 04 Mar 2015 16:45:01 -0700
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.5.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: New gst-player
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
X-List-Received-Date: Wed, 04 Mar 2015 23:45:06 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I like that owl has been replaced by gst-player, but I need
some help figuring out how to get it working :-(  If you ask
it to play something and it doesn't have the appropriate
plugins available, it just sits there and acts stupid (no
error popup, nothing...).  For example, I tried to play a
MP4 file downloaded from YouTube and it complained:
   Now playing /home/root/Vlad+Louise.mp4
   Missing plugin: H.264 decoder
       ...
   Missing plugin: MPEG-4 AAC decoder
       ...
(those are only the relevant lines which I got by running it
by hand in a terminal window).

Any idea what I need to get installed to play this file?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

