Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2681DE00B8F; Mon, 26 Oct 2015 01:08:36 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CB96EE00978
	for <yocto@yoctoproject.org>; Mon, 26 Oct 2015 01:08:32 -0700 (PDT)
Received: from orsmga003.jf.intel.com ([10.7.209.27])
	by orsmga103.jf.intel.com with ESMTP; 26 Oct 2015 01:08:32 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.20,200,1444719600"; d="scan'208";a="671722504"
Received: from randjicd-mobl1.ger.corp.intel.com (HELO
	peggleto-mobl.ger.corp.intel.com) ([10.252.27.7])
	by orsmga003.jf.intel.com with ESMTP; 26 Oct 2015 01:08:30 -0700
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: yocto@yoctoproject.org
Date: Mon, 26 Oct 2015 08:08:29 +0000
Message-ID: <5542134.NUiWrkt5lN@peggleto-mobl.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.9 (Linux/4.1.8-100.fc21.x86_64; KDE/4.14.9; x86_64; ; )
In-Reply-To: <1445812988-6456-1-git-send-email-net147@gmail.com>
References: <1445812988-6456-1-git-send-email-net147@gmail.com>
MIME-Version: 1.0
Subject: Re: [meta-raspberrypi][PATCH v2] qtbase: enable Raspberry Pi support
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
X-List-Received-Date: Mon, 26 Oct 2015 08:08:36 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Monday 26 October 2015 09:43:08 Jonathan Liu wrote:
> [Support #16]
> 
> Signed-off-by: Jonathan Liu <net147@gmail.com>
> ---
>  recipes-qt/qt5/qtbase_%.bbappend | 6 ++++++
>  1 file changed, 6 insertions(+)
>  create mode 100644 recipes-qt/qt5/qtbase_%.bbappend
> 
> diff --git a/recipes-qt/qt5/qtbase_%.bbappend
> b/recipes-qt/qt5/qtbase_%.bbappend new file mode 100644
> index 0000000..3e5e667
> --- /dev/null
> +++ b/recipes-qt/qt5/qtbase_%.bbappend
> @@ -0,0 +1,6 @@
> +do_configure_prepend_rpi() {
> +    cat > ${S}/mkspecs/oe-device-extra.pri << 'EOF'
> +EGLFS_DEVICE_INTEGRATION = eglfs_brcm
> +QMAKE_LIBS_EGL = -lEGL -lGLESv2
> +EOF
> +}

I'm wondering if this is a good idea or not. I appreciate the intention, but 
does bbappending non-machine-specific recipes like this play well when you have 
other machines enabled in the same distro?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

