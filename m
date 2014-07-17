Return-Path: <tom.zanussi@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACB1DE00563; Thu, 17 Jul 2014 13:07:40 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7985FE00543
	for <yocto@yoctoproject.org>; Thu, 17 Jul 2014 13:07:36 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by orsmga101.jf.intel.com with ESMTP; 17 Jul 2014 13:07:34 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.01,680,1400050800"; d="scan'208";a="544973544"
Received: from gmacartn-mobl.ger.corp.intel.com (HELO [10.255.13.33])
	([10.255.13.33])
	by orsmga001.jf.intel.com with ESMTP; 17 Jul 2014 13:07:21 -0700
Message-ID: <1405627640.31082.75.camel@empanada>
From: Tom Zanussi <tom.zanussi@intel.com>
To: maciej.borzecki@open-rnd.pl
Date: Thu, 17 Jul 2014 15:07:20 -0500
In-Reply-To: <1405618723.15660.1.camel@localhost.localdomain>
References: <1405599916.4781.2.camel@localhost.localdomain>
	<23827558.qlZqcTDZms@peggleto-mobl5.ger.corp.intel.com>
	<CAFNP8Os559bt59bx6tfqp+R+HyUxz66kaxjuvzBGiRKbdUMjdQ@mail.gmail.com>
	<3342528.IHg5slGbJt@peggleto-mobl5.ger.corp.intel.com>
	<1405606711.31082.12.camel@empanada>
	<1405618723.15660.1.camel@localhost.localdomain>
X-Mailer: Evolution 3.8.5 (3.8.5-2.fc19) 
Mime-Version: 1.0
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	Scott Rifenbark <srifenbark@gmail.com>, yocto@yoctoproject.org
Subject: Re: wic status
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
X-List-Received-Date: Thu, 17 Jul 2014 20:07:40 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2014-07-17 at 19:38 +0200, Maciek Borzecki wrote:
> On czw, 2014-07-17 at 09:18 -0500, Tom Zanussi wrote:
> > On Thu, 2014-07-17 at 14:51 +0100, Paul Eggleton wrote:
> > > On Thursday 17 July 2014 16:48:41 Scott Rifenbark wrote:
> > > > On Thu, Jul 17, 2014 at 3:56 PM, Paul Eggleton <
> > > > paul.eggleton@linux.intel.com> wrote:
> > > > > On Thursday 17 July 2014 14:25:16 Maciek Borzecki wrote:
> > > > > > There used to be an entry about wic in development manual back in 1.5.2:
> > > > > > http://www.yoctoproject.org/docs/1.5.2/dev-manual/dev-manual.html
> > > > > > 
> > > > > > This entry is gone in current documentation and there seems to be no
> > > > > > mention of wic at all:
> > > > > > https://www.yoctoproject.org/docs/current/dev-manual/dev-manual.html
> > > > > 
> > > > > Scott, can you take a look at this if you haven't already?
> > > >
> > > > wic was documented in the 1.5.x set and was not put into the 1.6 set.  I
> > > > was told that it was going to change or be further completed so it did not
> > > > go in that development branch.  Wic was never documented in the 1.6 set.
> > > 
> > > Well, wic is still a part of the system in 1.6 and beyond so we do need to 
> > > document it; as far as I can tell what was in the 1.5 manual linked above 
> > > should be perfectly fine and we can just extend / update it as needed. Tom 
> > > should be able to help fill in any blanks.
> > > 
> > 
> > Right, wic is still included in the system, and like the rest of the
> > system is undergoing continual development, so I'm not sure why it would
> > be treated differently.
> > 
> > In any case, to make it easier for users and to avoid a mismatch with
> > external documentation, over the past couple weeks I've submitted a set
> > of patches (which have now been merged) that puts most of the help
> > content into the tool itself, which is all now accessible via 'wic
> > help'.
> 
> Right, I've seen your patches in master, very helpful.
> 
> There's one more thing that I'm a bit confused about. The 1.5.2 docs
> state the following:
> 
> <excerpt start>
> Here are the actual partition language commands used in the
> mkefidisk.wks file to generate an image:
> 
>      # short-description: Create an EFI disk image
>      # long-description: Creates a partitioned EFI disk image that the
> user
>      # can directly dd to boot media.
> 
>      part /boot --source bootimg --ondisk sda --fstype=efi --label msdos
> --active --align 1024
> <excerpt end>
> 
> I'd assume to find scripts/lib/mic/plugins/source/bootimg.py in the
> tree, but the file is not there. Have I missed something? 
> 

Yeah, the documentation is wrong - I need to update it.  Previous
versions had --source bootimg treated specially and hard-coded the
different cases - for --source bootimg, it would look at the --fstype
and decide which hard-coded version to use, efi in this case.

Versions after that implemented those cases completely as --source
plugins, which you see now as bootimg-efi and bootimg-bios plugins.

> (btw. I'm also assuming that bootimg would prepare a boot partitiong
> without pushing any particular bootloader, like syslinux or whatever
> right?)

Right now, those plugins do push specific bootloaders, which so far has
been enough for our initial images.  You can use --source rootfs to
create general-purpose partitions of the supported fstypes including
contents needed for bootloaders, but the actual installation of a
bootloader would need a plugin containing the logic to do that.  With
support for more architectures and bootloaders coming online, we may
want to provide a more generic mechanism or implementation, but I don't
have any specifics in mind at the moment..

Tom

> 
> 
> -- 
> Maciej Borzęcki
> Senior Software Developer at Open-RnD Sp. z o.o., Poland
> www.open-rnd.pl
> mobile: +48 889 117 365, fax: +48 42 657 9079
> 
> Niniejsza wiadomość wraz z załącznikami może zawierać chronione prawem
> lub poufne informacje i została wysłana wyłącznie do wiadomości i
> użytku osób, do których została zaadresowana. Jeśli wiadomość została
> otrzymana przypadkowo zabrania się jej kopiowania lub rozsyłania do
> osób trzecich. W takim przypadku uprasza się o natychmiastowe
> zniszczenie wiadomości oraz poinformowanie nadawcy o zaistniałej
> sytuacji za pomocą wiadomości zwrotnej. Dziękujemy.
> 
> This message, including any attachments hereto, may contain privileged
> or confidential information and is sent solely for the attention and
> use of the intended addressee(s). If you are not an intended addressee,
> you may neither use this message nor copy or deliver it to anyone. In
> such case, you should immediately destroy this message and kindly notify
> the sender by reply email. Thank you.
> 
> 



