Return-Path: <oliver.graute@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CCA1CE00831; Thu, 26 Apr 2018 08:53:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (oliver.graute[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.68 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f68.google.com (mail-wm0-f68.google.com [74.125.82.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9BC15E007F2
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 08:53:34 -0700 (PDT)
Received: by mail-wm0-f68.google.com with SMTP id i3so14181510wmf.3
	for <yocto@yoctoproject.org>; Thu, 26 Apr 2018 08:53:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=message-id:date:from:to:subject:mail-followup-to:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=NZ3EPea2GTMzQLueQin3ymnLWc6EXVM3jvXbr612s3s=;
	b=WIhNMNYPefkgDhmh9lDcMvUoakm/GKkGWYlJ5r33GmKawEuG08eu/Xne5O/BExoPpk
	ZWK/cEWe8sy/annJVl3Qs5OWZvhLYnhIr1e1r09Zbvcolqi18IdEOwsg/qCS1AUTPSNj
	alvHuvd43L5+Us44HmvFaDQEwYgOADoyXSjoHJYO89Q6HwYSv5DcN3Q5+e6JOiyoR+pD
	kqa3hc2PfrV1w7hLpwFjAQztY0FvJwSgsjel5+96y27Ku5DyyyGFq2iDNee0mQeyR9qg
	MxGwriHDEmzKXXegHQzFQOBmKSzFqznl6OFbO+EQZDLrEQ2xHzjV6Qql5u42kjQiQ3zT
	lD/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:date:from:to:subject:mail-followup-to
	:references:mime-version:content-disposition:in-reply-to:user-agent;
	bh=NZ3EPea2GTMzQLueQin3ymnLWc6EXVM3jvXbr612s3s=;
	b=lVIVVfZ3DBo7WyZRk/omk/0NcOO9yxEP3JRI6g25+IkAZQqE6nmJbFrvkjmRst55Dh
	ZQ75CJoDTUJacj6540E3GoLriquJ/oGBsxd1xoIcF/HlWaOYK1veHgs8/uSmzP9qTUBd
	sd9/G1iG5UzBPrU8rTwgR+Dx0tt2NHS2SMyf98ItQsGLu34wxmV+eyFTcVB/UY/2jRIO
	eSQB3JkUxfi8yBKm9ankwFxdVowvJ18Nor2LjNe2YCstkITgsttDin7fyJGvYPliIxcJ
	aN72vDHL4nJdijQGPi813x2RBe39hr+j9qYkov8sgPmAU4oop8GOnh2fbbdt4gBGpp7x
	dBgQ==
X-Gm-Message-State: ALQs6tDwv4IVKzKIgHVELAenkYbPt7UagYOFCAvgBJ7JHIzXD2VfKrTl
	URXeuPyVrThnDlBf9e9xHGXRoEC3
X-Google-Smtp-Source: AIpwx48pfa+F5Ilxch+9/hFGNxlrdMLm2bkGi0G+PEm9HPcx4F+2ntSkvNOmWm8t5GEqPFeg5Zv2EA==
X-Received: by 10.167.214.15 with SMTP id c15mr28238835edr.301.1524758013097; 
	Thu, 26 Apr 2018 08:53:33 -0700 (PDT)
Received: from localhost
	(ipv6-ad74d86856c19cef.ost.clients.hamburg.freifunk.net.
	[2a03:2267:4:0:ad74:d868:56c1:9cef])
	by smtp.gmail.com with ESMTPSA id
	b7sm13381635eda.18.2018.04.26.08.53.31 for <yocto@yoctoproject.org>
	(version=TLS1_2 cipher=AES128-SHA bits=128/128);
	Thu, 26 Apr 2018 08:53:32 -0700 (PDT)
Message-ID: <5ae1f5fc.0790500a.2fb14.0681@mx.google.com>
X-Google-Original-Message-ID: <20180426155328.GB3836@portage.(null)>
Date: Thu, 26 Apr 2018 17:53:28 +0200
From: Oliver Graute <oliver.graute@gmail.com>
To: yocto@yoctoproject.org
Mail-Followup-To: yocto@yoctoproject.org
References: <20180425150333.GA9349@graute-opti>
	<CAJ86T=VSrF4P6-CCTQFJa20i+qgwQby1to4haFd88UMZaghmtQ@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAJ86T=VSrF4P6-CCTQFJa20i+qgwQby1to4haFd88UMZaghmtQ@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: Re: yocto jethro failed on gettext-native
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
X-List-Received-Date: Thu, 26 Apr 2018 15:53:35 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

On 25/04/18, Andre McCurdy wrote:
> On Wed, Apr 25, 2018 at 8:03 AM, Oliver Graute <oliver.graute@gmail.com> wrote:
> > Hello list,
> >
> > I try to compile yocto jethro environment which is working
> > on a Ubuntu 14.04 installation. But not on a Kubuntu 16.04.
> >
> > The compilations stops on gettext-native.
> >
> > bitbake -k fsl-image-mfgtool-initramfs
> >
> > | x86_64-linux-libtool:   error: 'libgettextsrc_la-message.lo' is not a valid libtool object
> 
> libgettextsrc_la-message.lo should be a short text file. Could you
> find it in your build tree and post a copy?
> 

the file was a zero byte file. All other *.lo files in that directory
was zero byte too. I assume because of a system crash I had before.

Just a bitbake -c cleansstate and rebuild of gettext-native didn't fixed that.

I deleted all the build-imx6ulevk folder and build everything from
scratch with only one thread, waited a few hours for compilation and now
its working ;)

> > Some ideas whats the cause for this error?
> 
> At a guess, something a little unusual with the setup of your Kubuntu
> system. Combining Ubuntu 16.04 with OE 2.0 isn't so out of the
> ordinary and others would certainly have hit the problem before now if
> it was always seen.
> 
> Did you install all the standard host dependencies?
> 
>   https://www.yoctoproject.org/docs/2.0/yocto-project-qs/yocto-project-qs.html#packages
> 

yes but thanks for the link as reference.

Best regards,

Oliver 

