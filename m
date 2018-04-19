Return-Path: <wmills@ti.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76357E00994; Thu, 19 Apr 2018 13:57:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [198.47.19.17 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from fllnx210.ext.ti.com (fllnx210.ext.ti.com [198.47.19.17])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BCE55E00756
	for <yocto@yoctoproject.org>; Thu, 19 Apr 2018 13:57:04 -0700 (PDT)
Received: from dflxv15.itg.ti.com ([128.247.5.124])
	by fllnx210.ext.ti.com (8.15.1/8.15.1) with ESMTP id w3JKv2dK024360;
	Thu, 19 Apr 2018 15:57:02 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=ti.com;
	s=ti-com-17Q1; t=1524171423;
	bh=i0fxbzSxsl2odvHFzHLMTTUzl6ttAgIf/xmc49Oi24g=;
	h=Subject:To:References:From:Date:In-Reply-To;
	b=IwNxZQeoPag8ayCcSxc8K+snK/ZJBsIVJavP5jRS5fYccyl7DffBVfTDzCqPh+pVq
	uv4w2O0ogkJ6BSLYBhjn6G3lNmfKb+4BAJFnCwyHkKDkZ9Yf54YA5N0as9Qehv5TyQ
	Sf8P4uNKEwdDJKNf6RB10a27UjHXqV/kijZD3/P4=
Received: from DLEE114.ent.ti.com (dlee114.ent.ti.com [157.170.170.25])
	by dflxv15.itg.ti.com (8.14.3/8.13.8) with ESMTP id w3JKv2Sl028051;
	Thu, 19 Apr 2018 15:57:02 -0500
Received: from DLEE103.ent.ti.com (157.170.170.33) by DLEE114.ent.ti.com
	(157.170.170.25) with Microsoft SMTP Server (version=TLS1_2,
	cipher=TLS_ECDHE_RSA_WITH_AES_128_CBC_SHA256_P256) id 15.1.1466.3;
	Thu, 19 Apr 2018 15:57:01 -0500
Received: from dlep33.itg.ti.com (157.170.170.75) by DLEE103.ent.ti.com
	(157.170.170.33) with Microsoft SMTP Server (version=TLS1_0,
	cipher=TLS_RSA_WITH_AES_256_CBC_SHA) id 15.1.1466.3 via Frontend
	Transport; Thu, 19 Apr 2018 15:57:01 -0500
Received: from [10.0.2.15] (ileax41-snat.itg.ti.com [10.172.224.153])
	by dlep33.itg.ti.com (8.14.3/8.13.8) with ESMTP id w3JKv1f5009536;
	Thu, 19 Apr 2018 15:57:01 -0500
To: Raymond Yeung <rksyeung@hotmail.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
References: <MWHPR19MB1183563A0DFAFC6B7313C25CC5B00@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB1183C61B954575D9F17CA1BEC5B50@MWHPR19MB1183.namprd19.prod.outlook.com>
	<MWHPR19MB11839D60DD5DADD1573F4291C5B50@MWHPR19MB1183.namprd19.prod.outlook.com>
From: William Mills <wmills@ti.com>
Message-ID: <876a79a0-f419-9cbb-3dce-3de77113c525@ti.com>
Date: Thu, 19 Apr 2018 16:56:32 -0400
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.7.0
MIME-Version: 1.0
In-Reply-To: <MWHPR19MB11839D60DD5DADD1573F4291C5B50@MWHPR19MB1183.namprd19.prod.outlook.com>
X-EXCLAIMER-MD-CONFIG: e1e8a2fd-e40a-4ac6-ac9b-f7e9cc9ee180
Subject: Re: Linux Files needed for PXE network boot
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
X-List-Received-Date: Thu, 19 Apr 2018 20:57:05 -0000
Content-Type: text/plain; charset="windows-1252"
Content-Language: en-US
Content-Transfer-Encoding: 8bit

Robert,

I assume no one responded to you because you did not supply enough
information to understand your situation.  (You don't specify what HW
you are using, version of Yocto Project, what DHCP server, etc.)

From the second message I can tell you are using a X86_64 based
platform.  Is this a commercial PC or a developer board (Minnow etc)?

If I were you I would focus on the UEFI mode as you are closer there.

I am not an X86 UEFI expect but ...


On 04/18/2018 09:38 PM, Raymond Yeung wrote:
> Another thing I haven't tried is to set up NFS.  Can we simply specify
> ONE file (similar to .hddimg) that could be tftp over to target, and
> expect it to boot up?  Could this be the cause of my problem?
>

Yes, Grub should be able to go back to the TFTP server to get more files.

Alternatively, yes, it is possible (but a bit ugly) to create one file
for the TFTP server that has everything.

It has been 4 years ago now but I did play with Minnow board UEFI and
GRUB via netboot.

What I got working was a single fat Grub binary with kernel and initram
disk included.  I did this because the UEFI on minnow at that time had
trouble using the ethernet from grub but could reliably transfer a large
file before the handoff.  I would hope this is now fixed on minnow and
commercial PCs would not have this issue.

Anyway if you want to see what I did the files are here:
http://arago-project.org/files/short-term/misc/make-netbootia32.tar.bz2

I would not recommend using these binaries (They are 32bit UEFI and old)
but you can see what I did looking at the README.txt file.

> 
> 
> ------------------------------------------------------------------------
> *From:* Raymond Yeung <rksyeung@hotmail.com>
> *Sent:* Wednesday, April 18, 2018 6:33 PM
> *To:* yocto@yoctoproject.org
> *Subject:* Re: Linux Files needed for PXE network boot
>  
> 
> I've yet to receive any response to my post below.  I've gone through
> fair amount of experimentation to get my board downloaded successfully
> the first-stage boot loader.  I'd tried pxelinux.0 for legacy BIOS and
> bootx64.efi (also generated in build process) to work with UEFI on
> client side.  However, no luck going any further so far.  Debugging the
> client side is rather cryptic (black box).
> 
> 
> I'm just wondering if it's because of a missing kick-start file
> (ks.conf)?  I've tried "kernel images/<kernel>.hddimg" (was careful in
> specifying the path relative /tftpboot root directory), also
> bzImage.bin, and the combo of vmlinuz + initrd files.  Neither one of
> the works so far.  When I tried UEFI with bootx64.efi, the client side
> stops at GRUB, complaining "error: no such device:
> ()/EFI/BOOT/grub.cfg."  When I tried legacy BIOS with pxelinux.0, I got
> "PXE-E16: No offer received.  ERROR: Boot option loading failed".
> 
> 
> Any idea anyone?
> 
> 

I believe the () in ()/EFI/BOOT/grub.cfg should have been (tftp) to make
grub go back to the TFTP server for the config file.  Something is not
right in your setup or UEFI to Grub hand-off.  Can you get a Grub shell
prompt?  If so you should be able to debug from there.

Again see the README.txt in the file I referenced above.  It shows how I
configured grub.

> 
> ------------------------------------------------------------------------
> *From:* Raymond Yeung <rksyeung@hotmail.com>
> *Sent:* Monday, April 16, 2018 12:42 PM
> *To:* yocto@yoctoproject.org
> *Subject:* Linux Files needed for PXE network boot
>  
> I've a .hddimg image bootable from USB thumb drive.  As part of the
> boot-up, I also could invoke "Serial Install" to transfer such an image
> to SSD, such that in the next round, I could boot from SSD instead.
> 
> What are the files and where do I get them (relative to where I find
> .hddimg) from the build tree, and install them on the tftp server, in
> order to support PXE network booting?  Also, what mechanism do people
> use to transfer this after PXE boot into the SSD, making it bootable?
> 
> Raymond
> 
> 

