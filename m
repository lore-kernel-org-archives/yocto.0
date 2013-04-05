Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EF8FAE014D5
	for <yocto@yoctoproject.org>; Fri,  5 Apr 2013 02:35:46 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id ox1so3374574veb.21
	for <yocto@yoctoproject.org>; Fri, 05 Apr 2013 02:35:46 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=S6bo/8YUit4pB39TVa4ILdKRlcKdd8JDJli/2jACgU0=;
	b=Juv0Pc9aTU4BLcSidxZwQ9CN1nQ+Sc20CjAh4vZanf8VBkLwlWdSFlJXza4xxmCJih
	FexrWMUuIXb9GF7QsKsnOTkS1+24or4OoYHUdclp+pKw0dY+YDn7CPD6j8+6ZsWCp0D0
	y+RJlk41F8iAESyUBM0T+Kkl/770W9F0daeH3ekadHsETmMHDCb3JqSdA23vAhgWaIrx
	toEGpYe2pdm7roxVkbNHpsXD+nZTAG0lqSo0cVIG3sWvL8JQH5s6sW3mduLCuHvDeghk
	6rFp1kTUnBRRZKH3y3vxeSsI8jKH4EpIWn3ACsEiQ+IraX5PVYFUsfPGSbAhiHRsazpv
	PUBA==
X-Received: by 10.52.67.75 with SMTP id l11mr6420904vdt.29.1365154546034; Fri,
	05 Apr 2013 02:35:46 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.100.68 with HTTP; Fri, 5 Apr 2013 02:35:25 -0700 (PDT)
In-Reply-To: <3486181.3zQ0PC9o8U@helios>
References: <CAFMfyz+evbAH-Yes=LdnkU9TWi-GKdVRWHT-MYaCNzh8Hf_1fQ@mail.gmail.com>
	<14373389.b9xaIaY1vP@helios>
	<CAFMfyzKMBXx+j6Wx2e=xdaTU2gHsvTqiEsKAmmCm7AKde_5THw@mail.gmail.com>
	<3486181.3zQ0PC9o8U@helios>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Fri, 5 Apr 2013 10:35:25 +0100
Message-ID: <CAJTo0LYwesVtSPRGSm9vORfpcEuU65ntYbrU+graya=ZyV-qeg@mail.gmail.com>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Gm-Message-State: ALoCoQmTcjpGLVz6SteHtKuM8e50MVG+A2oJv40bcRcqOHBXbf3ejQ964lXtYGjEPUXeIeE2RiKu
Cc: yocto@yoctoproject.org
Subject: Re: Installing foreign fonts into the yocto build
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
X-List-Received-Date: Fri, 05 Apr 2013 09:35:47 -0000
Content-Type: text/plain; charset=UTF-8

On 5 April 2013 08:26, Paul Eggleton <paul.eggleton@linux.intel.com> wrote:
> The file
> doesn't display properly in the matchbox-terminal application (displaying
> garbage, indicating the encoding is incorrect)

FWIW, the terminal is based on libvte, so that *should* work.  Annoying.

Ross

