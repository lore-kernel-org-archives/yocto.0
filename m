Return-Path: <thomas.petazzoni@free-electrons.com>
Received: from mail.free-electrons.com (top.free-electrons.com [176.31.233.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6628E00B7E
	for <yocto@yoctoproject.org>; Wed, 26 Mar 2014 09:46:31 -0700 (PDT)
Received: by mail.free-electrons.com (Postfix, from userid 106)
	id 8A5647D9; Wed, 26 Mar 2014 17:46:31 +0100 (CET)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	mail.free-electrons.com
X-Spam-Level: 
X-Spam-Status: No, score=-1.0 required=5.0 tests=ALL_TRUSTED,SHORTCIRCUIT
	shortcircuit=ham autolearn=disabled version=3.3.2
Received: from skate (col31-4-88-188-83-94.fbx.proxad.net [88.188.83.94])
	by mail.free-electrons.com (Postfix) with ESMTPSA id 147BA7AD;
	Wed, 26 Mar 2014 17:46:31 +0100 (CET)
Date: Wed, 26 Mar 2014 17:46:28 +0100
From: Thomas Petazzoni <thomas.petazzoni@free-electrons.com>
To: Paul Barker <paul@paulbarker.me.uk>
Message-ID: <20140326174628.258e187b@skate>
In-Reply-To: <CANyK_8c2Vvm3cpdHts+ORCOFizsvKYk7trMVHTBfr2wPecV4QQ@mail.gmail.com>
References: <CANyK_8e6dfzu64SRLzZdXFE3obT6Td-8UUDqfcoSAqWTjoOq3g@mail.gmail.com>
	<CAJTo0Las0o_JcsvW-X+L=EQAvUf3yVVQBunoCi=cAzR=3y2DrA@mail.gmail.com>
	<CANyK_8c2Vvm3cpdHts+ORCOFizsvKYk7trMVHTBfr2wPecV4QQ@mail.gmail.com>
Organization: Free Electrons
X-Mailer: Claws Mail 3.9.1 (GTK+ 2.24.20; x86_64-pc-linux-gnu)
Mime-Version: 1.0
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	openembedded-core <openembedded-core@lists.openembedded.org>
Subject: Re: [OE-core] OpenEmbedded and musl-libc
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
X-List-Received-Date: Wed, 26 Mar 2014 16:46:32 -0000
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Dear Paul Barker,

On Fri, 21 Mar 2014 14:37:16 +0000, Paul Barker wrote:
> On 21 March 2014 13:10, Burton, Ross <ross.burton@intel.com> wrote:
> > On 21 March 2014 12:34, Paul Barker <paul@paulbarker.me.uk> wrote:
> >> I'm currently very busy between various projects so I don't have time
> >> to hack together a musl-libc recipe myself but I should have time to
> >> help test it.
> >
> > I saw that yesterday too and thought it could be interesting for
> > Yocto.  I'm curious as to why it's better than uclibc though
> > (genuinely curious, I know little about uclibc beyond "it's smaller").
> >
> > Ross
> 
> Looking at what they say: Better standards compliance, different
> license, better for static linking, full UTF-8 support, strong
> fail-safe guarantees.

I would also add that musl is less configurable than uClibc. This might
be seen as a drawback (you have less possibilities of fine-tuning the
configuration) but also has a lot of advantages (it's easier for the
maintainers to test the code base, it's easier to know what feature set
musl provides, while with uClibc, each configuration provides a
different feature set, which can be a nightmare for build systems).

Another important thing is that the musl community is much more active
than the uClibc one. uClibc hasn't seen a stable release since a looong
time, and despite several calls on the mailing list since several months
to do a release, nothing is happening.

Thomas
-- 
Thomas Petazzoni, CTO, Free Electrons
Embedded Linux, Kernel and Android engineering
http://free-electrons.com

