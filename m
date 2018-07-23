Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E2DC4E00C77; Mon, 23 Jul 2018 11:49:50 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.218.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f48.google.com (mail-oi0-f48.google.com
	[209.85.218.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA7B9E00A04
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 11:49:49 -0700 (PDT)
Received: by mail-oi0-f48.google.com with SMTP id d189-v6so3007426oib.6
	for <yocto@yoctoproject.org>; Mon, 23 Jul 2018 11:49:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mvmj2xiQJYN6buaCch34Py1BcnWF9s13EsbPxFZMXNs=;
	b=P7LhcY+Ilw60Y/O2W762wXBTJuguc5SqfT89M39xLRPDsZWXt6Ig7q/d5G0dtz8MaX
	ECCTbXtgmO+QnEW8LN3ypsDqesW1Is/LVWRwGuZj7v63A2v/ZkBv3/7hxP0MJaJwbxXt
	3a4M0KvlmOIICSO+uE3Zcsio9ocCtNeTS9kP7doOUVVqIAwnIIVvPkih6yO8fkz+ys9n
	zkfzh7YzYtKeUUIPMRFesGuzcTJnk1DwS+765pLOmTqzfzTA752d/GmjDpvrZ3P7Tsl/
	+RvpsuvA/zwna1F7Hc/sr3JpjngvTaliRjJL77KONKi/6+uxuQTpCuR9dfCopSNnygTu
	wa9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mvmj2xiQJYN6buaCch34Py1BcnWF9s13EsbPxFZMXNs=;
	b=bD5AHcaUM5LFvcM/aMuEHnD46Jam3mbYllu5ck3iGt/zjzGfMgPcou9JEUyxlBB3iH
	rSAoYZHPPlF3MhDBS/9kghUF8uXHEkaUu6iXqE2aRNUbHiWnV+c6DR40Bs/GflvASRtt
	Axd5KfFkvyG1qT6nkTrzIuB+frvGvb8KsaOUc0yZ79DxZ+AcAnt5JEDCcF9d+VpFmweO
	Cxx5zeFqTEupAfxtzskIaVrlr6oX+lyblAKBsRkTYaF4j8fTcFbZHc7uXnOyhlTI53MX
	nQOejxmrpPHhZ1R4T7U5jdjaNWj7rPlVUqhNjswDhmDjHUfFJ2NZurqL727lohhUGW6p
	OaIQ==
X-Gm-Message-State: AOUpUlGCNU27QeR4fGTHhDa7EEsIpfDtiefM+4LYbrr/SG8bf7SfjsTn
	UCA0kjN4AFKHrL2IF6/IlCPPoVRPUfWyMMeg42SvkQ==
X-Google-Smtp-Source: AAOMgpfDSG8BtLGuU0Q4/M4oR4XdNd+sP0bmEdkkMcCMdX0qijKYlasJC6zpdj1c1rEcfu1NNZi0vdx5ZzgrAx034ak=
X-Received: by 2002:aca:5f56:: with SMTP id
	t83-v6mr10214147oib.115.1532371788953; 
	Mon, 23 Jul 2018 11:49:48 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac9:6845:0:0:0:0:0 with HTTP; Mon, 23 Jul 2018 11:49:28
	-0700 (PDT)
In-Reply-To: <CALBAsRwS7cEcx1mp3GGx4vWeLzjW7i0MNcN-aO0o+Mog3xbdYQ@mail.gmail.com>
References: <CALBAsRyftz1B2WKvH4Gf4eouyyfii5hjRyD9SqfGTK5XvinXHA@mail.gmail.com>
	<f55dfea1-6c9f-dd41-0bd3-5fe93126b794@windriver.com>
	<CALBAsRwS7cEcx1mp3GGx4vWeLzjW7i0MNcN-aO0o+Mog3xbdYQ@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 23 Jul 2018 19:49:28 +0100
Message-ID: <CAJTo0LawohE+FR0g9+igixjt3QYXcRT+A-ij_3ohxr_jSLmwdg@mail.gmail.com>
To: Vikram Chhibber <vikram.chhibber@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Reg. rpm changelog
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
X-List-Received-Date: Mon, 23 Jul 2018 18:49:51 -0000
Content-Type: text/plain; charset="UTF-8"

On 23 July 2018 at 18:30, Vikram Chhibber <vikram.chhibber@gmail.com> wrote:
> Thanks Mark. Is it possible to somehow use already created changelog while
> building rpm?

You mean that you'll maintain an independent changelog but want it to
be in the RPM?

Ross

