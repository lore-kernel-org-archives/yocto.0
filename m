Return-Path: <mircea.gliga@vitheia.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DD24EE00D91; Wed, 21 Feb 2018 00:25:56 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,HTML_MESSAGE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
Received: from zeus.integrasoft.ro (zeus.integrasoft.ro [193.231.162.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3E5A4E00816
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 00:25:54 -0800 (PST)
Received: from [193.231.162.34] (echelon.integrasoft.ro [193.231.162.34])
	(authenticated bits=0)
	by zeus.integrasoft.ro (8.14.7/8.14.7) with ESMTP id w1L8PpNO000939
	(version=TLSv1/SSLv3 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128
	verify=NO)
	for <yocto@yoctoproject.org>; Wed, 21 Feb 2018 10:25:52 +0200
References: <cd5aff60-6c1d-e695-2e59-d18ae2558e6c@vitheia.com>
To: Yocto Project <yocto@yoctoproject.org>
From: Mircea Gliga <mircea.gliga@vitheia.com>
X-Forwarded-Message-Id: <cd5aff60-6c1d-e695-2e59-d18ae2558e6c@vitheia.com>
Message-ID: <b58753b6-33a0-448a-e6e6-94a3b4db6ab8@vitheia.com>
Date: Wed, 21 Feb 2018 10:25:51 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <cd5aff60-6c1d-e695-2e59-d18ae2558e6c@vitheia.com>
Subject: Integrity checking fails with Atmel SHA hw accelerator enabled
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
X-List-Received-Date: Wed, 21 Feb 2018 08:25:56 -0000
Content-Type: multipart/alternative;
	boundary="------------3E23CD373A6136C6908FD859"
Content-Language: en-US

--------------3E23CD373A6136C6908FD859
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit

Hi

I'm having some trouble using dm-verity for a squashfs root file system 
that seems to be related to the
Atmel SHA hw accelerator in the kernel, CONFIG_CRYPTO_DEV_ATMEL_SHA

Some info about my setup:
* I'm using a board with a SAMA5D4 CPU.
* I'm using Yocto rocko for building an image for that device.

The idea is that Using the 4.14.14 Kernel, Integrity checking using 
Kernel crypto fails with Atmel SHA hw accelerator enabled in kernel.
By disabling it, `CONFIG_CRYPTO_DEV_ATMEL_SHA=n`, and using the software 
sha256 algo, integrity checking works as expected.
This is my kernel config: 
https://gist.githubusercontent.com/gmircea/6e1cc029ef5ed7a16b0fedb8b9524f66/raw/eece8a8faadd2de9373e150ef1daf3cf25f4135c/.config

Using the 4.8.4 Kernel and Atmel SHA hw accelerator enabled, everything 
was ok.

So it looks like the new commits, from 4.8.4 to 4.14.14, on atmel-sha.c 
(or at least I assume that may be a possible source of the problem) 
changes the behavior and breaks our use case:

https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/log/drivers/crypto/atmel-sha.c?h=v4.8.4

https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/log/drivers/crypto/atmel-sha.c?h=v4.14.14

This is what triggers the error during verified boot:

status=`veritysetup create vroot $root_dev $verity_dev --hash-offset 
$hashoffset $root_hash`

     mount /dev/mapper/vroot /mnt/
     mount_ok=`cat /proc/mounts | grep mnt`
     if [ -z "$mount_ok" ] ; then
         echo "Failed to mount $root_dev on mnt/"
     else
         echo "Switch rootfs"
         exec switch_root -c /dev/console /mnt /sbin/init
     fi

The mount operation fails:

device-mapper: verity: 179:4: metadata block 2 is corrupted
EXT4-fs (dm-0): unable to read superblock
device-mapper: verity: 179:4: metadata block 2 is corrupted
EXT4-fs (dm-0): unable to read superblock
device-mapper: verity: 179:4: metadata block 2 is corrupted
EXT4-fs (dm-0): unable to read superblock
device-mapper: verity: 179:4: metadata block 2 is corrupted
SQUASHFS error: squashfs_read_data failed to read block 0x0
squashfs: SQUASHFS error: unable to read squashfs_super_block
device-mapper: verity: 179:4: metadata block 2 is corrupted
FAT-fs (dm-0): unable to read boot sector
mount: mounting /dev/mapper/vroot on /mnt/ failed: Input/output error
Failed to mount /dev/mmcblk0p4 on mnt/
Smartcom initramfs init failed
reboot: Restarting system
Reboot failed -- System halted

Using veritysetup to verify the integrity against the hashes is 
successful, as it's not using the kernel for that ...

Any help is appreciated !

Thanks in advanced and have a nice day.

Mircea


--------------3E23CD373A6136C6908FD859
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: 8bit

<html>
  <head>

    <meta http-equiv="content-type" content="text/html; charset=utf-8">
  </head>
  <body text="#000000" bgcolor="#FFFFFF">
    Hi <br>
    <div class="moz-forward-container"> <br>
      I'm having some trouble using dm-verity for a squashfs root file
      system that seems to be related to the <br>
      Atmel SHA hw accelerator in the kernel,
      CONFIG_CRYPTO_DEV_ATMEL_SHA<br>
      <br>
      Some info about my setup: <br>
      * I'm using a board with a SAMA5D4 CPU.<br>
      * I'm using Yocto rocko for building an image for that device.<br>
      <br>
      The idea is that Using the 4.14.14 Kernel, Integrity checking
      using Kernel crypto fails with Atmel SHA hw accelerator enabled in
      kernel.<br>
      By disabling it, `CONFIG_CRYPTO_DEV_ATMEL_SHA=n`, and using the
      software sha256 algo, integrity checking works as expected.<br>
      This is my kernel config:
      <a class="moz-txt-link-freetext"
href="https://gist.githubusercontent.com/gmircea/6e1cc029ef5ed7a16b0fedb8b9524f66/raw/eece8a8faadd2de9373e150ef1daf3cf25f4135c/.config"
        moz-do-not-send="true">https://gist.githubusercontent.com/gmircea/6e1cc029ef5ed7a16b0fedb8b9524f66/raw/eece8a8faadd2de9373e150ef1daf3cf25f4135c/.config</a><br>
      <br>
      Using the 4.8.4 Kernel and Atmel SHA hw accelerator enabled,
      everything was ok.<br>
      <br>
      So it looks like the new commits, from 4.8.4 to 4.14.14, on
      atmel-sha.c (or at least I assume that may be a possible source of
      the problem) changes the behavior and breaks our use case:
      <p><a
href="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/log/drivers/crypto/atmel-sha.c?h=v4.8.4"
          class="external-link" rel="nofollow" title="Follow link"
          moz-do-not-send="true">https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/log/drivers/crypto/atmel-sha.c?h=v4.8.4</a></p>
      <p><a
href="https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/log/drivers/crypto/atmel-sha.c?h=v4.14.14"
          class="external-link" rel="nofollow" title="Follow link"
          moz-do-not-send="true">https://git.kernel.org/pub/scm/linux/kernel/git/stable/linux-stable.git/log/drivers/crypto/atmel-sha.c?h=v4.14.14</a></p>
      <p>This is what triggers the error during verified boot:</p>
      <p>status=`veritysetup create vroot $root_dev $verity_dev
        --hash-offset $hashoffset $root_hash`<br>
        <br>
            mount /dev/mapper/vroot /mnt/<br>
            mount_ok=`cat /proc/mounts | grep mnt`<br>
            if [ -z "$mount_ok" ] ; then<br>
                echo "Failed to mount $root_dev on mnt/"<br>
            else<br>
                echo "Switch rootfs"<br>
                exec switch_root -c /dev/console /mnt /sbin/init<br>
            fi<br>
      </p>
      <p>The mount operation fails:</p>
      <p>device-mapper: verity: 179:4: metadata block 2 is corrupted<br>
        EXT4-fs (dm-0): unable to read superblock<br>
        device-mapper: verity: 179:4: metadata block 2 is corrupted<br>
        EXT4-fs (dm-0): unable to read superblock<br>
        device-mapper: verity: 179:4: metadata block 2 is corrupted<br>
        EXT4-fs (dm-0): unable to read superblock<br>
        device-mapper: verity: 179:4: metadata block 2 is corrupted<br>
        SQUASHFS error: squashfs_read_data failed to read block 0x0<br>
        squashfs: SQUASHFS error: unable to read squashfs_super_block<br>
        device-mapper: verity: 179:4: metadata block 2 is corrupted<br>
        FAT-fs (dm-0): unable to read boot sector<br>
        mount: mounting /dev/mapper/vroot on /mnt/ failed: Input/output
        error<br>
        Failed to mount /dev/mmcblk0p4 on mnt/<br>
        Smartcom initramfs init failed<br>
        reboot: Restarting system<br>
        Reboot failed -- System halted<br>
      </p>
      <p>Using veritysetup to verify the integrity against the hashes is
        successful, as it's not using the kernel for that ...</p>
      <p>Any help is appreciated !</p>
      <p>Thanks in advanced and have a nice day.</p>
      <p>Mircea<br>
      </p>
    </div>
  </body>
</html>

--------------3E23CD373A6136C6908FD859--
