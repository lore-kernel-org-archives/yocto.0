Return-Path: <andrei@gherzan.ro>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 11EDDE00C9F; Sun, 28 Feb 2016 01:47:49 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D54FFE00BBF
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 01:47:46 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id p65so33575925wmp.1
	for <yocto@yoctoproject.org>; Sun, 28 Feb 2016 01:47:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=gherzan-ro.20150623.gappssmtp.com; s=20150623;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=7Urdyr9mcWVlPLiThZBsPpd+UO4eKlDEcAqQlzOg4Y0=;
	b=dBvb3oyzjmDO4/zVIXk8Zc4ptz4PEkIp4YtLmMi/0I+N1fGhr8YIOx1nzUp5zQGRaa
	Kf220aV8BtPdchBrL8tM0UyHlyjN+KyNaDZbzgC+0zscTyVXYVhiPu5rcyX8JBhXrwgd
	IGBU/HwLUrxd/AUgshRUvmo5Bu9QhUr9Glbl1EwsoIfns7y87HzUcWhIXAwPatg2av/B
	ei8ArSUkIgr7G1YJe3Ez0EVY5kkAugTe7ArR+3lFjSIlG6fCh/r/klaW3QAkGq1MPCei
	TPblXtPV2jGope9tg9vxb2yZ6qZr2bc9Zu5l/P2ZcfDr3pDZYEdkit1GpVHJdxPfjEiZ
	zlnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=7Urdyr9mcWVlPLiThZBsPpd+UO4eKlDEcAqQlzOg4Y0=;
	b=Hdg5jSmsDVAea7FPEb65ZA0TYvJLfXN1mvwbyekCl98tn3LY2McbS/ctpobYRnZPUD
	unEZD9nKspTXCUOIdbu9TkF+YVCGe0zBjX50esU9F+RFEUgD0J08ZGEwJnyB1kuQzZXN
	sDpZIgKMGcfnyb2lQWb2m8eMCeyOA9IuDHod84+ei32kE9yAsHmQaiPugMC98IBwcLFL
	PTkjPU2dRMyU2qbBUq1UMuPW5eqsXyqj6sCgfGRevqYN/pO/lXbZw6E8wOgjawnr/352
	UWDyEOuL2hXaED9pVxf5sSP3BJb2FDJqq4Za03sKirMZIyZ1ajsjPclpWIf6QjK+/dkn
	Rk6g==
X-Gm-Message-State: AD7BkJICcYY+fMtSJXC7SJoUgUQ35s09Ray8dkw7r9yIyB/oCK5EpyE5unCvffDf5u4A3A==
X-Received: by 10.194.94.138 with SMTP id dc10mr11484685wjb.37.1456652865386; 
	Sun, 28 Feb 2016 01:47:45 -0800 (PST)
Received: from resin.home ([2a02:8108:9b40:1710:5ee0:c5ff:fec8:435d])
	by smtp.gmail.com with ESMTPSA id
	w136sm10813030wmw.0.2016.02.28.01.47.43
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 28 Feb 2016 01:47:44 -0800 (PST)
Date: Sun, 28 Feb 2016 10:47:37 +0100
From: Andrei Gherzan <andrei@gherzan.ro>
To: Jonathan Liu <net147@gmail.com>
Message-ID: <20160228094737.GA12618@resin.home>
References: <1456492868-19761-1-git-send-email-net147@gmail.com>
	<20160227125601.GB28071@resin.home>
	<CANwerB0GuLWxL5Rsane0Ws7DUK6tOuSm0nohnw9M89oTaHp4zg@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CANwerB0GuLWxL5Rsane0Ws7DUK6tOuSm0nohnw9M89oTaHp4zg@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH] omxplayer: fix host-user-contaminated QA warnings
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
X-List-Received-Date: Sun, 28 Feb 2016 09:47:49 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On Sun, Feb 28, 2016 at 12:49:07AM +1100, Jonathan Liu wrote:
> On 27 February 2016 at 23:56, Andrei Gherzan <andrei@gherzan.ro> wrote:
> > On Sat, Feb 27, 2016 at 12:21:08AM +1100, Jonathan Liu wrote:
> >> Explicitly chown the installed files to fix host-user-contaminated QA
> >> warnings for libavcodec, libavdevice, libavfilter, libavformat,
> >> libavutil and libswresample shared libraries.
> >>
> >> Signed-off-by: Jonathan Liu <net147@gmail.com>
> >> ---
> >>  recipes-multimedia/omxplayer/omxplayer_git.bb | 1 +
> >>  1 file changed, 1 insertion(+)
> >>
> >> diff --git a/recipes-multimedia/omxplayer/omxplayer_git.bb b/recipes-multimedia/omxplayer/omxplayer_git.bb
> >> index a0690a0..8816273 100644
> >> --- a/recipes-multimedia/omxplayer/omxplayer_git.bb
> >> +++ b/recipes-multimedia/omxplayer/omxplayer_git.bb
> >> @@ -61,6 +61,7 @@ do_install() {
> >>      oe_runmake STRIP='echo skipping strip' dist
> >>      mkdir -p ${D}${datadir}/fonts/truetype/freefont/
> >>      install ${S}/fonts/* ${D}${datadir}/fonts/truetype/freefont/
> >> +    chown root:root -R ${D}
> >>  }
> >>
> >>  FILES_${PN} = "${bindir}/omxplayer* \
> >> --
> >> 2.7.1
> >>
> >
> > Actually the problem here is how the package does the dist target.
> >
> > Makefile:
> > ...
> > <-->cp -a ffmpeg_compiled/usr/lib/*.so* $(DIST)/usr/lib/omxplayer/
> > ...
> >
> > This means that even if ran in a fackroot environment, this will preserve the
> > user id and other file attributes generating the warnings you pointed out.
> >
> > In order to fix this I would vote for a patch that would change the archive
> > flag to a simple -R (-P is default anyway). What do you think?
> >
> > As well this patch should go upstream too as I don't see the idea behind
> > copying those while preserving the file attributes.
> >
> >> --
> >> _______________________________________________
> >> yocto mailing list
> >> yocto@yoctoproject.org
> >> https://lists.yoctoproject.org/listinfo/yocto
> >
> > --
> > Andrei Gherzan
> 
> I have submitted a pull request to omxplayer to use -P. No point using
> -R as it is just copying libraries rather than directories.
> 
> Regards,
> Jonathan

Indeed you are right. -P should be just enough. Good job!
-- 
Andrei Gherzan

