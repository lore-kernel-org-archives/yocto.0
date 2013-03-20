Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5B91E00740
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 13:06:22 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=BjJhEHRiFfZUcjBCr5IHB+YT0bafjQAfWUBdlQiYMcjrqbGq/VOMzlVkkKNpQRtE;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UIPHB-0003rU-QK; Wed, 20 Mar 2013 16:06:21 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Burton, Ross'" <ross.burton@intel.com>,
	<yocto@yoctoproject.org>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD><CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com><3C8645632D634EAC903E8930B57F4777@PAULD><CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com><56C806C0B65D44ADA7D6314F4051E91E@PAULD><CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com><603BDC00C3D14F51BF551A28572660E3@PAULD><CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com><B85484ED80754E0D8F82ECCA688762AF@PAULD>
	<CAJTo0LaOU=ak5awePdFdW2sCB=N1CsbiLMaQgF6Gzt5gFWuNSw@mail.gmail.com>
In-Reply-To: <CAJTo0LaOU=ak5awePdFdW2sCB=N1CsbiLMaQgF6Gzt5gFWuNSw@mail.gmail.com>
Date: Wed, 20 Mar 2013 13:06:05 -0700
Message-ID: <9331786F4D074BCCAB63AE3E10152262@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4lpEfPpsqhBMn9QPOzWRBO5UzeeQAANHhw
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688a2354640cc8445ed8c8f7e961d428064350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Wed, 20 Mar 2013 20:06:22 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Burton, Ross
> 
> Okay, try doing "bitbake -c devshell autogen-native", and then running
> "pkg-config --cflags --libs guile-2.0".  That should produce errors,
> which may be more useful.  Debugging over email is quite difficult. :(

It complains that guile-2.0 is not found in the pkg-config search path, and
suggests adding the directory containing guile-2.0.pc to PKG_CONFIG_PATH.
This variable contains two directories within my build directory:

	tmp/sysroots/i686-linux/usr/lib/pkgconfig
	tmp/sysroots/i686-linux/usr/share/pkgconfig

The first directory contains guile-1.8.pc, not guile-2.0.pc.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


