Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 33A9AE00A44; Mon, 15 Jun 2015 10:46:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.212.179 listed in list.dnswl.org]
Received: from mail-wi0-f179.google.com (mail-wi0-f179.google.com
	[209.85.212.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C233CE00960
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 10:46:11 -0700 (PDT)
Received: by wiga1 with SMTP id a1so85543518wig.0
	for <yocto@yoctoproject.org>; Mon, 15 Jun 2015 10:46:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:date:to:cc:subject:message-id:references:mime-version
	:content-type:content-disposition:content-transfer-encoding
	:in-reply-to:user-agent;
	bh=LKYjktIGBfp6yDsphHLwrbsjEnE6rLeR1LMzU2meNQA=;
	b=KcBwvynBY1IH8Bxv0sia3N6YmglilNlYwNiVLG/SwB6++Edn26lLwmEUWi0spiLP3C
	FSompiGUXTFveTWxUQJfDq+fWbQ8VV7G1Y5AM4j5ShMNnoG4PsCIN+kQ54h2lJRKYVo4
	qrYsXSdt/Vv4hXFVlpFFq1SwnO3/YYBXExBajizgiVpNBlRemsNN4J8IZuBrdXi9u4l/
	KlRicvWetXzFxeqSUWgWMu6gRSW1K4bLQAo2FPjPWl/Le9Jb9Pf+/3+rDv22NFa8USSe
	+3NDmpLYJXAo9HsrlBhOMFHpqke7OadDdigN+FvFzsC2xXHEEnIgofwZNfb+vrcDBH60
	iI6w==
X-Received: by 10.180.106.195 with SMTP id gw3mr33892673wib.25.1434390369742; 
	Mon, 15 Jun 2015 10:46:09 -0700 (PDT)
Received: from localhost (ip-86-49-34-37.net.upcbroadband.cz. [86.49.34.37])
	by mx.google.com with ESMTPSA id
	ez19sm16912075wid.19.2015.06.15.10.46.09
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 15 Jun 2015 10:46:09 -0700 (PDT)
From: Martin Jansa <martin.jansa@gmail.com>
X-Google-Original-From: Martin Jansa <Martin.Jansa@gmail.com>
Date: Mon, 15 Jun 2015 19:46:13 +0200
To: Gary Thomas <gary@mlbassoc.com>
Message-ID: <20150615174613.GD2398@jama>
References: <557ED498.50406@mlbassoc.com> <20150615142110.GC2398@jama>
	<557F0E5B.90408@mlbassoc.com>
MIME-Version: 1.0
In-Reply-To: <557F0E5B.90408@mlbassoc.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: sstate black hole?
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
X-List-Received-Date: Mon, 15 Jun 2015 17:46:16 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

On Mon, Jun 15, 2015 at 11:41:47AM -0600, Gary Thomas wrote:
> On 2015-06-15 08:21, Martin Jansa wrote:
> > On Mon, Jun 15, 2015 at 07:35:20AM -0600, Gary Thomas wrote:
> >> I'm working with i.MX6 targets (meta-fsl-arm*).  For these
> >> targets, some packages are "special" in that they use i.MX6
> >> specific graphics support.  This ends up with an additional
> >> layer of stratification, so my tmp/work tree has:
> >>     all-amltd-linux
> >>     cortexa9hf-vfp-neon-amltd-linux-gnueabi
> >>     cortexa9hf-vfp-neon-mx6qdl-amltd-linux-gnueabi
> >>     teton_p0382-amltd-linux-gnueabi
> >>     x86_64-amltd-linux-gnueabi
> >>     x86_64-linux
> >>
> >> The packages that are built in tmp/work/cortex* are architecture
> >> specific, not target specific, hence my question:
> >>
> >>     If I build for two i.MX6 targets, identical in every way
> >>     except for the ${MACHINE} name, if I use sstate to share
> >>     the builds from target A when building for target B, why
> >>     are the packages built in cortexa9hf-vfp-neon-mx6qdl-amltd-linux-g=
nueabi
> >>     not shared by sstate?  I can see that they are present in
> >>     the sstate cache, but they are always rebuilt for target B.
> >>     I consider this incorrect behaviour as these are the same
> >>     architecture and so they should be sharable via sstate.
> >>
> >> Am I missing something here?  How can I determine why the
> >> package from target A (sstate cache) is not usable by target B?
> >
> > Use openembedded-core/scripts/sstate-diff-machines.sh to check if the
> > signatures of the recipes you expect to be re-used are the same.
> >
>=20
> How can I use this if the two targets have their own tmp/ tree?

call it twice (once in each tmp tree) and compare resulting list.M files

--=20
Martin 'JaMa' Jansa     jabber: Martin.Jansa@gmail.com

