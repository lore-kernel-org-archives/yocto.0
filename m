Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 17DF2E00D32; Wed, 25 May 2016 09:52:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.80.204.84 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp484.redcondor.net (smtp484.redcondor.net [208.80.204.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 622ECE00D1C
	for <yocto@yoctoproject.org>; Wed, 25 May 2016 09:52:37 -0700 (PDT)
Received: from astoria.ccjclearline.com ([64.235.106.9])
	by smtp484.redcondor.net ({c48374e7-08df-40d9-a0de-96cc9883a037})
	via TCP (outbound) with ESMTPS id 20160525165235785_0484;
	Wed, 25 May 2016 16:52:35 +0000
X-RC-FROM: <rpjday@crashcourse.ca>
Received: from [216.191.234.70] (port=52994 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1b5c4R-0002Wd-1C; Wed, 25 May 2016 12:54:11 -0400
Date: Wed, 25 May 2016 12:51:56 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: Rudolf J Streif <rudolf.streif@gmail.com>
In-Reply-To: <3784292.xdaYVqVUc2@rjs-zotac.streifs.net>
Message-ID: <alpine.LFD.2.20.1605251248060.31779@localhost.localdomain>
References: <alpine.LFD.2.20.1605250613310.21121@localhost.localdomain>
	<3784292.xdaYVqVUc2@rjs-zotac.streifs.net>
User-Agent: Alpine 2.20 (LFD 67 2015-01-07)
MIME-Version: 1.0
X-MAG-OUTBOUND: ccj.redcondor.net@64.235.106.9/32
Cc: yocto@yoctoproject.org
Subject: Re: any pointers to a yocto-based image to use as a live install utility?
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
X-List-Received-Date: Wed, 25 May 2016 16:52:43 -0000
Content-Type: multipart/mixed; BOUNDARY="8323328-1838462165-1464195119=:31779"

--8323328-1838462165-1464195119=:31779
Content-Type: text/plain; charset=ISO-8859-15
Content-Transfer-Encoding: 8BIT

On Wed, 25 May 2016, Rudolf J Streif wrote:

>
> Hi Robert,
>
>  
>
> On Wednesday, May 25, 2016 06:18:34 AM Robert P. J. Day wrote:
>
> >
>
> > specifically in the context of powerpc systems, are there any
>
> > suggestions for an image that could be used to boot an older powerpc
>
> > system, running completely out of ram, and using that as an install
>
> > utility which would then be responsible for detecting/formatting a
>
> > hard drive, creating/formatting filesystems, downloading/installing
>
> > the OS, post-install configuration and so on?
>
> I am not entirely sure if I understand your requirements correctly
> but this https://github.com/mendersoftware/mender could eventually
> be a starting point. The good news is that it already comes with
> YP/OE recipes and integration. However, it's currently only for
> ARM-based systems with u-boot.

  hmmmmmm ... the client requirements are only that it use u-boot,
with the mender software integrated into u-boot. so if one can
configure and build that for powerpc, then install and boot u-boot on
the target board, why should it then be restricted to ARM?

  sure, their reference board is a BBB, but a quick glance at the docs
doesn't seem to say that it works *only* on ARM. must look closer ...

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

--8323328-1838462165-1464195119=:31779--
