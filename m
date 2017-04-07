Return-Path: <alexander.kanavin@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1D469E00AD5; Fri,  7 Apr 2017 04:58:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.8 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	RCVD_IN_DNSWL_HI,T_DKIM_INVALID autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at http://www.dnswl.org/,
	high *      trust
	*      [134.134.136.65 listed in list.dnswl.org]
	*  0.0 T_DKIM_INVALID DKIM-Signature header exists but is not valid
Received: from mga03.intel.com (mga03.intel.com [134.134.136.65])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E8215E009FD
	for <yocto@yoctoproject.org>; Fri,  7 Apr 2017 04:58:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple;
	d=intel.com; i=@intel.com; q=dns/txt; s=intel;
	t=1491566286; x=1523102286;
	h=subject:to:references:from:message-id:date:mime-version:
	in-reply-to:content-transfer-encoding;
	bh=dfyDtXi3AYCQ7zG/0k9KrnEnb+YIo6QacEZJsrnAVGs=;
	b=IU5fE0fnzcfW3+suUK/BikGrSX7bGQeQnz1+BlX2OThIGxEhY0Aow0+t
	8UZp6rq0nun8oAC2aHzaQ8mVMsKrPQ==;
Received: from fmsmga001.fm.intel.com ([10.253.24.23])
	by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384;
	07 Apr 2017 04:58:05 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.37,164,1488873600"; d="scan'208";a="1132542739"
Received: from kanavin-desktop.fi.intel.com (HELO [10.237.68.161])
	([10.237.68.161])
	by fmsmga001.fm.intel.com with ESMTP; 07 Apr 2017 04:58:04 -0700
To: yocto@yoctoproject.org
References: <015601d2af95$84d316a0$8e7943e0$@ln-systems.com>
From: Alexander Kanavin <alexander.kanavin@linux.intel.com>
Message-ID: <14a7f797-fc4f-772a-27de-a8c6d2f3980c@linux.intel.com>
Date: Fri, 7 Apr 2017 14:57:35 +0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:45.0) Gecko/20100101
	Thunderbird/45.8.0
MIME-Version: 1.0
In-Reply-To: <015601d2af95$84d316a0$8e7943e0$@ln-systems.com>
Subject: Re: Remove/prevent a package's installed files if another package present
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
X-List-Received-Date: Fri, 07 Apr 2017 11:58:10 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 04/07/2017 02:53 PM, colin.helliwell@ln-systems.com wrote:
> I'd like to do a mod to my ppp recipe such that ip-up & ip-down aren't
> installed if another package is in the image recipe i.e. set in
> CORE_IMAGE_EXTRA_INSTALL.
>
> I guess I could do a do_install_append() or a pkg_postinst_(), but is there
> a way to detect the other package within the recipe? E.g. along the lines of
> what PACKAGE_CONF can do for configuration.
>
> Oh, and it needs to work after an update (e.g. rpm/deb) - don't want the
> files (re)installed by the update. (So I don't believe
> ROOTFS_POSTPROCESS_COMMAND is an option)

Maybe you should do this at runtime, and modify ip-up/down themselves 
(or the thing that utilizes them) so that they do the right thing in 
both scenarios.

Alex


