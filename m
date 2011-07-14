Return-Path: <richard.purdie@linuxfoundation.org>
Received: from tim.rpsys.net (93-97-173-237.zone5.bethere.co.uk
	[93.97.173.237])
	by mx1.pokylinux.org (Postfix) with ESMTP id 62DBF4C800AB
	for <yocto@yoctoproject.org>; Thu, 14 Jul 2011 18:15:38 -0500 (CDT)
Received: from localhost (localhost [127.0.0.1])
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6ENFUdG011748;
	Fri, 15 Jul 2011 00:15:30 +0100
Received: from tim.rpsys.net ([127.0.0.1])
	by localhost (tim.rpsys.net [127.0.0.1]) (amavisd-new,
	port 10024) with LMTP
	id 10997-06; Fri, 15 Jul 2011 00:15:26 +0100 (BST)
Received: from [192.168.3.10] ([192.168.3.10]) (authenticated bits=0)
	by tim.rpsys.net (8.13.6/8.13.8) with ESMTP id p6ENFMVF011742
	(version=TLSv1/SSLv3 cipher=DHE-RSA-AES256-SHA bits=256 verify=NO);
	Fri, 15 Jul 2011 00:15:23 +0100
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: "Robert P. J. Day" <rpjday@crashcourse.ca>
In-Reply-To: <alpine.DEB.2.02.1107141854400.3059@localhost6.localdomain6>
References: <alpine.DEB.2.02.1107141729570.7692@localhost6.localdomain6>
	<41DEA4B02DBDEF40A0F3B6D0DDB1237903146B@ORSMSX101.amr.corp.intel.com>
	<alpine.DEB.2.02.1107141800140.14563@localhost6.localdomain6>
	<1310682531.7553.2.camel@vorpal.jf.intel.com>
	<alpine.DEB.2.02.1107141854400.3059@localhost6.localdomain6>
Date: Fri, 15 Jul 2011 00:15:21 +0100
Message-ID: <1310685321.20015.1209.camel@rex>
Mime-Version: 1.0
X-Mailer: Evolution 2.32.2 
X-Virus-Scanned: amavisd-new at rpsys.net
Cc: yocto@yoctoproject.org
Subject: Re: why does quick start guide refer to non-provided "poky-image-sato"?
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
X-List-Received-Date: Thu, 14 Jul 2011 23:15:38 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Thu, 2011-07-14 at 19:10 -0400, Robert P. J. Day wrote:
> On Thu, 14 Jul 2011, Joshua Lock wrote:
> 
> > As I understand it documentation repository updates are reflected on
> > the website so the docs tend to reflect the released version.
> >
> > It would be nice to be able to provide development & release
> > documentation but I can't see it happening any time soon.
> 
>   ok, that explains it but it doesn't defend it.  IMHO, any single
> versioned tarball or repository checkout should always be internally
> consistent, and that includes embedded documentation.  when i do a
> "git pull" of any software, i expect the contents of any docs/
> directory to reflect what's there.
> 
>   if you want to publicly publish the docs that reflect the last
> official release, then build those docs from the appropriate git tag.

I agree that the docs in master should reflect the code in master and
that the docs on the bernard branch should be the ones which make the
bernard references.

Which or both can end up on the website as needed which is a separate
issue.

I thought this had been fixed and Scott had two branches so what's going
wrong? :/

Cheers,

Richard


