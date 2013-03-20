Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-kukur.atl.sa.earthlink.net
	(elasmtp-kukur.atl.sa.earthlink.net [209.86.89.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 865D9E006D6
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 11:11:37 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=GtT+1JJi00HB5fh5Bp7c1xD0uRB7lW9pmapIN8RpYjgMVC1LF44ItwNHGWIaIZws;
	h=Received:From:To:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-kukur.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UINU8-0005NT-JX; Wed, 20 Mar 2013 14:11:36 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Burton, Ross'" <ross.burton@intel.com>,
	<yocto@yoctoproject.org>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD><CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com><3C8645632D634EAC903E8930B57F4777@PAULD><CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com><56C806C0B65D44ADA7D6314F4051E91E@PAULD>
	<CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com>
In-Reply-To: <CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com>
Date: Wed, 20 Mar 2013 11:11:20 -0700
Message-ID: <603BDC00C3D14F51BF551A28572660E3@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4lVGJ67PuSRgNzTN+J0d1JGgd7PwAQb6RQ
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688bcaf7c99ac91ffc77247281cf0b945e2350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
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
X-List-Received-Date: Wed, 20 Mar 2013 18:11:37 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Burton, Ross
> 
> autogen-native depends on guile-native so that should have worked -
> try doing "bitbake -ccleansstate guile-native ; bitbake guile-native"
> to force that to be rebuilt.

It complains that guile-native doesn't have a task called do_cleanstate.

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


