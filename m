Return-Path: <rpjday@crashcourse.ca>
Received: from astoria.ccjclearline.com (astoria.ccjclearline.com
	[64.235.106.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 92D2FE01423
	for <yocto@yoctoproject.org>; Tue,  4 Dec 2012 03:36:09 -0800 (PST)
Received: from cpebcc81008dd2c-cmbcc81008dd29.cpe.net.cable.rogers.com
	([99.253.156.71]:37261 helo=crashcourse.ca)
	by astoria.ccjclearline.com with esmtpsa (TLSv1:AES256-SHA:256)
	(Exim 4.77) (envelope-from <rpjday@crashcourse.ca>)
	id 1TfqnI-0006Z5-7H; Tue, 04 Dec 2012 06:36:08 -0500
Date: Tue, 4 Dec 2012 06:36:05 -0500 (EST)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@oneiric
To: Tim Bird <tim.bird@am.sony.com>
In-Reply-To: <50BD4CB3.6030302@am.sony.com>
Message-ID: <alpine.DEB.2.02.1212040634220.4114@oneiric>
References: <alpine.DEB.2.02.1211291032530.27333@oneiric>
	<50B7AE45.1070301@am.sony.com>
	<alpine.DEB.2.02.1211300848590.1918@oneiric>
	<50BD4CB3.6030302@am.sony.com>
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
Subject: Re: chris larson's cool "bitbake-env" utility
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 04 Dec 2012 11:36:09 -0000
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 3 Dec 2012, Tim Bird wrote:

> On 11/30/2012 05:53 AM, Robert P. J. Day wrote:
> > On Thu, 29 Nov 2012, Tim Bird wrote:
> >
> >> I put a link to your page on my bitbake cheat sheet page at:
> >> http://elinux.org/Bitbake_Cheat_Sheet
> >
> >   as someone who has never bothered to play with any of the UIs and is
> > thus asking from a position of total ignorance, i have a couple
> > questions about the "User interfaces" section of that cheat sheet.
> >
> >   using stock oe-core, i followed your cheat sheet and tried this:
> >
> > $ bitbake
> >
> > and got:
> >
> > ERROR: Timeout while attempting to communicate with bitbake server
> >
> > so i need to start the server?  should that be mentioned there?
>
> Hmmm.  With bitbake from poky-1.2-denzil I get:
> "Nothing to do.  Use 'bitbake world' to build everything, or run 'bitbake --help' for usage information."
>
> I think that "bitbake <nothing>" is not really a valid invocation.

  never mind, just my incoherence ... when i was reading up on
"bitbake -u hob", i also read that "-u" had a default value of knotty,
so i assumed, oh, then i should be able to run just "bitbake" (even
though i had no idea what that would represent).  just silliness on my
part.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                        http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

