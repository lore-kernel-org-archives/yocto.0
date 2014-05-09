Return-Path: <auslands-kv@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E05FEE0073A; Fri,  9 May 2014 08:19:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: *
X-Spam-Status: No, score=1.3 required=5.0 tests=FREEMAIL_FROM,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (auslands-kv[at]gmx.de)
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from mail.banditt-management.com (unknown [176.28.28.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F11BE00478
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 08:19:39 -0700 (PDT)
Received: from localhost (localhost.localdomain [127.0.0.1])
	by mail.banditt-management.com (Postfix) with SMTP id 05A1714E061A
	for <yocto@yoctoproject.org>; Fri,  9 May 2014 17:19:37 +0200 (CEST)
Received: from [172.17.2.61] (80-218-32-173.dclient.hispeed.ch [80.218.32.173])
	(using TLSv1 with cipher DHE-RSA-AES128-SHA (128/128 bits))
	(No client certificate requested)
	by mail.banditt-management.com (Postfix) with ESMTPSA id 43EB614E0267; 
	Fri,  9 May 2014 17:19:37 +0200 (CEST)
Message-ID: <536CF208.3000400@gmx.de>
Date: Fri, 09 May 2014 17:19:36 +0200
From: Neuer User <auslands-kv@gmx.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:24.0) Gecko/20100101 Thunderbird/24.5.0
MIME-Version: 1.0
Newsgroups: gmane.comp.handhelds.openembedded,
	gmane.comp.handhelds.openembedded.core,
	gmane.linux.embedded.yocto.general
To: openembedded-devel@lists.openembedded.org, 
	OE-core <openembedded-core@lists.openembedded.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <CAJTo0LZbPXzXyvKXGZZYDT1BDWg3XYrRO_NXsXmuHLMmmW_S3Q@mail.gmail.com>
	<CAJTo0LZ_S=mNgM6gtPSfYf=AVRxdLcJ_CO31c+emmQrib80hjw@mail.gmail.com>
In-Reply-To: <CAJTo0LZ_S=mNgM6gtPSfYf=AVRxdLcJ_CO31c+emmQrib80hjw@mail.gmail.com>
X-DSPAM-Result: Whitelisted
X-DSPAM-Processed: Fri May  9 17:19:37 2014
X-DSPAM-Confidence: 0.9902
X-DSPAM-Improbability: 1 in 10120 chance of being spam
X-DSPAM-Probability: 0.0000
X-DSPAM-Signature: 536cf2098825458110516
X-DSPAM-Factors: 27, schrieb, 0.00213, Burton, 0.01000, Burton, 0.01000,
	GStreamer, 0.01000, GStreamer, 0.01000, Ross, 0.01000,
	Ross, 0.01000, QtMultimedia, 0.01000, disable, 0.01000,
	To*yoctoproject.org>, 0.01000, upstream, 0.01000,
	Qt4, 0.01000, Qt4, 0.01000, ported, 0.01000, Qt5, 0.01000,
	From*Neuer User <auslands-kv@gmx.de>, 0.01000,
	From*kv, 0.01000, From*Neuer, 0.01000, intel, 0.01000,
	meta, 0.01000, From*User, 0.01000, To*<yocto, 0.01000,
	oe, 0.01000, oe, 0.01000, Same, 0.01000, Qt, 0.01000,
	wrote, 0.02597
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
X-List-Received-Date: Fri, 09 May 2014 15:19:39 -0000
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: 7bit

Am 08.05.2014 17:54, schrieb Burton, Ross:
> On 8 May 2014 15:48, Burton, Ross <ross.burton@intel.com> wrote:
>> For the 1.7 release I want to move GStreamer 0.10 from oe-core into
>> meta-multimedia, and ensure everything in oe-core has ported to
>> GStreamer 1.x.  GStreamer 0.10 is considered dead upstream and is
>> unmaintained so we don't need to be shipping both versions anymore.
> 
> So the catch here is that Qt4 currently depends on GStreamer 0.10.
> 
Yes, it does, as long as you need QtMultimedia. Same applies to Qt5.
There was a discussion on the Qt mailing list about moving to
gstreamer1.0, but this seems to be rather some time in the future was my
impression.

> Can someone who doesn't come out in a rash when looking at C++ code
> spend two minutes to tell if me Qt4 supports GStreamer 1.0 (unlikely)
> and whether we can make GStreamer 0.10 support a build-time
> configuration and simply disable it in oe-core.
> 
> Ross
> 



