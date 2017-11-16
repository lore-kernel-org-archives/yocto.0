Return-Path: <patrick.ohly@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E10C8E00D28; Thu, 16 Nov 2017 05:32:57 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f44.google.com (mail-wm0-f44.google.com [74.125.82.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 03625E00D07
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 05:32:56 -0800 (PST)
Received: by mail-wm0-f44.google.com with SMTP id x63so3302443wmf.2
	for <yocto@yoctoproject.org>; Thu, 16 Nov 2017 05:32:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=message-id:subject:from:to:date:in-reply-to:references:organization
	:mime-version:content-transfer-encoding;
	bh=/eg3MwM2J1fJ7BH0tDLhanJK9Yy9gtsmaD/bpekuW0U=;
	b=gs34cc3+ZFa7jtT/HgxMySqBLuZcIQhGwVydJKjPE/MPsOxnZfCUuLdnZJ9rD2RMZw
	KA1Cl9A+LEiFRd4amRoMhb9QbMMXPUsDg89jqH4fFNqo5c6+Es7P+9kWcF11Y/aH5Mm8
	Ru5TzWdqDMcb/Sx9SiUQNYYVCVfO42xsJRUvvGBSfDwE88kdxCri8lWf/dF+bY36Ea10
	TQxNKBzg8fx8S5zw66zjzk7mH4INprajneMMrRTrYHOp6BSAMv5RAEXyyqryFhc5Fcs+
	+beg+71OATnKyXfrhfQVG9k2WxZZqc8bUljipaJITh6WT+CvL3Ef01ywFQDwp3skLfc3
	TUEA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
	:references:organization:mime-version:content-transfer-encoding;
	bh=/eg3MwM2J1fJ7BH0tDLhanJK9Yy9gtsmaD/bpekuW0U=;
	b=osdUo3F7woEoIIygg3qhO6Qm+FlWHo+uD/VTBV0kp6tpCIS4IQNw94wN3Hz131VIGz
	AcqKFZQIRO+K7Usz0x49h8mvZqZYLc0pqO32zBkFEha6Zb2Vf01BEY9AjP6libFI4Wsj
	RbBxFyMJ7SomjI3Se8EJRtICXm70XdBw/FTgmwaTW2/hgdgNqAsNSe5715sJYZ626Lf9
	Bt8bS/XqUhhETBzkrm5tTkcl56mBBh4rQwou+Ro/5nFvcO61zTPmj4EGvGEzbgM7PlwS
	ziM+VuGa/AhXDBL2ckofCOIZA2HFlBIODMbwb1OVrH0pIsa3gwXvsIKhODtBNfLM3k4l
	mdSg==
X-Gm-Message-State: AJaThX7YSEy97IRoM/yWzmfvOH/U8UXonBRAw+ufoQFHXoh629s2GrZ9
	Z3NHNm1h/Ld/He5dDksoimwh7Eo=
X-Google-Smtp-Source: AGs4zMYUbVbPco1Olx7KVFAUfRQtt2Bw4gnOUoTrsNV19eLiBTVVimWpec7Hxl184br+gWzdAnrfzg==
X-Received: by 10.223.136.162 with SMTP id f31mr1447672wrf.130.1510839175675; 
	Thu, 16 Nov 2017 05:32:55 -0800 (PST)
Received: from pohly-mobl1 (p54BD58EA.dip0.t-ipconnect.de. [84.189.88.234])
	by smtp.gmail.com with ESMTPSA id
	k185sm906418wma.28.2017.11.16.05.32.54
	(version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
	Thu, 16 Nov 2017 05:32:54 -0800 (PST)
Message-ID: <1510839174.5979.32.camel@intel.com>
From: Patrick Ohly <patrick.ohly@intel.com>
To: =?ISO-8859-1?Q?Andr=E9?= Draszik <git@andred.net>, yocto@yoctoproject.org
Date: Thu, 16 Nov 2017 14:32:54 +0100
In-Reply-To: <20171116100258.21588-1-git@andred.net>
References: <20171116100258.21588-1-git@andred.net>
Organization: Intel GmbH, Dornacher Strasse 1, D-85622 Feldkirchen/Munich
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Subject: Re: [meta-swupd][PATCH] layer.conf: exclude libarchive (bsdtar) dependency from swupd-client
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
X-List-Received-Date: Thu, 16 Nov 2017 13:32:58 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Thu, 2017-11-16 at 10:02 +0000, André Draszik wrote:
> From: André Draszik <adraszik@tycoint.com>
> 
> The swupd-client doesn't need to be rebuilt if libarchive
> changes, because swupd-client just invokes the command line
> utility bsdtar from the libarchive recipe, it doesn't link
> against libarchive.
> The bsdtar binary changing doesn't matter, as bsdtar's ABI
> (command line argument handling) wouldn't be changing.

This is about to change: 
https://github.com/clearlinux/swupd-client/issues/285 is being workedon, see 
https://github.com/clearlinux/swupd-client/pull/327

> Signed-off-by: André Draszik <adraszik@tycoint.com>
> ---
>  conf/layer.conf | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/conf/layer.conf b/conf/layer.conf
> index 50e7558..3af6992 100644
> --- a/conf/layer.conf
> +++ b/conf/layer.conf
> @@ -14,4 +14,5 @@ LAYERVERSION_meta-swupd = "1"
>  SIGGEN_EXCLUDE_SAFE_RECIPE_DEPS += "\
>    oe-swupd-helpers->bash \
>    oe-swupd-helpers->busybox \
> +  swupd-client->libarchive \
>  "

For now this change is okay.

I just have one general problem: I'm not sure whether I should consider
myself the maintainer who merges this. I know that I am listed as
"tentative" maintainer, but it practice it hasn't been my job and I
don't have time for it in my spare time either.

I did some work with swupd again recently, resulting in https://github.
com/pohly/meta-swupd/commits/master and https://github.com/intel/intel-
iot-refkit/pull/318, but that's just a temporary activity.

I understand that this isn't a tenable situation for those of you using
meta-swupd; hopefully by the end of the year at the latest it'll be
resolved.

-- 
Best Regards, Patrick Ohly

The content of this message is my personal opinion only and although
I am an employee of Intel, the statements I make here in no way
represent Intel's position on the issue, nor am I authorized to speak
on behalf of Intel on this matter.



