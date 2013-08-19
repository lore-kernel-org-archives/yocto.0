Return-Path: <gary@mlbassoc.com>
Received: from mail.chez-thomas.org (mail.mlbassoc.com [65.100.170.105])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E0D5E00406
	for <yocto@yoctoproject.org>; Mon, 19 Aug 2013 08:53:20 -0700 (PDT)
Received: by mail.chez-thomas.org (Postfix, from userid 1998)
	id DFE84F811F3; Mon, 19 Aug 2013 09:53:17 -0600 (MDT)
X-Spam-Checker-Version: SpamAssassin 3.3.2 (2011-06-06) on
	hermes.chez-thomas.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.9 required=4.0 tests=ALL_TRUSTED,BAYES_00
	autolearn=unavailable version=3.3.2
Received: from [192.168.1.114] (zeus [192.168.1.114])
	by mail.chez-thomas.org (Postfix) with ESMTP id 9602BF811EE;
	Mon, 19 Aug 2013 09:53:16 -0600 (MDT)
Message-ID: <52123F75.60500@mlbassoc.com>
Date: Mon, 19 Aug 2013 09:53:25 -0600
From: Gary Thomas <gary@mlbassoc.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130804 Thunderbird/17.0.8
MIME-Version: 1.0
To: yocto@yoctoproject.org
References: <CAAVaN8zfs7_-fH7W0++xGFsa8CE1_POM5vzULMz5jNFqsP9Tzg@mail.gmail.com>
In-Reply-To: <CAAVaN8zfs7_-fH7W0++xGFsa8CE1_POM5vzULMz5jNFqsP9Tzg@mail.gmail.com>
Subject: Re: file permissions
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
X-List-Received-Date: Mon, 19 Aug 2013 15:53:25 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit

On 2013-08-17 23:42, Andy Ng wrote:
> Dear List,
>
> I try to build Poky and the final rootfs image doesn't not mount with the following problem:
>
> ----------------------8<-------------------------8<------------------------------
> BIFS: mounted UBI device 0, volume 0, name "polatisnic-rootfs"
> UBIFS: mounted read-only
> UBIFS: file system size:   10737408 bytes (10485 KiB, 10 MiB, 82 LEBs)
> UBIFS: journal size:       1964160 bytes (1918 KiB, 1 MiB, 15 LEBs)
> UBIFS: media format:       w4/r0 (latest is w4/r0)
> UBIFS: default compressor: lzo
> UBIFS: reserved for root:  0 bytes (0 KiB)
> VFS: Mounted root (ubifs filesystem) readonly on device 0:14.
> devtmpfs: mounted
> Freeing init memory: 208K
> INIT: version 2.88 booting
> mount: permission denied (are you root?)
> mount: permission denied (are you root?)
> grep: /proc/filesystems: No such file or directory
> mount: permission denied (are you root?)
> grep: /proc/mounts: No such file or directory
> grep: /proc/mounts: No such file or directory
> Remounting root file system...
> mount: can't read '/etc/mtab': No such file or directory
> ------------------------8<-----------------------------------8<------------------
>
> After a bit of research, I fount out that the busybox was populated in the rootfs
> under ownership of "andreas:andreas" instead of "root:root"
>
> I fixed manually the ownership and it booted  up.
>
> Does anyone knows what might be going wrong in my build process?

Once again, with enthusiasm, you'll need to explain your complete build process for
anyone to be able to help you.
   * What's your build host
   * What version of Poky/Yocto are you using
   * What is your target MACHINE
   * What, if anything, have you added to local.conf

Without this kind of information, answers would be only guesses...

-- 
------------------------------------------------------------
Gary Thomas                 |  Consulting for the
MLB Associates              |    Embedded world
------------------------------------------------------------

