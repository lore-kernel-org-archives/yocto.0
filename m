Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CF1AE0079B
	for <yocto@yoctoproject.org>; Fri, 10 Jan 2014 12:42:09 -0800 (PST)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.5) with ESMTP id s0AKg7iw003470
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Fri, 10 Jan 2014 12:42:07 -0800 (PST)
Received: from Marks-MacBook-Pro.local (172.25.36.232) by
	ALA-HCA.corp.ad.wrs.com (147.11.189.50) with Microsoft SMTP Server id
	14.2.347.0; Fri, 10 Jan 2014 12:42:07 -0800
Message-ID: <52D05B1E.30509@windriver.com>
Date: Fri, 10 Jan 2014 14:42:06 -0600
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.9;
	rv:24.0) Gecko/20100101 Thunderbird/24.2.0
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <1389310014-31051-1-git-send-email-flihp@twobit.us>
In-Reply-To: <1389310014-31051-1-git-send-email-flihp@twobit.us>
Subject: Re: [meta-selinux][PATCH] policycoreutils: Patch Makefile to get load_policy symlink right.
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
X-List-Received-Date: Fri, 10 Jan 2014 20:42:09 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 1/9/14, 5:26 PM, flihp@twobit.us wrote:
> From: Philip Tricca <flihp@twobit.us>
>
> Setting DESTDIR in the policycoreutils do_install creates a bad
> symlink for load_policy. This patch fixes up the Makefile to
> create the symlink relative to DESTDIR.

Merged to 'master-next'.  Note, I updated the patch to include a copy of the 
commit message it indicate what the purpose of the patch was.

> Signed-off-by: Philip Tricca <flihp@twobit.us>
> ---
>   .../policycoreutils-loadpolicy-symlink.patch                |   11 +++++++++++
>   recipes-security/selinux/policycoreutils_2.1.14.bb          |    1 +
>   2 files changed, 12 insertions(+)
>   create mode 100644 recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch
>
> diff --git a/recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch b/recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch
> new file mode 100644
> index 0000000..e0bd352
> --- /dev/null
> +++ b/recipes-security/selinux/policycoreutils/policycoreutils-loadpolicy-symlink.patch
> @@ -0,0 +1,11 @@
> +--- a/load_policy/Makefile
> ++++ b/load_policy/Makefile
> +@@ -19,7 +19,7 @@ install: all
> + 	test -d $(MANDIR)/man8 || install -m 755 -d $(MANDIR)/man8
> + 	install -m 644 load_policy.8 $(MANDIR)/man8/
> + 	-mkdir -p $(USRSBINDIR)
> +-	-ln -sf $(SBINDIR)/load_policy $(USRSBINDIR)/load_policy
> ++	-ln -sf $(subst $(DESTDIR),,$(SBINDIR))/load_policy $(USRSBINDIR)/load_policy
> +
> + clean:
> + 	-rm -f $(TARGETS) *.o
> diff --git a/recipes-security/selinux/policycoreutils_2.1.14.bb b/recipes-security/selinux/policycoreutils_2.1.14.bb
> index b177042..8a35322 100644
> --- a/recipes-security/selinux/policycoreutils_2.1.14.bb
> +++ b/recipes-security/selinux/policycoreutils_2.1.14.bb
> @@ -12,4 +12,5 @@ SRC_URI += "\
>   	file://policycoreutils-fix-strict-prototypes.patch \
>   	file://policycoreutils-revert-run_init-open_init_pty.patch \
>   	file://policycoreutils-fix-sepolicy-install-path.patch \
> +	file://policycoreutils-loadpolicy-symlink.patch \
>   	"
>


