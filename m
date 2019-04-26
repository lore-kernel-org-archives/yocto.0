Return-Path: <richard.purdie@linuxfoundation.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9835E00CF4; Fri, 26 Apr 2019 06:43:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.50 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-wr1-f50.google.com (mail-wr1-f50.google.com
	[209.85.221.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 58BD1E00CE5
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2019 06:43:10 -0700 (PDT)
Received: by mail-wr1-f50.google.com with SMTP id r6so4550929wrm.4
	for <yocto@yoctoproject.org>; Fri, 26 Apr 2019 06:43:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=linuxfoundation.org; s=google;
	h=message-id:subject:from:to:cc:date:in-reply-to:references
	:user-agent:mime-version:content-transfer-encoding;
	bh=1o88k+6SAQdU8vLGqUvDWyk6QMcDTBax5LIM6y9IIC0=;
	b=PUzymX0v19bBvcOFzXz+m6McUX5SaXGLxMNoELK3XqFGIdwOxmdsfIylauFimNnhXI
	b2WszzDdlRQQacE8Yl9dFWPp3bK9WnmT7I46Xo0QxspDRNUTN3u1ExjQjNQ31xg92TYz
	nTR3hXKOHPdmimK+rt08skgfZ1ad1fAYCw4SQ=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
	:references:user-agent:mime-version:content-transfer-encoding;
	bh=1o88k+6SAQdU8vLGqUvDWyk6QMcDTBax5LIM6y9IIC0=;
	b=bRi7OIlDVEvH5PS8U0wd8B+Hj+nHrMw+CRDPy91YlkmJiZ2Xe1IVWAK+A2Ks0uEtnO
	YS2/sowcTVzd4YL5csmZiwcgsMuOPjZTeaH1Rj8ZWZQmM54uJg6IQX6ddWxQUA/Ilh92
	5LEStTRa6k3SOmn3MZfoO8xJ9DyMu3sxlyoE0bHwMvvTpTV9F1HFJDCylBbSRI/7o1rr
	9nJQj3EepyfH4oS0HbDcFsy2fCenqrHdc3YPhmuthfcQOAoaw01mqK5Fn+yJ6u1yKG4c
	1/SUmUk/7/VjrK7RbjJlYbt8RGJmGT1H9BKC/jMlOdKKh31844OJufFvug7fOUjHABLg
	Vwzw==
X-Gm-Message-State: APjAAAUlgD56GW08st60cJx8Ux8n2B1WmfwXPjDQbuJiFkB2C89EEBGw
	thui85XAeGYrBoz+OVOct6miGQ==
X-Google-Smtp-Source: APXvYqx+Hy6+Tuh66t8V9TpJmuEkwcZ3TTWoxxLh9C2etRuS0zpnQeOC/pkLeRdqbthDFBnomKFSiA==
X-Received: by 2002:a5d:400e:: with SMTP id n14mr24490414wrp.317.1556286189381;
	Fri, 26 Apr 2019 06:43:09 -0700 (PDT)
Received: from hex (5751f4a1.skybroadband.com. [87.81.244.161])
	by smtp.gmail.com with ESMTPSA id
	c63sm9337001wma.29.2019.04.26.06.43.08
	(version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
	Fri, 26 Apr 2019 06:43:08 -0700 (PDT)
Message-ID: <9c11e5fa0dd254f99ee1f20d0ab0bfdea0aaad6d.camel@linuxfoundation.org>
From: richard.purdie@linuxfoundation.org
To: "Jain, Sangeeta" <sangeeta.jain@intel.com>, "'yocto@yoctoproject.org'"
	<yocto@yoctoproject.org>, "Eggleton, Paul" <paul.eggleton@intel.com>, 
	'Michael Halstead' <mhalstead@linuxfoundation.org>, "Erway, Tracey M"
	<tracey.m.erway@intel.com>,  "'sjolley.yp.pm@gmail.com'"
	<sjolley.yp.pm@gmail.com>, "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Date: Fri, 26 Apr 2019 14:43:07 +0100
In-Reply-To: <015AB11D45F2C442929CB2765DAE738634DDE72D@PGSMSX110.gar.corp.intel.com>
References: <015AB11D45F2C442929CB2765DAE738634DDE72D@PGSMSX110.gar.corp.intel.com>
User-Agent: Evolution 3.32.1-2 
MIME-Version: 1.0
Subject: Re: QA cycle report for 2.7 RC2
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
X-List-Received-Date: Fri, 26 Apr 2019 13:43:11 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Fri, 2019-04-26 at 06:27 +0000, Jain, Sangeeta wrote:
>  
> QA cycle report for 2.7 RC2:
>  
> No high milestone defects. 
> Test results are available at following location:
> ·        For results of all automated tests, please refer to results
> at public AB [1].
> ·        For other test results, refer to attachment [2].
> ·        For test report for test cases run by Intel and WR team,
> refer attachment [3]
> ·        For full test report, refer attachment [4]
> No new defects are found in this cycle.
> No existing issues observed in this release
> No ptests are failing in this release which were passing in previous
> release. No timeout issues.
>  
> QA Hint: One failure was observed on public AB:
>  
> testseries | result_id : qemuppc | oeselftest_centos-
> 7_qemuppc_20190414221329
> runqemu.QemuTest.test_qemu_can_shutdown
>  
> No bug filed for this issue, as it appears to be an intermittent
> failure and worked on rc1 test run.

Thanks for the testing!

FWIW it should have and does have a bug:
https://bugzilla.yoctoproject.org/show_bug.cgi?id=13309
also, 
https://bugzilla.yoctoproject.org/show_bug.cgi?id=12991
is still present in the release according to that bug.

I've asked the TSC for a go/nogo decision on the release.

Cheers,

Richard





