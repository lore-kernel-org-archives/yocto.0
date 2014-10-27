Return-Path: <paul.betafive@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 626DAE00908; Mon, 27 Oct 2014 02:53:24 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.44 listed in list.dnswl.org]
Received: from mail-qa0-f44.google.com (mail-qa0-f44.google.com
	[209.85.216.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D8676E008FB
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 02:53:16 -0700 (PDT)
Received: by mail-qa0-f44.google.com with SMTP id w8so3450972qac.17
	for <yocto@yoctoproject.org>; Mon, 27 Oct 2014 02:53:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=ef9V8YLwmiIdZ0Xq26Rw/ooYADNubDGTY63SQ2buWkg=;
	b=z1UIL74cfcq9UuMCV0CcaZmKL9WupDeMH0ZrnmEAXF6KvsAE5r/WFSdA3kei+/cxro
	Xvb4ivIkOJCl658AuzaLKvjFudSFzKWcPPwlT5gMbcRi4whPkOjf4Ww8KZQi/7Q1pB2I
	CxXZLEqPcT1QtJpikFHYDEQUu+JjEadcNUAeKegRIHqmQ77mrpxYR49qLhsN/W/TrWdH
	3ICzAwpTZiXx42xl1Rox5rpCo56G54DK3Ai+Riz/+RyCpLzTfvFn0BX1hVuXcsPGHNQy
	5rpGT5TSICWFk5KrtYeht3hmJLQegIivcIrUGrmpdY+mW6KVbiPgzVjUohmFitGFIAMl
	QJzQ==
X-Received: by 10.140.30.98 with SMTP id c89mr4537077qgc.90.1414403595799;
	Mon, 27 Oct 2014 02:53:15 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.140.142.78 with HTTP; Mon, 27 Oct 2014 02:52:35 -0700 (PDT)
In-Reply-To: <544E11CF.6010701@windriver.com>
References: <544E11CF.6010701@windriver.com>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Mon, 27 Oct 2014 09:52:35 +0000
X-Google-Sender-Auth: 8BrgDp5MO93ocHb89u2PP4rWnA4
Message-ID: <CANyK_8eHtCb+a_a1fx16R3Nw0WVBU5mh6TFxSOwx06mRWdjuGA@mail.gmail.com>
To: Liu Jian <jian.liu@windriver.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	opkg-devel <opkg-devel@googlegroups.com>
Subject: Re: [OE-core] [PATCH] opkg-utils: update-alternatives fails for "[" and "[[" in busybox
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
X-List-Received-Date: Mon, 27 Oct 2014 09:53:24 -0000
Content-Type: text/plain; charset=UTF-8

On 27 October 2014 09:35, Liu Jian <jian.liu@windriver.com> wrote:
> Building a small filesystem with busybox gives the following error lines:
> sed: -e expression #1, char 41: unterminated address regex
> sed: -e expression #1, char 42: unterminated address regex
> This is caused by the script update-alternatives.
> "[" can not be used directly in sed expression.
>
> Signed-off-by: Jian Liu <jian.liu@windriver.com>
> ---
> ...andle-leftbracket-for-update-alternatives.patch | 25
> ++++++++++++++++++++++
> meta/recipes-devtools/opkg-utils/opkg-utils_git.bb | 4 +++-
> 2 files changed, 28 insertions(+), 1 deletion(-)
> create mode 100644
> meta/recipes-devtools/opkg-utils/opkg-utils/handle-leftbracket-for-update-alternatives.patch
>
> diff --git
> a/meta/recipes-devtools/opkg-utils/opkg-utils/handle-leftbracket-for-update-alternatives.patch
> b/meta/recipes-devtools/opkg-utils/opkg-utils/handle-leftbracket-for-update-alternatives.patch
> new file mode 100644
> index 0000000..0cdc4e2
> --- /dev/null
> +++
> b/meta/recipes-devtools/opkg-utils/opkg-utils/handle-leftbracket-for-update-alternatives.patch
> @@ -0,0 +1,25 @@
> +"[" should be escaped in sed expression. This patch is suitable for
> opkg-0.2.2
> +
> +diff -Nur utils.orig/update-alternatives utils/update-alternatives
> +--- utils.orig/update-alternatives 2013-08-16 04:22:29.000000000 +0800
> ++++ utils/update-alternatives 2014-09-19 10:55:22.238159317 +0800
> +@@ -68,6 +68,10 @@
> + sed -e 's/\//\\\//g'
> + }
> +
> ++protect_special_character() {
> ++ sed -e 's/\[/\\\[/g'
> ++}
> ++
> + remove_alt() {
> + [ $# -lt 2 ] && return 1
> + local name="$1"
> +@@ -75,7 +79,7 @@
> +
> + [ ! -f $ad/$name ] && return 0
> +
> +- path=`echo $path | protect_slashes`
> ++ path=`echo $path | protect_slashes | protect_special_character`
> + sed -ne "/^$path\>.*/!p" $ad/$name > $ad/$name.new
> + mv $ad/$name.new $ad/$name
> + }
> diff --git a/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb
> b/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb
> index 693c216..04412d1 100644
> --- a/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb
> +++ b/meta/recipes-devtools/opkg-utils/opkg-utils_git.bb
> @@ -10,7 +10,9 @@ PROVIDES += "virtual/update-alternatives"
> SRCREV = "eae0d8fa44e8594aa90eadf06e5f4fbeef314509"
> PV = "0.1.8+git${SRCPV}"
>
> -SRC_URI = "git://git.yoctoproject.org/opkg-utils"
> +SRC_URI = "git://git.yoctoproject.org/opkg-utils \
> + file://handle-leftbracket-for-update-alternatives.patch \
> +"
>
> S = "${WORKDIR}/git"
>
> --
> 1.8.5.2.233.g932f7e4
>

Sorry, you've sent a patch for oe-core to the wrong mailing lists here.

Also, this patch doesn't apply against oe-core anyway, it looks like
your email program has corrupted it by wrapping lines. Please use 'git
send-email' if you can.

To make this change, please submit a patch for opkg-utils itself
rather than for oe-core. In oe-core, we can then simply change SRCREV
rather than holding additional patches.

Thanks,

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

