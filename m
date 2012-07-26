Return-Path: <saul.wold@intel.com>
Received: from azsmga102.ch.intel.com (mga12.intel.com [143.182.124.36])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C0EBE002AA
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 12:00:38 -0700 (PDT)
Received: from mail-pb0-f52.google.com ([209.85.160.52])
	by mga14.intel.com with ESMTP/TLS/RC4-SHA; 26 Jul 2012 12:00:38 -0700
Received: by pbbro8 with SMTP id ro8so3665894pbb.25
	for <yocto@yoctoproject.org>; Thu, 26 Jul 2012 12:00:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=message-id:date:from:organization:user-agent:mime-version:to:cc
	:subject:references:in-reply-to:content-type
	:content-transfer-encoding:x-gm-message-state;
	bh=tPPivoDDhh6N/ENz46HZhEf0jsVJw5P0yEvYqkRfJBs=;
	b=DKG//Tzl9sOS04777Qdbto9ZDAWRVj7hEjQFk39i4JCi/kSbyLHyJNy565/avkfJXM
	LLOTA3QsGxUz2yKNw7JwsGB5nsj3AEGDXQeQCrIO/tYBj1BCmjoSlaHTd0h714q4qKbP
	BvmErOqW4nGuBnpjd+HDbDXlywFGZbL0om4Oe4AXJxPw0RcLK678m7eD/0Lw1MpGibDt
	2nxkv5SCOAqetAJA4knGzTryy272j2Ye8UQsqvqqCR+s73BzQrG2cfTve81WZcvPUpE8
	cAk7KYBjNDIKFa00l92kIRJXrMEFU9zB5L8Do3xPo+zJKJ60e7Nv+HEF7a0nVbFPB8ER
	spIg==
Received: by 10.68.221.38 with SMTP id qb6mr7180524pbc.144.1343329237571;
	Thu, 26 Jul 2012 12:00:37 -0700 (PDT)
Received: from [10.6.18.71] (c-71-193-189-117.hsd1.wa.comcast.net.
	[71.193.189.117])
	by mx.google.com with ESMTPS id ms9sm228424pbb.43.2012.07.26.12.00.36
	(version=SSLv3 cipher=OTHER); Thu, 26 Jul 2012 12:00:37 -0700 (PDT)
Message-ID: <501193D3.3070107@intel.com>
Date: Thu, 26 Jul 2012 12:00:35 -0700
From: Saul Wold <saul.wold@intel.com>
Organization: Intel
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:13.0) Gecko/20120615 Thunderbird/13.0.1
MIME-Version: 1.0
To: Kang Kai <kai.kang@windriver.com>
References: <cover.1343207401.git.kai.kang@windriver.com>
In-Reply-To: <cover.1343207401.git.kai.kang@windriver.com>
X-Gm-Message-State: ALoCoQkhtBHYYt1Yv9QuGbjK2hRiycJp6tBSWJyxKY666R8EKQJ+VGV36OHUaURuGhhtrlpA+mxZ
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH 0/2] update packages' maintainer
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
X-List-Received-Date: Thu, 26 Jul 2012 19:00:39 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 07/25/2012 02:13 AM, Kang Kai wrote:
> Hi Saul,
>
> I take over the packages belongs to Xiaofeng Yan.
> Update ltp qmmp and liburi-perl, and mingetty check date too.
>
> Regards,
> Kai
>
> The following changes since commit 0ffb02eec2beaea27ff0ec9d3d31b0a09e675a4c:
>
>    documentation: Updated the h6 style to use a larger font (2012-07-24 10:35:34 +0100)
>
> are available in the git repository at:
>    git://git.pokylinux.org/poky-contrib kangkai/update-maintainer
>    http://git.pokylinux.org/cgit.cgi/poky-contrib/log/?h=kangkai/update-maintainer
>
> Kang Kai (2):
>    maintainers.inc: update some packages' maintainer info
>    upstream_tracking.inc: update some packages
>
>   meta-yocto/conf/distro/include/maintainers.inc     |   18 +++++++++---------
>   .../conf/distro/include/upstream_tracking.inc      |   15 ++++++++-------
>   2 files changed, 17 insertions(+), 16 deletions(-)
>
Merged into Poky/Master

Thanks
	Sau!

(BTW, please use the poky@yoctoproject.org in the future)



