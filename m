Return-Path: <olof.johansson@axis.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76848E0076F; Wed, 16 Jul 2014 03:01:22 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00 autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 454 seconds by postgrey-1.32 at yocto-www;
	Wed, 16 Jul 2014 03:01:18 PDT
Received: from bes.se.axis.com (bes.se.axis.com [195.60.68.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 331E3E0076A
	for <yocto@yoctoproject.org>; Wed, 16 Jul 2014 03:01:18 -0700 (PDT)
Received: from localhost (localhost [127.0.0.1])
	by bes.se.axis.com (Postfix) with ESMTP id E84092E34C;
	Wed, 16 Jul 2014 11:53:39 +0200 (CEST)
X-Virus-Scanned: Debian amavisd-new at bes.se.axis.com
Received: from bes.se.axis.com ([IPv6:::ffff:127.0.0.1])
	by localhost (bes.se.axis.com [::ffff:127.0.0.1]) (amavisd-new,
	port 10024)
	with LMTP id xX6PTqf+XtLP; Wed, 16 Jul 2014 11:53:31 +0200 (CEST)
Received: from boulder.se.axis.com (boulder.se.axis.com [10.0.2.104])
	by bes.se.axis.com (Postfix) with ESMTP id 3A9472E3DD;
	Wed, 16 Jul 2014 11:53:31 +0200 (CEST)
Received: from boulder.se.axis.com (localhost [127.0.0.1])
	by postfix.imss71 (Postfix) with ESMTP id 200F1FDB;
	Wed, 16 Jul 2014 11:53:31 +0200 (CEST)
Received: from thoth.se.axis.com (thoth.se.axis.com [10.0.2.173])
	by boulder.se.axis.com (Postfix) with ESMTP id 10072FD8;
	Wed, 16 Jul 2014 11:53:31 +0200 (CEST)
Received: from xmail2.se.axis.com (xmail2.se.axis.com [10.0.5.74])
	by thoth.se.axis.com (Postfix) with ESMTP id 0DF2F34005;
	Wed, 16 Jul 2014 11:53:31 +0200 (CEST)
Received: from lnxolofjn.se.axis.com (10.92.17.1) by xmail2.se.axis.com
	(10.0.5.74) with Microsoft SMTP Server id 8.3.342.0; Wed, 16 Jul 2014
	11:53:30 +0200
Received: by lnxolofjn.se.axis.com (Postfix, from userid 20466)	id D3EF59C739; 
	Wed, 16 Jul 2014 11:53:30 +0200 (CEST)
Date: Wed, 16 Jul 2014 11:53:30 +0200
From: Olof Johansson <olof.johansson@axis.com>
To: Isak Lichtenstein <Isak.Lichtenstein@kistler.com>
Message-ID: <20140716095330.GC23194@axis.com>
References: <91B4C1B91AAEFD42AC985EA0F3D4E66886164946@kihagwinex01.int.kistler.com>
MIME-Version: 1.0
In-Reply-To: <91B4C1B91AAEFD42AC985EA0F3D4E66886164946@kihagwinex01.int.kistler.com>
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Bash parser
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
X-List-Received-Date: Wed, 16 Jul 2014 10:01:22 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline

On 14-07-16 11:36 +0200, Isak Lichtenstein wrote:
> In this method I'm using the bash syntax. But a lot of time the
> parser doesn't manage to parse my file properly. Examples:
> 
> 	TMP="file1 file2"
> 	read -a scripts <<< $tmp
> generates
> 	ShellSyntaxError: expecting here-document name, got '<'
> 
> Or 
> 
> 	TMP="file1 file2"
> 	scripts=(${TMP})
> generate
> 	ShellSyntaxError: LexToken(TOKEN,'${TMP}',0,0)
> 
> 
> Other bash commands are parsed properly, but generate an error
> while executing them. Example:
> 	TMP="file1, file2"
> 	tmp=${TMP//,/ }
> generates
> 	Bad substitution
> 	| WARNING: exit code 2 from a shell command.

Note that these features you describe here are all bash
extensions. For Debian users (and I think Ubuntu users as well?),
the default /bin/sh is dash and does not support either of these
extensions. There are cases where the bitbake parser will refuse
valid portable shell script features as well though, like shell
arithmetics, e.g.:

 n=$((n+1))

> Does a page exist somewhere describing the bash features
> supported by the parser and also the execution environment?
> Are arrays supported at all?

I don't know of any such documentation, but if you stick to
portable shell script features, you should be mostly fine.

-- 
olofjn

