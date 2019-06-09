Return-Path: <hschauhan@nulltrace.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AA1D3E00DBA; Sat,  8 Jun 2019 20:23:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.43 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f43.google.com (mail-vs1-f43.google.com
	[209.85.217.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B1891E00B18
	for <yocto@yoctoproject.org>; Sat,  8 Jun 2019 20:23:24 -0700 (PDT)
Received: by mail-vs1-f43.google.com with SMTP id v129so3409713vsb.11
	for <yocto@yoctoproject.org>; Sat, 08 Jun 2019 20:23:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=nulltrace-org.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=R1jyl7MYg3n7A6bL2pTYOBoeiiElk/+rbYkjcSLI3fE=;
	b=Caz5TENqs7wUrAMWAqqu+0WPR7YAI1SQkxLT9iTh1ow1orllUL1hfMPExBgf+Om9qp
	aRLH13TO5SeFmvpMRrbwh6SN5pzwuVSSoFYHiYkKjBdmr9DpB5cZpb9g/3aQ20FytLvU
	rAriobSiVp6ANJ093g/yOo+g75r2sF52a4uCCVxMeQ0hi3mBCqymHe73uBbQgWzwohOW
	vSY2+w2RdZMwJuqRxHRwWfcorVRlMytAlENy7DB5q+hYAp2N6PvcoxWvnoZF8pkpVs3c
	JwXS0dRy9biZuiEnsoCDMY6cOykSJeImEnd+mbRsJkTnlG/SP+Hf8KfEIRjDvTNb0X4Y
	OKfg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=R1jyl7MYg3n7A6bL2pTYOBoeiiElk/+rbYkjcSLI3fE=;
	b=TiF/VQJ63TzFJGFV90/wnAGF2HEpc1Gjm7hbfvEvVS7bdtCkpYtrj6cGa2teRKd9Nb
	0T2/cRcVU+3WaJVjGw1c/r+O1HoR2qCMTdmhO1tESuhoDDlJPq0QiIVOVym2z1oJUQNP
	m6S5s3qF5tBfpDnei8VNM/ro36OlweSAKFTRNu2CwHfdyuUEkPPqM8WlRU9GAxT4Hgbm
	Al9xRUKL7E0z9+vrFWILfoCa/SxRjYLGPagUbZa3Q5K+3H6gcDmJaQ59KvR4Z8buDI1+
	c6kMiSzokbpJtFlndwTlyezaBSf8ZldQfxxwzHpUdeywMMHDvNH5Epvv9psWWjbc/YVD
	TfEA==
X-Gm-Message-State: APjAAAUDBB8E3aVR6s6EPKF1nTXOzavftti6/oI+7YZKj8Ign9+hCT/+
	BAzYAvDyr6Fqi46V/7KWeLihEqwkW/3Ye4bhEmC7J5xLA3Lo/w==
X-Google-Smtp-Source: APXvYqxexZ5D9PHBaFQfijTf84IBgkx32vUUxIR54ME70LZV80myox83czyphTgFO+a2pNNzLnwY3qr7ZMqurz3gv1I=
X-Received: by 2002:a67:ed83:: with SMTP id d3mr3606866vsp.58.1560050603704;
	Sat, 08 Jun 2019 20:23:23 -0700 (PDT)
MIME-Version: 1.0
From: "Chauhan, Himanshu" <hschauhan@nulltrace.org>
Date: Sun, 9 Jun 2019 08:52:48 +0530
Message-ID: <CAOkDQ3Wp9UmioB0-SL7UNhAE0wbRZ0_i6xw4WGx_hh+HvoL+Yw@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Cannot link to custom library
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
X-List-Received-Date: Sun, 09 Jun 2019 03:23:25 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have created a custom library which gets installed in /lib. Symlink
get created in /usr/lib and header file is copied to /usr/include

Then, I have another auto tool based application which should get
linked to the library mentioned above. During configure, the header
file is found but library is not found. I searched net but couldn't
find a definitive answer to the problem.

| checking whether to build shared libraries... yes
| checking whether to build static libraries... no
| checking libcli.h usability... yes
| checking libcli.h presence... yes
| checking for libcli.h... yes
| checking for library containing cli_init... no
| configure: error: required library libcli not found
| make: *** [config.status] Error 1
| ERROR: oe_runmake failed

-- 

Regards
[Himanshu Chauhan]

