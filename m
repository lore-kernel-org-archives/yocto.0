Return-Path: <niqingliang@insigma.com.cn>
Received: from WX-Edge.insigma.com.cn (mx.insigma.com.cn [115.236.48.170])
	by mx1.pokylinux.org (Postfix) with ESMTP id 959294C80039
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2011 22:19:17 -0500 (CDT)
Received: from WX-ExchMB.insigma.com.cn (10.0.1.203) by WX-Edge.insigma.com.cn
	(10.0.1.205) with Microsoft SMTP Server (TLS) id 8.1.436.0;
	Fri, 1 Jul 2011 11:18:57 +0800
Received: from [192.168.0.101] (122.224.76.38) by WX-ExchMB.insigma.com.cn
	(10.0.1.203) with Microsoft SMTP Server id 8.1.240.5; Fri, 1 Jul 2011
	11:18:54 +0800
From: NiQingliang <niqingliang@insigma.com.cn>
To: Saul Wold <sgw@linux.intel.com>
Date: Fri, 1 Jul 2011 11:22:21 +0800
In-Reply-To: <1309490029.25082.1.camel@localhost.localdomain>
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
X-Mailer: Evolution 3.0.2 
Message-ID: <1309490541.25082.3.camel@localhost.localdomain>
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
X-List-Received-Date: Fri, 01 Jul 2011 03:19:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

I have not found the email adress of bitbake's developer, does anyone
know?

On Fri, 2011-07-01 at 11:13 +0800, NiQingliang wrote:
> I have changed that code section, and solved my problem, but I don't
> know if it is the right way.
> 
>             if isinstance(event, bb.event.CacheLoadCompleted):
>                  pbar.hide()
>                  continue
>             .......
>             if isinstance(event, bb.event.ParseCompleted):
>                  pbar.hide()
>                  continue
> 
> On Fri, 2011-07-01 at 10:45 +0800, NiQingliang wrote:
> > I have looked the fiel depexp.py, and have some doubt:
> >
> > why in "ParseCompleted", the progress bar will hide, but in
> > "CacheLoadCompleted", it will not???????
> >
> > I don't think these two events need different process.
> >
> >             if isinstance(event, bb.event.CacheLoadCompleted):
> >                 gtk.gdk.threads_enter()
> >                 pbar.update(progress_total, progress_total)
> >                 gtk.gdk.threads_leave()
> >                 continue
> >             .......
> >             if isinstance(event, bb.event.ParseCompleted):
> >                 pbar.hide()
> >                 continue
> >
> > On Fri, 2011-07-01 at 09:47 +0800, NiQingliang wrote:
> > > Oh, sorry, I have fixed some bug in my description:-)
> > >
> > > I'm using python2.7
> > >
> > > I have setup a new file named "python" in build dir, whose content like
> > > that:
> > > #!/bin/bash
> > > /usr/bin/env python2 $@
> > >
> > > and add the build dir in env var "PATH".
> > >
> > > If the python version error, I don't think I can see the GUI of bitbake.
> > >
> > > after manually closed gui, the shell output is like attachement.
> > >
> > > and I tried like this:
> > > if I change some file in poky's recipes for the conf file, the
> > > "processing recipes" window will work normally, and I can see the
> > > progress bar
> > > rolling.
> > >
> > > but if I issue the cmd second time, "loading cache" window will hang.
> > >
> > >
> > > On Fri, 2011-07-01 at 09:34 +0800, NiQingliang wrote:
> > > > I'm using python2.7
> > > >
> > > > I have setup a new file named "python" in build dir, whose content like
> > > > that:
> > > > #!/bin/bash
> > > > /usr/bin/env python2 $@
> > > >
> > > > and add the build dir in env var "PATH".
> > > >
> > > > If the python version error, I don't think I can see the GUI of bitbake.
> > > >
> > > > after manually closed gui, the shell output is like attachement.
> > > >
> > > > and I tried like this:
> > > > if I change some file in poky's recipes for the conf file, the "loading
> > > > cache" window will work normally, and I can see the progress bar
> > > > rolling.
> > > >
> > > > but if I issue the cmd second time, it will hang.
> > > >
> > > >
> > > > On Fri, 2011-07-01 at 07:55 +0800, Saul Wold wrote:
> > > > > On 06/29/2011 08:18 PM, NiQingliang wrote:
> > > > > > I have added "-DDD -v", after close window "loading cache" manually, the
> > > > > > bitbake exited, and then I can see some DEBUG info on shell, but there
> > > > > > is no clue.
> > > > > >
> > > > > > how to dig out where it hangs:-(
> > > > > >
> > > > >
> > > > > Can you capture the log and send it.  I noticed you are running on
> > > > > ArchLinux, can you confirm which version of Python you are using and
> > > > > which version of Poky you have?
> > > > >
> > > > > You have to be using 2.6 or 2.7 Python.
> > > > >
> > > > > Sau!
> > > > >
> > > > > > On Thu, 2011-06-30 at 10:57 +0800, Cui, Dexuan wrote:
> > > > > >> NiQingliang wrote:
> > > > > >>> once builded, is after executed "bitbake core-image-minimal" and
> > > > > >>> generated the final image.
> > > > > >> I tried that just now on recent poky.git's master branch but can't reproduce the issue. :-(
> > > > > >> You may need to dig out where it hangs...
> > > > > >>
> > > > > >>> On Thu, 2011-06-30 at 10:18 +0800, Cui, Dexuan wrote:
> > > > > >>>> , and set env, follow cmd works normally.
> > > > > >>>>> bitbake -g -u depexp core-image-minimal
> > > > > >>>>>
> > > > > >>>>> but once builded, the cmd works abnormal, the symptom like that:
> > > > > >>>>> What does "once builded" mean?
> > > > > >>
> > > > > >> Thanks,
> > > > > >> -- Dexuan
> > > > > >
> > > >
> > > > --
> > > > 倪庆亮
> > > > TEL:    13588371863
> > > > E-MAIL: niqingliang@insigma.com.cn
> > > > BLOG:   http://niqingliang2003.wordpress.com
> > > >
> > >
> > > --
> > > 倪庆亮
> > > TEL:    13588371863
> > > E-MAIL: niqingliang@insigma.com.cn
> > > BLOG:   http://niqingliang2003.wordpress.com
> > >
> > >
> > > _______________________________________________
> > > yocto mailing list
> > > yocto@yoctoproject.org
> > > https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > 倪庆亮
> > TEL:    13588371863
> > E-MAIL: niqingliang@insigma.com.cn
> > BLOG:   http://niqingliang2003.wordpress.com
> >
> >
> > _______________________________________________
> > yocto mailing list
> > yocto@yoctoproject.org
> > https://lists.yoctoproject.org/listinfo/yocto
> 
> --
> 倪庆亮
> TEL:    13588371863
> E-MAIL: niqingliang@insigma.com.cn
> BLOG:   http://niqingliang2003.wordpress.com
> 
> 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

-- 
倪庆亮
TEL:    13588371863
E-MAIL: niqingliang@insigma.com.cn
BLOG:   http://niqingliang2003.wordpress.com



