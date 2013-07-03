Return-Path: <ross.burton@intel.com>
Received: from mail-vb0-f42.google.com (mail-vb0-f42.google.com
	[209.85.212.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 04444E0140D
	for <yocto@yoctoproject.org>; Wed,  3 Jul 2013 05:10:08 -0700 (PDT)
Received: by mail-vb0-f42.google.com with SMTP id i3so37301vbh.29
	for <yocto@yoctoproject.org>; Wed, 03 Jul 2013 05:10:07 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=Qjm7qK8t1c8eW8EaXWlr4UI+Zwoennyvusvd0dgQqPo=;
	b=gvEJOPqKwzRfjox0eKNBlyfS+3OellQAsoc4bK1Z1bL7KQHro5d13c6hQpTBs3OIEK
	n5LCT3ynKbQlTQBlYnq6P92iiKsHZi3CT0p5zFhsq/gPKbp5qiICkny+qA6oEVnwKcFE
	MxGfFC5eHiOgV1nwx/lRBXe83Fq8sCz+hpGU63gNmWlHGqX3Hw/NFaxYCW+T8noZO8T9
	imF8CSQlosEnBfVkljmTZpvToHg1ukbSZA1MPh3QgDscZ8MgMW4KFq/iQQ7GLcAT+kZr
	uFs/FvCv/UzjJLTVONrWYbgUqUFOIp6v0QefI/9LWi472o67b6ilYCL9e96Eq82J4ccV
	HCug==
X-Received: by 10.220.58.195 with SMTP id i3mr184382vch.38.1372853407587; Wed,
	03 Jul 2013 05:10:07 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.13.144 with HTTP; Wed, 3 Jul 2013 05:09:47 -0700 (PDT)
In-Reply-To: <51D4120F.6040306@mentor.com>
References: <1372850887-10185-1-git-send-email-sergey_matyukevich@mentor.com>
	<CAJTo0LYDTjrq+aSQK638pedtiCpX+_a7uzYwd1Gbe0F41T7p6A@mail.gmail.com>
	<51D4120F.6040306@mentor.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 3 Jul 2013 13:09:47 +0100
Message-ID: <CAJTo0LagT0i=JkkxEkd1mPbNH-F17vV9z4Pw9-bf8yNAUE0XHA@mail.gmail.com>
To: Sergey Matyukevich <Sergey_Matyukevich@mentor.com>
X-Gm-Message-State: ALoCoQkK9M9fo01DsCJ2aq+Ve81BE8i8IOQGhrHRc5p0YJdNFr+jORxVqqIqmsk12kd6iEESVK+n
Cc: yocto@yoctoproject.org
Subject: Re: [meta-ivi] [PATCHv2] connman: do not delete init scripts in bbappend
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
X-List-Received-Date: Wed, 03 Jul 2013 12:10:09 -0000
Content-Type: text/plain; charset=UTF-8

On 3 July 2013 12:59, Sergey Matyukevich <Sergey_Matyukevich@mentor.com> wrote:
> Hmm... Thanks for comment. It is good idea to take a break and to see the
> forest for the trees. Here is the second patch revision.
>
> Connman init scripts are now installed only when 'sysvinit' feature is
> enabled in DISTRO_FEATURES: commit 7c8160ccbe17d6e10bd7a09b91843182a89b9055
> in
> poky. No need to remove them in bbappend: they are not installed for
> 'systemd'-enabled
> systems and they are needed for 'sysvinit'-enabled systems.
>
> Signed-off-by: Sergey Matyukevich <sergey_matyukevich@mentor.com>
> ---
>  recipes-connectivity/connman/connman_1.15.bbappend |    5 -----
>  1 files changed, 0 insertions(+), 5 deletions(-)
>
> diff --git a/recipes-connectivity/connman/connman_1.15.bbappend
> b/recipes-connectivity/connman/connman_1.15.bbappend
> index cda612b..83e4b51 100644
> --- a/recipes-connectivity/connman/connman_1.15.bbappend
> +++ b/recipes-connectivity/connman/connman_1.15.bbappend
> @@ -2,8 +2,3 @@ PRINC := "${@int(PRINC) + 2}"
>
>  INITSCRIPT_NAME = ""
>  INITSCRIPT_PARAMS = ""
> -
> -do_install_append() {
> -       # Remove init scripts
> -       rm -r ${D}${sysconfdir}/init.d
> -}
> --
> 1.7.2.5

In that case, you can delete INITSCRIPT_NAME and INITSCRIPT_PARAMS too
surely.  Then all you're left is the PRINC, so you can delete that if
you don't care/are using the PR service, or delete that bbappend when
connman 1.16 is integrated.

Ross

