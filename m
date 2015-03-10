Return-Path: <jeff.melville@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 57EB3E00777; Tue, 10 Mar 2015 06:50:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EA75BE00754
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 06:50:05 -0700 (PDT)
Received: by lbiz12 with SMTP id z12so1833411lbi.5
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 06:50:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:from:date:message-id:subject:to:content-type;
	bh=UOMrddRsdH8yFjFULUXwk2zIMJlISx6HgBMAInMa8pc=;
	b=pxnchItUhss3x2wH6RDSF6XwKjK+JuWj7XQ/8ZjLVTMJCC9KRpMR73R9ikR2im6K7i
	Kmw2vyI2adOlcx22uyAGOaalOR5Y0aI4S7CtO4ypUIqlcqPuIluV5WzUHNCzs7+itf19
	j/9zwSn6uPyPRkVZHCO7vxVz+gEbn1SUWmUvsjfBBpUjdAQMWqV0+jCAg69BPNFSF9fY
	P7DFypyEQQKtUfW/R4xJTRzyGyNvGPb49xxuuRYaU8eqwzGcsWfcELGYfIZMVo5sqEEk
	/gojNjeIujiTDm8tgD0yQJ1/kbWXofaI+b6oeALbTL19zuuIlAuI5e9UI5wHxXL5HGg1
	zVcQ==
X-Received: by 10.112.212.106 with SMTP id nj10mr11848251lbc.36.1425995403714; 
	Tue, 10 Mar 2015 06:50:03 -0700 (PDT)
MIME-Version: 1.0
Sender: jeff.melville@gmail.com
Received: by 10.25.169.77 with HTTP; Tue, 10 Mar 2015 06:49:43 -0700 (PDT)
From: Jeff Melville <dev@jeffmelville.com>
Date: Tue, 10 Mar 2015 09:49:43 -0400
X-Google-Sender-Auth: Zm6I5d9WWF3_UMYG3eJaKm0DDEo
Message-ID: <CAH7sbrwoZsNe39fv2UsL3K3jW__pAefeezUt0Z7a1vMXrUWTBA@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: do_kernel_configme error when patches create directories
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
X-List-Received-Date: Tue, 10 Mar 2015 13:50:07 -0000
Content-Type: text/plain; charset=UTF-8

I'm using a Yocto flow to build for the Zynq with the meta-xilinx with
some customizations:
- I'm using a bbappend to replace the linux-xlnx 3.14 kernel with one
that has had mainline changes from 3.14.17 merged in.
- I added a task between patch and configure for applying the Xenomai
kernel patches and running the Xenomai prepare_kernel script.

All layers are on the dizzy branch. The linux-xlnx recipe inherits
from linux-yocto but obtains the metadeta from an out of tree source
using a SRC_URI append with type=kmeta. This ends up getting copied
into the kernel tree with during the kernel_configme task. This is my
first time working with a kernel recipe in the linux-yocto style so
I'm still coming up to speed a bit.

The problem arises because the Xenomai patch process creates
additional directories in the Linux tree. As part of the
kernel_configme task, the kgit-meta script will attempt to use the
last unversioned directory returned by 'git ls-files -o --directory'
as the metadata directory, which does not work.

Two questions:
1) What is the best short term way for me to work around this?
2) Is there a way to patch the meta directory detection in kgit-meta
to make it more robust against false detections?

Thanks,
Jeff

