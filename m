Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-galgo.atl.sa.earthlink.net
	(elasmtp-galgo.atl.sa.earthlink.net [209.86.89.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58567E01471
	for <yocto@yoctoproject.org>; Thu, 21 Mar 2013 12:10:55 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=ZvX6c2oJUhe9YhjJEZ8eJXmYTtreOfJpk5bPfWgr4XzhDNerEqkFMvKv+RCSOlbG;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-galgo.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UIkt4-0005NU-JW; Thu, 21 Mar 2013 15:10:54 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Burton, Ross'" <ross.burton@intel.com>,
	<yocto@yoctoproject.org>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD><CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com><3C8645632D634EAC903E8930B57F4777@PAULD><CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com><56C806C0B65D44ADA7D6314F4051E91E@PAULD><CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com><603BDC00C3D14F51BF551A28572660E3@PAULD><CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com><B85484ED80754E0D8F82ECCA688762AF@PAULD><CAJTo0LaOU=ak5awePdFdW2sCB=N1CsbiLMaQgF6Gzt5gFWuNSw@mail.gmail.com><9331786F4D074BCCAB63AE3E10152262@PAULD><F6460DFEAC8C415FAFCF7A16B0499DA6@intel.com><207F72914E4C4014A2C1124BBADDD244@PAULD><D6081CD6470747D1803B8A19E552149F@intel.com><439A53A3DAF743BEA77A6820E8B9641E@PAULD><DAD15C33EB5B4620BF57DF4816FC3C4B@intel.com><F164AFC4EFDF43D28B0BC563D7026360@PAULD>
	<CAJTo0LbAhQV6QANXgPe2Ax4DR6Wzs+jOz=ZtZTxRNFc0C3rLqg@mail.gmail.com>
In-Reply-To: <CAJTo0LbAhQV6QANXgPe2Ax4DR6Wzs+jOz=ZtZTxRNFc0C3rLqg@mail.gmail.com>
Date: Thu, 21 Mar 2013 12:10:39 -0700
Message-ID: <3955EF7F861B487B90A47607BAB635F4@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4mGhVgi4qh7gT3Si6CoJcfErLP3wAR3qQA
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606884bcadec6b7bda62c2db2e49b4dabf19e350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Thu, 21 Mar 2013 19:10:55 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Burton, Ross
> 
> Ah ha!
> 
> poky contains a copy of oe-core, so you don't need both, for a given
> version the meta/ directories will be identical (poky is the union of
> oe-core, bitbake, and meta-yocto).
> 
> I'd forgotten that meta-oe used to have guile in. Presumably the
> problem here is that autogen-native wants guile-native and it finds
> guile-native_1.8.7 before realising that guile_2.0.7 can also do a
> native build (that's what BBCLASSEXTEND=native does).
> 
> Try using BBMASK to hide the guile in meta-oe.  Add this to 
> your local.conf:
> 
> BBMASK = "meta-oe/recipes-support/guile"

That did it. However, I think we've been chasing floobydust, due to a
cockpit error on my part. The reason I was including openembedded-core/meta
is because it defined fontcache.bbclass, which meta-openembedded/meta-oe
referred to. But that was only true when I was erroneously using the master
branches of their git repositories. Now that I'm on the danny branches, I
see that that isn't a problem any more. So I've removed
openembedded-core/meta entirely from my bblayers.conf, and I'm trying a
rebuild now, and will let you know the results.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


