Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B069E00DB6; Fri,  6 Jul 2018 05:50:04 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.47 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f47.google.com (mail-oi0-f47.google.com
	[209.85.218.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 60DADE00AD8
	for <yocto@yoctoproject.org>; Fri,  6 Jul 2018 05:50:03 -0700 (PDT)
Received: by mail-oi0-f47.google.com with SMTP id n84-v6so23212025oib.9
	for <yocto@yoctoproject.org>; Fri, 06 Jul 2018 05:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Etpcxy+DqwJKITJWSiXRIUhdtLSrjNAUyC3WVZ75dmc=;
	b=SfJEls8fqFQi7TMRXK/bZ7qFM7w73LzE2OKCrsLsNWoeVOmxCY1RFX4sVau3G0HmVP
	/f7fotQTG9K8OnI/O6Muj9/UA9M8WGvym/85hUJAKutzZOWoqs6BIb45JN8Ncfcpu61r
	bxUefnGzdIf5Qto04SPStQq6Q8e+LdhX1SgKYCAHmZIXGgfRtY9MceKfl8Uymm+LdAcf
	WwIuuswjVq6v6QYX4uErreey8gRAIDYyebP06v6YTHWj3te5iRRbSl8lyIqzti0WkAyz
	/HQhDZ6EmNCLwIFHm1kaTLwaYWTq1VGnHXZ8yZNB0VpgjzDJy/5F2PISU5ks9QB6pff7
	gkrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Etpcxy+DqwJKITJWSiXRIUhdtLSrjNAUyC3WVZ75dmc=;
	b=pPU+/nRpI1WaBEnxc66v3vIydiMx5Lc4GsfSe2ELwMCJKYa55K1ErID467TSNURWAH
	YQql3vkN+MNHdOCK29QDRdGOpjk8fU4/C8xOBNH+aA079ph7Lndxr7CUOhl0TPkagSqe
	CtdAiZWCAUSTsi9Ylqj++gJFWkPalefD9YmMIpx0jVIBozK/1Kcw5dKDw+HK/OEnztAh
	l3P4wU/zh5PVNU4Ewniqtyh6sbErm+W5lJ+Hs75zt90sQDMSvX5BOV9fe4BDwHYHQGIg
	fhkvHiUhzDIkPft/k86LW9xvfwNSDGp/+n1k29DLU0y4l1QOKnV0jjuurXXGCTtmgm7U
	BhxA==
X-Gm-Message-State: APt69E2I06+jTpGyLgtIPZE065JYdo3foMgBhXozltfGXAMLGSw1ZX7h
	NdU8DK8h6AitnuH807ii4HtnODekqVVbL5QqL9pZJw==
X-Google-Smtp-Source: AAOMgpckxXnO8HzFC0KL5MPh+2lN/tayA2EyOMwnsLY6BdJzfl8lY1TKtXGiyAt1ce+XZFf6YTd+U0RF5sW5y1bTvG4=
X-Received: by 2002:aca:5f56:: with SMTP id
	t83-v6mr11914153oib.115.1530881402864; 
	Fri, 06 Jul 2018 05:50:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:434d:0:0:0:0:0 with HTTP;
	Fri, 6 Jul 2018 05:49:42 -0700 (PDT)
In-Reply-To: <CAJTo0LaiQ2oXL2VJA3VKSqNWpp7Vdd-UB+qCQH-EOD6gBwgxeQ@mail.gmail.com>
References: <CAGKr=yesOWOFUHJrvkgeBkw4LzqeNod6kG=6NpUkDzCJb8DDdQ@mail.gmail.com>
	<CAJTo0LaKC868wFeNd8V4MTgnW=e5BJpqSG8Ou_K9Ms__JHOSpQ@mail.gmail.com>
	<CAGKr=ydT_93m6GmGbhR0U21ewX6=OyvjaskX1hNCzNVu=eAeug@mail.gmail.com>
	<CAJTo0LaiQ2oXL2VJA3VKSqNWpp7Vdd-UB+qCQH-EOD6gBwgxeQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 6 Jul 2018 13:49:42 +0100
Message-ID: <CAJTo0LZwMN2gf-Zn-uHNHRKjWq=1u4mWn77bhJw2LLijffjrpQ@mail.gmail.com>
To: Oliver Westermann <owestermann@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Creating a recipe for python3-pillow
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
X-List-Received-Date: Fri, 06 Jul 2018 12:50:04 -0000
Content-Type: text/plain; charset="UTF-8"

So I tried this myself and it worked, which makes me thing your work
dir got messed up somehow.  It's trying to build here but failing as
there are missing dependencies (no jpeg DEPENDS, for example).

Ross

On 6 July 2018 at 13:38, Burton, Ross <ross.burton@intel.com> wrote:
> On 6 July 2018 at 13:32, Oliver Westermann <owestermann@gmail.com> wrote:
>>  This does not seem to work as expected. With option 1) and 2) it fails in
>> do_compile:
>>
>> | DEBUG: Executing shell function do_compile
>> |
>> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
>> 112:
>> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/run.do_compile.14093:
>> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/recipe-sysroot-native/usr/bin/python3-native/python3:
>> not found
>> | ERROR: python3 setup.py build_ext execution failed.
>> | WARNING: exit code 1 from a shell command.
>> | ERROR: Function failed: do_compile (log file is located at
>> /data/workspace/yocto-build/build/mysys/tmp/work/aarch64-poky-linux/python3-pillow/5.2.0-r0/temp/log.do_compile.14093)
>
> That's very odd.  I'd suggest maybe something really weird happened,
> what happens if you bitbake -cclean python3-pillow ; bitbake
> python3-pillow?
>
> Ross

