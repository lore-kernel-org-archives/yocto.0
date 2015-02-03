Return-Path: <paul.eggleton@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 954E7E0076F; Tue,  3 Feb 2015 10:11:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.93 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga11.intel.com (mga11.intel.com [192.55.52.93])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 652FDE005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 10:11:14 -0800 (PST)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga102.fm.intel.com with ESMTP; 03 Feb 2015 10:11:13 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,514,1418112000"; d="scan'208";a="672164390"
Received: from unknown (HELO peggleto-mobl5.ger.corp.intel.com)
	([10.252.17.39])
	by fmsmga002.fm.intel.com with ESMTP; 03 Feb 2015 10:11:12 -0800
From: Paul Eggleton <paul.eggleton@linux.intel.com>
To: Dean <dean@ripperd.com>
Date: Tue, 03 Feb 2015 18:11:12 +0000
Message-ID: <3808650.TK1iGa17XP@peggleto-mobl5.ger.corp.intel.com>
Organization: Intel Corporation
User-Agent: KMail/4.14.4 (Linux/3.17.8-200.fc20.x86_64; KDE/4.14.4; x86_64; ; )
In-Reply-To: <54D10341.2090300@ripperd.com>
References: <BAY169-W273E3222BFC4F033CF313EAE3D0@phx.gbl>
	<54D10341.2090300@ripperd.com>
MIME-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: DNS nameservers in Yocto
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
X-List-Received-Date: Tue, 03 Feb 2015 18:11:21 -0000
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"

Hi Dean,

On Tuesday 03 February 2015 11:20:01 Dean wrote:
> On 2/3/2015 9:43 AM, Jim Abernathy wrote:
> > I find that for Static IPs, I have to manually add my DNS name servers
> > to /etc/resolv.conf instead of what I'm use to and that's put the line
> > in /etc/network/interfaces with the dns-nameserver [IP] [IP].
> > 
> > My knowledge base comes from Ubuntu Server where putting everything in
> > "/etc/network/interfaces" covers most things.
> > 
> > Anyone know why?
>
> Add resolvconf to your image.
> 
> That being said, I'm using dora and the package there was very
> incomplete. I had to add quite a bit in a .bbappend to make it work
> properly.

Would the issues you found have been fixed by this commit?

  http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/?id=35e0a3eb6725781eb291b3fa90694a68c3b64c60

If not, we should really try to get these fixed in the original recipe - we'd 
certainly appreciate help there.

Cheers,
Paul

-- 

Paul Eggleton
Intel Open Source Technology Centre

