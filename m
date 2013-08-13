Return-Path: <ross.burton@intel.com>
Received: from mail-vc0-f172.google.com (mail-vc0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9F5F2E003D5
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 09:39:38 -0700 (PDT)
Received: by mail-vc0-f172.google.com with SMTP id m17so4122814vca.3
	for <yocto@yoctoproject.org>; Tue, 13 Aug 2013 09:39:37 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=o5IlVSBAMDUqkuyhiO16SgrZKpT9l/12k5HeyHtxlCw=;
	b=IyLx2g8R8OvcFXT19KxV5WF2DlR3WET0uLMogzSkfvtJx2hPqnbbD3OObtqgyVVbyq
	OpqKBLFQ+h9YAgG4I2JQLdk3WHUBI1nOx0wmEmGxwuGV915WcdihCBcbhxAo1KVa0G3K
	lSG6OEeAdPwLcL4vx1I4Nevaz6SeAlfOeiUl2rQ06ZGiBPTwe03gWoXebqtoFymLBV1F
	O9i2yBmezFXPykLDpMjA75ou2JYT18MVOE424Jw+vL6adZuxGSkqovAv6dpHf9f3ucyQ
	cSG1nCnfZy/xZikrUU21eikZnP/WbyYssObEfJB/LvxIL8Mueva9CwEpT+JiZe/2ssym
	O7Xg==
X-Gm-Message-State: ALoCoQkQ/6dQiT0ryiLA1tRHm3MSiNPbrmcdrv0ulZdmYTHN8wvzofH0RlP48jSpjXd8+b6LDtBQ
X-Received: by 10.220.206.195 with SMTP id fv3mr5216065vcb.15.1376411977216;
	Tue, 13 Aug 2013 09:39:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.71.201 with HTTP; Tue, 13 Aug 2013 09:39:17 -0700 (PDT)
In-Reply-To: <D9E64E73-EE3C-45F2-BC68-766D4CD45BDC@gmail.com>
References: <CAJTo0LbWwCShYjVUfemPkiXP5fZjLwQoM2HNdYuqorXv_UNt8g@mail.gmail.com>
	<D9E64E73-EE3C-45F2-BC68-766D4CD45BDC@gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 13 Aug 2013 17:39:17 +0100
Message-ID: <CAJTo0LY-7xFkBT7B4zWA3FTGE+smpWsujrCeLVZHuVPpgbO_aQ@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Using tmpfs for WORKDIR
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
X-List-Received-Date: Tue, 13 Aug 2013 16:39:40 -0000
Content-Type: text/plain; charset=UTF-8

On 13 August 2013 17:37, Khem Raj <raj.khem@gmail.com> wrote:
> This seems reasonable especially for folks who don't want to keep intermediate objects around
> in build tree. I also have a setup where I build in tmpfs. I think it would be a nice step
> to write a wiki document explaining steps that are needed to configure your system to use tmpfs so anyone can
> try it out and with a bit of added explanation on how much ram is minimally needed and so on.
> and we can then keep improving this document.

Agreed.  It's interesting that so many people are building this way,
so we should consolidate the best practises.

Do you build with TMPDIR in tmpfs, or just WORKDIR in tmpfs?

Ross

