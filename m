Return-Path: <arigead@gmail.com>
Received: from mail-wi0-f170.google.com (mail-wi0-f170.google.com
	[209.85.212.170])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2C0D3E017C1
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2013 02:26:47 -0800 (PST)
Received: by mail-wi0-f170.google.com with SMTP id ex4so4599805wid.3
	for <yocto@yoctoproject.org>; Wed, 06 Nov 2013 02:26:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=date:from:to:subject:message-id:mime-version:content-type
	:content-disposition:user-agent;
	bh=lqRRLEqxK7eypHTo1BOaXZY2ZU55PzMxIa4+zSifu0g=;
	b=TindaJj+aBawr+pmZd5jp5+DaHWEvnnfAJKDhi6kZHGEMqnyaM+Rd6DUT9utVMEWS0
	CK0+oQ0zRMnTzPWH757rCRHJJJdnUnW5R3WzsFQ0rtTS08ImYkdnEid06C2X4y5DOdVc
	CE23Ct+ErOjpY19lFu8S0vzdCHpfETVm5P1EXryFFYEFdiHZOmhLwURgWVO9O8zfzYWq
	f0qoLA8tGYDgK1g4erJjHFWjH3loNntilAgemO9th3xuCL7pQ7JsLbtA9TS4OR8BMqz4
	KVjP1uGrV7jSJU4nlKw6bHqDuXreJG+VHulwMw34uqJqC5SWfMpHl2UlmgjJ2Wu8pwJ0
	Qy0w==
X-Received: by 10.194.235.138 with SMTP id um10mr2009171wjc.30.1383733605918; 
	Wed, 06 Nov 2013 02:26:45 -0800 (PST)
Received: from griso.site ([109.77.237.105])
	by mx.google.com with ESMTPSA id ev4sm8989648wib.7.2013.11.06.02.26.44
	for <yocto@yoctoproject.org>
	(version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Wed, 06 Nov 2013 02:26:45 -0800 (PST)
Date: Wed, 6 Nov 2013 10:26:03 +0000
From: John Whitmore <arigead@gmail.com>
To: yocto@yoctoproject.org
Message-ID: <20131106102602.GC30011@griso.site>
MIME-Version: 1.0
User-Agent: Mutt/1.5.21 (2010-09-15)
Subject: example of Kernel work
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
X-List-Received-Date: Wed, 06 Nov 2013 10:26:48 -0000
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Found this nice little document on Kernel work in the yocto build system [1]
it's just a shame that it isn't up to date, to use against the current version
of the build system. 

Does anybody know is there a more up to date version of this document? It
might just be me but a worked example is so much cleared then writing about
the process.

[1] https://www.yoctoproject.org/sites/yoctoproject.org/files/elc2013-kernel-lab.pdf

