Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3B802E01460
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2013 14:41:05 -0700 (PDT)
Received: from cpec03f0ed08c7f-cm001ac318e826.cpe.net.cable.rogers.com
	([174.115.5.73]:56562 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:DHE-RSA-AES256-SHA:256)
	(Exim 4.80) (envelope-from <rpjday@crashcourse.ca>)
	id 1UPgHo-000692-8L; Tue, 09 Apr 2013 17:41:04 -0400
Date: Tue, 9 Apr 2013 17:41:01 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Trevor Woerner <twoerner@gmail.com>
In-Reply-To: <CAHUNapRkDBZOLdwpQWpKnnV6TmojkoY61t9oT4a16y75ODJLww@mail.gmail.com>
Message-ID: <alpine.DEB.2.02.1304091738350.4580@oneiric>
References: <alpine.DEB.2.02.1304081135020.23038@oneiric>
	<1365469127.17697.70.camel@empanada>
	<alpine.DEB.2.02.1304090729220.4184@oneiric>
	<CAHUNapRQTMvCE=8RLNhae+sm6=VN7pP4TfbBBM0nvcCR5aTmkQ@mail.gmail.com>
	<alpine.DEB.2.02.1304091728430.4537@oneiric>
	<CAHUNapRkDBZOLdwpQWpKnnV6TmojkoY61t9oT4a16y75ODJLww@mail.gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - astoria.ccjclearline.com
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Tue, 09 Apr 2013 21:41:05 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Tue, 9 Apr 2013, Trevor Woerner wrote:

> On Tue, Apr 9, 2013 at 5:29 PM, Robert P. J. Day <rpjday@crashcourse.ca> wrote:
> >   does this mean PACKAGE_CLASSES should be *exclusively* ipk, or that
> > ipk simply be in there?
>
> Yes, that's how I had been testing it (exclusively package_ipk).

  well, at the moment, that's what local.conf contains, so i'm just
using the default i got when i created a new project.  at least that
was the default for lab 1. should i expect that to change in a later
lab?

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

