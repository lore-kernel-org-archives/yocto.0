Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13FF0E00344
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 11:05:46 -0700 (PDT)
Received: by eabd1 with SMTP id d1so1093903eab.35
	for <yocto@yoctoproject.org>; Wed, 12 Sep 2012 11:05:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=3/0WzoGc1Yenq7gZ5FG9NRlxF0hcq5uFqg7HjtJJ/Rs=;
	b=LyGZ8/30kYlMXwbj5cWokWFSsodhlZMUzQ04j8fCW+/Y4BpMp7dYlMN6I0Kq8cO0sL
	bU53IyOgbrU77766BvBJVzc/WQVKl/JhVX/8SOZvlWVVtcs6LMsjdbDWT1Dyy4jXeCtW
	ZJ64pQ8WP86N2K7D7o7ktJS64MvQJOfKlSKknoxRBm335TbG7+Y94PE2R7Vi9Z2XrZE1
	H8AGBUX82n/LVyX2dr+UWWZm9X7gymGIBLs+fdfJm5xWJoDIt69IycqahkRhXu19X9mc
	8viWtH4dZgfagQl4Oh2sgpNI5poYHOn4EMCkafXJAeBy3sXoZQtG6V0QD/aMDJ9Yu9wD
	VxZw==
Received: by 10.14.218.134 with SMTP id k6mr32684197eep.14.1347473135810; Wed,
	12 Sep 2012 11:05:35 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Wed, 12 Sep 2012 11:05:05 -0700 (PDT)
In-Reply-To: <70CC66F5C30A414DADDA6973E4CA391A674DAA@039-SN1MPN1-001.039d.mgd.msft.net>
References: <1347433590-8481-1-git-send-email-b19537@freescale.com>
	<1347433590-8481-9-git-send-email-b19537@freescale.com>
	<CAMKF1spSfEGfkXcfQ7Q1CHdiohSuJmPLd7yCFwW19B46SRe=tA@mail.gmail.com>
	<2072418.kpEGxVepHQ@helios>
	<CAMKF1srJ6FHnmapeJAxu__xS95L02MRNCbhP68gCexNEU3nkQQ@mail.gmail.com>
	<70CC66F5C30A414DADDA6973E4CA391A674DAA@039-SN1MPN1-001.039d.mgd.msft.net>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 12 Sep 2012 11:05:05 -0700
Message-ID: <CAMKF1spciR3x_DSKZcK7Vsk7pcDbfy1Ladq7UEMsKoN0Crt6gg@mail.gmail.com>
To: McClintock Matthew-B29882 <B29882@freescale.com>
Cc: Paul Eggleton <paul.eggleton@linux.intel.com>,
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-fsl-ppc 09/16] rcw_git.bb: update to 1.2.1 release version
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
X-List-Received-Date: Wed, 12 Sep 2012 18:05:47 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 12, 2012 at 11:02 AM, McClintock Matthew-B29882
<B29882@freescale.com> wrote:
>
>
> I've gone and changed all the usage of tags back to SHAs.
>
> http://git.yoctoproject.org/cgit/cgit.cgi/meta-fsl-ppc/commit/?id=a51ea005adab98afd5320a836957fad9364ef51b

Thanks Matthew you rock

