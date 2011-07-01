Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id B64BE4C80A1D
	for <yocto@yoctoproject.org>; Fri,  1 Jul 2011 03:53:49 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Fri, 1 Jul 2011 16:53:16 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Fri, 1 Jul 2011
	16:53:15 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: "Cui, Dexuan" <dexuan.cui@intel.com>
Date: Fri, 1 Jul 2011 16:56:42 +0800
In-Reply-To: <1865303E0DED764181A9D882DEF65FB6A1FA38BB68@shsmsx502.ccr.corp.intel.com>
References: <1309399927.1876.7.camel@localhost.localdomain>
	<1865303E0DED764181A9D882DEF65FB6A1F4FC67BD@shsmsx502.ccr.corp.intel.com>
	<1309400982.1876.10.camel@localhost.localdomain>
	<1865303E0DED764181A9D882DEF65FB6A1F4FC67BF@shsmsx502.ccr.corp.intel.com>
	<1309403903.24059.8.camel@localhost.localdomain>
	<4E0D0CEE.1000907@linux.intel.com>
	<1309484065.10559.7.camel@localhost.localdomain>
	<1309484869.10559.9.camel@localhost.localdomain>
	<1309488329.10559.12.camel@localhost.localdomain>
	<1309490029.25082.1.camel@localhost.localdomain>
	<1865303E0DED764181A9D882DEF65FB6A1FA38BB68@shsmsx502.ccr.corp.intel.com>
X-Mailer: Evolution 3.0.2 
Message-ID: <1309510602.12519.3.camel@localhost.localdomain>
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: dependency gui problem
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
X-List-Received-Date: Fri, 01 Jul 2011 08:53:57 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

according my understanding, the parseXX serials events is used for
"parsing recipes" window, and the cacheXX serials events is used for
"loading cache" window. The two windows is mutual-excluded.

thanks!!!

I will ask the bitbake developer, and will show you if I got the answer.

On Fri, 2011-07-01 at 16:44 +0800, Cui, Dexuan wrote:
> NiQingliang wrote:
> > I have changed that code section, and solved my problem, but I don't
> > know if it is the right way.
> >
> >             if isinstance(event, bb.event.CacheLoadCompleted):
> >                  pbar.hide()
> >                  continue
> >             .......
> >             if isinstance(event, bb.event.ParseCompleted):
> >                  pbar.hide()
> >                  continue
> >
> > On Fri, 2011-07-01 at 10:45 +0800, NiQingliang wrote:
> >> I have looked the fiel depexp.py, and have some doubt:
> >>
> >> why in "ParseCompleted", the progress bar will hide, but in
> >> "CacheLoadCompleted", it will not???????
> I guess there should be a ParseCompleted event after the CacheLoadCompleted event(?), but on your host, the ParseCompleted doesn't happen somehow?
> 
> I'm not sure your change is ok, because if it's a generic issue, why can't I reproduce the issue?
> 
> >> I don't think these two events need different process.
> >>
> >>             if isinstance(event, bb.event.CacheLoadCompleted):
> >>                 gtk.gdk.threads_enter()
> >>                 pbar.update(progress_total, progress_total)
> >>                 gtk.gdk.threads_leave()
> >>                 continue
> >>             .......
> >>             if isinstance(event, bb.event.ParseCompleted):
> >>                 pbar.hide() continue
> >>
> 
> Thanks,
> -- Dexuan

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



