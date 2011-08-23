Return-Path: <omalleys@msu.edu>
Received: from webmail-3.internal.mail.msu.edu (webmail-3.mail.msu.edu
	[35.9.75.153])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6889AE00321
	for <yocto@yoctoproject.org>; Tue, 23 Aug 2011 11:01:53 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@msu.edu;
	x-dkim-adsp=none (insecure policy)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; d=msu.edu;
	s=mail; 
	h=Content-Transfer-Encoding:Content-Type:MIME-Version:In-Reply-To:References:Subject:Cc:To:From:Date:Message-ID;
	bh=1Zzxw8ZBtV8mg8J40fLU0TUaeLlzqZ9f9X6C0UxJj1g=; 
	b=ewV+9QPkoaqetp/Sy0ZoztwwAfxQwlnf3lpdfwyqJZY57+mi/OFuE69nqrY5+RBZvmeCcuTpuT2AWKyYO0UvJmi1zN5fqafxwRBpXn3WT9ZdM9Pmsxjaz0HFMroPVJNYQPlMIouuz1ZI4aATItm1SnG+3tQ9POY6wb3A3iePu0c=;
Received: from localhost.msu.edu ([127.0.0.1] helo=msu.edu)
	by webmail-3.internal.mail.msu.edu with esmtp (Exim 4.72 #1)
	id 1QvvIF-00038j-4K; Tue, 23 Aug 2011 14:01:43 -0400
Received: from eclipse.cl.msu.edu (eclipse.cl.msu.edu [35.8.1.153]) by
	mail.msu.edu (Horde Framework) with HTTP;
	Tue, 23 Aug 2011 14:01:43 -0400
Message-ID: <20110823140143.11573jx2b3qwm51j@mail.msu.edu>
Date: Tue, 23 Aug 2011 14:01:43 -0400
From: omalleys@msu.edu
To: Gordan Bobic <gordan@bobich.net>
References: <20110809181534.GR10171@einval.com>
	<20110823161134.GV3053@linaro.org>
	<efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
In-Reply-To: <efc47c3039402c1507d76f381a790115@mail.shatteredsilicon.net>
MIME-Version: 1.0
User-Agent: Internet Messaging Program (IMP) H3 (4.3.6)
X-Virus: None found by Clam AV
X-Mailman-Approved-At: Wed, 24 Aug 2011 09:32:19 -0700
Cc: cross-distro@lists.linaro.org, Ubuntu Devel <ubuntu-devel@lists.ubuntu.com>,
	GCC developers <gcc@gcc.gnu.org>, yocto@yoctoproject.org,
	Gentoo Embedded <gentoo-embedded@lists.gentoo.org>,
	Debian ARM <debian-arm@lists.debian.org>,
	Fedora ARM <arm@lists.fedoraproject.org>,
	OLPC Devel <devel@lists.laptop.org>,
	OpenEmbedded Devel <openembedded-devel@lists.openembedded.org>,
	cooker@mandrivalinux.org, MeeGo Dev <meego-dev@meego.com>,
	LSB discuss <lsb-discuss@lists.freestandards.org>,
	Mageia Dev <mageia-dev@mageia.org>
Subject: ARM 3D support was Re: [fedora-arm] ARM summit at Plumbers 2011
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
X-List-Received-Date: Tue, 23 Aug 2011 18:01:54 -0000
Content-Type: text/plain;
 charset=ISO-8859-1;
 DelSp="Yes";
 format="flowed"
Content-Disposition: inline
Content-Transfer-Encoding: 7bit

Quoting Gordan Bobic <gordan@bobich.net>:
>  Unfortunately there is no way I could make it, but on the subject of 3D
>  support on ARM, Luke recently mentioned something that initially seemed
>  outlandish but upon closer examination doesn't seem like a bad idea. As
>  we all know, the state of openness of specifications of commonly used
>  ARM 3D GPUs is at best dire. What has been proposed is a bit radical,
>  but it doesn't actually seem that implausible. Specifically, combining
>  Open Graphics Project (http://wiki.opengraphics.org/tiki-index.php) and
>  the xilinx zynq-7000 or similar (dual core Cortex A9 + FPGA). The idea
>  is to have an OGP GPU in firmware in FPGA. In terms of the power budget,
>  it seems to work relatively sanely considering what it is, and it is as
>  ideal as it gets as far as openness and flexibility goes.
>
>  I just thought it's worthy of a mention.

It does seem outlandish, but it is kind of cool. Is it going to give  
enough 3d speed? The next gen tegra is supposed to have a 24 core GPU.

It is probably more sane then my idea of just having a test suite from  
digital video out -> digital video receiver/capture card to get known  
test results. Then you could set up a hinted genetic algorithm based  
on a comparison. It would only work with digital video signals though.






