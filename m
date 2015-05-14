Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 64A3BE009BB; Thu, 14 May 2015 07:15:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21E05E00956
	for <yocto@yoctoproject.org>; Thu, 14 May 2015 07:14:53 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 7CE2CF811E0; Thu, 14 May 2015 08:14:52 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 1298CF811DC;
	Thu, 14 May 2015 08:14:52 -0600 (MDT)
Message-ID: <5554ADDE.7030508@mlbassoc.com>
Date: Thu, 14 May 2015 08:14:54 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: gtk-play issues
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
X-List-Received-Date: Thu, 14 May 2015 14:15:01 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm having issues with the new media player (gtk-play and gst-play)
on my i.MX6 based systems.  In order to try and track the problems,
I'm trying to build these programs outside of Yocto (so I can hopefully
see *how* they are meant to work).  Once I can build & test on something
other than my i.MX6, I hope to be able to fix the behaviour there.

I'm trying to build on the latest Ubuntu (15.04/x86_64), but have
run into a block in ./configure:
   No package 'gstreamer-video-1.0' found.
   No package 'gstreamer-pbutils-1.0' found.

Does anyone know what package(s) I need to install to be able
to complete the build?

Thanks for any pointers

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

