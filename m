Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by mx1.pokylinux.org (Postfix) with ESMTP id 699624C8004D
	for <yocto@yoctoproject.org>; Thu, 24 Feb 2011 14:49:34 -0600 (CST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p1OKnXmv027781
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 24 Feb 2011 12:49:33 -0800 (PST)
Received: from Macintosh-5.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.1.255.0;
	Thu, 24 Feb 2011 12:49:34 -0800
Message-ID: <4D66C45A.5090900@windriver.com>
Date: Thu, 24 Feb 2011 14:49:30 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; U; Intel Mac OS X 10.6; en-US;
	rv:1.9.2.13) Gecko/20101207 Thunderbird/3.1.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <F5EB2246-48BA-4B53-981A-28FAB785A6E6@windriver.com>
In-Reply-To: <F5EB2246-48BA-4B53-981A-28FAB785A6E6@windriver.com>
X-Originating-IP: [172.25.36.227]
Subject: Re: Observations on Yocto alpha
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
X-List-Received-Date: Thu, 24 Feb 2011 20:49:35 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 2/24/11 1:01 PM, Borman, David wrote:
> ===============================================================================
> 8) When running the script:
> 	source bernard-5.0-alpha/poky-init-build-env poky-4.0-build
> if you forgot to "source" it, you get back to a prompt without any
> indication that things aren't set up.  Personally, I'd rather that
> this set be done with a sub-shell instead of sourcing into the
> current shell environment, so that:
> 	1) you always would get to a prompt that had the env set up
> 	2) Your existing environment wouldn't be changed.  A ^D
> 	   would get you back to your old environment.
> The current script also assumes the user will be running bash or
> some variant of it, and doesn't allow for users that run something
> else, e.g. csh or tcsh.

Sounds like something went wrong with the env script, it's supposed to generate
a warning if you don't source it.  Which shell were you using when you sourced it?

Non-POSIX shells are not supported (in Poky at least).  Which is why csh/tcsh
isn't there.. but bash, ash, dash, zsh, etc all though work..  there is one
issue with zsh where it can't tell if you sourced it or not (which is why I'm
asking about the above.)

For csh/tcsh there is an unofficial patch to enable support -- but so far it's
been deemed to risky to included.

--Mark

