Return-Path: <gley-yocto@m.gmane.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00594E0073D; Sat, 10 May 2014 04:38:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE,RDNS_NONE,SPF_HELO_PASS autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [80.91.229.3 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (auslands-kv[at]gmx.de)
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from plane.gmane.org (unknown [80.91.229.3])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B860E0070F
	for <yocto@yoctoproject.org>; Sat, 10 May 2014 04:38:14 -0700 (PDT)
Received: from list by plane.gmane.org with local (Exim 4.69)
	(envelope-from <gley-yocto@m.gmane.org>) id 1Wj5bZ-0002O4-Hs
	for yocto@yoctoproject.org; Sat, 10 May 2014 13:38:13 +0200
Received: from 80-218-32-173.dclient.hispeed.ch ([80.218.32.173])
	by main.gmane.org with esmtp (Gmexim 0.1 (Debian))
	id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 10 May 2014 13:38:13 +0200
Received: from auslands-kv by 80-218-32-173.dclient.hispeed.ch with local
	(Gmexim 0.1 (Debian)) id 1AlnuQ-0007hv-00
	for <yocto@yoctoproject.org>; Sat, 10 May 2014 13:38:13 +0200
X-Injected-Via-Gmane: http://gmane.org/
To: yocto@yoctoproject.org
From: Neuer User <auslands-kv@gmx.de>
Date: Sat, 10 May 2014 13:37:59 +0200
Message-ID: <lkl32n$3qq$1@ger.gmane.org>
References: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>	<CAJTo0LZ_S=mNgM6gtPSfYf=AVRxdLcJ_CO31c+emmQrib80hjw@mail.gmail.com>	<536CF208.3000400@gmx.de>
	<CAJTo0LZJ-cLjvGH5YZA1Tu-Wz6biKn=A2mVp5rrkwzkFB-ggTg@mail.gmail.com>
Mime-Version: 1.0
X-Complaints-To: usenet@ger.gmane.org
X-Gmane-NNTP-Posting-Host: 80-218-32-173.dclient.hispeed.ch
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
In-Reply-To: <CAJTo0LZJ-cLjvGH5YZA1Tu-Wz6biKn=A2mVp5rrkwzkFB-ggTg@mail.gmail.com>
Subject: Re: [oe] GStreamer 0.10's future
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
X-List-Received-Date: Sat, 10 May 2014 11:38:23 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Sounds like a good idea.

Am 09.05.2014 21:22, schrieb Burton, Ross:
> On 9 May 2014 16:19, Neuer User <auslands-kv@gmx.de> wrote:
>> Yes, it does, as long as you need QtMultimedia. Same applies to Qt5.
>> There was a discussion on the Qt mailing list about moving to
>> gstreamer1.0, but this seems to be rather some time in the future was my
>> impression.
> 
> So Qt 5.3 won't have GStreamer 1.0 support.  The port is being done in
> a branch so it's possible that it will land in Qt 5.4, which is due to
> be released in the September/October timeframe.
> 
> One option would be to move GStreamer 0.10 into another layer, give
> Qt4/Qt5 disabled-by-default GStreamer 0.10 options and hope that by
> the time Yocto 1.7 is released, Qt5.4 with GStreamer 1.0 is also
> released.  Even as someone who's rather keen on removing cruft from
> oe-core that's a bit too eager for my liking.
> 
> Revised plan unless anyone has a better idea: in 1.7 we'll move
> everything possible away from GStreamer 0.10 but keep 0.10 around
> until the 1.8 cycle, and then revisit the Qt situation.
> 
> Ross
> 



