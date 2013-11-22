Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F464E006B7
	for <yocto@yoctoproject.org>; Fri, 22 Nov 2013 02:50:45 -0800 (PST)
Received: from [69.196.158.250] (port=57534 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1VjoJt-00038m-Pl; Fri, 22 Nov 2013 05:50:42 -0500
Date: Fri, 22 Nov 2013 05:50:39 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
In-Reply-To: <CAP71WjyfTp3RvhQFrg937dOdREsaO8PUPq7GmaY6m=a=47wJmg@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1311220548170.5474@oneiric>
References: <alpine.DEB.2.02.1311211327360.10963@oneiric>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237983F50894@ORSMSX101.amr.corp.intel.com>
	<CAP71WjyfTp3RvhQFrg937dOdREsaO8PUPq7GmaY6m=a=47wJmg@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>, "Eggleton,
	Paul" <paul.eggleton@intel.com>
Subject: Re: FW: strange explanation of how to add a package to an existing recipe
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
X-List-Received-Date: Fri, 22 Nov 2013 10:50:49 -0000
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-48852063-1385117441=:5474"

--8323329-48852063-1385117441=:5474
Content-Type: TEXT/PLAIN; charset=ISO-8859-1
Content-Transfer-Encoding: 8BIT

On Thu, 21 Nov 2013, Nicolas Dechesne wrote:

>
> On Thu, Nov 21, 2013 at 7:35 PM, Rifenbark, Scott M <scott.m.rifenbark@intel.com> wrote:
>       >suggests that, to customize an image, you should copy the existing .bb file for
>       >that image to another name and add a line like:
>       >
>       >  IMAGE_INSTALL += "strace"
>       >
>       >but rather than *copy* the entire image file, isn't it easier to use what's
>       >already being used; that is, just "include" or "require" the existing .bb file.
>       >example: core-image-minimal-mtdutils.bb contains:
>
>
> i would agree with the doc. while it is tempting to include/require
> a 'minimal' image, and it is simpler at first sight, eventually you
> will need to have full control of all your image. especially when
> your 'image' is your 'product' that gets deployed. In such
> circumstances I believe it is more appropriate to not rely on an
> external recipe. e.g. if the minimal image you include change, all
> your derived images change too... 
>
> it's kind of a 'taste' choice, and you might want to choose to do
> differently, but still the best recommendation to me is to own your
> image recipes completely...

  your logic is sound; however, it's also reasonable to suspect that
if someone is going to create a new, initial image over which they
want full control, they may very well want to create some subtle
variants of that image (as is done with all those core images).

  so perhaps both approaches should be documented with the appropriate
caveats?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323329-48852063-1385117441=:5474--
