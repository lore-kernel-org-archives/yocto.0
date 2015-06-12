Return-Path: <mayank77fromindia@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5C2A3E009EF; Fri, 12 Jun 2015 01:41:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mayank77fromindia[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8CAC6E009D2
	for <yocto@yoctoproject.org>; Fri, 12 Jun 2015 01:41:05 -0700 (PDT)
Received: by igbpi8 with SMTP id pi8so8299770igb.0
	for <yocto@yoctoproject.org>; Fri, 12 Jun 2015 01:41:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uvkEyCLKtHubQzpkuxyYBx4oIlus83JEYg6qgRR18JM=;
	b=egDGf0u1dRAT17eOH6BPw3IScizoIUl9PVtp4Q+5GMGPsTnzGpn3hWKE44ZRWusGmE
	y2/JA34Uj6SBre3IBMJgEouCUF/qEYQ6LYSWA42OjyOZyaisuyhGuETuO+EKHO8rzB4p
	4ebQwRiIyu3ftZ/K8T6ekNOoCyQCFa6SjgJcjajjmSznetAq/aKRhe3PnjVl1cj0howr
	iV5ooPUx/9vNGOswXjdGZXmudZbI4CSCkWjkCGNNswtogQ4c/jeStdvwWs2v5aY1Dinl
	52+Cj7dpxkcHFd0gms0K8QyctLVxisTCcp2S5mQHFyc1GpxMiPRgnHXyBnZVNBFLHOS8
	nhbQ==
MIME-Version: 1.0
X-Received: by 10.43.140.5 with SMTP id iy5mr15450950icc.77.1434098465410;
	Fri, 12 Jun 2015 01:41:05 -0700 (PDT)
Received: by 10.79.7.147 with HTTP; Fri, 12 Jun 2015 01:41:05 -0700 (PDT)
Date: Fri, 12 Jun 2015 14:11:05 +0530
Message-ID: <CAKjpqy+6nbr33uUkvOniU+beLAw-vPdwEmyMP5CGrEnyPa6G+Q@mail.gmail.com>
From: Mayank Agarwal <mayank77fromindia@gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Fri, 12 Jun 2015 08:08:50 -0700
Subject: failure in linux-yocto kernel do_patch
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
X-List-Received-Date: Fri, 12 Jun 2015 08:41:07 -0000
Content-Type: text/plain; charset=UTF-8

Hi

I am getting the following error while compiling linux-yocto from
yocto openembedded.

 DEBUG: Executing shell function do_patch
| Deleted branch meta-temp (was d36a7ef).
| WARNING: addon feature "features/nfsd/nfsd-enable.scciso" was not found
| ERROR: required features were not found. aborting
| ERROR. Could not update standard/common-pc/base
| WARNING: /home/projectubuntu/mayank/workspacemaster/../../../linux-yocto/3.14.5+gitAUTOINC+183622e809_4aa41764bf-r0/temp/run.do_patch.5192:1
exit 1 from
|   exit 1
| ERROR: Function failed: do_patch (log file is located at
/home/projectubuntu/mayank/workspacemaster/../../../linux-yocto/3.14.5+gitAUTOINC+183622e809_4aa41764bf-r0/temp/log.do_patch.5192)

Any help on this:tried almost all things like appending
KERNEL_FEATURE_append-pn-linux-yocto = "features/nfsd/nfsd-enable.scc"
but not getting help

Regards
Mayank

