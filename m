Return-Path: <raj.khem@gmail.com>
Received: from mail-ey0-f176.google.com (mail-ey0-f176.google.com
	[209.85.215.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4A604E01423
	for <yocto@yoctoproject.org>; Wed,  5 Sep 2012 10:08:54 -0700 (PDT)
Received: by eabd1 with SMTP id d1so286571eab.35
	for <yocto@yoctoproject.org>; Wed, 05 Sep 2012 10:08:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=gjmFcjdX+juuFM/pjpWWU/i0meYLDvMC1lNZ1vSctP4=;
	b=p/f3Pj3O8TsvsSf0d7kqz+fXQ/SRHFmDFTfTa47SaieJSLsjInm6ERjS4gsam4Bur4
	c15UmVoHsjSrinjpS60vxVivBEVRmxS4/YEHLyEzRIma7n+8IFdyxnU/jB6v3UcpDc1a
	eDioLIxlpci4kFKIUT6Pr7VX3fJRctZep71o9Ajo46f7NlnX7/bSovPewryweXXVQ3kn
	clcUwnBL5O/Y/j81hYGRdnUnuSWtA48ntwu0cePlPGz4qoSApBg5/2OdkS8nnk8Hw7PH
	k7A+7bP/DqldUneRd9imvB0rtULHTPIEzokH5rqULz0Wv624CwFNsLZ7VmM2SXEj7L1q
	0FaA==
Received: by 10.14.202.131 with SMTP id d3mr32189521eeo.32.1346864919082; Wed,
	05 Sep 2012 10:08:39 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.14.2.5 with HTTP; Wed, 5 Sep 2012 10:08:08 -0700 (PDT)
In-Reply-To: <fa8f0e879cb51717131fc1a2f01b88fa61c9caf2.1346864117.git.sgw@linux.intel.com>
References: <cover.1346864117.git.sgw@linux.intel.com>
	<fa8f0e879cb51717131fc1a2f01b88fa61c9caf2.1346864117.git.sgw@linux.intel.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Wed, 5 Sep 2012 10:08:08 -0700
Message-ID: <CAMKF1sqtiJYiHRAO9VL0ydxPssT3Z5GfGKWnKD+6ZsVWHDTZwg@mail.gmail.com>
To: Saul Wold <sgw@linux.intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 1/3] linux-yocto: Update linux-yocto for 3.2 and 3.4
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
X-List-Received-Date: Wed, 05 Sep 2012 17:08:54 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 5, 2012 at 9:56 AM, Saul Wold <sgw@linux.intel.com> wrote:
> Signed-off-by: Saul Wold <sgw@linux.intel.com>
> ---
>  .../recipes-kernel/linux/linux-yocto_3.0.bbappend  |    2 ++
>  .../recipes-kernel/linux/linux-yocto_3.2.bbappend  |    6 ++++++
>  .../recipes-kernel/linux/linux-yocto_3.4.bbappend  |    6 ++++++
>  3 files changed, 14 insertions(+), 0 deletions(-)
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
>  create mode 100644 meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
>
> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> index 58a6541..138cc21 100644
> --- a/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.0.bbappend
> @@ -2,3 +2,5 @@ FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
>
>  # enable the time limited kernel configuration options
>  SRC_URI += "file://time-limited-kernel.cfg"
> +
> +PR .= ".1"
> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
> new file mode 100644
> index 0000000..138cc21
> --- /dev/null
> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.2.bbappend
> @@ -0,0 +1,6 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +# enable the time limited kernel configuration options
> +SRC_URI += "file://time-limited-kernel.cfg"
> +
> +PR .= ".1"
> diff --git a/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
> new file mode 100644
> index 0000000..138cc21
> --- /dev/null
> +++ b/meta-tlk/recipes-kernel/linux/linux-yocto_3.4.bbappend
> @@ -0,0 +1,6 @@
> +FILESEXTRAPATHS_prepend := "${THISDIR}/${PN}:"
> +
> +# enable the time limited kernel configuration options
> +SRC_URI += "file://time-limited-kernel.cfg"
> +
> +PR .= ".1"

what will this option do ?

