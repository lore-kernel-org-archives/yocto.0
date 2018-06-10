Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3AE61E01816; Sun, 10 Jun 2018 15:45:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from dan.rpsys.net (5751f4a1.skybroadband.com [87.81.244.161])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5F70E016E5
	for <yocto@yoctoproject.org>; Sun, 10 Jun 2018 15:45:03 -0700 (PDT)
Received: from hex ([192.168.3.34]) (authenticated bits=0)
	by dan.rpsys.net (8.15.2/8.15.2/Debian-3) with ESMTPSA id
	w5AMix0q007236
	(version=TLSv1.2 cipher=ECDHE-RSA-AES256-GCM-SHA384 bits=256
	verify=NOT); Sun, 10 Jun 2018 23:45:00 +0100
Message-ID: <a2f1bd58ecc1d54f6054613b8c783bf1e4899149.camel@linuxfoundation.org>
From: Richard Purdie <richard.purdie@linuxfoundation.org>
To: Armin Kuster <akuster808@gmail.com>, yocto@yoctoproject.org
Date: Sun, 10 Jun 2018 23:44:59 +0100
In-Reply-To: <1528071779-1499-1-git-send-email-akuster808@gmail.com>
References: <1528071779-1499-1-git-send-email-akuster808@gmail.com>
X-Mailer: Evolution 3.28.1-2 
Mime-Version: 1.0
X-Virus-Scanned: clamav-milter 0.99.4 at dan
X-Virus-Status: Clean
Subject: Re: [autobuilder][PATCH 1/2] yocto-autobuilder2: add missing __init__.py to top level
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
X-List-Received-Date: Sun, 10 Jun 2018 22:45:05 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 7bit

On Sun, 2018-06-03 at 17:22 -0700, Armin Kuster wrote:
> This fixes the import of modules when starting buildbot
> as master.cfg has:
> from yoctoabb import builders, config, schedulers, workers, services,
> www
> 
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  __init__.py | 0
>  1 file changed, 0 insertions(+), 0 deletions(-)
>  create mode 100644 __init__.py
> 
> diff --git a/__init__.py b/__init__.py
> new file mode 100644
> index 0000000..e69de29

I've merged the other patch (2/2). I've now realised this issue is due
to the use of python2 when we've been testing with python3. Rather than
trying to support both, I'd prefer to simply suggest people use python3
at this point.

Fancy sending a patch to document this? :)

It'd be useful to me to be cc'd on patches for the autobuilder stuff
too if that isn't too much trouble as I sometimes don't get though all
the mailing lists as often as I'd like.

Cheers,

Richard





