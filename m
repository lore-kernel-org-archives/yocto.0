Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 448E8E009CF; Tue, 24 Apr 2018 05:15:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f177.google.com (mail-io0-f177.google.com
	[209.85.223.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8D2B1E00948
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 05:15:42 -0700 (PDT)
Received: by mail-io0-f177.google.com with SMTP id o7-v6so20550144iob.8
	for <yocto@yoctoproject.org>; Tue, 24 Apr 2018 05:15:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=zG2yI9xQgo4OVt4c1yCo9O8RgZUYIOeByAnHraafdws=;
	b=hJUDzjDIfh0MFV9MzdgcFSeMzNgweNgjHxLJOUB1K91VsorPdqg1I0frsO5oaJltUM
	DZtlQlmHPn1BkeM/Gv2Jl1z3mVgY+sqxlDMq6EdtSvubWfhOVSD13ZsqMft/6mfWQ+tx
	MyqoCR7/pn4uGvxrqMHV2xCAlGTh3hrQeqzzSf+JLdOa8PErii1moDAbfwZ7jHn4m5rk
	uS+pt/FeatmSariw6wacPNCSv8UMFodqZW5rPNe3+USp3t9zeJk1tPundu2eMqG3DyG2
	tXCkh3Xlktyk9QPHGMuTf6y556t7yacxQ+tHn+M29YlDnZIryJyVXXLVhgLBfbQwh4XJ
	/5nA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=zG2yI9xQgo4OVt4c1yCo9O8RgZUYIOeByAnHraafdws=;
	b=ULF/lA+NBRAbjM0s3D6KPPbTiZB6ZBw1ZiBkBFO4Ji+xA7HAlYSgppIofjM3YShtCa
	B23lHCFkjUGeZf3S7P4HWRmOvNlBp0e94udkEOe6XMIWxiCOGjDrFoJDFfaSURylTJlT
	SFA7XuYhGGWoDkxTiTbchph/iE6zRRMwsYLAt9nXn0no04gL50bPwSzDOl1/Z+Fg2fIV
	LHQhlVw0g0kFIFn3WjEkfTCjFQikI81akwRqVCp5opLN6JLeGXAJfzTydvElcB/ws3DB
	W3Hnrh3Fa0BMwc+zsAdoAlJGtR6pthTzmiMgJj79UfsjECTKoE13twR05m44HsFLVCBL
	QMzg==
X-Gm-Message-State: ALQs6tCm1M7sI2I9d7MmyxkcgbMntbcrT0O5OTbV9b8LLuqQO2Eg19EN
	GbzCv6gUDWjyhGT6WENXX7FdMpDsaTf35ME2481wH87/
X-Google-Smtp-Source: AB8JxZrTEIiTVd534bh8vPb5DhuOcY0qZ/ac3oYTfZimcfWd2NVKbvZg3HNqG0C5Eus6M3+IrlpMKVqIrGR6YBiWrXs=
X-Received: by 2002:a6b:752:: with SMTP id 79-v6mr133816ioh.216.1524572141662; 
	Tue, 24 Apr 2018 05:15:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.29.203 with HTTP; Tue, 24 Apr 2018 05:15:21 -0700 (PDT)
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 24 Apr 2018 13:15:21 +0100
Message-ID: <CAJTo0LbA-Z-KaimGP=HgQThN82P6iehuhk_cQqSinwAuEAgtjQ@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>, 
	"Purdie, Richard" <richard.purdie@linuxfoundation.org>, 
	"Chan, Aaron Chun Yew" <aaron.chun.yew.chan@intel.com>, "Sangal,
	Apoorv" <apoorv.sangal@intel.com>, 
	Otavio Salvador <otavio@ossystems.com.br>
Subject: Release candidate build for Yocto Project 2.5 RC1
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
X-List-Received-Date: Tue, 24 Apr 2018 12:15:45 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

We have a build ready for QA for the Yocto Project release 2.5,
release candidate 1.  As with the M3 this was built on the new
autobuilder so the announcement is happening manually again.

The release is available at:

http://autobuilder.yoctoproject.org/pub/releases/yocto-2.5.rc1/

The build results can be seen at:

https://autobuilder.yoctoproject.org/new/#/builders/30/builds/45

The eclipse-plugin-neon build failed, but it was re-ran and built
successfully so this isn't a problem.

Please QA this as soon as possible.

Regards,
Ross

