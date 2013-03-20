Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-mealy.atl.sa.earthlink.net
	(elasmtp-mealy.atl.sa.earthlink.net [209.86.89.69])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C1841E00741
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 12:43:35 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=SJlA64ir9haQOkumXC4z+4rpid7/0N5blbluR6Ws8Komaxzwtj3CNO784TTeWndb;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-mealy.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UIOv8-0001LT-SU; Wed, 20 Mar 2013 15:43:35 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Burton, Ross'" <ross.burton@intel.com>,
	<yocto@yoctoproject.org>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD><CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com><3C8645632D634EAC903E8930B57F4777@PAULD><CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com><56C806C0B65D44ADA7D6314F4051E91E@PAULD><CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com><603BDC00C3D14F51BF551A28572660E3@PAULD>
	<CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com>
In-Reply-To: <CAJTo0LZBRFHubPhCBZg8cko+TiZY3xz7YDJU-fzg0sgRFAhw2g@mail.gmail.com>
Date: Wed, 20 Mar 2013 12:43:18 -0700
Message-ID: <B85484ED80754E0D8F82ECCA688762AF@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4lnErGCtQX5ZXhSs2+oWpbA6E+PgABU7RA
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e5196068875054cb7ce85b5c45e463fd4601637fb350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Wed, 20 Mar 2013 19:43:35 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Burton, Ross
> 
> Yep, so it should, I was wrong.  Try bitbake -f guile-native.  The
> dependencies say that you should have guile-native already, so I don't
> know why it would be failing.

That "worked", in the sense of claiming to have executed the do_build task,
but it happened so fast that I think all it did was run a null make. When I
then did a bitbake of the entire image, I got the same error I got before,
about not being able to find guile-2.0. Is there some manual surgery I can
perform on the tree to get rid of the guile that it thinks exists, and
really force it to be remade?

By the way, when I do "bitbake -s", it lists both guile AND guile-native as
being version 1.8.7-r1.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


