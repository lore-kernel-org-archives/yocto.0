Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 18251E008DC; Mon, 13 Jul 2015 09:07:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.24 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4E152E00895
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 09:07:13 -0700 (PDT)
Received: from fmsmga003.fm.intel.com ([10.253.24.29])
	by orsmga102.jf.intel.com with ESMTP; 13 Jul 2015 09:07:13 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,463,1432623600"; d="scan'208";a="523507343"
Received: from kieranfl-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.30.146])
	by FMSMGA003.fm.intel.com with ESMTP; 13 Jul 2015 09:05:49 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Pampolini Matteo <matteo.pampolini@selex-es.com>,
	Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
Date: Mon, 13 Jul 2015 17:05:48 +0100
Message-ID: <10339148.fJj1pddUcL@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.0.6-200.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <55A3DDA1.8020100@linux.intel.com>
References: <1436797408174.67011@selex-es.com>
	<55A3DDA1.8020100@linux.intel.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
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
X-List-Received-Date: Mon, 13 Jul 2015 16:07:18 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 13 July 2015 10:47:45 Leonardo Sandoval wrote:
> On 07/13/2015 09:23 AM, Pampolini Matteo wrote:
> > I'm involved in a project that requires a very customized Linux
> > installation and I think Yocto is the best choice for this purpose.
> > 
> > I was able to build and run some images from Poky 1.8 reference and now
> > I'm trying to create my own one, with a custom configuration of Qt for
> > X11.
> > 
> > In particular I would like to remove Phonon support to avoid
> > GStreamer/GLib dependencies: the quickest (and bad) solution was to
> > modify meta/recipes-qt/qt4/qt4.inc file and it works, of course.
> > 
> > But in order to follow Yocto guidelines and learn the right approach, I
> > would like to create a new layer and, with proper use of .bbappend files,
> > create my own Qt custom configuration.
>
> For this point, you can create a new layer and inside a new image file.
> This image will basically inherit the one you want, then you need to
> remove the specific recipe. A possible way to remove it is though
> IMAGE_INSTALL_remove = "<pkg to remove">

That doesn't really help with Qt configuration - you can't change any of that 
at the image level.

The way to set this properly is to look at how qt4.inc is structured - note 
that the -phonon / -no-phonon option for example is set through a variable 
QT_PHONON. There are several different ways you could set this:

1) Use a bbappend on the qt4-x11-free recipe that sets 
QT_PHONON = "-no-phonon"

2) Set it from your distro config (or some include file from there) using
QT_PHONON_pn-qt4-x11-free = "-no-phonon"

3) Since this variable specifically is being set in the .inc file with ?= and is 
reasonably well namespaced (i.e. has a name which is unlikely to clash with 
variables used in other recipes for a different purpose), you could 
alternatively just set it from your distro config simply as 
QT_PHONON = "-no-phonon"

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

