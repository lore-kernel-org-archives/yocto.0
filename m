Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00DF0E00DED; Fri, 19 Jan 2018 01:54:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.215.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f46.google.com (mail-lf0-f46.google.com
	[209.85.215.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84328E0085E
	for <yocto@yoctoproject.org>; Fri, 19 Jan 2018 01:54:05 -0800 (PST)
Received: by mail-lf0-f46.google.com with SMTP id t79so1387311lfe.3
	for <yocto@yoctoproject.org>; Fri, 19 Jan 2018 01:54:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=6t39QnA1PH+M9oixI1pyLpbf4dXbec4rJIli/rlGaNA=;
	b=XbwqRvsNkNV331NQq7hSfX3eTehpi2oyRJFMpCS7bLEbu8UGpp2opnj+T14WV9dRZh
	WXIKCBGbE2WR6cYO/TkU2SzYq7+zHJ59Cy85BKLZOPpSd6UXhrSZYyyzyR4Pca9OQIWV
	xTD3soi7bmdusVOCBvzymcHJztcrG/mPJw8p/u2pmADajTNbba0Z2nItA25yyeZsZ3ne
	i/R70ZlN+Og1fSTaQyG6zAFwrLIWNAySP5jrzQG0Cn6AZcZ52LYR0aYt26suIuTUyR2a
	uxegnKOR6BclzKbQxcLovZ7OeclbHDt4FLujq/oUUOrNPRZqwlhaIkTM3Jv0DfzNy+j9
	MbAA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=6t39QnA1PH+M9oixI1pyLpbf4dXbec4rJIli/rlGaNA=;
	b=hcnrG1shgv7tGNWKjxvU6SVpJhtgoIoxJtee+BE+zVU3qnukn2R1Ic46pIoMcuTSZu
	ALN+XO2i5YBBbiOW8Gq37P26TnYvsd5c9w+pHjIIsxBcWlKOVmlmSCr9yIho8aJQQRWn
	aINRcv95mAWntZUcnkLftIkN9Oh5ph7xgsoanRt4f+XR/KF54A1XWpvDS05/vL776nf6
	4nBpr5zDmCkcSdUPBN6KPqmG9UhS/w9eLUUvdFfgwzSFupd0SA5hBy2f4c9g1vyFazkr
	yCU6rmuksBGd4AQxumyWfTMZ+Wszdtw25oV2pTLWPh9gcVU+FhowFiJJsvql9PvWfZzg
	5U7Q==
X-Gm-Message-State: AKwxyteEAmm6qWbN2IITCxMOyGdH3sBcd+9NaCZLibXSLksbF+wHvKz2
	kNATCK5aVsg6h3gHXU6+uA3wgGUbclMOxOn29ovKcA==
X-Google-Smtp-Source: ACJfBotHFFDsOQ0L65m3AM4mfjAHmOnv5EBjw3Jijr815+1qgdf6v+6Z0W6OwRefyLBLM3+uJKWaanBVgoAKI8zm54Q=
X-Received: by 10.46.60.10 with SMTP id j10mr3259037lja.111.1516355644306;
	Fri, 19 Jan 2018 01:54:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.28.4 with HTTP; Fri, 19 Jan 2018 01:54:03 -0800 (PST)
In-Reply-To: <CAJTo0Lajne5k2-PzpXzh502f5CsTZ102WtLbs4ExFrkY2Ojjrg@mail.gmail.com>
References: <CAOT_U5b3f-S98tpuhOuB6W7R8Cv+J4qph1ObXh+5dgETMh2cNg@mail.gmail.com>
	<CAJTo0Lajne5k2-PzpXzh502f5CsTZ102WtLbs4ExFrkY2Ojjrg@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 19 Jan 2018 10:54:03 +0100
Message-ID: <CAOT_U5YeUkc1c0vVG9rF==_Nvpwpq+ZmsVkidx1KVtAdu=QJuQ@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: do_roots braking after a SRCREV update for non master branch
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
X-List-Received-Date: Fri, 19 Jan 2018 09:54:07 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks for the great references.

I ended up going for the best practices and renaming
python3-senichub_git.bb -> python3-senic-hub_git.bb

Which solved the issue and obsoleted:
    PROVIDES += "python3-senic-hub"
    RPROVIDES_${PN} += "python3-senic-hub"




On Thu, Jan 18, 2018 at 3:51 PM, Burton, Ross <ross.burton@intel.com> wrote:
> I'd check (using oe-pkgdata-util and/or buildhistory-diff) that the new
> package is building the same files and packages as the old one.  If PN
> wasn't being generated, that would explain why the provides isn't working.
>
> Ross
>
> On 18 January 2018 at 14:46, Alan Martinovic <alan.martinovic@senic.com>
> wrote:
>>
>> Hi,
>> I've updated my recipe to use a review from a non master branch:
>>
>> Old version [python3-senichub_git.bb]:
>>
>>     inherit setuptools3
>>
>>     PROVIDES += "python3-senic-hub"
>>     RPROVIDES_${PN} += "python3-senic-hub"
>>
>>     S = "${WORKDIR}/git"
>>     SRC_URI = "git://github.com/getsenic/senic-hub.git;"
>>     SRCREV = "01fd5bd8725add5e73d3cc35a169f0dc837daefa"
>>     PV = "git-${SRCPV}"
>>
>>     RDEPENDS_${PN} = "python3-nuimo python3-lightify"
>>
>> New version [python3-senichub_git.bb]:
>>
>>     inherit setuptools3
>>
>>     PROVIDES += "python3-senic-hub"
>>     RPROVIDES_${PN} += "python3-senic-hub"
>>
>>     S = "${WORKDIR}/git"
>>     SRC_URI =
>> "git://github.com/getsenic/senic-hub.git;branch=improve-logging;"
>>     SRCREV = "ad6c082a8a990291c6128f54ea0c0d185081704e"
>>     PV = "git-${SRCPV}"
>>
>>     RDEPENDS_${PN} = "python3-nuimo python3-lightify"
>>
>>
>> So the only changes is the SRCREV, and a specific
>> branch in the SRC_URI.
>> The package alone builds successfully.
>> But when building the image it fails on the do_rootfs:
>>
>>     opkg_prepare_url_for_install: Couldn't find anything to satisfy
>> 'python3-senic-hub'.
>>
>> I can't really make the causes of it. There are some legacy
>> naming inconsistencies with a dash, but there is an explicit
>> PROVIDES and RPROVIDES in both recipes, one fails the
>> other passes.
>>
>> Any ideas?
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
>

