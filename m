Return-Path: <rpurdie@rpsys.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BB0B9E00DFE; Fri,  2 Aug 2019 09:52:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
X-Greylist: delayed 654 seconds by postgrey-1.32 at yocto-www;
	Fri, 02 Aug 2019 09:52:17 PDT
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A8E82E00B1A
	for <yocto@yoctoproject.org>; Fri,  2 Aug 2019 09:52:17 -0700 (PDT)
Received: from hex ([192.168.3.26]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-10) with ESMTPSA id
	x72GfJj9001994
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Fri, 2 Aug 2019 17:41:20 +0100
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=rpsys.net; s=default;
	t=1564764080; bh=KlUkiPDntaL9mKfGda6dZ73Eh37VB0JCWm1Adpqb/XM=;
	h=Subject:From:To:Date:In-Reply-To:References:From;
	b=u0TiD9DZykRSHjPBOU61r5y8lmNHJrrSBLXf3rsER5KyjsTeLzDLIt1fsVIC0Gg03
	r/MhrKCW8W/Cf1YKZxCqSkCgdXJYDtPx7FQaSRvuKuNU4rfzW45fvQK89P0lmE75AD
	uFwCn/9x0jnjSxLlthUUbDbSH2quRzG4vduhAL1IK5Ac3iC6ebyCU0LerxgywZHSEL
	vyKlquCoS/ZYy+D0tKDOFW+z5JQhVu4FyuLoY435LIEzyPFHqmm7mZi86OWVvGMeRq
	ix4z+gLAUC43cQIroJVPOwTlVA7+PyddEaKoBMMvfpCA57fq9rkEZxZUgGnGJO3XSx
	d/C/BAKQRM6Eg==
Message-ID: <fdbce8969ca1a4fe12e4dcf1abaae68d79da0075.camel@rpsys.net>
From: Richard Purdie <rpurdie@rpsys.net>
To: Thomas Goodwin <btgoodwin@geontech.com>, yocto@yoctoproject.org
In-Reply-To: <20190730183621.26193-2-btgoodwin@geontech.com>
References: <20190730183621.26193-1-btgoodwin@geontech.com>
	<20190730183621.26193-2-btgoodwin@geontech.com>
User-Agent: Evolution 3.32.2-1 
MIME-Version: 1.0
X-Virus-Scanned: clamav-milter 0.100.3 at dan
X-Virus-Status: Clean
X-Mailman-Approved-At: Mon, 19 Aug 2019 02:32:48 -0700
Subject: Re: [yocto-autobuilder2][PATCH 2/3] Added remote distribution of config JSON files
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
Date: Fri, 02 Aug 2019 16:52:18 -0000
X-Original-Date: Fri, 02 Aug 2019 17:41:19 +0100
X-List-Received-Date: Fri, 02 Aug 2019 16:52:18 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Tue, 2019-07-30 at 14:36 -0400, Thomas Goodwin wrote:
> This feature/fix allows the worker to download the
> autobuilder helper JSON files from the controller
> rather than having to store them in the
> yocto-autobuilder-helper repository.  The process
> installs the file into the worker's
> builddir/yocto-autobuilder-helper path.
> 
> Signed-off-by: Thomas Goodwin <btgoodwin@geontech.com>
> ---
>  builders.py | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)

I like the idea however this is going to break the autobuilders as they
already use full paths in the variable.

I've merged some of the other patches but this one will need a little
further thought so we don't break the existing install.

The existing code also allows for different path locations on
individual workers (e.g. different username) which this would break.

Cheers,

Richard


