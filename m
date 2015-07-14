Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FF02E008CE; Tue, 14 Jul 2015 01:06:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [192.55.52.115 listed in list.dnswl.org]
Received: from mga14.intel.com (mga14.intel.com [192.55.52.115])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C3F9E0086E
	for <yocto@yoctoproject.org>; Tue, 14 Jul 2015 01:06:37 -0700 (PDT)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by fmsmga103.fm.intel.com with ESMTP; 14 Jul 2015 01:06:37 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,470,1432623600"; d="scan'208";a="764016882"
Received: from cbernard-mobl.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.31.54])
	by orsmga002.jf.intel.com with ESMTP; 14 Jul 2015 01:06:37 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 14 Jul 2015 09:06:35 +0100
Message-ID: <59871636.IPlF15pPhG@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.7-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <20150713180442.GB2407@jama>
References: <1436797408174.67011@selex-es.com>
	<10339162.sO6SsRz4fR@peggleto-mobl.ger.corp.intel.com>
	<20150713180442.GB2407@jama>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Which is the best strategy to customize Qt configuration?
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
X-List-Received-Date: Tue, 14 Jul 2015 08:06:42 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 13 July 2015 20:04:42 Martin Jansa wrote:
> On Mon, Jul 13, 2015 at 05:38:59PM +0100, Paul Eggleton wrote:
> > On Monday 13 July 2015 16:18:55 Pampolini Matteo wrote:
> > > It was also my idea to override QT_PHONON variable inside my .bbappend
> > > file, but the fact is that this does not prevent BitBake from
> > > downloading and compiling glib/gstreamer.
> > > 
> > > In my first hack, when I modified the original qt.inc file, I had to
> > > make
> > > both changes, DEPENDS variable for BitBake and QT_PHONON for Qt itself.
> > > 
> > > As I wrote in my answer to Leonardo the issue is: how can I override the
> > > value of DEPENDS variable in my own layer, if possible?
> > 
> > You can set DEPENDS in the qt4-x11-free bbappend just as with any other
> > variable. In this instance you could use the _remove operator e.g.
> > 
> > DEPENDS_remove = "gstreamer gst-plugins-base"
> 
> Will this work if gstreamer gst-plugins-base aren't next to each other
> in DEPENDS?

Yes, it will. Try it ;)

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

