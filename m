Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8B388E00A08; Fri, 10 Mar 2017 17:36:25 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.179 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pf0-f179.google.com (mail-pf0-f179.google.com
	[209.85.192.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 54EC4E009B9
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 17:36:21 -0800 (PST)
Received: by mail-pf0-f179.google.com with SMTP id j5so48009493pfb.2
	for <yocto@yoctoproject.org>; Fri, 10 Mar 2017 17:36:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=subject:to:references:from:message-id:date:user-agent:mime-version
	:in-reply-to:content-language:content-transfer-encoding;
	bh=xiJEuAXNyBm6VxKOKaEXGblDC+kN8RR53lyxmZ63Ld0=;
	b=nv8g4KHikTPbrewP1EfjDe8ElWA5+Htx192K2tVL8YilKzbZG566hH8DraYnMKMiue
	qOYWpQ7Jr3PWSFe2OvhxMT7TbMEHOcpSWkk4nUALv1xFtU9JtejUxMDcTcPN5o/LERYm
	wL3Hh4+6yKbKd9XptJjvvDotcdqvS6PIeKxBy4xGZpqA7vHtFPqJC2GJ92IS5TuhK6Zk
	XJWtaBa0rkyyS/xywO/t8hSN6wLCq/0wKTUuaGCATW8w+00LuWVSpDlZ9c8AM9SoCBlu
	iEX3WInWBKd5frW1XDvhePtDUHDY9MMPZz4JJ1bxd/TAaks2YGkKGcVwqAKtxX1XppiN
	0f7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:subject:to:references:from:message-id:date
	:user-agent:mime-version:in-reply-to:content-language
	:content-transfer-encoding;
	bh=xiJEuAXNyBm6VxKOKaEXGblDC+kN8RR53lyxmZ63Ld0=;
	b=mXxrLlng5+E/UiivtN/0tRLTIDHLfisym5UYPMCFQh7OOX4JSHDL4TDnDkiib0rD2x
	T7nHwRyWSVy366Q03fDOskaMPUESO4EuMSo5o6z34Wo6rn2xwcbTPNXmcN+hHPAJDojW
	OHMci089WpY3DFVuFofZoHNnklADuH0iwRURyzRgAl8nZp0mmd0puPHinN40bAv24dpb
	Cu/6R1SKWiMQ6J/WJz9nrWzRt0/PC0FWzNPcKPETpOmMfG7suZy/GFfy5SuPpJSqyAag
	sgCEJ+dNUOMechWR1W+9wtfNLhp+EY0DBe/PYFxyVhccFnHJpd9kgpw7ih1pRDayNDNS
	zqHw==
X-Gm-Message-State: AMke39mOWsubCxiwk6ZULKy2Xm1yR0V9rsZcX9jk1orBQ1/7SsjHDuyGTDUE2T3FZlUvaw==
X-Received: by 10.99.124.88 with SMTP id l24mr24239060pgn.63.1489196181404;
	Fri, 10 Mar 2017 17:36:21 -0800 (PST)
Received: from CACSVMO-14452.local ([2601:646:8882:b8c:d16a:f79a:feb6:e660])
	by smtp.gmail.com with ESMTPSA id
	f205sm20821326pfa.35.2017.03.10.17.36.20 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Fri, 10 Mar 2017 17:36:20 -0800 (PST)
To: yocto@yoctoproject.org
References: <1488814083-7886-1-git-send-email-maxin.john@intel.com>
	<20170307120724.344b8587@lap0>
From: Khem Raj <raj.khem@gmail.com>
Message-ID: <c82ee003-af8a-9538-fe57-dd9e143b255d@gmail.com>
Date: Fri, 10 Mar 2017 17:36:19 -0800
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.12; rv:52.0)
	Gecko/20100101 Thunderbird/52.0
MIME-Version: 1.0
In-Reply-To: <20170307120724.344b8587@lap0>
Subject: Re: [meta-raspberrypi][PATCH] gstreamer1.0-omx: remove bbappend for version 1.2.0
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
X-List-Received-Date: Sat, 11 Mar 2017 01:36:25 -0000
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit



On 3/7/17 4:07 AM, Paul Barker wrote:
> On Mon,  6 Mar 2017 17:28:03 +0200
> "Maxin B. John" <maxin.john@intel.com> wrote:
> 
>> OE-Core rev: aa06a18d59eb391d1a7ace9daa0681bdf8daf17f
>> removed gstreamer1.0-omx_1.2.0 recipe.
>>
>> Signed-off-by: Maxin B. John <maxin.john@intel.com>
>> ---
>>  ...o-acquire-buffer-when-src-pad-isn-t-activ.patch |  48 --------
>>  .../0001-config-files-path.patch                   | 137
>> --------------------- .../0002-fix-decoder-flushing.patch
>> |  16 --- .../0003-no-timeout-on-get-state.patch             |  16 ---
>>  ...erly-handle-drain-requests-while-flushing.patch |  69 -----------
>>  ...-gst_omx_video_dec_set_format-if-there-s-.patch |  30 -----
>>  ...-unref-allocator-after-getting-it-from-al.patch |  48 --------
>>  ...mxvideodec-Use-gstglmemoryegl-for-the-RPi.patch | 115
>> ----------------- .../gstreamer/gstreamer1.0-omx_1.2.0.bbappend
>> |  14 --- 9 files changed, 493 deletions(-)
>>  delete mode 100644
>> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-Don-t-try-to-acquire-buffer-when-src-pad-isn-t-activ.patch
>> delete mode 100644
>> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0001-config-files-path.patch
>> delete mode 100644
>> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0002-fix-decoder-flushing.patch
>> delete mode 100644
>> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0003-no-timeout-on-get-state.patch
>> delete mode 100644
>> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0004-Properly-handle-drain-requests-while-flushing.patch
>> delete mode 100644
>> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0005-Don-t-abort-gst_omx_video_dec_set_format-if-there-s-.patch
>> delete mode 100644
>> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0006-omxvideodec-unref-allocator-after-getting-it-from-al.patch
>> delete mode 100644
>> recipes-multimedia/gstreamer/gstreamer1.0-omx-1.2.0/0007-omxvideodec-Use-gstglmemoryegl-for-the-RPi.patch
>> delete mode 100644
>> recipes-multimedia/gstreamer/gstreamer1.0-omx_1.2.0.bbappend
> 
> I got a parse failure on all my scheduled builds last night. This patch
> fixes the builds for me :)

These are now staged in kraj/master on my github with few other changes.

> 
> Thanks,
> Paul
> 

