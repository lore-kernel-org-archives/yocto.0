Return-Path: <andreas@galauner.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 814BCE0083C; Wed, 14 Jan 2015 14:59:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from server.galauner.de (server.galauner.de [144.76.20.253])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6BFC0E002F9
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 14:59:56 -0800 (PST)
Received: from [172.23.22.231] (static-87-79-236-180.netcologne.de
	[87.79.236.180])
	by server.galauner.de (Postfix) with ESMTPSA id E0B85400E2
	for <yocto@yoctoproject.org>; Wed, 14 Jan 2015 23:59:54 +0100 (CET)
Message-ID: <54B6F4EA.9080406@galauner.de>
Date: Wed, 14 Jan 2015 23:59:54 +0100
From: Andreas Galauner <andreas@galauner.de>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <54B68A1F.7010709@galauner.de>
In-Reply-To: <54B68A1F.7010709@galauner.de>
Subject: Re: Symlinks in kernel-tree break in kernel-dev package
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
X-List-Received-Date: Wed, 14 Jan 2015 22:59:59 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 14.01.2015 16:24, Andreas Galauner wrote:
> The problem is, that xenomai adds kernel code with a script called
> "prepare-kernel.sh" before building the kernel. It does that by creating
> a bunch of symlinks in the kernel tree pointing to the actual code. I
> run this script in my own kernel recipe before configuration.

Nevermind guys,
I just found out that the prepare_kernel script from xenomai offers the
possibility to create a patch using the --outpatch parameter instead of
modifying the kernel tree. That should solve all my problems.

Thx anyway!
- Andy


