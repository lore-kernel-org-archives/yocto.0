Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-spurfowl.atl.sa.earthlink.net
	(elasmtp-spurfowl.atl.sa.earthlink.net [209.86.89.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 65F3EE01493
	for <yocto@yoctoproject.org>; Wed, 28 Aug 2013 15:15:30 -0700 (PDT)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=aUFxp+JfGBFFlcrukbzedELRShPCVlbUx8cIuESyoNDP0vyT2bKzegqqyBRTDkCU;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:Thread-Index:X-MimeOLE:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-spurfowl.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1VEo1R-0002Wg-UT; Wed, 28 Aug 2013 18:15:30 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Nicolas Dechesne'" <nicolas.dechesne@linaro.org>
References: <CAFyqS9qRgLBFThnAETs1KXnMingG10U3o+3cooVeR4Zi8o5JVQ@mail.gmail.com><68887874.AzlMtbdLCe@helios>
	<521E4DFC.2040704@gmail.com>
	<CAP71Wjx3uF=FFGfypOqw9w5HF0N6KEH9KJ6sGE_0zQ2AX3Dk6w@mail.gmail.com>
In-Reply-To: <CAP71Wjx3uF=FFGfypOqw9w5HF0N6KEH9KJ6sGE_0zQ2AX3Dk6w@mail.gmail.com>
Date: Wed, 28 Aug 2013 15:15:27 -0700
Message-ID: <634B5BDC80D342ABA055FCF109BBDE9C@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
Thread-Index: Ac6kNMWOGz7CSSt6RYOjfRL0wBtn/QABw3dw
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688cd6ec32e5a14de0d15660c50adcd9233350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: confusion about DEPENDS vs RDEPENDS
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
X-List-Received-Date: Wed, 28 Aug 2013 22:15:34 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Nicolas Dechesne
> 
> if the source code changes, the version of the recipe needs 
> to change too. if you change the source code without bumping 
> the version, the package might not be rebuilt properly 
> indeed. and that can explain the behavior you are seeing. if 
> 'someapp' does not change, it would be rebuilt only if one of 
> its dependencies was rebuilt. 

If you're making lots of changes in the course of debugging, isn't it
reasonable just to do a cleansstate on the recipe to force it to be
rebuilt?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


