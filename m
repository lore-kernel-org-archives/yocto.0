Return-Path: <pderocco@ix.netcom.com>
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A069E014D2
	for <yocto@yoctoproject.org>; Thu,  7 Mar 2013 10:23:07 -0800 (PST)
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk20050327; d=ix.netcom.com;
	b=iyUz++xW9T8MBeKgGQ1hIBaSvcyT7L6zpq7+5JVLw56eRnEotP3D2rQBjEOcgpTQ;
	h=Received:From:To:Cc:References:In-Reply-To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [76.173.239.98] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>)
	id 1UDfT8-0003mg-NK; Thu, 07 Mar 2013 13:23:06 -0500
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: "'Martin Jansa'" <martin.jansa@gmail.com>
References: <74C70EB8A6B644C890B30B2F4B3C9415@PAULD>
	<20130307104051.GH32228@jama.dyndns-home.com>
In-Reply-To: <20130307104051.GH32228@jama.dyndns-home.com>
Date: Thu, 7 Mar 2013 10:22:54 -0800
Message-ID: <96E98E10F7094D32B371FD84AFF0FFFC@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.17609
Thread-Index: Ac4bQtSpRmN8KTuSSDGbk8r6v01doAAHDZRg
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e51960688bb545a020bf2b7e5c6f52a1a835597f2350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 76.173.239.98
Cc: yocto@yoctoproject.org
Subject: Re: Samba server?
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
X-List-Received-Date: Thu, 07 Mar 2013 18:23:07 -0000
Content-Type: text/plain;
	charset="us-ascii"
Content-Transfer-Encoding: 7bit

> From: Martin Jansa
> 
> Are you talking about openembedded as openembedded-classic or
> meta-openembedded?
> 
> Use samba from meta-openembedded.

That's what I tried first. It's not a layer, but a collection of layers, and
the layer that contains samba is called meta-oe. So I tried to include
meta-openembedded/meta-oe, and it barfed due to the absence of
fontcache.bbclass. But fontcache.bbclass is nowhere to be found in
meta-openembedded; it's contained in openembedded-core/meta. So I included
openembedded-core/meta, and got some other error message containing about a
dozen lines of Python script that had raised an exception. I tried including
openembedded instead/too, and got other error messages.

To someone who understands the shape of the universe, this is probably easy
to figure out. I might feel the trunk, or the tail, but I don't know it's an
elephant yet.

Since samba is a fairly common, standard module, I was hoping someone here
had already done this, and could tell me what buttons to push. I've read the
scant docs on bitbake, and pretty much the entire Yocto docs and
Openembedded docs, and my head is spinning. I don't mind learning some
stuff, but if I have to spend six months becoming an expert on something
just to get it to work, then this is an economically unviable project for
me.

Or maybe I should just build the system without samba, run it, manually
install samba just like any other user, and then use dd to save the modified
image for production use. Does that sound like a good idea?

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com 


