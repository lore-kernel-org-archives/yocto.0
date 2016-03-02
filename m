Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7F55E0090C; Wed,  2 Mar 2016 13:16:42 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 99515E00897
	for <yocto@yoctoproject.org>; Wed,  2 Mar 2016 13:16:39 -0800 (PST)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by fmsmga102.fm.intel.com with ESMTP; 02 Mar 2016 13:16:39 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.22,530,1449561600"; d="scan'208";a="756978276"
Received: from gslim-mobl4.gar.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.255.139.223])
	by orsmga003.jf.intel.com with ESMTP; 02 Mar 2016 13:16:37 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Giordon Stark <gstark@cern.ch>
Date: Thu, 03 Mar 2016 10:16:35 +1300
Message-ID: <12143516.nF9hEN28vI@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.10 (Linux/4.4.2-301.fc23.x86_64; KDE/4.14.17; x86_64; ;
	)
In-Reply-To: <CAFzUWGnCD1m3jmbgyNqhhM0QeeO1mGnGuk7qy=F329r1zLoTqA@mail.gmail.com>
References: <2956615.y8hyrZheM7@peggleto-mobl.ger.corp.intel.com>
	<3422071.a5vtJpgWht@peggleto-mobl.ger.corp.intel.com>
	<CAFzUWGnCD1m3jmbgyNqhhM0QeeO1mGnGuk7qy=F329r1zLoTqA@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [Openembedded-architecture] Standalone image writer
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
X-List-Received-Date: Wed, 02 Mar 2016 21:16:43 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Giordon,

The image writer in question has no specific support for Xilinx boards. If 
you're having a problem relating to the Xilinx BSP and you don't get a 
response here then I'd suggest contacting the BSP maintainer(s).

Cheers,
Paul

On Mon, 29 Feb 2016 20:05:44 Giordon Stark wrote:
> Hi all,
> 
> In a similar problem -- I find that the boot.bin file does not work out of
> the box when I copy the files over to the SDCard to boot on a Xilinx board.
> I end up having to open the SDK and generate a BOOT image myself using the
> other files that were generated (u-boot, devicetree) with the SDK's
> FSBL.elf. Is this a known problem or would a centralized solution for
> creating the image solve this?
> 
> Giordon
> 
> On Mon, Feb 29, 2016 at 1:53 PM Paul Eggleton
> <paul.eggleton@linux.intel.com>
> wrote:
> > On Mon, 29 Feb 2016 11:27:15 Barros Pena, Belen wrote:
> > > On 29/02/2016 08:12, "yocto-bounces@yoctoproject.org on behalf of Paul
> > > Eggleton" <yocto-bounces@yoctoproject.org on behalf of
> > > 
> > > paul.eggleton@linux.intel.com> wrote:
> > > >There isn't a frontend UI for wic that I am aware of though - as I
> > > >mentioned earlier image-writer has no support for it, it's just doing a
> > > >straight dd to the device.
> > > 
> > > We would really like to add support for wic at some point.
> > > 
> > > https://bugzilla.yoctoproject.org/show_bug.cgi?id=8769
> > 
> > True, but that's a slightly different usage of wic - i.e. preparing the
> > formatted image, which we should support. However, writing a formatted
> > image
> > to an SD card / USB stick isn't something you could practically do from a
> > web-
> > based application I don't think - not without help from a local
> > application at
> > any rate.
> > 
> > Cheers,
> > Paul
> > 
> > --
> > 
> > Paul Eggleton
> > Intel Open Source Technology Centre
> > --
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto

-- 

Paul Eggleton
Intel Open Source Technology Centre

