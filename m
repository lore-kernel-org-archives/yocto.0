Return-Path: <paul.eggleton@linux.intel.com>
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 53C53E011DB
	for <yocto@yoctoproject.org>; Wed, 16 Jan 2013 10:14:33 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 16 Jan 2013 10:14:32 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.84,480,1355126400"; d="scan'208";a="277712945"
Received: from unknown (HELO helios.localnet) ([10.252.123.117])
	by fmsmga002.fm.intel.com with ESMTP; 16 Jan 2013 10:14:31 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Navani Srivastava <navani.srivastava@gmail.com>,
	Jon Szymaniak <jon.szymaniak@gmail.com>
Date: Wed, 16 Jan 2013 18:14:30 +0000
Message-ID: <19691651.cLZhLvd0Ni@helios>
Organization: Intel Corporation
User-Agent: KMail/4.9.3 (Linux/3.5.0-21-generic; KDE/4.9.3; i686; ; )
In-Reply-To: <CA+Z6RkXWTm-SPUPwW1Xrd0E_HXrLKd8Ah57wfkH5OspoG7o2Qg@mail.gmail.com>
References: <CANge7vUAQxfbBrkSwQd=0sxgUN71Gaveub07gPX9oYLsj9A3tQ@mail.gmail.com>
	<CANge7vWDaQj2+eYJpRnbhQ0NQ_V8A4zE0sBhXTnvGQDCC5MTHA@mail.gmail.com>
	<CA+Z6RkXWTm-SPUPwW1Xrd0E_HXrLKd8Ah57wfkH5OspoG7o2Qg@mail.gmail.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org,
	"navani.srivastava@lnties.com" <navani.srivastava@lnties.com>
Subject: Re: Remove unwanted package from Qt
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
X-List-Received-Date: Wed, 16 Jan 2013 18:14:33 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

On Wednesday 16 January 2013 23:26:20 Navani Srivastava wrote:
> On Thu, Dec 27, 2012 at 11:08 PM, Jon Szymaniak 
<jon.szymaniak@gmail.com>wrote:
> > >> I am compiling Qt-4.8.0 with poky-denzil-7.0 for arm1136 architecture.
> > >> 
> > >> At the time of integrating qt-embedded with rootfs, I am getting qtopia
> > >> directory in usr/share path of rootfs.
> > >> 
> > >> I tried removing qtopia directory through qt recipe but ended in
> > >> compilation error. Please suggest any idea to remove qtopia from share
> > >> directory.
> > > 
> > > I ran into this as well after using a bbappend to disable a number of
> > > Qt features, including the building of demos that get staged in the
> > > aforementioned path.  In my case, that qtopia directory (and any
> > > subdirectories) wound up either being empty or containing files that
> > > were unnecessary for my build.
> > > 
> > > My quick and dirty solution was to just to add a install_append()
> > > containing a 'rm -rf ${D}${datadir}/qtopia' in my bbappend. (Be sure
> > > you don't have anything important in there!) I'd be curious to hear if
> > > there's a better approach to this as well...
> > 
> > Oops...just wanted to note the typo in my above response -- I'm not at
> > a machine where I have access to my recipes.
> > 
> > That should be a do_install_append(), not install_append().  I'd also
> > double check the qtopia path, as I wrote that from memory, which may
> > not be reliable. ;)
>
> I tried the same but again ended up with error. As of now i am removing all
> unwanted things from rootfs by making changes in image_types.bbclass. I am
> sure this is not the correct way, any ideas are appreciated..

Can I ask both of you exactly how you are getting Qt installed into the image?

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

