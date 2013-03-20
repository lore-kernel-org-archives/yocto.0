Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-curtail.atl.sa.earthlink.net
	(elasmtp-curtail.atl.sa.earthlink.net [209.86.89.64])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CF24E00740
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 13:35:29 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=Lp82yM4+std5TnR7ugyLUEQr961qy41L1/YNeOEF9oBzNtj5lwSBypLsBtWcBOSC;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-curtail.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UIPjM-0005uL-4o; Wed, 20 Mar 2013 16:35:28 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Ross Burton'" <ross.burton@intel.com>,
	<yocto@yoctoproject.org>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD><CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com><3C8645632D634EAC903E8930B57F4777@PAULD><CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com><56C806C0B65D44ADA7D6314F4051E91E@PAULD><CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com><603BDC00C3D14F51BF551A28572660E3@PAULD><CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com><B85484ED80754E0D8F82ECCA688762AF@PAULD><CAJTo0LaOU=ak5awePdFdW2sCB=N1CsbiLMaQgF6Gzt5gFWuNSw@mail.gmail.com><9331786F4D074BCCAB63AE3E10152262@PAULD>
	<F6460DFEAC8C415FAFCF7A16B0499DA6@intel.com>
In-Reply-To: <F6460DFEAC8C415FAFCF7A16B0499DA6@intel.com>
Date: Wed, 20 Mar 2013 13:35:11 -0700
Message-ID: <207F72914E4C4014A2C1124BBADDD244@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4lp6xAmz1onNu9TfK9qBC9yqi+1QAAHHQg
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688b3a377df83b27a505e660dd559ce245d350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Subject: Re: Can't find guile-2.0
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
X-List-Received-Date: Wed, 20 Mar 2013 20:35:29 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Ross Burton
> 
> Okaaaay.  So what version of oe-core or poky are you using 
> that is providing the guile-native?  Having autogen-native r3 
> implies some revision of master post-danny, as danny (1.3) 
> only has autogen-native r2. Either way, both Danny and master 
> have guile-native 2.0.6.

They're both current within the last few weeks. However, a bit of history:
My goal was to add Samba, which is contained in the meta-oe layer of
meta-openembedded, which also required adding the meta layer of
openembedded-core. But I initially used the master branch, got errors, and
someone else told me I needed to use the danny branch. So it is possible
that something is lying around from when I first tried the master branch.

> What are you exact layers and versions?  I'm not 
> understanding why you're not getting the guile-native that 
> must be present alongside your autogen-native (as I fixed 
> guile and then fixed autogen in the same day).

My layers are

poky-danny-8.0/meta
poky-danny-8.0/meta-yocto
poky-danny-8.0/meta-yocto-bsp
poky-danny-8.0/meta-intel
poky-danny-8.0/meta-intel/meta-cedartrail
poky-danny-8.0/openembedded-core/meta
poky-danny-8.0/meta-openembedded/meta-oe

where the last two are not part of poky-danny-8.0, but were fetched
separately from OpenEmbedded's git server, and the rest came from a couple
of tarballs from the Yocto site. I'm not sure how to find specific version
info on these, but like I said, they're all from the last few weeks.

Do I need to clean something out, or should I nuke the build tree and start
over, now that I've got the right OE branch?

By the way, since you're from Intel, why the hell are they discontinuing the
Atom D2700?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


