Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga03.intel.com (mga03.intel.com [143.182.124.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3DEF3E00282
	for <yocto@yoctoproject.org>; Tue, 17 Jul 2012 08:39:39 -0700 (PDT)
Received: from azsmga001.ch.intel.com ([10.2.17.19])
	by azsmga101.ch.intel.com with ESMTP; 17 Jul 2012 08:39:38 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.71,315,1320652800"; d="scan'208";a="169429438"
Received: from unknown (HELO helios.localnet) ([10.252.121.35])
	by azsmga001.ch.intel.com with ESMTP; 17 Jul 2012 08:39:38 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Tue, 17 Jul 2012 16:39:37 +0100
Message-ID: <1909558.65z9niKLNS@helios>
Organization: Intel Corporation
User-Agent: KMail/4.8.4 (Linux/3.2.0-26-generic-pae; KDE/4.8.4; i686; ; )
In-Reply-To: <CANge7vX-hAtgt50q+h8B=iVGLgEi6sTx4OsJ_o1QKBX_vvANng@mail.gmail.com>
References: <CANge7vX-hAtgt50q+h8B=iVGLgEi6sTx4OsJ_o1QKBX_vvANng@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: do_configure() failure with my qt4-embedded_4.8.0.bbappend
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 17 Jul 2012 15:39:39 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Tuesday 17 July 2012 10:46:56 Jon Szymaniak wrote:
> QT_CONFIG_FLAGS := "-release -no-rpath -reduce-relocations -shared\
>  -no-mmx -no-3dnow -no-sse -no-sse2 -no-sse3 -no-sse4.1 -no-sse4.2 -no-avx\
>  -no-glib -no-largefile -no-accessibility -no-openssl -no-gtkstyle
> -no-exceptions\
>  -no-xcursor -no-xinerama -no-phonon -no-phonon-backend -no-svg -no-webkit\
>  -no-libmng -no-accessibility -no-qt3support -no-xmlpatterns\
>  -no-audio-backend -no-gif -nomake examples -nomake demos
> -no-javascript-jit\ -no-nis -no-cups -no-declarative-debug\
>  -no-sql-db2 -no-sql-ibase -no-sql-mysql -no-sql-oci -no-sql-odbc\
>  -no-sql-sqlite -no-sql-sqlite2 -no-sql-sqlite_symbian -no-sql-tds\
>  -no-xkb -no-kbd-tty -no-kbd-qnx -no-mouse-linuxinput\
>  -no-mouse-tslib -no-mouse-qnx -no-mouse-linuxtp\
>  -qt-mouse-pc -qt-kbd-linuxinput\
>  -qt-gfx-linuxfb -qt-gfx-multiscreen\
>  -depths 8,16,24,32\
>  -declarative -script"
> 
> I see a lot of errors during qt4-embedded_4.8.0's do_configure, where
> some auto-detection compilation tests are run, for features that aren't
> relevant or that I've explicitly disabled. (e.g., sse3, PostgreSQL)
> 
> Ultimately, this stage fails with:
>  "XLib disabled. Basic XLib functionality test failed!"
> 
> Could someone shed some light on this? I don't intend to use X11, so I'm
> a bit confused as to why this induces a failure.

Since you're providing your own value of QT_CONFIG_FLAGS I think you're 
missing -embedded $QT_ARCH and possibly -qtlibinfix ${QT_LIBINFIX} (see 
meta/recipes-qt/qt4/qt4-embedded.inc).

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

