Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EDFADE00C75; Fri,  7 Oct 2016 17:05:01 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.43 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f43.google.com (mail-wm0-f43.google.com [74.125.82.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C844E00924
	for <yocto@yoctoproject.org>; Fri,  7 Oct 2016 17:04:56 -0700 (PDT)
Received: by mail-wm0-f43.google.com with SMTP id k125so58268188wma.1
	for <yocto@yoctoproject.org>; Fri, 07 Oct 2016 17:04:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-transfer-encoding;
	bh=oOUOHUTL08kKN3kZYOhmu8nEpWZEaQBfStir+7ha8ew=;
	b=oVNf6jonJO+gM88GKLqRNYb9dTsGGf1oTRUBJUDMbxfc24U8n1YVVruhqof3eXneL9
	pj94VUwJfuknVN5nSxV0HzbAJgufzwE1XPsEeSTCeUrJFIKI4UVcglsFObOcAaeN5L2E
	E8CGZvfasls3MgsktaDkqAtbNSC/pUwXFw7XFxjGc734w7uNzUhWhd4jhpchIhCnOqUu
	JlVDCJ3d6e6CoYide25pfKkCaCdF+lWs4+N379gGAD/1Ds1AhllP8qb9YTbanCNUaHuL
	NtEvfVEzHY99Tk8JXVf1tleB0QdwXtoFI1ZLSri8LDZIHj0/5On+XQI60Y2qYUuFeOsJ
	fEDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-transfer-encoding;
	bh=oOUOHUTL08kKN3kZYOhmu8nEpWZEaQBfStir+7ha8ew=;
	b=m/O3xS5cGvTgFGgH+ICCUFs1xqq8Vz9twpRQH19Z9l6l9TvW46jc0H2U5R1mgXoOFA
	+P2gpq7LnaU2FzWQTI8bx5Jf3/nlUE/2IX5sVY6Y+45amk2eAS2kCGuFARaTj6GxWduz
	6n1sjEAMgvhptJu0dyT6/lTsxgB3HKGAZdScuEL2arjodtO4DswwiMzWbQi3QeH096iy
	SY7Oq+rKP/49YI+cLKU+e+sPeOzYoBZ5XNFiVgRMbV7NlW+e3yUbnLjUyIW8J/oix5WK
	eB58P27z0/b77wABc4VYoPGJnjSlWgjHrSwv4zm/BhqQ3AOLnSZDe86Gnws3j/GYDT0F
	tMjQ==
X-Gm-Message-State: AA6/9RmZIrLxDxmBSfjYrnxirnuQlaSv7Fmjdp+/9ClYmOr8EDm8Oj+NmW187KNeeAUQQTST+xzvVfH178LKYg==
X-Received: by 10.28.28.193 with SMTP id c184mr809003wmc.53.1475885095770;
	Fri, 07 Oct 2016 17:04:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.135.212 with HTTP; Fri, 7 Oct 2016 17:04:55 -0700 (PDT)
In-Reply-To: <1475873438-24691-1-git-send-email-anibal.limon@linux.intel.com>
References: <1475873438-24691-1-git-send-email-anibal.limon@linux.intel.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Fri, 7 Oct 2016 17:04:55 -0700
Message-ID: <CA+n--H_8Bc6ogKjxUDHUy+ec4=0_XvgUS1M-C6LDGAa-h-aD7g@mail.gmail.com>
To: =?UTF-8?B?QW7DrWJhbCBMaW3Ds24=?= <anibal.limon@linux.intel.com>
Cc: joshua.g.lock@intel.com, yocto@yoctoproject.org,
	Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
Subject: Re: [[yocto-autobuilder][PATCHv4]] ] Build sets to test new OS distribution in autobuilder
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
X-List-Received-Date: Sat, 08 Oct 2016 00:05:02 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This version appears to ignore Beth's comments from yesterday where
she said buildset-config.autobuilder-qa wasn't really the appropriate
directory and suggested a different name, plus she said all buildable
configs should be present or links to them. If the later is true, then
not only should the patch use a different directory, but it should
also populate that new directory with links to the other build config
files referenced in this file.

    -Bill

On Fri, Oct 7, 2016 at 1:50 PM, An=C3=ADbal Lim=C3=B3n
<anibal.limon@linux.intel.com> wrote:
> From: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
>
> As part of the process to set new OS distribution as supported on Yoctoc =
Project
> a new patch was created with the list of build sets that should be execut=
ed.
>
> Detailed information:
> https://wiki.yoctoproject.org/wiki/Distro_Testing_Plan#Execute_Build_Sets
>
> Fixes [YOCTO #9905]
>
> Note:In order to add a new distro as supported all the build sets should =
be PASS
>
> Signed-off-by: Monserrat Sedeno <monserratx.sedeno.bustos@intel.com>
> Signed-off-by: An=C3=ADbal Lim=C3=B3n <anibal.limon@linux.intel.com>
> ---
>  .../nightly-qa-distro.conf                         | 55 ++++++++++++++++=
++++++
>  1 file changed, 55 insertions(+)
>  create mode 100644 buildset-config.autobuilder-qa/nightly-qa-distro.conf
>
> diff --git a/buildset-config.autobuilder-qa/nightly-qa-distro.conf b/buil=
dset-config.autobuilder-qa/nightly-qa-distro.conf
> new file mode 100644
> index 0000000..def4118
> --- /dev/null
> +++ b/buildset-config.autobuilder-qa/nightly-qa-distro.conf
> @@ -0,0 +1,55 @@
> +[nightly-qa-distro]
> +builders: 'example-worker'
> +repos: [{'poky':
> +            {'repourl':'git://git.yoctoproject.org/poky',
> +             'layerversion':{'core':'meta', 'yoctobsp':'meta-yocto-bsp',=
 'yocto':'meta-yocto', 'poky':'meta-poky'},
> +             'branch':'master'}},
> +        {'oecore':
> +            {'repourl':'git://git.openembedded.org/openembedded-core',
> +             'layerversion':'core',
> +             'checkout':False,
> +             'branch':'master'}},
> +        {'bitbake':
> +            {'repourl':'git://git.openembedded.org/bitbake',
> +             'checkout':False,
> +             'branch':'master'}},
> +        {'eclipse-poky-neon':
> +            {'repourl':'git://git.yoctoproject.org/eclipse-poky',
> +             'checkout':False,
> +             'branch':'neon-master'}},
> +        {'meta-qt4':
> +            {'repourl':'git://git.yoctoproject.org/meta-qt4',
> +             'branch':'master'}},
> +        {'meta-qt3':
> +            {'repourl':'git://git.yoctoproject.org/meta-qt3',
> +             'branch':'master'}}]
> +props: [{'fp_date':{'prop_type':'StringParameter',
> +                       'size': 20,
> +                       'name': 'fp_date',
> +                       'label':'Full Pass date:'}}]
> +steps: [{'SetDest':{}},
> +        {'CheckOutLayers': {}},
> +        {'RunPreamble': {}},
> +        {'TriggerBuilds': {'schedulerName': 'dist-build',
> +             'waitForFinish': 'True',
> +             'schedulerNames': {
> +                 'nightly-oe-selftest': {},
> +                 'nightly-oecore': {},
> +                 'nightly-deb': {},
> +                 'nightly-ipk': {},
> +                 'nightly-world': {},
> +                 'nightly-arm': {},
> +                 'nightly-multilib': {},
> +                 'nightly-x86-64-lsb': {},
> +                 'nightly-x86': {},
> +                 'nightly-x32': {},
> +                 'poky-tiny': {},
> +                 'nightly-qa-systemd': {},
> +                 'nightly-qa-extras': {},
> +                 'nightly-qa-targetbuilds': {},
> +                 'nightly-qa-skeleton': {},
> +                 'nightly-qa-logrotate': {},
> +                 'nightly-qa-pam': {},
> +                 'buildtools': {}},
> +                 'eclipse-plugin-neon': {},
> +             'schedulerNames_nowait': {}}},]
> --
> 2.1.4
>

