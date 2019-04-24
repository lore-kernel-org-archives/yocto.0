Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B8D53E00BAA; Wed, 24 Apr 2019 05:12:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.7 required=5.0 tests=BAYES_00,DKIM_INVALID,
	DKIM_SIGNED,RCVD_IN_DNSWL_NONE autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.49 listed in list.dnswl.org]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	*  0.1 DKIM_INVALID DKIM or DK signature exists, but is not valid
Received: from mail-io1-f49.google.com (mail-io1-f49.google.com
	[209.85.166.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4D18E0043B
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 05:12:25 -0700 (PDT)
Received: by mail-io1-f49.google.com with SMTP id e8so3312570ioe.12
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 05:12:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=hNJhwJ3cyfxwH5eskVlLoOPEdG3GgVT32rDu3eGECQA=;
	b=pCzql5ea1ViLuuSluSl5uYzDMon2f/fVWCbzGBvh5PcOn64Zhldr8o1cRA0SPD9r70
	D0L0C0TkJ8eyx7ilh6Fr2TJOrewDJADYaSIc4G3i22UPECiKN9u3XlRZgIRn+jwi3g0X
	qhSNYnu7Ey5445oxw5kWF06jTNMIIKuL4z0W+AYxZ57YcqSfDK4O5hQdDSMyAlExQzla
	QVPW7Wvx7al0Q25GsxLgxda/XpOWhcNvMBILHFwUSE60Qzwd6P7u/gDfFhweh/VVaOGc
	OOvoD5YY4DN/Q6zR84inmJB90TNFoUyEIh6A2DpZcvur1Fy3xsDJI4rlzQKOOzDVGqFR
	4ZLQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=hNJhwJ3cyfxwH5eskVlLoOPEdG3GgVT32rDu3eGECQA=;
	b=mhnid/PxUI+OXPPS122tPUTnrON7mShMaLVWAt5QdLrKS1byjq7nulIb5UkXR/vmOV
	xnudjEX2hit8nz3JLpekFfigB9uizuYXWS94xlfSWHE1xu895Kk9v9ZIvatdK6gLqstu
	B87a2kljZ97cmRfyadzYFFwbZ60QP1OA9VtLYhoFf0JztrKHEYpaLh6dxxbnXEJ/dHG4
	Jk1e38i1Z/jwQODSbxfc+sk6vmGZVmrLCu6efXk7FNTucr5iC+CjgekBtjgLYr4Gjglp
	JCz/+DTZvMuJmtdPFok6VINPqxm/ZmcD3eY6ya8lNHa9Q03f/9WAp2k+ta62O9p2POzg
	E4fA==
X-Gm-Message-State: APjAAAVN9W69KQ4i6rlHTJXiSvkyeIFPduC8z0M/LZaIByckIbHIPhha
	B2aiRDFLZNx+NvyUS1GfpVBBb8pTVsv8mSGkCIekZA==
X-Google-Smtp-Source: APXvYqzNqUno/6U9GK+VkoJu1b1iq014lftjpk1TNKeoR6qWJ1kRFNzqDVxrz0o65QGt8GTJt6qbreR6VCfEBntjGUA=
X-Received: by 2002:a6b:8e05:: with SMTP id q5mr11717436iod.270.1556107934779; 
	Wed, 24 Apr 2019 05:12:14 -0700 (PDT)
MIME-Version: 1.0
References: <1555933846.5224.23.camel@toshiba-tsip.com>
	<CAJTo0LYzO4NfWtDpSShBDiouUke7nRMMP7WwWSsCrFPHtz4BjQ@mail.gmail.com>
	<1556106244.5224.29.camel@toshiba-tsip.com>
In-Reply-To: <1556106244.5224.29.camel@toshiba-tsip.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 24 Apr 2019 13:12:03 +0100
Message-ID: <CAJTo0Lbz8uW19Mgp2jg1sEcW3TdiMEkqUApqSZgjbjsyp3pzgw@mail.gmail.com>
To: Archana Polampalli <Archana.c727@toshiba-tsip.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: .pc files are not avilable at build time
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
X-List-Received-Date: Wed, 24 Apr 2019 12:13:04 -0000
X-List-Received-Date: Wed, 24 Apr 2019 12:13:04 -0000
X-List-Received-Date: Wed, 24 Apr 2019 12:13:04 -0000
Content-Type: text/plain; charset="UTF-8"

On Wed, 24 Apr 2019 at 12:50, Archana Polampalli
<Archana.c727@toshiba-tsip.com> wrote:
>
> Thank you for your responce
>
> whaile configuration time getting this error
> checking for EXT2FS... no
>  INFO     - | checking for EXT2FS... no
>  INFO     - | configure: error: Package requirements (ext2fs) were not
>                                         met:
>  INFO     - |
>  INFO     - | No package 'ext2fs' found
>  INFO     - |
>  INFO     - | Consider adjusting the PKG_CONFIG_PATH
> environment
> variable if you installed software in a non-standard            prefix.
>  INFO     - |
>  INFO     - | Alternatively, you may set the environment
> variables
> EXT2FS_CFLAGS and EXT2FS_LIBS to avoid the need to
> call                 pkg-
> config See the pkg-config man page for more             details.
>
> ex2fs.pc is provided by e2fsprogs package.i have alredy installed it

If I build btrfs-tools then I get this:

checking for ext2fs... yes

So you'll need to give a lot more detail and what you're doing with
what versions.  The config.log file in the btrfs-tools work directory
will show why pkg-config was failing.

Ross

