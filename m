Return-Path: <jussi.kukkonen@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CE4B8E00952; Tue,  7 Apr 2015 07:57:43 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.214.171 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 496BDE00830
	for <yocto@yoctoproject.org>; Tue,  7 Apr 2015 07:57:41 -0700 (PDT)
Received: by obbgh1 with SMTP id gh1so89354294obb.1
	for <yocto@yoctoproject.org>; Tue, 07 Apr 2015 07:57:41 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=LXJnNBiFVvWMXpteOPZ1W8n1GhfgwIzKp3zO4YEIvuo=;
	b=I5I/yW69+j4USyjjlird++QdIuStF9kjdh11iUjzGGQB9DB24Uf8ND6Asc+pBeTiEx
	MQYSyKPrra7LNrPIo97GhZ5XNlSUzwI0pNkH/TADy9svlzNwW/RctqMnniDoDJ+oP1Kk
	jbyGJ1kKl7Ls5wpE7VFoCPxgphEMRi91uLVbq99U9zpPfpx1XYApCNiJlowHG5gvzXh9
	7l/wnGRfSEhxhIqaPQlKD7KnudyVj4KdmEteLwCl9KY+dFYERMDGz3ULRwES+PFwlenk
	rY15vkiwy4yrYuSOHGBvzV4s/+7i2jCR5I/B1P7LtN7UVguRXgTARc7qmMdb1ScI99lX
	FQgQ==
X-Gm-Message-State: ALoCoQl9iBRgDoMHiC+qSRk+Qu4PbxSlZ6FFYGfGlfNiBw4aIG45/WENerdmB2mcaERarQLD+P52
X-Received: by 10.60.37.73 with SMTP id w9mr13004103oej.49.1428418645081; Tue,
	07 Apr 2015 07:57:25 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.202.92.139 with HTTP; Tue, 7 Apr 2015 07:56:54 -0700 (PDT)
In-Reply-To: <5523D6C0.80404@mlbassoc.com>
References: <5523D6C0.80404@mlbassoc.com>
From: Jussi Kukkonen <jussi.kukkonen@intel.com>
Date: Tue, 7 Apr 2015 17:56:54 +0300
Message-ID: <CAHiDW_EEQohcxyPg5+MQpmm5MbekmMoiURCtKF1xFjztvfbQ6A@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Simple image viewer
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
X-List-Received-Date: Tue, 07 Apr 2015 14:57:43 -0000
Content-Type: text/plain; charset=UTF-8

On 7 April 2015 at 16:08, Gary Thomas <gary@mlbassoc.com> wrote:
> I've searched my Poky/Yocto repository for this - is there
> some sort of simple image (i.e. .png/.gif/.jpg) viewer available
> in Poky/Yocto (OE-core)?  In meta-openembedded?  I'm just not
> finding it.
>
> Maybe something along the lines of eog?

gst-player is not specifically a image viewer (and the UI could use a
bit of polish for that use case) but it does work and is in oe-core.
Try "gtk-play <imagefiles>" in terminal or just clicking "Media
Player" in a sato image.

HTH,
 Jussi

