Return-Path: <pderocco@ix.netcom.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E5674E00B47; Thu, 18 May 2017 18:43:32 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.0 required=5.0 tests=BAYES_50,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: *  0.8 BAYES_50 BODY: Bayes spam probability is 40 to 60%
	*      [score: 0.5000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.86.89.68 listed in list.dnswl.org]
Received: from elasmtp-masked.atl.sa.earthlink.net
	(elasmtp-masked.atl.sa.earthlink.net [209.86.89.68])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3CA92E00B43
	for <yocto@yoctoproject.org>; Thu, 18 May 2017 18:43:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=ix.netcom.com;
	s=dk12062016; t=1495158210; bh=1zmepctSlh5NyPwyMmw60RrTWoOu+IDd5sj/
	5zrC4CA=; h=Received:From:To:Subject:Date:Message-ID:MIME-Version:
	Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:
	Thread-Index:X-ELNK-Trace:X-Originating-IP; b=E3J+54Spr4nyjAv1Yvba
	PkOcd8mjN/Wq9MK+hiPQm65klvve1qzt+yQmisicZRbhfaC2+aJ6r7Aj7fUc5kS68Nl
	AH8/MNmVIK0pOxp90x4HEVJH08/fw62pYfxn/zSHBA/pK6BZTK88po+pFPh6WWcQwlG
	+7c59x4/0rsQxPAzyaqGIP44k2YfB1E77f6DV70nS3bQOtGWUXrzHFrbp1lIsgV/8B6
	ykoQYlVu4r1/Snr4Und5U2SkrkrdyvZfhiVfD6hPVGuZCr7l1GJ3gqoQW/xwniYWR3c
	1nDW4Sbqw+4R2ECubJaCL0g46jFmZRIIOu0NMjsxsnXzZMUIBr0u2A==
DomainKey-Signature: a=rsa-sha1; q=dns; c=nofws; s=dk12062016; d=ix.netcom.com;
	b=i0O4wJt5idGoEPLFkAQ7wKAs7zljzlpJYOdgQWB8fpUhRWM1XkOPZgCg/2ZllUQhJLjQumZG1GIiB9w2yAnu6j+XtrvcDyeJhWqLaYR2mtcTrImLQlio8Z8Z4ze9L2muif+sWfrsZtKiuh/6CAAaMbFVMkd+iM9rQ4DFiNLkeeLpJ8BSYrkWF/VnYReA4TKA40mj4azfxj/arIO2hIbX5EcjyGJOF2ghO098F4Df7dEQ7hdeOpCLW/zfNP05/15gDZ7/dAGeW6kOUL/9DAJWR6xk2p/2g9+J1f4y7cf+A0IxlLhQtKnnPKNd00nIuGOFF9cyEN7rCwuvJulfPI80Sw==;
	h=Received:From:To:Subject:Date:Message-ID:MIME-Version:Content-Type:Content-Transfer-Encoding:X-Mailer:X-MimeOLE:Thread-Index:X-ELNK-Trace:X-Originating-IP;
Received: from [45.49.236.199] (helo=PAULD)
	by elasmtp-masked.atl.sa.earthlink.net with esmtpa (Exim 4.67)
	(envelope-from <pderocco@ix.netcom.com>) id 1dBWwy-0000l4-PE
	for yocto@yoctoproject.org; Thu, 18 May 2017 21:43:28 -0400
From: "Paul D. DeRocco" <pderocco@ix.netcom.com>
To: <yocto@yoctoproject.org>
Date: Thu, 18 May 2017 18:43:34 -0700
Message-ID: <370377A93E714B81A54709E200F398A6@PAULD>
MIME-Version: 1.0
X-Mailer: Microsoft Office Outlook 11
X-MimeOLE: Produced By Microsoft MimeOLE V6.1.7601.23651
Thread-Index: AdLQQVOHq/FcpTMETAOAOoC1QNRfhw==
X-ELNK-Trace: bd7d5d4e6f8f652c74cfc7ce3b1ad11381c87f5e519606884fcfebcd240237ffffa1cf97685c457b350badd9bab72f9c350badd9bab72f9c350badd9bab72f9c
X-Originating-IP: 45.49.236.199
Subject: What can I share between projects?
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
X-List-Received-Date: Fri, 19 May 2017 01:43:33 -0000
Content-Type: text/plain;
	charset="iso-8859-1"
Content-Transfer-Encoding: 7bit

If I'm doing multiple unrelated Yocto based projects, and they use the
same version of Yocto, and the same metadata (except for my own layers),
am I right in assuming that I can share everything in poky, downloads, and
sstate-cache, and I only need separate build directories? (I normally put
downloads and sstate-cache next to my build directory, rather than inside
it.)

-- 

Ciao,               Paul D. DeRocco
Paul                mailto:pderocco@ix.netcom.com


