Return-Path: <Qi.Chen@windriver.com>
Received: from mail1.windriver.com (mail1.windriver.com [147.11.146.13])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8C45EE01454
	for <yocto@yoctoproject.org>; Sun,  6 Jan 2013 19:22:05 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail1.windriver.com (8.14.5/8.14.3) with ESMTP id r073M7BO010434
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Sun, 6 Jan 2013 19:22:07 -0800 (PST)
Received: from [128.224.163.154] (128.224.163.154) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.318.4;
	Sun, 6 Jan 2013 19:22:04 -0800
Message-ID: <50EA3F6E.5080708@windriver.com>
Date: Mon, 7 Jan 2013 11:22:22 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/17.0 Thunderbird/17.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
In-Reply-To: <1357473302-19235-1-git-send-email-andrei.gherzan@windriver.com>
X-Originating-IP: [128.224.163.154]
Subject: Re: [meta-ivi][PATCH 01/23] base-passwd: Modify patch as home directory of root user is /root
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
X-List-Received-Date: Mon, 07 Jan 2013 03:22:05 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

Home directory is now configurable now.
You could specify it in local.conf.

See the following commits for more details.

845c2c0 oprofile: use dynamic root home directory
2af073a base-passwd: use configurable root home directory
07b842f base-files: use dynamic root home directory
de5b44a bitbake.conf: import var ROOT_HOME



On 01/06/2013 07:54 PM, Andrei Gherzan wrote:
> Signed-off-by: Andrei Gherzan <andrei.gherzan@windriver.com>
> ---
>   .../base-passwd/add-default-root-pass.patch        |    4 ++--
>   .../base-passwd/base-passwd_3.5.26.bbappend        |    2 +-
>   2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/recipes-core-ivi/base-passwd/base-passwd/add-default-root-pass.patch b/recipes-core-ivi/base-passwd/base-passwd/add-default-root-pass.patch
> index 48b0eb3..320841e 100644
> --- a/recipes-core-ivi/base-passwd/base-passwd/add-default-root-pass.patch
> +++ b/recipes-core-ivi/base-passwd/base-passwd/add-default-root-pass.patch
> @@ -3,8 +3,8 @@ Index: base-passwd/passwd.master
>   --- base-passwd.orig/passwd.master	2012-03-15 16:45:58.149968908 +0200
>   +++ base-passwd/passwd.master	2012-03-15 16:47:26.094468934 +0200
>   @@ -1,4 +1,4 @@
> --root::0:0:root:/home/root:/bin/sh
> -+root:\$1\$1DO/lR8M\$f8JOOu4W8GBZzdNzCgSW40:0:0:root:/home/root:/bin/sh
> +-root::0:0:root:/root:/bin/sh
> ++root:\$1\$1DO/lR8M\$f8JOOu4W8GBZzdNzCgSW40:0:0:root:/root:/bin/sh
>    daemon:*:1:1:daemon:/usr/sbin:/bin/sh
>    bin:*:2:2:bin:/bin:/bin/sh
>    sys:*:3:3:sys:/dev:/bin/sh
> diff --git a/recipes-core-ivi/base-passwd/base-passwd_3.5.26.bbappend b/recipes-core-ivi/base-passwd/base-passwd_3.5.26.bbappend
> index 8b73d9d..4e3c8a9 100644
> --- a/recipes-core-ivi/base-passwd/base-passwd_3.5.26.bbappend
> +++ b/recipes-core-ivi/base-passwd/base-passwd_3.5.26.bbappend
> @@ -1,4 +1,4 @@
> -PRINC := "${@int(PRINC) + 1}"
> +PRINC := "${@int(PRINC) + 2}"
>   FILESEXTRAPATHS := "${THISDIR}/${PN}"
>   
>   SRC_URI += "file://add-default-root-pass.patch \


