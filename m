Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pb0-f48.google.com (mail-pb0-f48.google.com
	[209.85.160.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC70DE0027D
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 10:09:00 -0700 (PDT)
Received: by pbbrq8 with SMTP id rq8so11935628pbb.35
	for <yocto@yoctoproject.org>; Mon, 30 Jul 2012 10:09:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=lVklK8s+P6zmsNibj9YVvFQGLneVCAfoykPpYUQhN9Q=;
	b=mSqtH+KDURABOEdh4KdpCp+4q6pWzXFe3PsDJX5LUGqGzsgX8RtnXRFv/u0Wte8jqR
	+jnnzdFK/bc7tlnWbOFp7ItIVUd3P2aE9Mx1BMapNR0akdPmeqQ9dA37CV0LkkVcDwqM
	oa8b//UT41fnMAiYzBFqUIXiy9NRsFpIaAR9jOJBlcRVY5CMxwB1C6JBPGJTiCullsrq
	Zo4wrPGGXDOzaVJzGtKfpURJNND2imMGjLU6bcsj2Ne0aOSd0JR76moNIdQEi/dJmEcA
	BLPEW7SxP+dU9lLuexqHeCuqZCrUUDKlcB+fi5XAkEXK8OqKpwAss4ucL3PhkARXCbsZ
	H7lw==
Received: by 10.68.242.228 with SMTP id wt4mr14608798pbc.89.1343668140670;
	Mon, 30 Jul 2012 10:09:00 -0700 (PDT)
Received: from [192.168.1.101] ([94.205.108.162])
	by mx.google.com with ESMTPS id kh1sm8264251pbc.23.2012.07.30.10.08.58
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 30 Jul 2012 10:08:59 -0700 (PDT)
Mime-Version: 1.0 (Apple Message framework v1278)
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <1441563.jsPnjQvs5m@helios>
Date: Mon, 30 Jul 2012 21:08:54 +0400
Message-Id: <02EF9496-6BB6-473A-8C55-0BB42CA96FFC@gmail.com>
References: <2C433563-B7CA-458C-B27F-68E3D5D2408C@gmail.com>
	<20120730164845.GM3261@jama.jama.net>
	<E9F44A50-97D0-4CBE-A9AF-36084B1E263C@gmail.com>
	<1441563.jsPnjQvs5m@helios>
To: Paul Eggleton <paul.eggleton@linux.intel.com>
X-Mailer: Apple Mail (2.1278)
Cc: yocto@yoctoproject.org
Subject: Re: ERROR: Task 7 (/tool/yocto/poky/meta/recipes-core/meta/meta-toolchain.bb, do_populate_sdk) failed with exit code '1'
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 30 Jul 2012 17:09:00 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Paul,

On Jul 30, 2012, at 8:58 PM, Paul Eggleton wrote:
>=20
> This is my fault - I'll put together a patch right now. As a =
workaround you=20
> can "bitbake rpmresolve-native" first and you won't get the error =
anymore.

Thanks for the workaround! It worked.

It would be good if all changes to the master were run through an =
automated build test on an internal git repository, prior to being =
pushed out to the public git repository. This way, you would be able to =
ensure that breaks in the build do not get propagated to all users.

FYI, I refresh my yocto repos every two weeks and always perform a clean =
build, after deleting my tmp and sstate-cache folders.=20

It take around 2 hours to build meta-toolchain, and another hour to =
build core-image-minimal, on my machine configuration, which is a =
MacBook Pro 15", 8GB RAM, 2.3GHz Core i7, running Ubuntu 12.04 LTS =
64-bit using VMware Fusion 5.0.0 with 8 CPU core configured, and 4GB RAM =
allocated to the VM.

I usually have the following layers setup for each build

BBLAYERS ?=3D " \
  /tool/yocto/poky/meta \
  /tool/yocto/poky/meta-yocto \
  /tool/yocto/meta-openembedded/meta-oe \
  /tool/yocto/meta-xilinx \
  "

Best regards,

Elvis Dowson=

