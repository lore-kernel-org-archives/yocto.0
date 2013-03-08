Return-Path: <elvis.dowson@gmail.com>
Received: from mail-pa0-f54.google.com (mail-pa0-f54.google.com
	[209.85.220.54]) (using TLSv1 with cipher RC4-SHA (128/128 bits))
	(No client certificate requested)
	by yocto-www.yoctoproject.org (Postfix) with ESMTPS id 9A6F4E01498
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2013 02:28:39 -0800 (PST)
Received: by mail-pa0-f54.google.com with SMTP id fa10so1219995pad.13
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2013 02:28:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=x-received:content-type:mime-version:subject:from:in-reply-to:date
	:cc:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=LTGUPwlJ6PzAcKYyDLkrA4YJm2PUnroUZIQ4Cjric2c=;
	b=ucQ3bPyXVSTOC2LYiLvsZZZD9WepHUgSMKnDlyeYs3zOs3bZEvdYkQ+zy7L+onGxrw
	syK6z7UEY4uY4qnvZjds93GH+wZQVCPabWF9xKnDL5ouTOgGD6EDw0G576/I0+SS3eAj
	pHCYb3biVmo+3mYGS6uUWc6RvaK+k+Dn9F6iNHQPaAEyu8fnZz9Ot6z6Xb+Vbhh5B4A0
	E3ByrFVSU66+lakCVnekNKsh53PsdYMB3iMfjCf4TT6hhjrqytINPMjSe19OiMJTVBgF
	O5wfugQl099xCmaPLqx4QnZ/B+UVqfbVDT1zOAd2y8EGoNbOatkwpxptlCpsDWCS1/rq
	gAOw==
X-Received: by 10.66.181.16 with SMTP id ds16mr3325803pac.34.1362738519428;
	Fri, 08 Mar 2013 02:28:39 -0800 (PST)
Received: from [192.168.1.100] ([94.205.106.4])
	by mx.google.com with ESMTPS id kt8sm5798864pab.19.2013.03.08.02.28.36
	(version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
	Fri, 08 Mar 2013 02:28:38 -0800 (PST)
Mime-Version: 1.0 (Mac OS X Mail 6.2 \(1499\))
From: Elvis Dowson <elvis.dowson@gmail.com>
In-Reply-To: <CAMKF1spG1x5Ne_RiSoHV-Fp46YRo+o_2NovctR9RrVH9UfeA6w@mail.gmail.com>
Date: Fri, 8 Mar 2013 14:28:32 +0400
Message-Id: <A27ACA22-65D4-4788-990C-995A78481038@gmail.com>
References: <B4F9B2A0-7231-4DC8-90D1-D7F291818791@gmail.com>
	<CAMKF1sr+xH7Nb0-cG-Wky-A6842wwSPT8wWm2CDh583_BgdjOg@mail.gmail.com>
	<D06F52BA-6DC2-4C8D-8F1D-EB71A8EB83EB@gmail.com>
	<CAMKF1sqmNf9hfjC4BWF3eF=4iENxVkaFEFtqaroM6cGQDFOtbw@mail.gmail.com>
	<61562AF7-3671-408C-AD77-E638C8535263@gmail.com>
	<CAMKF1spG1x5Ne_RiSoHV-Fp46YRo+o_2NovctR9RrVH9UfeA6w@mail.gmail.com>
To: Khem Raj <raj.khem@gmail.com>
X-Mailer: Apple Mail (2.1499)
Cc: Yocto Discussion Mailing List <yocto@yoctoproject.org>
Subject: Re: Patching gcc-4.7.2 to add support for Xilinx MicroBlaze
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
X-List-Received-Date: Fri, 08 Mar 2013 10:28:39 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable

Hi Khem,
                  After patching both gcc-4.7.2 and gcc-4.8.0, I get the =
following error. This looks like a common error, and I was wondering if =
there is something that needs to be additionally taken into =
consideration, in the poky gcc recipes (gcc-configure-*.inc) to get it =
to work for the microblaze processor?

The output log is from the gcc-4.8.0 build, but the same message =
persists with the gcc-4.7.2 adapted build with the microblaze patches:

| checking for microblaze-poky-linux-gcc...  =
/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/4.=
8.0-r01/gcc-4.8.0/build.x86_64-linux.microblaze-poky-linux/./gcc/xgcc =
-B/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/=
4.8.0-r01/gcc-4.8.0/build.x86_64-linux.microblaze-poky-linux/./gcc/ -m32 =
  =
-isystem/tool/yocto/poky/build/tmp/sysroots/spartan-6-sp601-microblaze/usr=
/include =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-lin=
ux/bin/ =
-B/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-lin=
ux/lib/ -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-linux=
/include -isystem =
/tool/yocto/poky/build/tmp/sysroots/x86_64-linux/usr/microblaze-poky-linux=
/sys-include =
--sysroot=3D/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cros=
s-initial/4.8.0-r01/gcc-4.8.0/build.x86_64-linux.microblaze-poky-linux/tmp=
sysroot
| checking for suffix of object files... configure: error: in =
`/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/4=
.8.0-r01/gcc-4.8.0/build.x86_64-linux.microblaze-poky-linux/microblaze-pok=
y-linux/libgcc':
| configure: error: cannot compute suffix of object files: cannot =
compile
| See `config.log' for more details.
| make: *** [configure-target-libgcc] Error 1
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see =
/tool/yocto/poky/build/tmp/work/microblaze-poky-linux/gcc-cross-initial/4.=
8.0-r01/temp/log.do_compile.32684 for further information)

Best regards,

Elvis Dowson=

