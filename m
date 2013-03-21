Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ACA86E01366
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 23:49:00 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=l7nZl9atNbY7QRCoWY90ZnxpPInn9UW7EHCafVo9vH86r//70S97NfEjkWChJCTK;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UIZJ5-0003mh-NO; Thu, 21 Mar 2013 02:48:59 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Ross Burton'" <ross.burton@intel.com>,
	<yocto@yoctoproject.org>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD><CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com><3C8645632D634EAC903E8930B57F4777@PAULD><CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com><56C806C0B65D44ADA7D6314F4051E91E@PAULD><CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com><603BDC00C3D14F51BF551A28572660E3@PAULD><CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com><B85484ED80754E0D8F82ECCA688762AF@PAULD><CAJTo0LaOU=ak5awePdFdW2sCB=N1CsbiLMaQgF6Gzt5gFWuNSw@mail.gmail.com><9331786F4D074BCCAB63AE3E10152262@PAULD><F6460DFEAC8C415FAFCF7A16B0499DA6@intel.com><207F72914E4C4014A2C1124BBADDD244@PAULD><D6081CD6470747D1803B8A19E552149F@intel.com><439A53A3DAF743BEA77A6820E8B9641E@PAULD>
	<DAD15C33EB5B4620BF57DF4816FC3C4B@intel.com>
In-Reply-To: <DAD15C33EB5B4620BF57DF4816FC3C4B@intel.com>
Date: Wed, 20 Mar 2013 23:48:44 -0700
Message-ID: <F164AFC4EFDF43D28B0BC563D7026360@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4lrT8vlt5LzruOQgSFlo7GQRvbZwASP3mQ
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688e3aba0400d85b86240b96a06bec319a9350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Thu, 21 Mar 2013 06:49:00 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

Still no joy. Nuked tmp/, re-checkedout the current danny branch head on
both meta-openembedded and openembedded-core, and got the same error. Here
are some things I notice about what's in my directory trees:

My build tree shows both guile-1.8.7 and guile-2.0.6 in downloads. It shows
stuff related to both guile-native-1.8.7 and guile-native-2.0.6 in
sstate-cache. It only shows guile-native-1.8.7 elsewhere in the build tree.
I also see two copies of guile-1.8.pc. It therefore looks like bitbake is
only doing a native build of guile-1.8.7.

In the metadata trees, meta-openembedded/meta-oe has recipes called
"guile_1.8.7.bb" and "guile-native_1.8.7.bb". poky-danny-8.0/meta and
openembedded-core/meta both have recipes called "guile_2.0.6.bb". The latter
has some extra junk in it I don't understand. Nothing has a recipe called
"guile-native_2.0.6.bb".

So let me see if I understand the problem. Everything worked fine when I
built the standard image, but I started having problems when I pulled in a
couple of repositories from OpenEmbedded so that I could add a Samba server.
Something in the layers I added needs to run a tool called autogen, so it
tries to do a native build of autogen-5.12-r3. In the process of configuring
that, it needs access to guile-2.0.6, but it can't find it, so it quits. Is
it looking to run guile, or is it looking for a native version of the guile
library to link into autogen? Somehow, I've got the source for this version
of guile, but nothing is building it, and there is no recipe for it. Where
is the recipe supposed to be found? Or is this simply a tool that I'm
supposed to have on my machine in the first place, and bitbake doesn't try
to build it?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


