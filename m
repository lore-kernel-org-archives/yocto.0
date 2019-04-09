Return-Path: <rpjday@crashcourse.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 99C7EE00AD5; Tue,  9 Apr 2019 03:14:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [199.212.143.9 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from dawnrocksmusic.com (cpanel4.indieserve.net [199.212.143.9])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A45ACE0053F
	for <yocto@yoctoproject.org>; Tue,  9 Apr 2019 03:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=crashcourse.ca; s=default; h=Content-Type:MIME-Version:References:
	Message-ID:In-Reply-To:Subject:cc:To:From:Date:Sender:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Id:
	List-Help:List-Unsubscribe:List-Subscribe:List-Post:List-Owner:List-Archive;
	bh=tHECoWTeIULnmnuXVMf23ibpwJEKKp+5oKnIIuKLFZo=;
	b=aJCVsuVXgyiz31bztUwvZIiS+
	CKT4BxAm8NYxhNiLHGG2t2BcDesQQmHc6Fh9FGgKi3QA1SDu0gXx0jlQqyRS5akWnL7Yc19N+ZtTA
	ykswn8ChMIkY7PvAJTeWQiqG5PHayuGsynUurCAYprH0REQAY4t3XFMEViQ56H0T1NF7M5/oaiVMp
	aSN0vHmB6gAlhownpLUMBtpLrVleOfeu8y/0zB3+eJEgCDCyvSm1u4DnSFhGDUJSXiY6o3lnA2ZCU
	ZF0dBmTWbW0EPTL9iDnKNuUUk2ubmgOPaBMy6y9OYAXdKK6zDuCygkbxTxrT0VtYdg7t/J2nCUfXv
	i5buidSvw==;
Received: from cpef81d0f814063-cmf81d0f814060.cpe.net.cable.rogers.com
	([174.114.57.56]:45414 helo=localhost.localdomain)
	by cpanel4.indieserve.net with esmtpsa
	(TLSv1.2:ECDHE-RSA-AES256-GCM-SHA384:256) (Exim 4.91)
	(envelope-from <rpjday@crashcourse.ca>)
	id 1hDnm9-0007SR-Dc; Tue, 09 Apr 2019 06:14:46 -0400
Date: Tue, 9 Apr 2019 06:14:43 -0400 (EDT)
From: "Robert P. J. Day" <rpjday@crashcourse.ca>
X-X-Sender: rpjday@localhost.localdomain
To: "Burton, Ross" <ross.burton@intel.com>
In-Reply-To: <CAJTo0LYVR2L137Gt5s0-6HUcTKhx=KKwi=Lz_Fgx5nExf5bzQA@mail.gmail.com>
Message-ID: <alpine.LFD.2.21.1904090613060.7419@localhost.localdomain>
References: <alpine.LFD.2.21.1904081613420.23184@localhost.localdomain>
	<CAJTo0LYVR2L137Gt5s0-6HUcTKhx=KKwi=Lz_Fgx5nExf5bzQA@mail.gmail.com>
User-Agent: Alpine 2.21 (LFD 202 2017-01-01)
MIME-Version: 1.0
X-OutGoing-Spam-Status: No, score=-0.2
X-AntiAbuse: This header was added to track abuse,
	please include it with any abuse report
X-AntiAbuse: Primary Hostname - cpanel4.indieserve.net
X-AntiAbuse: Original Domain - yoctoproject.org
X-AntiAbuse: Originator/Caller UID/GID - [47 12] / [47 12]
X-AntiAbuse: Sender Address Domain - crashcourse.ca
X-Get-Message-Sender-Via: cpanel4.indieserve.net: authenticated_id:
	rpjday+crashcourse.ca/only user confirmed/virtual account not
	confirmed
X-Authenticated-Sender: cpanel4.indieserve.net: rpjday@crashcourse.ca
X-Source: 
X-Source-Args: 
X-Source-Dir: 
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: m4-mative: "Please port gnulib fseeko.c to your platform!"
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
X-List-Received-Date: Tue, 09 Apr 2019 10:14:50 -0000
Content-Type: text/plain; charset=US-ASCII

On Mon, 8 Apr 2019, Burton, Ross wrote:

> Looks like that bug in gnulib that broke m4 (and others) when glibc
> changed.
>
> Fixed upstream
> https://git.savannah.gnu.org/cgit/gnulib.git/commit/?id=4af4a4a718
> and oe-core master/thud/possibly sumo also carry the relevant patch
> for m4.
>
> If you're using older releases against a newer release then 1) this
> is why we have supported host distros and 2) the patch is easy to
> backport.

  so, to confirm what i thought, this is a bug in gnulib which
suggests i should dig through the build configuration to see where i
can, say, set a PREFERRED_VERSION of a newer version of gnulib that
no longer has tat bug? or, barring that, just add the appropriate
local patch on my end.

rday

-- 

========================================================================
Robert P. J. Day                                 Ottawa, Ontario, CANADA
                         http://crashcourse.ca

Twitter:                                       http://twitter.com/rpjday
LinkedIn:                               http://ca.linkedin.com/in/rpjday
========================================================================

