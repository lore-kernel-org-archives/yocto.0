Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E7D38E00521; Thu,  4 Dec 2014 02:07:43 -0800 (PST)
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
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 71728E002F9;
	Thu,  4 Dec 2014 02:07:40 -0800 (PST)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by fmsmga102.fm.intel.com with ESMTP; 04 Dec 2014 02:07:40 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.97,862,1389772800"; d="scan'208";a="424972871"
Received: from pcanders-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl5.ger.corp.intel.com) ([10.252.18.170])
	by FMSMGA003.fm.intel.com with ESMTP; 04 Dec 2014 01:57:19 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Mohd Azril Ahmad <mohd.azril.ahmad@gmail.com>
Date: Thu, 04 Dec 2014 10:07:37 +0000
Message-ID: <2188349.7KB6yIDbtb@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.3 (Linux/3.17.4-200.fc20.x86_64; KDE/4.14.3; x86_64; ; )
In-Reply-To: <AF233D1473C1364ABD51D28909A1B1B73269627C@pgsmsx105.gar.corp.intel.com>
References: <CAJzb4Mg+WTSa=baqRsZxU2jWX3K94TT=10Gfi-f-DBwEJ5p0OQ@mail.gmail.com>
	<AF233D1473C1364ABD51D28909A1B1B73269627C@pgsmsx105.gar.corp.intel.com>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>, "Anuar,
	Nuhairi" <nuhairi.anuar@intel.com>, meta-intel@yoctoproject.org
Subject: Re: [meta-intel] GStreamer1.0 : gstreamer1.0-plugins-* doesn't extract the codec libraries into GStreamer library path
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
X-List-Received-Date: Thu, 04 Dec 2014 10:07:44 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Thursday 04 December 2014 09:16:42 Ong, Boon Leong wrote:
> Hi Azril,
>                 Thank you for your  question. For meta-intel related
> question, you should channel them to meta-intel M/L.
> Since I catch it here, I have just added it on your behalf. Thanks
> 
> BL
> 
> From: yocto-bounces@yoctoproject.org [mailto:yocto-bounces@yoctoproject.org]
> On Behalf Of Mohd Azril Ahmad
> Sent: Thursday, December 4, 2014 3:50 PM
> To: yocto@yoctoproject.org
> Subject: [yocto] GStreamer1.0 : gstreamer1.0-plugins-* doesn't extract the
> codec libraries into GStreamer library path
 
> Hi all,
> I have successfully built the Yocto with multilib environment by using the
> meta-intel BSP (ValleyIsland). Plus, I'm including the GStreamer1.0 base +
> VAAPI as my default video player.
> During the boot-up time, I've noticed
> that the GStreamer1.0-plugin libraries (good, bad, and ugly) are not
> extracted into the GST library path (/usr/lib64/gstreamer-1.0/). **On
> first, I was looking for "libgstisomp4.so" (to play video with qtdemux
> pipeline) but gst-inspect-1.0 returns nothing. After some investigations,
> I've observed that the bitbake (.bb) and include (.inc) recipe for
> gstreamer1.0-plugins-<good/bad/ugly> does not package out the *.so files
> and I have no choice but to force a .bbappend to install for it by adding :
> 
> FILES_${PN} += "${libdir}/gstreamer-1.0/*.so"
> My question here, why the plugin libraries are not extracted ? is it due to
> multilib environment ? or missing packaging steps in default recipe ?

I'm not sure if this is the problem you are experiencing, but if you are 
simply adding gstreamer1.0-plugins-<good/bad/ugly> to your image, that won't 
actually install any plugins. There is a -meta package for each of these which 
does pull in all of the plugin packages (e.g. gstreamer1.0-plugins-good-meta), 
or alternatively you can specify plugin packages individually if you want more 
control.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

