Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9D49DE00DCE; Sat,  7 Jul 2018 15:39:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f45.google.com (mail-oi0-f45.google.com
	[209.85.218.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F3640E006F1
	for <yocto@yoctoproject.org>; Sat,  7 Jul 2018 15:39:48 -0700 (PDT)
Received: by mail-oi0-f45.google.com with SMTP id v8-v6so29745346oie.5
	for <yocto@yoctoproject.org>; Sat, 07 Jul 2018 15:39:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=GNIGQWFoEK8R9JTJ9J7fKBdICx5qhZ1Yfp9rWWsIZpw=;
	b=svQDJ66bhmrX9qpNTO9jr2L1jhSAQgMhgoWEBN42cC1fJgy+O3Lwrh0pyZyc1GRMCD
	BA0Wk5/H4kV7A1FCkBYfrrL88hVSBQ7NHy86h6NRv+MH+sIP0L1/9Uxzty17oH/FskMo
	Sj0+e7VTgt6Bu8HK63MvO50wfYZFn+j3h27tuUbq/tHfAVGy/VkfbqK2VUy1YzgTBkXF
	p2rx7Js2ZY5J4XruSI8NwyrYcCw3ihBN1tTJapF/ya2qEXxvXafZd2ezAkBNhkieYBBG
	OitIAZrCG4gZO9eNsTjJNLgaF6sNWrEE58FxpZfSk9ZgS9Tc0Hm3pL0oWnnZ/dsT6jVA
	tuEw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=GNIGQWFoEK8R9JTJ9J7fKBdICx5qhZ1Yfp9rWWsIZpw=;
	b=QCdjMqxS6yVdU4DiN7e/zNX0uafSrx1aFe0fx1jA4ijYiVb7eqjnsb4f7on3SU5SYw
	nVXkwGn0c35f7uoq3MObe80xcEOdC1C4OTqHcJIxhASfNRDL+hVlWy9tMm7EvIIemJTH
	pgIa0ssUSozZI8D/fsuw1umhE/KqG0nTeCa3GHQphllVhglNj4Yv/y0haTViQLRKM+qK
	EoJVZZ8r85NTDUJq6IRWIEQqKDJ3uyGTzT3wXbkIfHXUcjaIfRBfnjnIsbjHo2tM3aGz
	qfLULBgVnTadZKihTk40QoEPrY/dBMk+rX+25b6YL7XyrG9uDBSdFifQXnvktwCyqJq1
	vj1Q==
X-Gm-Message-State: APt69E1nkHDYpk8shsC5GjLXkNbgPcwE8LlGdPIK+45j2588PkEcSzNh
	wiASfYc6kqQDlseEoYRih+nkcxd3YzACm6PV9tojwg==
X-Google-Smtp-Source: AAOMgpdglGFfsUkgf8J1ubg8Edg8NIdR/xQugngIXO/aSjUNhsD3xIWMVf6xPNnbuCOBO/TXC/LxhEHZk5id39UZwK4=
X-Received: by 2002:aca:efd7:: with SMTP id
	n206-v6mr18449955oih.70.1531003188381; 
	Sat, 07 Jul 2018 15:39:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP;
	Sat, 7 Jul 2018 15:39:27 -0700 (PDT)
In-Reply-To: <MWHPR19MB1183DC762147A7F8D864EF36C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
References: <mailman.87211.1530587331.15860.yocto@yoctoproject.org>
	<MWHPR19MB118319929EC2DAFB0F1281A5C5420@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183DC762147A7F8D864EF36C5470@MWHPR19MB1183.namprd19.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Sat, 7 Jul 2018 23:39:27 +0100
Message-ID: <CAJTo0LbjTeL3HTQXztNyxEaA78hoA1cBSiUAQBom7r8sDDE7kQ@mail.gmail.com>
To: Raymond Yeung <rksyeung@hotmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Any Linux/Yocto Image Installer (for target system)
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
X-List-Received-Date: Sat, 07 Jul 2018 22:39:49 -0000
Content-Type: text/plain; charset="UTF-8"

The easiest thing would be to edit the installer script that goes into
the hddimg to create your extra partitions and whatever else you want
done.

Ross

On 6 July 2018 at 22:52, Raymond Yeung <rksyeung@hotmail.com> wrote:
> Is there any installer that I could download along with the .hddimg (or
> .iso) image to the RAM, invoke the installer, so we could have a bootable
> image installed on a SSD?
>
>
> History:
>
> I can already create USB live image with dd and .hddimg.  I could also dd
> the .hddimg onto SSD and make it bootable.  The problem is that I need
> multiple partitions on my 250MB SSD, some reserved for other purposes.
>
>
> I find that when booting up with USB running SysLinux, I could install GRUB,
> vmlinuz, along with boot.img and core.img under /boot directory, and the
> rootFs under root (i.e. '/') directory.  That's 4 partitions.  I believe I
> could resize the largest partition after installation to do what I want.
>
>
> Is there a way to do this manually, possibly with a utility or a shell
> script?
>
>
> Thanks,
>
> Raymond
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

