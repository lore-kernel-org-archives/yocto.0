Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 39679E00566; Tue, 26 Aug 2014 10:43:47 -0700 (PDT)
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
	*      [209.85.192.173 listed in list.dnswl.org]
Received: from mail-pd0-f173.google.com (mail-pd0-f173.google.com
	[209.85.192.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA258E004F5;
	Tue, 26 Aug 2014 10:43:42 -0700 (PDT)
Received: by mail-pd0-f173.google.com with SMTP id w10so22515507pde.18
	for <multiple recipients>; Tue, 26 Aug 2014 10:43:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:in-reply-to:user-agent;
	bh=Tlm8gQmlxuzzj28UODcbWJrCD+BexQ779NSpeqJc3fU=;
	b=lZZ1rxbODgZ2qvWDBYTk5JgoSgWFljlZoBhVODJ6ELmx1BgLG6Bv2iw22UoDeutOwY
	GJGYZch7I1/nzmg6bdSDcD2X5+aGo19KdfY9XpfLT3otTSQ7ZSnocea+IiHjI22D4tDT
	V4NDTudfpD5wyFQN3yomm2VFBPlKXTDkmFKdwRPzQo8xmkSAiLaEip0HciUN1LvOR16e
	LOW9xCNUKojQrEPiS2fRpK5LNFqvEHYVeZ/K63DUbTt++c9d7rQ+GjYorOKjkj3KUMcg
	DFl2g/7vfRtrDBRxYA9SC9GXw1AQrC1gkGnqFOf1PJW5x04pQzzTwYApykRt09pqOLKN
	1lrA==
X-Received: by 10.70.90.76 with SMTP id bu12mr39169577pdb.31.1409075021977;
	Tue, 26 Aug 2014 10:43:41 -0700 (PDT)
Received: from haswell ([2601:9:3580:7a5:baca:3aff:fe80:aa8f])
	by mx.google.com with ESMTPSA id
	hc11sm3815999pbd.70.2014.08.26.10.43.40 for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 26 Aug 2014 10:43:41 -0700 (PDT)
Date: Tue, 26 Aug 2014 10:47:25 -0700
From: Khem Raj <raj.khem@gmail.com>
To: Christopher Larson <clarson@kergoth.com>
Message-ID: <20140826174725.GE18989@haswell>
References: <CAP3RZoguYp0g+oWc7Fx4qghYv4L3=Zp_NVCY5G1f149-AxWmJQ@mail.gmail.com>
	<20140826164742.GD18989@haswell>
	<CABcZAN=V_6+_ARKC6vHAUW2ajSD1+b-rcKYZ6Y0M3BUeeTrpJA@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CABcZAN=V_6+_ARKC6vHAUW2ajSD1+b-rcKYZ6Y0M3BUeeTrpJA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: jags gediya <jags.gediya@gmail.com>,
	"meta-freescale@yoctoproject.org" <meta-freescale@yoctoproject.org>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-freescale] Remove Bluez4 and add Bluez5 in core-image-base
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
X-List-Received-Date: Tue, 26 Aug 2014 17:43:47 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On 14-08-26 10:09:45, Christopher Larson wrote:
> On Tue, Aug 26, 2014 at 9:47 AM, Khem Raj <raj.khem@gmail.com> wrote:
> 
> > On 14-08-26 20:18:36, jags gediya wrote:
> > > I am using yocto project for imx6sl evolution kit based custom board.
> > > I want to use core-image-base as basic image and put other packages on
> > that.
> > > By default , core-image-base have Bluez4, but i want to use Bluez5.
> > > How can i remove default Bluez4 from core-image-base?
> >
> > PREFERRED_PROVIDER_bluez4 ?= "bluez5"
> > and have 'bluetooth' in DISTRO_FEATURES


ah, I thought it could since we ask for PREFERRED_PROVIDER_bluez4
may be we should have a packagegroup for bluez5

