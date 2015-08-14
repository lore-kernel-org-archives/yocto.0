Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 664F8E00A54; Fri, 14 Aug 2015 01:59:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f174.google.com (mail-io0-f174.google.com
	[209.85.223.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3F5C9E00707
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 01:59:54 -0700 (PDT)
Received: by iodb91 with SMTP id b91so78110475iod.1
	for <yocto@yoctoproject.org>; Fri, 14 Aug 2015 01:59:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sNqFpbuqUx50YU2l4je33Jago+v7TQty8xiEmTbyc78=;
	b=rAX0jyipo8m/uVbxBRLn7k4oUmwOEx3zdK769X3abl7MGL+vHiYw7PdpZWeiPLBRJR
	1A9/0uKhagzUD8Cjr0llLr0UZcQ164Za5P56iDmhr/vf86sfz+KCc10WF3zV0CWqLufq
	jn2IOJYH26wJcEQjLC3GoA3LIbTOSp68gakxbcs7YKRupHQZORytJBpWXSWLhylFqj7F
	rux3xL0YJpUJujjrdTaMaeVQijAL5di3S4rVUyaptiNB2koPmYtI/3KqJj8V8NayJ+E7
	2uB4UCowls+yXKUTqXlCr4tUXEuuVle3SwerevRjJl0AX8veOyel5V3pFMfgZsJ28r91
	X/lQ==
X-Received: by 10.107.14.203 with SMTP id 194mr48219294ioo.195.1439542793990; 
	Fri, 14 Aug 2015 01:59:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.38.79 with HTTP; Fri, 14 Aug 2015 01:59:24 -0700 (PDT)
In-Reply-To: <CALwQErqfd52nmRJ6cGb8oX8UHjaMXppt7-yxgpRDOyDUJzXWgQ@mail.gmail.com>
References: <1439541970-21519-1-git-send-email-bobadeshrikant@gmail.com>
	<CALwQErqfd52nmRJ6cGb8oX8UHjaMXppt7-yxgpRDOyDUJzXWgQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 14 Aug 2015 01:59:24 -0700
Message-ID: <CAMKF1sr88SAznFsNuiBi9uF_24V2_9n=5+hzuf1JRNKW3HRZxA@mail.gmail.com>
To: Shrikant Bobade <bobadeshrikant@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	Shrikant Bobade <shrikant_bobade@mentor.com>
Subject: Re: [meta-selinux][PATCH] audit: fix qa warning of unrecognised config
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
X-List-Received-Date: Fri, 14 Aug 2015 08:59:58 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Aug 14, 2015 at 1:53 AM, Shrikant Bobade
<bobadeshrikant@gmail.com> wrote:
> Hi,
>
> observed: WARNING: QA Issue: audit: configure was passed unrecognised
> options: --with-armeb [unknown-configure-option]
> on core-image-selinux (poky-selinux distro)
>
> build tag:
> Build Configuration:
> BB_VERSION        = "1.27.1"
> BUILD_SYS         = "x86_64-linux"
> NATIVELSBSTRING   = "Ubuntu-12.04"
> TARGET_SYS        = "arm-poky-linux-gnueabi"
> MACHINE           = "qemuarm"
> DISTRO            = "poky-selinux"
> DISTRO_VERSION    = "1.8+snapshot-20150814"
> TUNE_FEATURES     = "arm armv5 thumb dsp"
> TARGET_FPU        = "soft"
> meta
> meta-yocto
> meta-yocto-bsp    = "master:a533776d6ff83b6e3e830137455b8382d002768b"
> meta-selinux      = "master:684ee9401f33db7c9d5b183988d89c688c9dd0be"
>
>
> Thanks
> Shrikant
>
> On Fri, Aug 14, 2015 at 2:16 PM, Shrikant Bobade <bobadeshrikant@gmail.com>
> wrote:
>>
>> From: Shrikant Bobade <shrikant_bobade@mentor.com>
>>
>> remove --with-armeb=yes to fix the configure
>> unrecognised option qa warning.
>>
>> Signed-off-by: Shrikant Bobade <shrikant_bobade@mentor.com>
>> ---
>>  recipes-security/audit/audit_2.4.3.bb |    1 -
>>  1 file changed, 1 deletion(-)
>>
>> diff --git a/recipes-security/audit/audit_2.4.3.bb
>> b/recipes-security/audit/audit_2.4.3.bb
>> index 8f125c0..31f4b03 100644
>> --- a/recipes-security/audit/audit_2.4.3.bb
>> +++ b/recipes-security/audit/audit_2.4.3.bb
>> @@ -41,7 +41,6 @@ EXTRA_OECONF += "--without-prelude \
>>          --without-python3 \
>>          --disable-zos-remote \
>>         "
>> -EXTRA_OECONF_append_arm = " --with-armeb=yes"

this is not right fix because the option has been renamed so you
should change it to

EXTRA_OECONF_append_arm = " --with-arm=yes"

and while you are at ti also add

EXTRA_OECONF_append_aarch64 = " --with-aarch64=yes"

