Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1EEF6E00405; Mon, 30 Jan 2017 07:32:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.4 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.41 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.41 listed in list.dnswl.org]
Received: from mail-it0-f41.google.com (mail-it0-f41.google.com
	[209.85.214.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E3F1AE0030B
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 07:32:40 -0800 (PST)
Received: by mail-it0-f41.google.com with SMTP id r185so103745277ita.0
	for <yocto@yoctoproject.org>; Mon, 30 Jan 2017 07:32:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:organization:mime-version:content-transfer-encoding;
	bh=/wSOvumO4EbLqM/IvMyR33XmdnDMG1oKaVwqOVmKQIg=;
	b=Oi7F1+vkkKXOgtixY+Y1SVmJa6MUFXDZM83+QnXCvksp7mQzN8EFeQdcjvaafAcMZN
	Rrfdd53WaxkTDSeSohYrK7eNI+/24JNXTwd/8UDzD44c98GRpNfVZNzkCVNh0RDa0YIe
	NGw/e+C93mOae/X4Pg3AfLBldE74L5ryMRJ00nC/0FG1fl6EaWTK4CBB/8sNOEl0lzmJ
	OhzEGrAGvRPQfq1R5jxbAoZg6pz2acZjAYul8hnrRlixreQvlP/WyQ78w1sdTtyRxHvy
	kMSxyJMjQBRaoGqJ44o1f1slYffpyABRO1t2pvg1rIsOMPydhYDN/IdyO1RWgLAwpd0j
	AdUw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=/wSOvumO4EbLqM/IvMyR33XmdnDMG1oKaVwqOVmKQIg=;
	b=TigHBvmNTrIuydL6OVQImiLn+51VFS06FNbqP9Q/yMFV80nnDNpigasfLB1yBmCZPg
	LJN+jr4iFrreJsEsMYroID72W/2WvGqwL8wM7V6mvRkSC42AG1wq7Ksdho+T7VXJ57qe
	fzE8Wt2mcMc9/ijMv4oOn7AlH5s2SGV0jpYHjAaWmUV0ItsRmMgaTXyG4H3rZ7+ruWGZ
	KenI39xlpRA9fBhhJ6qyLxKO8s/SB55SBxchk1dqI3SGFsEu+FshPXJI5nAUCtaicaKr
	CvnFQjc6oqqC7VrVmoeli6X6h6d+VCc9nyCLUBG9f9SpbxF4keZjRxH6/G7Rym0SGmos
	1L8g==
X-Gm-Message-State: AIkVDXILLJH/2vt7YwRBCvtZjE2Dqbct0j4WhM3Pjx+oR0kS0HdDU1HtjfbV5Id89w908JlO
X-Received: by 10.36.29.80 with SMTP id 77mr15939815itj.29.1485790359454;
	Mon, 30 Jan 2017 07:32:39 -0800 (PST)
Received: from pohly-mobl1 (p5DE8CDEB.dip0.t-ipconnect.de. [93.232.205.235])
	by smtp.gmail.com with ESMTPSA id u63sm8394834ioi.4.2017.01.30.07.32.37
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Mon, 30 Jan 2017 07:32:38 -0800 (PST)
Message-ID: <1485790355.20333.148.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: Armin Kuster <akuster808@gmail.com>
Date: Mon, 30 Jan 2017 16:32:35 +0100
In-Reply-To: <1485709952-13916-6-git-send-email-akuster808@gmail.com>
References: <1485709952-13916-1-git-send-email-akuster808@gmail.com>
	<1485709952-13916-6-git-send-email-akuster808@gmail.com>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.12.9-1+b1 
Mime-Version: 1.0
Cc: yocto@yoctoproject.org
Subject: Re: [meta-security][PATCH 6/6] swtpm: update to tip
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
X-List-Received-Date: Mon, 30 Jan 2017 15:32:44 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Sun, 2017-01-29 at 09:12 -0800, Armin Kuster wrote:
> fix signed build issues
> 
> Signed-off-by: Armin Kuster <akuster808@gmail.com>
> ---
>  recipes-tpm/swtpm/files/fix_lib_search_path.patch | 41 -------------------
>  recipes-tpm/swtpm/files/fix_signed_issue.patch    | 48 +++++++++++++++++++++++
>  recipes-tpm/swtpm/swtpm_1.0.bb                    | 18 +++++++--
>  3 files changed, 63 insertions(+), 44 deletions(-)
>  delete mode 100644 recipes-tpm/swtpm/files/fix_lib_search_path.patch
>  create mode 100644 recipes-tpm/swtpm/files/fix_signed_issue.patch
> 
> diff --git a/recipes-tpm/swtpm/files/fix_lib_search_path.patch b/recipes-tpm/swtpm/files/fix_lib_search_path.patch
> deleted file mode 100644
> index 015f418..0000000
> --- a/recipes-tpm/swtpm/files/fix_lib_search_path.patch
> +++ /dev/null

This patch is still needed when building swtpm-native. I'll add back a
version that applies to latest tip.

> diff --git a/recipes-tpm/swtpm/files/fix_signed_issue.patch b/recipes-tpm/swtpm/files/fix_signed_issue.patch
> new file mode 100644
> index 0000000..427df62
> --- /dev/null
> +++ b/recipes-tpm/swtpm/files/fix_signed_issue.patch
> @@ -0,0 +1,48 @@
> +Upstream-Status: Pending
> +Signed-off-by Armin Kuster <akuster808@gmail>

[...]

> +Index: git/src/swtpm_ioctl/tpm_ioctl.c
> +===================================================================
> +--- git.orig/src/swtpm_ioctl/tpm_ioctl.c
> ++++ git/src/swtpm_ioctl/tpm_ioctl.c
> +@@ -303,7 +303,7 @@ static int do_save_state_blob(int fd, bo
[...]
> +         /* no tpm_result here */
> +-        printf("ptm capability is 0x%lx\n", (uint64_t)devtoh64(is_chardev, cap));
> ++        printf("ptm capability is 0x%llx\n", (uint64_t)devtoh64(is_chardev, cap));

This is causing an error when building for x86-64:

tpm_ioctl.c:866:9: error: format ‘%llx’ expects argument of type ‘long long unsigned int’, but argument 2 has type ‘long unsigned int’ [-Werror=format=]
|          printf("ptm capability is 0x%llx\n", (uint64_t)devtoh64(is_chardev, cap));
|          ^
| cc1: all warnings being treated as errors

If you want, I can fix it as part of my upcoming patches with:

printf("ptm capability is 0x%llx\n", (long long unsigned)devtoh64(is_chardev, cap));

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.




