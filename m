Return-Path: <akuster808@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BEE4DE00860; Sun, 14 Dec 2014 19:15:41 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (akuster808[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.172 listed in list.dnswl.org]
Received: from mail-pd0-f172.google.com (mail-pd0-f172.google.com
	[209.85.192.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5D257E0082D
	for <yocto@yoctoproject.org>; Sun, 14 Dec 2014 19:15:33 -0800 (PST)
Received: by mail-pd0-f172.google.com with SMTP id y13so10825810pdi.3
	for <yocto@yoctoproject.org>; Sun, 14 Dec 2014 19:15:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=message-id:date:from:user-agent:mime-version:to:cc:subject
	:references:in-reply-to:content-type:content-transfer-encoding;
	bh=+gtSeuK02htEWyNyLq1M9NogH9H4ohoras3ZAJmiJuE=;
	b=kCVhZM1UPN2OLSs4ZKncf9lRpVmVHnIe4+hm4COjew0nvihAZCzndi+vyWh/RTpyrw
	C7Jd9oRUJVVJyjU1b5ITMz9dqmiHT+4WS0cbQzwium+iViO72apPVhqQNnlwqdIglKen
	4ciWE+vXJkzbcIdlCzPdALcPhnt+BwdLpKK4Hjt4bDtVMNWBroOvAFQwS8FI3N2U3a0Q
	aJnglkCoh9Dz9PJDnOaM+/1NBe2aGoIhWucg0x0Pr4BdFrpHpu8lCiJS3cCfRmjLXenk
	iutga9qDbKlqWOluD5O8NPrbPcwFRD7WtprrAunFNvwXXz+z7lUP4pbvTvEEPAIbV4tG
	m9Aw==
X-Received: by 10.68.167.36 with SMTP id zl4mr46670503pbb.83.1418613333168;
	Sun, 14 Dec 2014 19:15:33 -0800 (PST)
Received: from ?IPv6:2601:c:9380:601:1d1a:5082:6eef:d127?
	([2601:c:9380:601:1d1a:5082:6eef:d127])
	by mx.google.com with ESMTPSA id ra4sm7712606pab.33.2014.12.14.19.15.31
	for <multiple recipients>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Sun, 14 Dec 2014 19:15:31 -0800 (PST)
Message-ID: <548E5250.1000409@gmail.com>
Date: Sun, 14 Dec 2014 19:15:28 -0800
From: akuster808 <akuster808@gmail.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Bian, Naimeng" <biannm@cn.fujitsu.com>
References: <30DC4EDFD798C94083F3E083754532CC73DE2D79@G08CNEXMBPEKD02.g08.fujitsu.local>
In-Reply-To: <30DC4EDFD798C94083F3E083754532CC73DE2D79@G08CNEXMBPEKD02.g08.fujitsu.local>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [Dizzy] Backport patch of CVE-2014-9112
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
X-List-Received-Date: Mon, 15 Dec 2014 03:15:41 -0000
Content-Type: text/plain; charset=shift_jis
Content-Transfer-Encoding: 7bit

Bian.

Thanks for the reminder. I staged these today for test builds.

hope to make the pull request soon.

- Armin

On 12/14/2014 06:41 PM, Bian, Naimeng wrote:
> Hi Armin
> 
> This patch set have been applied into master of meta-oe and poky.
> Would you mind to backport it to Dizzy.
> 
> The commit id at master of poky as below.
> b9001b69b231efefbb9ed1e09eec211e61cd8cb1
> 8018f6167b7343373fe53c6d2bc53c569228b3cb
> 
> Thanks
>   Bian
> 
> -----Original Message-----
> From: Bian, Naimeng
> Sent: Monday, December 08, 2014 1:45 PM
> To: openembedded-core@lists.openembedded.org
> Cc: Bian, Naimeng; Sergey Poznyakoff
> Subject: [PATCH 0/2] cpio: backport patch of CVE-2014-9112
> 
> cpio: Fix memory overrun on reading improperly created link records
> 
> Signed-off-by: Bian Naimeng <biannm@cn.fujitsu.com>
> 
> http://git.savannah.gnu.org/cgit/cpio.git/commit/?id=746f3ff670dcfcdd28fcc990e79cd6fccc7ae48d
>    * src/copyin.c (get_link_name): New function.
>    (list_file, copyin_link): use get_link_name
> 
>    * tests/symlink-bad-length.at: New file.
>    * tests/symlink-long.at: New file.
>    * tests/Makefile.am: Add new files.
>    * tests/testsuite.at: Likewise.
> 
>    See http://lists.gnu.org/archive/html/bug-cpio/2014-11/msg00007.html
> 
> Upstream-Status: Backport
> Signed-off-by: Sergey Poznyakoff <gray@gnu.org.ua>
> 
> Bian Naimeng (2):
>    cpio: fix bug CVE-2014-9112 for cpio-2.8
>    cpio: fix bug CVE-2014-9112 for cpio-2.11
> 
>   .../cpio/cpio-2.11/fix-memory-overrun.patch        | 220 +++++++++++++++++++++
>   .../cpio/cpio-2.8/fix-memory-overrun.patch         | 217 ++++++++++++++++++++
>   meta/recipes-extended/cpio/cpio_2.11.bb            |   3 +-
>   meta/recipes-extended/cpio/cpio_2.8.bb             |   7 +-
>   4 files changed, 443 insertions(+), 4 deletions(-)  create mode 100644 meta/recipes-extended/cpio/cpio-2.11/fix-memory-overrun.patch
>   create mode 100644 meta/recipes-extended/cpio/cpio-2.8/fix-memory-overrun.patch
> 
> --
> 1.9.1
> 

