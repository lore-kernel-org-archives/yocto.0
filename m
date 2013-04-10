Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f180.google.com (mail-wi0-f180.google.com
	[209.85.212.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DB59E014C1
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 05:55:51 -0700 (PDT)
Received: by mail-wi0-f180.google.com with SMTP id c10so428604wiw.1
	for <yocto@yoctoproject.org>; Wed, 10 Apr 2013 05:55:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:date:message-id:subject:from:to
	:content-type; bh=GPh2l2VhkIPsby08o666SdLF4yqF1sBYVKCb7VE03JI=;
	b=ShIpHRQY0fA00/3fwikzjRsV3ExdFfnnEnzhtThltWXhg6HmwJT7CnGc+JyOrFI/PR
	+9z7MYrvEY5gfc5XK6Mccs9iyxveL4cUOiVv4G3eIZkP+ojLs6IEZc51PseIDYBhwQtQ
	a/03ErQa5z4OR/Lsbnfr2+g1meIEcN62gb8j2ztoDTRHMBcncWI/uf+MCrv3xaNlSz66
	RWgK9u+7iVokdmLwDihGW8701d98PhyOL9VAEAAj8nr5q6rfMBTAEDMSy4YFN1tJk7fN
	wN3mN/lEGd1DcOV8fcN/L/380W/BwMjgQAKjC48sTpW8Kh0Imx3/pop/nUhLFwd5ocqV
	JaGw==
MIME-Version: 1.0
X-Received: by 10.180.101.41 with SMTP id fd9mr3231321wib.20.1365598546210;
	Wed, 10 Apr 2013 05:55:46 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Wed, 10 Apr 2013 05:55:46 -0700 (PDT)
Date: Wed, 10 Apr 2013 08:55:46 -0400
Message-ID: <CAHUNapTGSiw7G_7wtyTFXBrFecstxPyHYnwB=dfRpWLM81jyrQ@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: newer host fails to build old qemu-native Was: working my way through the kernel hands-on labs finally
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
X-List-Received-Date: Wed, 10 Apr 2013 12:55:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 9, 2013 at 6:34 PM, Trevor Woerner <twoerner@gmail.com> wrote:
> Yes, I'll try reproducing this and post my results.

Now I've hit a snag. Since performing these tests, I have upgraded my
host system from openSUSE 12.2 to 12.3. Building qemu-native from the
HEAD (which uses qemu version 1.4.0) succeeds just fine. Trying to
build danny's qemu-native (which is version 1.2.0) fails. The problem
is that back in the 1.2.0 days the qemu build was not explicitly
including -lrt, but now it is. My guess is that back then -lrt was
being implicitly included as part of some other explicit library
dependency, but now that link probably needs to be explicit.

From qemu-git this explicit check (and inclusion) of -lrt was put in
with 8bacde.
[qemu-git]$ git describe --contains 8bacde
v1.3.0-rc0~548

It looks like this has been backported to the meta-freescale layer.
https://lists.yoctoproject.org/pipermail/meta-freescale/2013-February/001461.html

I'll need to include something similar so danny-8.0.1 can proceed.

This has nothing to do with Yocto itself. If I download, unpack,
configure, and build qemu-1.2.0 separately (i.e. completely outside of
Yocto), it fails too. But doing the same with 1.4.0 succeeds.

