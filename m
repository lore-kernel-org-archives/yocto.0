Return-Path: <mauro@faresoftware.it>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5D0A6E00DF1; Wed,  6 Nov 2019 04:47:12 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [62.149.158.101 listed in list.dnswl.org]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from smtpcmd02101.aruba.it (smtpcmd02101.aruba.it [62.149.158.101])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E0E81E006D2
	for <yocto@yoctoproject.org>; Wed,  6 Nov 2019 04:47:08 -0800 (PST)
Received: from [192.168.24.172] ([93.38.119.136])
	by smtpcmd02.ad.aruba.it with bizsmtp
	id Ncn62100N2wfazh01cn6Px; Wed, 06 Nov 2019 13:47:06 +0100
To: yocto@yoctoproject.org
References: <552146d4-a776-c5c6-ac4d-27aae278da62@faresoftware.it>
From: Mauro Ziliani <mauro@faresoftware.it>
Message-ID: <9dd76f2f-06c6-09a0-5363-0523364fee11@faresoftware.it>
Date: Wed, 6 Nov 2019 13:47:06 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
	Thunderbird/68.2.1
MIME-Version: 1.0
In-Reply-To: <552146d4-a776-c5c6-ac4d-27aae278da62@faresoftware.it>
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=aruba.it; s=a1;
	t=1573044426; bh=aOCuS3yCgsJHVpg2OSG4baDKbcUnUEyctj/Byq4S9L0=;
	h=Subject:To:From:Date:MIME-Version:Content-Type;
	b=PxxNvSpcXR5+N5faWxoYO7Fjq7jf60fp4wJMljILGA8cRfyjbG2jJwGiXoDxAHMao
	Uyi4EuFdn+GyK2Eda/0G1FiIqToLOxSkSUb696dHJFxmnmFe/zuae/aSbgeW6DDTX3
	hz6z9f8W6kxFeR79U/xfQuh7SD6htF7uZ+7J2oIpZCeQRCHzCWUWpaNHDvfuHpemsG
	wPjPObfh9doRGJl+VhFj35N73prJ3JmpXWEAlyAK241wehQBURZ0m4d1g28bW9HFNi
	lhz+NqpyBG+V2Tmto2cdnirlDh9WN3bvBzlx2mfIJH9X9u0cu0A5MSeUoxJp0zsup9
	Ibl8eHFzLNUJw==
Subject: Re: Error with Pyro and wic
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
X-List-Received-Date: Wed, 06 Nov 2019 12:47:12 -0000
Content-Type: text/plain; charset=iso-8859-15; format=flowed
Content-Transfer-Encoding: 8bit
Content-Language: it

Ok I solved.

The problem is the filesystem of destination folder.

The /deploy is a shared vboxsf shared folder.

If build the sdcard in local folder all works


M

Il 06/11/19 09:48, Mauro Ziliani ha scritto:
> Hi all.
>
> I'm trying to port udooneo to Pyro.
>
> By now I build core-image-minimal
>
> I try  to make a udoo-sdcard with the command
>
>
> wic create -e core-image-minimal udoo-sdard -o /deploy/udoo-scard
>
>
> udoo-sdcard.wks is placed in meta-udoo/scripts/lib/wic/canned-wks
>
> ---- udoo-sdcard.wks ---
>
> bootloader
> part SPL --source rawcopy --sourceparams="file=SPL" --ondisk mmcblk 
> --no-table --align 1
> part u-boot --source rawcopy --sourceparams="file=u-boot.img" --ondisk 
> mmcblk --no-table --align 69
> part / --source rootfs --ondisk mmcblk --fstype=ext4 --label root 
> --align 4096
>
> ---- udoo-sdcard.wks ---
>
>
> When tryo to build an sdcard with wic I get this errors
>
> ---- errors ----
>
> INFO: Creating image(s)...
>
> Traceback (most recent call last):
>   File "/home/mauro/pyro/sources/poky/scripts/lib/wic/filemap.py", 
> line 389, in _invoke_fiemap
>     fcntl.ioctl(self._f_image, _FIEMAP_IOCTL, self._buf, 1)
> OSError: [Errno 95] Operation not supported
>
> During handling of the above exception, another exception occurred:
>
> Traceback (most recent call last):
>   File "/home/mauro/pyro/sources/poky/scripts/lib/wic/filemap.py", 
> line 529, in filemap
>     return FilemapFiemap(image, log)
>   File "/home/mauro/pyro/sources/poky/scripts/lib/wic/filemap.py", 
> line 363, in __init__
>     self.block_is_mapped(0)
>   File "/home/mauro/pyro/sources/poky/scripts/lib/wic/filemap.py", 
> line 410, in block_is_mapped
>     struct_fiemap = self._invoke_fiemap(block, 1)
>   File "/home/mauro/pyro/sources/poky/scripts/lib/wic/filemap.py", 
> line 397, in _invoke_fiemap
>     raise ErrorNotSupp(errstr)
> wic.filemap.ErrorNotSupp: FilemapFiemap: the FIEMAP ioctl is not 
> supported by the file-system
>
> During handling of the above exception, another exception occurred:
>
> Traceback (most recent call last):
>   File "/home/mauro/pyro/sources/poky/scripts/wic", line 326, in <module>
>     sys.exit(main(sys.argv[1:]))
>   File "/home/mauro/pyro/sources/poky/scripts/wic", line 321, in main
>     return hlp.invoke_subcommand(args, parser, hlp.wic_help_usage, 
> subcommands)
>   File "/home/mauro/pyro/sources/poky/scripts/lib/wic/help.py", line 
> 97, in invoke_subcommand
>     subcommands.get(args[0], subcommand_error)[0](args[1:], usage)
>   File "/home/mauro/pyro/sources/poky/scripts/wic", line 259, in 
> wic_create_subcommand
>     native_sysroot, options)
>   File "/home/mauro/pyro/sources/poky/scripts/lib/wic/engine.py", line 
> 195, in wic_create
>     plugin.do_create()
>   File 
> "/home/mauro/pyro/sources/poky/scripts/lib/wic/plugins/imager/direct.py", 
> line 96, in do_create
>     self.assemble()
>   File 
> "/home/mauro/pyro/sources/poky/scripts/lib/wic/plugins/imager/direct.py", 
> line 187, in assemble
>     self._image.assemble()
>   File 
> "/home/mauro/pyro/sources/poky/scripts/lib/wic/plugins/imager/direct.py", 
> line 553, in assemble
>     sparse_copy(source, self.path, part.start * self.sector_size)
>   File "/home/mauro/pyro/sources/poky/scripts/lib/wic/filemap.py", 
> line 537, in sparse_copy
>     fmap = api(src_fname)
>   File "/home/mauro/pyro/sources/poky/scripts/lib/wic/filemap.py", 
> line 531, in filemap
>     return FilemapSeek(image, log)
>   File "/home/mauro/pyro/sources/poky/scripts/lib/wic/filemap.py", 
> line 210, in __init__
>     self._probe_seek_hole()
>   File "/home/mauro/pyro/sources/poky/scripts/lib/wic/filemap.py", 
> line 245, in _probe_seek_hole
>     raise ErrorNotSupp("the file-system does not support "
> wic.filemap.ErrorNotSupp: the file-system does not support "SEEK_HOLE" 
> and "SEEK_DATA" but only provides a stub implementation
>
>
>
> It seems that wic doesn't have some function to handle a part defined 
> in wks.
>
> Any suggestions?
>
>
> Best regards,
>
>   Mauro
>

