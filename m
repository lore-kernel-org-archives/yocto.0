Return-Path: <leonardo.sandoval.gonzalez@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A30F7E0097F; Mon, 13 Jul 2015 08:47:08 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-4.0 required=5.0 tests=BAYES_00,FSL_MY_NAME_IS,
	RCVD_IN_DNSWL_HI autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  2.9 FSL_MY_NAME_IS BODY: My name is ...
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 10BC8E00895
	for <yocto@yoctoproject.org>; Mon, 13 Jul 2015 08:47:06 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by orsmga101.jf.intel.com with ESMTP; 13 Jul 2015 08:47:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.15,463,1432623600"; d="scan'208";a="761545249"
Received: from lsandov1-mobl-linux.zpn.intel.com (HELO [10.219.4.54])
	([10.219.4.54])
	by fmsmga002.fm.intel.com with ESMTP; 13 Jul 2015 08:47:05 -0700
Message-ID: <55A3DDA1.8020100@linux.intel.com>
Date: Mon, 13 Jul 2015 10:47:45 -0500
From: Leonardo Sandoval <leonardo.sandoval.gonzalez@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Icedove/31.7.0
MIME-Version: 1.0
To: Pampolini Matteo <matteo.pampolini@selex-es.com>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <1436797408174.67011@selex-es.com>
In-Reply-To: <1436797408174.67011@selex-es.com>
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
X-List-Received-Date: Mon, 13 Jul 2015 15:47:08 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit



On 07/13/2015 09:23 AM, Pampolini Matteo wrote:
> Hello everybody,
>
>
> my name is Matteo and I'm writing from Italy.
>
>
> I'm involved in a project that requires a very customized Linux installation and I think Yocto is the best choice for this purpose.
>
>
> I was able to build and run some images from Poky 1.8 reference and now I'm trying to create my own one, with a custom configuration of Qt for X11.
>
>
> In particular I would like to remove Phonon support to avoid GStreamer/GLib dependencies: the quickest (and bad) solution was to modify meta/recipes-qt/qt4/qt4.inc file and it works, of course.
>
>
> But in order to follow Yocto guidelines and learn the right approach, I would like to create a new layer and, with proper use of .bbappend files, create my own Qt custom configuration.
>

For this point, you can create a new layer and inside a new image file. 
This image will basically inherit the one you want, then you need to 
remove the specific recipe. A possible way to remove it is though 
IMAGE_INSTALL_remove = "<pkg to remove">

>
> Now I'm in trouble a little bit because I do not exactly now which Qt-related files should be included in my layer and how they should relate with the provided ones, may you please help me?
>

Dependencies can be found using the '-g' bitbake command line. That 
command produces .dot files, and you can parse these to figure out what 
you want.

>
> Many thanks in advance for your kind support,
>
>
> Matteo
>
>
>

