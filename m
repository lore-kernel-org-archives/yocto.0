Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id 8372C4C804D9
	for <yocto@yoctoproject.org>; Thu, 23 Jun 2011 00:26:55 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Thu, 23 Jun 2011 13:26:42 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Thu, 23 Jun 2011
	13:26:40 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Date: Thu, 23 Jun 2011 13:29:52 +0800
In-Reply-To: <4E02A911.9060701@windriver.com>
References: <1308794126.28060.20.camel@localhost.localdomain>
	<4E02A911.9060701@windriver.com>
X-Mailer: Evolution 3.0.2 
Message-ID: <1308806992.28060.24.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: the mpc8315's compile option
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
X-List-Received-Date: Thu, 23 Jun 2011 05:26:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

done!
http://bugzilla.pokylinux.org/show_bug.cgi?id=1192

but it is the first time for me to use bugzilla, so if some misplay, let
me know, thanks!

On Thu, 2011-06-23 at 10:46 +0800, Bruce Ashfield wrote:
> On 11-06-22 9:55 PM, NiQingliang wrote:
> > mpc8315's core is e300c3, why use "tune-ppc603e.inc"?
> 
> The 603e represented a lowest common denominator tune file
> when the BSP was introduced, and it was available in poky at
> the time.
> 
> We simply haven't revisited the tuning for the BSP yet, since
> what we have works at the moment.
> 
> >
> > I think there should be an file named "tune-ppce300c3.inc"? I can find
> > it in openembedded.
> 
> I'd definitely like to see patches that provide better tuning for this
> BSP. So patches are welcome. Although at the moment, I'm not aware
> of any plans to revisit the tuning.
> 
> Perhaps you'd like to log this as an enhancement request in the
> yocto bugzilla ? That way we can be sure that it isn't forgotten.
> 
> Cheers,
> 
> Bruce
> 
> >
> >
> 

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



