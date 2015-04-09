Return-Path: <gary@mlbassoc.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BDCC6E00957; Thu,  9 Apr 2015 06:45:33 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 22175E008EC
	for <yocto@yoctoproject.org>; Thu,  9 Apr 2015 06:45:31 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id 08D36F811E3; Thu,  9 Apr 2015 07:45:30 -0600 (MDT)
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id A470EF811E2;
	Thu,  9 Apr 2015 07:45:30 -0600 (MDT)
Message-ID: <5526828B.3080709@mlbassoc.com>
Date: Thu, 09 Apr 2015 07:45:47 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.6.0
MIME-Version: 1.0
To: Yocto Project <yocto@yoctoproject.org>
Subject: Using PACKAGECONFIG
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
X-List-Received-Date: Thu, 09 Apr 2015 13:45:33 -0000
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 7bit

I'm trying to extend PACKAGECONFIG for a recipe (vlc).  The
main recipe contains this:
   PACKAGECONFIG ?= " live555"
   PACKAGECONFIG[mad] = "--enable-mad,--disable-mad,libmad"
   PACKAGECONFIG[a52] = "--enable-a52,--disable-a52,liba52"
   PACKAGECONFIG[jack] = "--enable-jack,--disable-jack,jack"
   PACKAGECONFIG[live555] = "--enable-live555,--disable-live555,live555"
   PACKAGECONFIG[libass] = "--enable-libass,--disable-libass,libass"
   PACKAGECONFIG[mkv] = "--enable-mkv,--disable-mkv,libmatroska libebml"
   PACKAGECONFIG[postproc] = "--enable-postproc,--disable-postproc,libpostproc"
   PACKAGECONFIG[opencv] = "--enable-opencv,--disable-opencv,opencv"
   PACKAGECONFIG[libva] = "--enable-libva --enable-avcodec,--disable-libva --disable-avcodec,libva libav"

I'd like to only add "libva" to the default, so I wrote this
in my local.conf:
   PACKAGECONFIG_pn-vlc_append = " libva"
Inspecting it
   $ bitbake vlc -e | grep ^PACKAGECONFIG
   PACKAGECONFIG=" libva"

Oops.  Just to be sure, I tried
   PACKAGECONFIG_pn-vlc = "live555 libva"
which gives
   $ bitbake vlc -e | grep ^PACKAGECONFIG
   PACKAGECONFIG="live555 libva"

Note: I tried
   PACKAGECONFIG_append_pn-vlc = " libva"
which does work.  However, I've also used
   PACKAGECONFIG_pn-chromium_append = " component-build"
for a different recipe that does work... VERY CONFUSED

What am I doing wrong?  How do I correctly add to the default list?

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

