Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1CC4BE006B4
	for <yocto@yoctoproject.org>; Thu, 20 Oct 2011 04:12:25 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p9KBCKF9016626;
	Thu, 20 Oct 2011 12:12:20 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 15316-08; Thu, 20 Oct 2011 12:12:16 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p9KBCBnu016618
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Thu, 20 Oct 2011 12:12:13 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Rainer Koenig <Rainer.Koenig@ts.fujitsu.com>
In-Reply-To: <4E9EC5ED.6050503@ts.fujitsu.com>
References: <4E9EC5ED.6050503@ts.fujitsu.com>
Date: Thu, 20 Oct 2011 11:17:26 +0100
Message-ID: <1319105846.2250.46.camel@ted>
Mime-Version: 1.0
X-Mailer: Evolution 3.1.91- 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Questions from a greenhorn about build problems
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
X-List-Received-Date: Thu, 20 Oct 2011 11:12:28 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Wed, 2011-10-19 at 14:43 +0200, Rainer Koenig wrote:
> I'm using yoctoproject since one week now and got the latest
> yocto-1.1/edison-6.0 git tree. I have been able to build core-image-sato
> for the Beagleboard xM rev. A and the image works fine.
> 
> Now my next goal is to build an image for the TI 8148 EVM board. Since
> Yocto is based on OE-core I thought it was a good idea to get the
> meta-texasinstruments layer that is listed in the OE wiki:
> http://www.openembedded.org/wiki/LayerIndex
> 
> So I cloned my git tree for meta-texasinstruments from
> git://git.angstrom-distribution.org/meta-texasinstruments
> 
> and looked a bit around in that. conf/machine shows a conf for
> c6a814x-evm so I replaced the machine "beagleboard" with "c6a814x-evm"
> in my local conf.
> 
> I started `bitbake -k core-image-sato` and after builing around 4100 of
> the 4221 recipes I got an error on a kernel tree from the arago-project
> and from the u-boot compilation. I guess the second error occurs because
> of the first error, so I had a better look at the first error.
> 
> The buildstats for this packet show, that fetch failed. I tried to fetch
> the SRC_URL by hand and it worked without any problem. Note: I'm behind
> a firewall, so to clone git://... I need to go over a SOCKS proxy.
> Therefore I created an /etc/gitconfig that works fine and the downloads
> show, that lots of git-repos from the yocto recipes worked without any
> probem, but now those from the meta-texasinstruments layer seem not to
> work. I tried a bit around with bitbake -b -D and saw long commandlines
> with lots of export before.
> 
> It exports a GIT_CONFIG which points to
> poky/tmp/sysroots/x86_64linux/usr/etc/gitconfig.
> 
> First I replaced this gitconfig with my own gitconfig from /etc, but
> that didn't work. Looking at the file structure there it seems that
> ../sysroots/x86_64linux/ is chroot'ed somehow so I put gitconfig under
> that chroot's /etc and now it seems that fetch is working.
> 
> So stupid question: Is there a documentation that explains how that
> build process is working on the machine/script level and why are the
> recipes from yocto behaving different than to the ones that I imported
> with the meta-texasinstruments layer?

The Yocto recipes are mirrored on the Yocto servers and can be fetched
over http://. Its likely the build therefore actually needed to touch
the git protocol. In the case of the TI layer, those recipes are not
cached on the Yocto mirror and hence it needed to fetch them over git.

That would at least explain the change in behaviour.

Cheers,

Richard



