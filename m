Return-Path: <michel.dhooge@free.fr>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id ACAC0E006E3; Thu,  6 Oct 2016 05:43:07 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (michel.dhooge[at]free.fr)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.27.42.2 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from smtp2-g21.free.fr (smtp2-g21.free.fr [212.27.42.2])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6749FE00503
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 05:43:03 -0700 (PDT)
Received: from spooler3-g27.priv.proxad.net (unknown [172.20.243.239])
	by smtp2-g21.free.fr (Postfix) with ESMTP id 1CE802003F4
	for <yocto@yoctoproject.org>; Thu,  6 Oct 2016 14:43:01 +0200 (CEST)
Date: Thu, 6 Oct 2016 14:43:01 +0200 (CEST)
From: Michel D'HOOGE <michel.dhooge@free.fr>
To: yocto@yoctoproject.org
Message-ID: <31859519.91906299.1475757781789.JavaMail.root@spooler3-g27.priv.proxad.net>
In-Reply-To: <85082739.91314096.1475750136296.JavaMail.root@spooler3-g27.priv.proxad.net>
MIME-Version: 1.0
X-Originating-IP: [82.233.24.66]
X-Mailer: Zimbra 7.2.0-GA2598 (ZimbraWebClient - GC53 (Linux)/7.2.0-GA2598)
X-Authenticated-User: michel.dhooge@free.fr
Subject: [x32 ABI] Bit size mismatch in grub-efi
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
X-List-Received-Date: Thu, 06 Oct 2016 12:43:07 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

Hi,

I'd like to give the x32 ABI a try, so I followed the steps in section 4.4 =
of the reference manual.

First, I tried the core-image-sato recipe, and then switched to core-image-=
minimal because it is faster to recompile from scratch=E2=80=A6 However I a=
ssume both should work since Sato is explicitly referred to in the manual, =
and minimal should always work! And for completeness, I am on the master br=
anch of poky.

So, this doesn't work and I get many lines like the following ones from gru=
b-efi:

ERROR: grub-efi-2.00-r3 do_package_qa: QA Issue: Bit size did not match (32=
 to 64) grub-efi on /work/x86_64_x32-poky-linux-gnux32/grub-efi/2.00-r3/pac=
kages-split/grub-efi/usr/libx32/grub/x86_64-efi/kernel.img
Bit size did not match (32 to 64) grub-efi on /work/x86_64_x32-poky-linux-g=
nux32/grub-efi/2.00-r3/packages-split/grub-efi/usr/libx32/grub/x86_64-efi/t=
rig.mod
Bit size did not match (32 to 64) grub-efi on /work/x86_64_x32-poky-linux-g=
nux32/grub-efi/2.00-r3/packages-split/grub-efi/usr/libx32/grub/x86_64-efi/c=
s5536.mod
Bit size did not match (32 to 64) grub-efi on /work/x86_64_x32-poky-linux-g=
nux32/grub-efi/2.00-r3/packages-split/grub-efi/usr/libx32/grub/x86_64-efi/u=
sb.mod
Bit size did not match (32 to 64) grub-efi on /work/x86_64_x32-poky-linux-g=
nux32/grub-efi/2.00-r3/packages-split/grub-efi/usr/libx32/grub/x86_64-efi/u=
sbserial_common.mod

And then, it fails:
ERROR: grub-efi-2.00-r3 do_package_qa: QA run found fatal errors. Please co=
nsider fixing them.
ERROR: grub-efi-2.00-r3 do_package_qa: Function failed: do_package_qa
ERROR: Logfile of failure stored in: /mnt/Yocto/Fabric-x32/build/tmp/work/x=
86_64_x32-poky-linux-gnux32/grub-efi/2.00-r3/temp/log.do_package_qa.11229
ERROR: Task (/mnt/Yocto/Fabric-x32/sources/poky/meta/recipes-bsp/grub/grub-=
efi_2.00.bb:do_package_qa) failed with exit code '1'


AFAIK, the image won't use EFI. And I guess this package is only required b=
y the native part "by default".

What is the proper solution to bypass these errors?

Thanks
Michel

