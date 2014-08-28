Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4933FE007FE; Thu, 28 Aug 2014 00:23:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
Received: from mail-ie0-f174.google.com (mail-ie0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 01971E0049D
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 00:23:49 -0700 (PDT)
Received: by mail-ie0-f174.google.com with SMTP id at20so458764iec.5
	for <yocto@yoctoproject.org>; Thu, 28 Aug 2014 00:23:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=CHjoSV8Nkx6iIXjPGiS4+W64t1CYjdVn1JrC/0qNSn4=;
	b=rj/YjJzDSCuC27BEvmt08mkSVSE5Tqse9xWl8ij3x/1bquvJ/UKQ0k7T18wUaEKFkD
	i0OIjtprnDmIo0vQWK8L341gurNViJltzwU9YQi2wFi8/prR6m1mwiQWL5TBnjX3B2uz
	2cCSshEMJD5F3YmFQL+i0IFs11OdftCY7rnXRvtxUU3Q1wJo+ay4q3ub243HIxHHMmKV
	WBISAqXNxf8JYiIVHkBWzYGrb5yJmBkrRbgCwygNVcYOBRzOE8AJ5uHlUhH03X+ZGfAV
	sg1vA/JMJdmJZuowOKTc9SNgBRpsEDY/w+Ggrmfg3mD9wwlzd/UUHtbI0KOO8s6Or7bH
	25gA==
X-Received: by 10.43.172.5 with SMTP id nw5mr2969938icc.10.1409210628979;
	Thu, 28 Aug 2014 00:23:48 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id
	mv5sm37148386igb.11.2014.08.28.00.23.48 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 28 Aug 2014 00:23:48 -0700 (PDT)
Date: Thu, 28 Aug 2014 00:27:29 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Seth Bollinger <seth.boll@gmail.com>
Message-ID: <20140828072729.GE13139@haswell>
References: <CA+JN8xNsPD_Fi2e7nyTfq6Vje0ssz_eSdxjicussA94B0pSU3g@mail.gmail.com>
	<CABcZANnRi__cWdrruHYB8JLc1=Q7oj=DPMCLUwYPm72W0roC0Q@mail.gmail.com>
	<CA+JN8xMgr_eSpOU7B6tWjnP0HaqhGGB4gc0rv0RkP8b=hX883w@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CA+JN8xMgr_eSpOU7B6tWjnP0HaqhGGB4gc0rv0RkP8b=hX883w@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Christopher Larson <clarson@kergoth.com>
Subject: Re: Image that depends on another image
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
X-List-Received-Date: Thu, 28 Aug 2014 07:23:54 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-27 06:43:09, Seth Bollinger wrote:
> On Thu, Aug 21, 2014 at 7:25 PM, Christopher Larson <clarson@kergoth.com>
> wrote:
> 
> >
> > On Thu, Aug 21, 2014 at 5:08 PM, Seth Bollinger <seth.boll@gmail.com>
> > wrote:
> >
> >> Our device requires two images to be built.  Is there any way to have the
> >> first image depend on the second image?
> >
> >
> > do_rootfs[depends] += "some-other-image:do_rootfs" would probably do.
> >
> 
> I hate to resurrect this thread, but after testing this out and using it we
> ran into a small hiccup.  Since we're using the second image to generate a
> second partition, a lot of the dependencies actually need to be injected
> into the first image (users, utilities, etc.).  Is there a way to do this?

First image is a normal image too, so keep adding to RDEPENDS or
IMAGE_INSTALL inside that image recipe, there could be rootfs port
processing functions to tweak the content even

> 
> Thanks again!
> 
> Seth

> -- 
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


