Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 54F61E0093F; Thu,  9 Mar 2017 06:19:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.223.194 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.194 listed in dnsbl.sorbs.net]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (twoerner[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f194.google.com (mail-io0-f194.google.com
	[209.85.223.194])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8ACD2E007BA
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 06:19:22 -0800 (PST)
Received: by mail-io0-f194.google.com with SMTP id f103so4010459ioi.2
	for <yocto@yoctoproject.org>; Thu, 09 Mar 2017 06:19:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=Sg17RubSk7GtOODfF8gcrauw9w5uP1VhRALDv9DtwpU=;
	b=CQK8UFElPjDRFqJG2HzmrWbOEVYrSRkMeteTzB9l9NFrh/1BqXEosY/V0utBBYlCKv
	R6NTxX81S5MSfNrtGACiMgsstH5uD5b3dOKolzT3L06xefmhIBdoH2jGDkG/SKRrYeMB
	CGmcKdNvB90yHf2hK1sTUDJXX2iImLKD8tq19eWtdGxW0BNu0kwLpHrS6jUt0OKPnO8i
	HzQtDo5GLndj8NP+x4bXZvclOnEJGUkbeyzYpCVY3h9VjnWzwiWt2ItjtzV3pgHeWLH5
	mnM49aXxbEVwAK96nf1yRgfQ2jcyOvzV9uIXrdrGosk30QZvHilJnqiv5Gq6Aht93qLw
	P/ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=Sg17RubSk7GtOODfF8gcrauw9w5uP1VhRALDv9DtwpU=;
	b=uN+OWAKnfoyOSFPLG/0+xGVVRJgXvZImWDqzYlj8yfdU7pkG4Sx9sjsBmVu2XiFiOQ
	YfcI5ajfNJI9k6tB3IkXlkI6Gowz5fBxZ4ofd0OsvN9ZsF0IcwrzLIGTS7qJosBGB3mv
	ZVq+CP1wF3VgF4bqaC/cdFc8B0VAxN6IN/uRLa9WLJXfz67VMuw3EGD27kDIUCWrlmRY
	ygZ5+Sd7+pck12IfS4xnMribWcBgrYc7TvuB/reom5b/a117SgfX3L/Dgy69bZ0mPVdP
	kLyLE6GbsrZ8SecJ0jz5gOp8jYJMT7pDsEBetTyuH8J/FhP/lcmZj75Sqz7EP6LQvWvZ
	gKkQ==
X-Gm-Message-State: AMke39lzj5pqBB3Rn+Z9ZC0ZGZKMys/xwctpXDPPH01e/ozraA+d6rlTUzKNOQPkmQi8Kw==
X-Received: by 10.107.155.16 with SMTP id d16mr10957326ioe.125.1489069161666; 
	Thu, 09 Mar 2017 06:19:21 -0800 (PST)
Received: from linux-uys3 (dsl-67-55-28-109.acanac.net. [67.55.28.109])
	by smtp.gmail.com with ESMTPSA id
	p191sm9185156itc.4.2017.03.09.06.19.19
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Thu, 09 Mar 2017 06:19:20 -0800 (PST)
Date: Thu, 9 Mar 2017 09:19:17 -0500
From: Trevor Woerner <twoerner@gmail.com>
To: Khem Raj <raj.khem@gmail.com>
Message-ID: <20170309141917.GA13150@linux-uys3>
References: <20170308173147.21841-1-twoerner@gmail.com>
	<20170308232821.GH19897@bill-the-cat>
	<20170308234200.GA24752@haswell>
	<20170309000105.GI19897@bill-the-cat>
	<20170309005103.GC24752@haswell> <20170309050112.GB4366@linux-uys3>
	<20170309053318.GA7880@haswell>
MIME-Version: 1.0
In-Reply-To: <20170309053318.GA7880@haswell>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: Tom Rini <trini@konsulko.com>, yocto@yoctoproject.org
Subject: Re: [meta-rockchip][PATCH] u-boot-rockchip: fix for binutils-2.28
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
X-List-Received-Date: Thu, 09 Mar 2017 14:19:26 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Wed 2017-03-08 @ 09:33:18 PM, Khem Raj wrote:
> On 17-03-09 00:01:12, Trevor Woerner wrote:
> > Okay.
> > 
> > Building with 2.28 (and letting it fail), then repeating the final link step
> > with 2.27 succeeds!
> 
> OK thats good. Can you post the output of readelf -e on final good and bad binaries

Phew! I wasn't sure if this was good or bad :-S

I assume by "good" you mean a build with binutils-2.27 without -N and with
SPL?

I assume by "bad" you mean the frankenbuild (i.e. built with 2.28 but linked
with 2.27, without -N, with SPL)?

If so, good:

	ELF Header:
	  Magic:   7f 45 4c 46 01 01 01 00 00 00 00 00 00 00 00 00 
	  Class:                             ELF32
	  Data:                              2's complement, little endian
	  Version:                           1 (current)
	  OS/ABI:                            UNIX - System V
	  ABI Version:                       0
	  Type:                              DYN (Shared object file)
	  Machine:                           ARM
	  Version:                           0x1
	  Entry point address:               0x0
	  Start of program headers:          52 (bytes into file)
	  Start of section headers:          3548088 (bytes into file)
	  Flags:                             0x5000200, Version5 EABI, soft-float ABI
	  Size of this header:               52 (bytes)
	  Size of program headers:           32 (bytes)
	  Number of program headers:         5
	  Size of section headers:           40 (bytes)
	  Number of section headers:         30
	  Section header string table index: 27

	Section Headers:
	  [Nr] Name              Type            Addr     Off    Size   ES Flg Lk Inf Al
	  [ 0]                   NULL            00000000 000000 000000 00      0   0  0
	  [ 1] .text             PROGBITS        00000000 010000 0301a4 00  AX  0   0 32
	  [ 2] .rodata           PROGBITS        000301a8 0401a8 0134dc 00   A  0   0  8
	  [ 3] .hash             HASH            00043684 053684 000018 04   A 13   0  4
	  [ 4] .data             PROGBITS        000436a0 0536a0 00296c 00  WA  0   0  8
	  [ 5] .got.plt          PROGBITS        0004600c 05600c 00000c 04  WA  0   0  4
	  [ 6] .u_boot_list      PROGBITS        00046018 056018 001b3c 00  WA  0   0  4
	  [ 7] .efi_runtime      PROGBITS        00047b58 057b58 000100 00 WAX  0   0  8
	  [ 8] .efi_runtime_rel  REL             00047c58 057c58 000090 08   A 13   0  4
	  [ 9] .rel.dyn          REL             00047ce8 057ce8 00a8c8 08   A 13   0  4
	  [10] .bss_start        PROGBITS        00047ce8 06267d 000000 00   W  0   0  1
	  [11] .bss              NOBITS          00047ce8 000000 03d100 00  WA  0   0 64
	  [12] .bss_end          PROGBITS        00084de8 06267d 000000 00   W  0   0  1
	  [13] .dynsym           DYNSYM          000525b0 0625b0 000030 10   A 14   3  4
	  [14] .dynstr           STRTAB          000525e0 0625e0 000001 00   A  0   0  1
	  [15] .dynamic          DYNAMIC         000525e4 0625e4 000088 08  WA 14   0  4
	  [16] .interp           PROGBITS        0005266c 06266c 000011 00   A  0   0  1
	  [17] .ARM.attributes   ARM_ATTRIBUTES  00000000 06267d 000029 00      0   0  1
	  [18] .comment          PROGBITS        00000000 0626a6 000011 01  MS  0   0  1
	  [19] .debug_line       PROGBITS        00000000 0626b7 0556f7 00      0   0  1
	  [20] .debug_info       PROGBITS        00000000 0b7dae 1885b9 00      0   0  1
	  [21] .debug_abbrev     PROGBITS        00000000 240367 03454d 00      0   0  1
	  [22] .debug_aranges    PROGBITS        00000000 2748b8 0058b8 00      0   0  8
	  [23] .debug_frame      PROGBITS        00000000 27a170 00fd78 00      0   0  4
	  [24] .debug_str        PROGBITS        00000000 289ee8 0281a9 01  MS  0   0  1
	  [25] .debug_loc        PROGBITS        00000000 2b2091 07d5c5 00      0   0  1
	  [26] .debug_ranges     PROGBITS        00000000 32f658 00c850 00      0   0  8
	  [27] .shstrtab         STRTAB          00000000 36228b 00012b 00      0   0  1
	  [28] .symtab           SYMTAB          00000000 33bea8 01bef0 10     29 5910  4
	  [29] .strtab           STRTAB          00000000 357d98 00a4f3 00      0   0  1
	Key to Flags:
	  W (write), A (alloc), X (execute), M (merge), S (strings)
	  I (info), L (link order), G (group), T (TLS), E (exclude), x (unknown)
	  O (extra OS processing required) o (OS specific), p (processor specific)

	Program Headers:
	  Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
	  PHDR           0x000034 0x00010034 0x00000000 0x000a0 0x000a0 R E 0x4
	  INTERP         0x06266c 0x0005266c 0x0005266c 0x00011 0x00011 R   0x1
	      [Requesting program interpreter: /usr/lib/ld.so.1]
	  LOAD           0x010000 0x00000000 0x00000000 0x5267d 0x5267d RWE 0x10000
	  DYNAMIC        0x0625e4 0x000525e4 0x000525e4 0x00088 0x00088 RW  0x4
	  GNU_STACK      0x000000 0x00000000 0x00000000 0x00000 0x00000 RWE 0x10

	 Section to Segment mapping:
	  Segment Sections...
	   00     
	   01     .interp 
	   02     .text .rodata .hash .data .got.plt .u_boot_list .efi_runtime .efi_runtime_rel .rel.dyn .dynsym .dynstr .dynamic .interp 
	   03     .dynamic 
	   04     


bad:

	ELF Header:
	  Magic:   7f 45 4c 46 01 01 01 00 00 00 00 00 00 00 00 00 
	  Class:                             ELF32
	  Data:                              2's complement, little endian
	  Version:                           1 (current)
	  OS/ABI:                            UNIX - System V
	  ABI Version:                       0
	  Type:                              DYN (Shared object file)
	  Machine:                           ARM
	  Version:                           0x1
	  Entry point address:               0x0
	  Start of program headers:          52 (bytes into file)
	  Start of section headers:          3548048 (bytes into file)
	  Flags:                             0x5000200, Version5 EABI, soft-float ABI
	  Size of this header:               52 (bytes)
	  Size of program headers:           32 (bytes)
	  Number of program headers:         5
	  Size of section headers:           40 (bytes)
	  Number of section headers:         30
	  Section header string table index: 27

	Section Headers:
	  [Nr] Name              Type            Addr     Off    Size   ES Flg Lk Inf Al
	  [ 0]                   NULL            00000000 000000 000000 00      0   0  0
	  [ 1] .text             PROGBITS        00000000 010000 0301a4 00  AX  0   0 32
	  [ 2] .rodata           PROGBITS        000301a8 0401a8 0134b8 00   A  0   0  8
	  [ 3] .hash             HASH            00043660 053660 000018 04   A 13   0  4
	  [ 4] .data             PROGBITS        00043678 053678 00296c 00  WA  0   0  8
	  [ 5] .got.plt          PROGBITS        00045fe4 055fe4 00000c 04  WA  0   0  4
	  [ 6] .u_boot_list      PROGBITS        00045ff0 055ff0 001b3c 00  WA  0   0  4
	  [ 7] .efi_runtime      PROGBITS        00047b30 057b30 000100 00 WAX  0   0  8
	  [ 8] .efi_runtime_rel  REL             00047c30 057c30 000090 08   A 13   0  4
	  [ 9] .rel.dyn          REL             00047cc0 057cc0 00a8c8 08   A 13   0  4
	  [10] .bss_start        PROGBITS        00047cc0 062655 000000 00   W  0   0  1
	  [11] .bss              NOBITS          00047cc0 000000 03d128 00  WA  0   0 64
	  [12] .bss_end          PROGBITS        00084de8 062655 000000 00   W  0   0  1
	  [13] .dynsym           DYNSYM          00052588 062588 000030 10   A 14   3  4
	  [14] .dynstr           STRTAB          000525b8 0625b8 000001 00   A  0   0  1
	  [15] .dynamic          DYNAMIC         000525bc 0625bc 000088 08  WA 14   0  4
	  [16] .interp           PROGBITS        00052644 062644 000011 00   A  0   0  1
	  [17] .ARM.attributes   ARM_ATTRIBUTES  00000000 062655 000029 00      0   0  1
	  [18] .comment          PROGBITS        00000000 06267e 000011 01  MS  0   0  1
	  [19] .debug_line       PROGBITS        00000000 06268f 0556f7 00      0   0  1
	  [20] .debug_info       PROGBITS        00000000 0b7d86 1885b9 00      0   0  1
	  [21] .debug_abbrev     PROGBITS        00000000 24033f 03454d 00      0   0  1
	  [22] .debug_aranges    PROGBITS        00000000 274890 0058b8 00      0   0  8
	  [23] .debug_frame      PROGBITS        00000000 27a148 00fd78 00      0   0  4
	  [24] .debug_str        PROGBITS        00000000 289ec0 0281a9 01  MS  0   0  1
	  [25] .debug_loc        PROGBITS        00000000 2b2069 07d5c5 00      0   0  1
	  [26] .debug_ranges     PROGBITS        00000000 32f630 00c850 00      0   0  8
	  [27] .shstrtab         STRTAB          00000000 362263 00012b 00      0   0  1
	  [28] .symtab           SYMTAB          00000000 33be80 01bef0 10     29 5910  4
	  [29] .strtab           STRTAB          00000000 357d70 00a4f3 00      0   0  1
	Key to Flags:
	  W (write), A (alloc), X (execute), M (merge), S (strings)
	  I (info), L (link order), G (group), T (TLS), E (exclude), x (unknown)
	  O (extra OS processing required) o (OS specific), p (processor specific)

	Program Headers:
	  Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
	  PHDR           0x000034 0x00010034 0x00000000 0x000a0 0x000a0 R E 0x4
	  INTERP         0x062644 0x00052644 0x00052644 0x00011 0x00011 R   0x1
	      [Requesting program interpreter: /usr/lib/ld.so.1]
	  LOAD           0x010000 0x00000000 0x00000000 0x52655 0x52655 RWE 0x10000
	  DYNAMIC        0x0625bc 0x000525bc 0x000525bc 0x00088 0x00088 RW  0x4
	  GNU_STACK      0x000000 0x00000000 0x00000000 0x00000 0x00000 RWE 0x10

	 Section to Segment mapping:
	  Segment Sections...
	   00     
	   01     .interp 
	   02     .text .rodata .hash .data .got.plt .u_boot_list .efi_runtime .efi_runtime_rel .rel.dyn .dynsym .dynstr .dynamic .interp 
	   03     .dynamic 
	   04     



diff:
	--- 2.27-without-N/readelf-e    2017-03-09 08:58:04.863789960 -0500
	+++ build-with-2.28-link-with-2.27/readelf-e    2017-03-09 08:57:44.535757956 -0500
	@@ -10,7 +10,7 @@
	   Version:                           0x1
	   Entry point address:               0x0
	   Start of program headers:          52 (bytes into file)
	-  Start of section headers:          3548088 (bytes into file)
	+  Start of section headers:          3548048 (bytes into file)
	   Flags:                             0x5000200, Version5 EABI, soft-float ABI
	   Size of this header:               52 (bytes)
	   Size of program headers:           32 (bytes)
	@@ -23,34 +23,34 @@
	   [Nr] Name              Type            Addr     Off    Size   ES Flg Lk Inf Al
	   [ 0]                   NULL            00000000 000000 000000 00      0   0  0
	   [ 1] .text             PROGBITS        00000000 010000 0301a4 00  AX  0   0 32
	-  [ 2] .rodata           PROGBITS        000301a8 0401a8 0134dc 00   A  0   0  8
	-  [ 3] .hash             HASH            00043684 053684 000018 04   A 13   0  4
	-  [ 4] .data             PROGBITS        000436a0 0536a0 00296c 00  WA  0   0  8
	-  [ 5] .got.plt          PROGBITS        0004600c 05600c 00000c 04  WA  0   0  4
	-  [ 6] .u_boot_list      PROGBITS        00046018 056018 001b3c 00  WA  0   0  4
	-  [ 7] .efi_runtime      PROGBITS        00047b58 057b58 000100 00 WAX  0   0  8
	-  [ 8] .efi_runtime_rel  REL             00047c58 057c58 000090 08   A 13   0  4
	-  [ 9] .rel.dyn          REL             00047ce8 057ce8 00a8c8 08   A 13   0  4
	-  [10] .bss_start        PROGBITS        00047ce8 06267d 000000 00   W  0   0  1
	-  [11] .bss              NOBITS          00047ce8 000000 03d100 00  WA  0   0 64
	-  [12] .bss_end          PROGBITS        00084de8 06267d 000000 00   W  0   0  1
	-  [13] .dynsym           DYNSYM          000525b0 0625b0 000030 10   A 14   3  4
	-  [14] .dynstr           STRTAB          000525e0 0625e0 000001 00   A  0   0  1
	-  [15] .dynamic          DYNAMIC         000525e4 0625e4 000088 08  WA 14   0  4
	-  [16] .interp           PROGBITS        0005266c 06266c 000011 00   A  0   0  1
	-  [17] .ARM.attributes   ARM_ATTRIBUTES  00000000 06267d 000029 00      0   0  1
	-  [18] .comment          PROGBITS        00000000 0626a6 000011 01  MS  0   0  1
	-  [19] .debug_line       PROGBITS        00000000 0626b7 0556f7 00      0   0  1
	-  [20] .debug_info       PROGBITS        00000000 0b7dae 1885b9 00      0   0  1
	-  [21] .debug_abbrev     PROGBITS        00000000 240367 03454d 00      0   0  1
	-  [22] .debug_aranges    PROGBITS        00000000 2748b8 0058b8 00      0   0  8
	-  [23] .debug_frame      PROGBITS        00000000 27a170 00fd78 00      0   0  4
	-  [24] .debug_str        PROGBITS        00000000 289ee8 0281a9 01  MS  0   0  1
	-  [25] .debug_loc        PROGBITS        00000000 2b2091 07d5c5 00      0   0  1
	-  [26] .debug_ranges     PROGBITS        00000000 32f658 00c850 00      0   0  8
	-  [27] .shstrtab         STRTAB          00000000 36228b 00012b 00      0   0  1
	-  [28] .symtab           SYMTAB          00000000 33bea8 01bef0 10     29 5910  4
	-  [29] .strtab           STRTAB          00000000 357d98 00a4f3 00      0   0  1
	+  [ 2] .rodata           PROGBITS        000301a8 0401a8 0134b8 00   A  0   0  8
	+  [ 3] .hash             HASH            00043660 053660 000018 04   A 13   0  4
	+  [ 4] .data             PROGBITS        00043678 053678 00296c 00  WA  0   0  8
	+  [ 5] .got.plt          PROGBITS        00045fe4 055fe4 00000c 04  WA  0   0  4
	+  [ 6] .u_boot_list      PROGBITS        00045ff0 055ff0 001b3c 00  WA  0   0  4
	+  [ 7] .efi_runtime      PROGBITS        00047b30 057b30 000100 00 WAX  0   0  8
	+  [ 8] .efi_runtime_rel  REL             00047c30 057c30 000090 08   A 13   0  4
	+  [ 9] .rel.dyn          REL             00047cc0 057cc0 00a8c8 08   A 13   0  4
	+  [10] .bss_start        PROGBITS        00047cc0 062655 000000 00   W  0   0  1
	+  [11] .bss              NOBITS          00047cc0 000000 03d128 00  WA  0   0 64
	+  [12] .bss_end          PROGBITS        00084de8 062655 000000 00   W  0   0  1
	+  [13] .dynsym           DYNSYM          00052588 062588 000030 10   A 14   3  4
	+  [14] .dynstr           STRTAB          000525b8 0625b8 000001 00   A  0   0  1
	+  [15] .dynamic          DYNAMIC         000525bc 0625bc 000088 08  WA 14   0  4
	+  [16] .interp           PROGBITS        00052644 062644 000011 00   A  0   0  1
	+  [17] .ARM.attributes   ARM_ATTRIBUTES  00000000 062655 000029 00      0   0  1
	+  [18] .comment          PROGBITS        00000000 06267e 000011 01  MS  0   0  1
	+  [19] .debug_line       PROGBITS        00000000 06268f 0556f7 00      0   0  1
	+  [20] .debug_info       PROGBITS        00000000 0b7d86 1885b9 00      0   0  1
	+  [21] .debug_abbrev     PROGBITS        00000000 24033f 03454d 00      0   0  1
	+  [22] .debug_aranges    PROGBITS        00000000 274890 0058b8 00      0   0  8
	+  [23] .debug_frame      PROGBITS        00000000 27a148 00fd78 00      0   0  4
	+  [24] .debug_str        PROGBITS        00000000 289ec0 0281a9 01  MS  0   0  1
	+  [25] .debug_loc        PROGBITS        00000000 2b2069 07d5c5 00      0   0  1
	+  [26] .debug_ranges     PROGBITS        00000000 32f630 00c850 00      0   0  8
	+  [27] .shstrtab         STRTAB          00000000 362263 00012b 00      0   0  1
	+  [28] .symtab           SYMTAB          00000000 33be80 01bef0 10     29 5910  4
	+  [29] .strtab           STRTAB          00000000 357d70 00a4f3 00      0   0  1
	 Key to Flags:
	   W (write), A (alloc), X (execute), M (merge), S (strings)
	   I (info), L (link order), G (group), T (TLS), E (exclude), x (unknown)
	@@ -59,10 +59,10 @@
	 Program Headers:
	   Type           Offset   VirtAddr   PhysAddr   FileSiz MemSiz  Flg Align
	   PHDR           0x000034 0x00010034 0x00000000 0x000a0 0x000a0 R E 0x4
	-  INTERP         0x06266c 0x0005266c 0x0005266c 0x00011 0x00011 R   0x1
	+  INTERP         0x062644 0x00052644 0x00052644 0x00011 0x00011 R   0x1
	       [Requesting program interpreter: /usr/lib/ld.so.1]
	-  LOAD           0x010000 0x00000000 0x00000000 0x5267d 0x5267d RWE 0x10000
	-  DYNAMIC        0x0625e4 0x000525e4 0x000525e4 0x00088 0x00088 RW  0x4
	+  LOAD           0x010000 0x00000000 0x00000000 0x52655 0x52655 RWE 0x10000
	+  DYNAMIC        0x0625bc 0x000525bc 0x000525bc 0x00088 0x00088 RW  0x4
	   GNU_STACK      0x000000 0x00000000 0x00000000 0x00000 0x00000 RWE 0x10
	 
	  Section to Segment mapping:

> > Looking at the top couple lines of a diff between the map files of a
> > binutils-2.27 build and this frankenbuild (both with SPL, neither with -N)
> > gives:
> > 
> > 	--- 2.27-without-N/u-boot.map   2017-03-08 13:26:26.966147350 -0500
> > 	+++ build-with-2.28-link-with-2.27/u-boot.map   2017-03-08 23:48:43.593173398 -0500
> > 	@@ -5442,7 +5442,7 @@
> > 	  .iplt          0x00000000000301a4        0x0 arch/arm/cpu/armv7/start.o
> > 			 0x00000000000301a4                . = ALIGN (0x4)
> > 	 
> > 	-.rodata         0x00000000000301a8    0x134dc
> > 	+.rodata         0x00000000000301a8    0x134b8
> > 	  *(SORT(.rodata*))
> > 	  .rodata.efi_boot_services
> > 			 0x00000000000301a8       0xc8 lib/built-in.o
> > 	@@ -5859,4836 +5859,4836 @@
> > 	  .rodata.cb_erase.str1.1
> > 			 0x0000000000033745       0x60 drivers/usb/gadget/built-in.o
> > 	  .rodata.cb_getvar.str1.1
> > 	-                0x00000000000337a5       0xfc drivers/usb/gadget/built-in.o
> > 	-                                        0x10c (size before relaxing)
> > 	+                0x00000000000337a5       0xea drivers/usb/gadget/built-in.o
> > 	+                                         0xfa (size before relaxing)
> 
> It will be interesting to see what changed in .rodata.cb_getvar.str1.1
> section here but I think that might not be the cause of the issue here. Can
> you go into drivers/usb/gadget/ and do readelf -a built-in.o

Doing that produces a text file 1MB in size. Searching through this output
there are no occurrences of ".rodata.cb_getvar.str1.1" but there are several
".rodata.cb_getvar.str1" (not sure if those are the same).

Diffing the "readelf -a" output from a "good" build and a "bad" build
produces:


	--- 2.27-without-N/readelf-a	2017-03-09 09:15:59.657873928 -0500
	+++ build-with-2.28-link-with-2.27/readelf-a	2017-03-09 09:15:33.513805387 -0500
	@@ -17,227 +17,227 @@
	   Number of program headers:         0
	   Size of section headers:           40 (bytes)
	   Number of section headers:         361
	-  Section header string table index: 358
	+  Section header string table index: 360
	 
	 Section Headers:
	   [Nr] Name              Type            Addr     Off    Size   ES Flg Lk Inf Al
	   [ 0]                   NULL            00000000 000000 000000 00      0   0  0
	   [ 1] .text             PROGBITS        00000000 000034 000000 00  AX  0   0  1
	   [ 2] .text.usb_ep_auto PROGBITS        00000000 000034 00011c 00  AX  0   0  4
	-  [ 3] .rel.text.usb_ep_ REL             00000000 03b4e8 000020 08   I 359   2  4
	+  [ 3] .rel.text.usb_ep_ REL             00000000 03b4e8 000020 08   I 358   2  4
	   [ 4] .text.usb_ep_auto PROGBITS        00000000 000150 000028 00  AX  0   0  4
	-  [ 5] .rel.text.usb_ep_ REL             00000000 03b508 000008 08   I 359   4  4
	+  [ 5] .rel.text.usb_ep_ REL             00000000 03b508 000008 08   I 358   4  4
	   [ 6] .text.usb_descrip PROGBITS        00000000 000178 000038 00  AX  0   0  2
	-  [ 7] .rel.text.usb_des REL             00000000 03b510 000008 08   I 359   6  4
	+  [ 7] .rel.text.usb_des REL             00000000 03b510 000008 08   I 358   6  4
	   [ 8] .text.usb_gadget_ PROGBITS        00000000 0001b0 000054 00  AX  0   0  2
	-  [ 9] .rel.text.usb_gad REL             00000000 03b518 000010 08   I 359   8  4
	+  [ 9] .rel.text.usb_gad REL             00000000 03b518 000010 08   I 358   8  4
	   [10] .text.usb_gadget_ PROGBITS        00000000 000204 0000e4 00  AX  0   0  2
	-  [11] .rel.text.usb_gad REL             00000000 03b528 000010 08   I 359  10  4
	+  [11] .rel.text.usb_gad REL             00000000 03b528 000010 08   I 358  10  4
	   [12] .text.dwc2_udc_pr PROGBITS        00000000 0002e8 000040 00  AX  0   0  4
	-  [13] .rel.text.dwc2_ud REL             00000000 03b538 000010 08   I 359  12  4
	+  [13] .rel.text.dwc2_ud REL             00000000 03b538 000010 08   I 358  12  4
	   [14] .text.udc_set_add PROGBITS        00000000 000328 000060 00  AX  0   0  4
	-  [15] .rel.text.udc_set REL             00000000 03b548 000010 08   I 359  14  4
	+  [15] .rel.text.udc_set REL             00000000 03b548 000010 08   I 358  14  4
	   [16] .text.dwc2_udc_ep PROGBITS        00000000 000388 000044 00  AX  0   0  4
	-  [17] .rel.text.dwc2_ud REL             00000000 03b558 000008 08   I 359  16  4
	+  [17] .rel.text.dwc2_ud REL             00000000 03b558 000008 08   I 358  16  4
	   [18] .text.dwc2_udc_ep PROGBITS        00000000 0003cc 000098 00  AX  0   0  4
	-  [19] .rel.text.dwc2_ud REL             00000000 03b560 000008 08   I 359  18  4
	+  [19] .rel.text.dwc2_ud REL             00000000 03b560 000008 08   I 358  18  4
	   [20] .text.udc_reinit  PROGBITS        00000000 000464 00004c 00  AX  0   0  2
	   [21] .text.set_max_pkt PROGBITS        00000000 0004b0 00006c 00  AX  0   0  4
	-  [22] .rel.text.set_max REL             00000000 03b568 000018 08   I 359  21  4
	+  [22] .rel.text.set_max REL             00000000 03b568 000018 08   I 358  21  4
	   [23] .text.dwc2_fifo_s PROGBITS        00000000 00051c 000018 00  AX  0   0  2
	   [24] .text.dwc2_fifo_f PROGBITS        00000000 000534 000002 00  AX  0   0  2
	   [25] .text.done        PROGBITS        00000000 000536 000034 00  AX  0   0  2
	   [26] .text.nuke        PROGBITS        00000000 00056a 00001e 00  AX  0   0  2
	-  [27] .rel.text.nuke    REL             00000000 03b580 000008 08   I 359  26  4
	+  [27] .rel.text.nuke    REL             00000000 03b580 000008 08   I 358  26  4
	   [28] .text.dwc2_ep_dis PROGBITS        00000000 000588 000024 00  AX  0   0  2
	-  [29] .rel.text.dwc2_ep REL             00000000 03b588 000008 08   I 359  28  4
	+  [29] .rel.text.dwc2_ep REL             00000000 03b588 000008 08   I 358  28  4
	   [30] .text.dwc2_dequeu PROGBITS        00000000 0005ac 000044 00  AX  0   0  4
	-  [31] .rel.text.dwc2_de REL             00000000 03b590 000010 08   I 359  30  4
	+  [31] .rel.text.dwc2_de REL             00000000 03b590 000010 08   I 358  30  4
	   [32] .text.setdma_tx   PROGBITS        00000000 0005f0 0000bc 00  AX  0   0  4
	-  [33] .rel.text.setdma_ REL             00000000 03b5a0 000018 08   I 359  32  4
	+  [33] .rel.text.setdma_ REL             00000000 03b5a0 000018 08   I 358  32  4
	   [34] .text.write_fifo_ PROGBITS        00000000 0006ac 00002e 00  AX  0   0  2
	-  [35] .rel.text.write_f REL             00000000 03b5b8 000008 08   I 359  34  4
	+  [35] .rel.text.write_f REL             00000000 03b5b8 000008 08   I 358  34  4
	   [36] .text.setdma_rx   PROGBITS        00000000 0006dc 0000a0 00  AX  0   0  4
	-  [37] .rel.text.setdma_ REL             00000000 03b5c0 000018 08   I 359  36  4
	+  [37] .rel.text.setdma_ REL             00000000 03b5c0 000018 08   I 358  36  4
	   [38] .text.complete_rx PROGBITS        00000000 00077c 000110 00  AX  0   0  4
	-  [39] .rel.text.complet REL             00000000 03b5d8 000030 08   I 359  38  4
	+  [39] .rel.text.complet REL             00000000 03b5d8 000030 08   I 358  38  4
	   [40] .text.dwc2_free_r PROGBITS        00000000 00088c 00002c 00  AX  0   0  4
	-  [41] .rel.text.dwc2_fr REL             00000000 03b608 000020 08   I 359  40  4
	+  [41] .rel.text.dwc2_fr REL             00000000 03b608 000020 08   I 358  40  4
	   [42] .text.dwc2_alloc_ PROGBITS        00000000 0008b8 000022 00  AX  0   0  2
	-  [43] .rel.text.dwc2_al REL             00000000 03b628 000010 08   I 359  42  4
	+  [43] .rel.text.dwc2_al REL             00000000 03b628 000010 08   I 358  42  4
	   [44] .text.dwc2_udc_ep PROGBITS        00000000 0008dc 00004c 00  AX  0   0  4
	-  [45] .rel.text.dwc2_ud REL             00000000 03b638 000008 08   I 359  44  4
	+  [45] .rel.text.dwc2_ud REL             00000000 03b638 000008 08   I 358  44  4
	   [46] .text.dwc2_udc_se PROGBITS        00000000 000928 000058 00  AX  0   0  2
	-  [47] .rel.text.dwc2_ud REL             00000000 03b640 000010 08   I 359  46  4
	+  [47] .rel.text.dwc2_ud REL             00000000 03b640 000010 08   I 358  46  4
	   [48] .text.dwc2_ep_ena PROGBITS        00000000 000980 0000c0 00  AX  0   0  4
	-  [49] .rel.text.dwc2_ep REL             00000000 03b650 000020 08   I 359  48  4
	+  [49] .rel.text.dwc2_ep REL             00000000 03b650 000020 08   I 358  48  4
	   [50] .text.reconfig_us PROGBITS        00000000 000a40 00018c 00  AX  0   0  4
	-  [51] .rel.text.reconfi REL             00000000 03b670 000018 08   I 359  50  4
	+  [51] .rel.text.reconfi REL             00000000 03b670 000018 08   I 358  50  4
	   [52] .text.dwc2_queue  PROGBITS        00000000 000bcc 000194 00  AX  0   0  4
	-  [53] .rel.text.dwc2_qu REL             00000000 03b688 000070 08   I 359  52  4
	+  [53] .rel.text.dwc2_qu REL             00000000 03b688 000070 08   I 358  52  4
	   [54] .text.set_udc_gad PROGBITS        00000000 000d60 00000c 00  AX  0   0  4
	-  [55] .rel.text.set_udc REL             00000000 03b6f8 000008 08   I 359  54  4
	+  [55] .rel.text.set_udc REL             00000000 03b6f8 000008 08   I 358  54  4
	   [56] .text.get_udc_gad PROGBITS        00000000 000d6c 000004 00  AX  0   0  2
	   [57] .text.dfu_usb_get PROGBITS        00000000 000d70 000014 00  AX  0   0  4
	-  [58] .rel.text.dfu_usb REL             00000000 03b700 000008 08   I 359  57  4
	+  [58] .rel.text.dfu_usb REL             00000000 03b700 000008 08   I 358  57  4
	   [59] .text.otg_phy_ini PROGBITS        00000000 000d84 000002 00  AX  0   0  2
	   [60] .text.otg_phy_off PROGBITS        00000000 000d86 000002 00  AX  0   0  2
	   [61] .text.usb_gadget_ PROGBITS        00000000 000d88 00005c 00  AX  0   0  4
	-  [62] .rel.text.usb_gad REL             00000000 03b708 000018 08   I 359  61  4
	+  [62] .rel.text.usb_gad REL             00000000 03b708 000018 08   I 358  61  4
	   [63] .text.usb_gadget_ PROGBITS        00000000 000de4 000090 00  AX  0   0  4
	-  [64] .rel.text.usb_gad REL             00000000 03b720 000028 08   I 359  63  4
	+  [64] .rel.text.usb_gad REL             00000000 03b720 000028 08   I 358  63  4
	   [65] .text.dwc2_udc_pr PROGBITS        00000000 000e74 000070 00  AX  0   0  4
	-  [66] .rel.text.dwc2_ud REL             00000000 03b748 000058 08   I 359  65  4
	+  [66] .rel.text.dwc2_ud REL             00000000 03b748 000058 08   I 358  65  4
	   [67] .text.usb_gadget_ PROGBITS        00000000 000ee4 0006f8 00  AX  0   0  4
	-  [68] .rel.text.usb_gad REL             00000000 03b7a0 000130 08   I 359  67  4
	+  [68] .rel.text.usb_gad REL             00000000 03b7a0 000130 08   I 358  67  4
	   [69] .text.count_confi PROGBITS        00000000 0015dc 000048 00  AX  0   0  2
	   [70] .text.collect_lan PROGBITS        00000000 001624 00002a 00  AX  0   0  2
	   [71] .text.composite_s PROGBITS        00000000 00164e 000002 00  AX  0   0  2
	   [72] .text.composite_s PROGBITS        00000000 001650 000040 00  AX  0   0  4
	-  [73] .rel.text.composi REL             00000000 03b8d0 000008 08   I 359  72  4
	+  [73] .rel.text.composi REL             00000000 03b8d0 000008 08   I 358  72  4
	   [74] .text.composite_r PROGBITS        00000000 001690 000040 00  AX  0   0  4
	-  [75] .rel.text.composi REL             00000000 03b8d8 000008 08   I 359  74  4
	+  [75] .rel.text.composi REL             00000000 03b8d8 000008 08   I 358  74  4
	   [76] .text.g_dnl_unbin PROGBITS        00000000 0016d0 000012 00  AX  0   0  2
	   [77] .text.lookup_stri PROGBITS        00000000 0016e2 00002a 00  AX  0   0  2
	-  [78] .rel.text.lookup_ REL             00000000 03b8e0 000008 08   I 359  77  4
	+  [78] .rel.text.lookup_ REL             00000000 03b8e0 000008 08   I 358  77  4
	   [79] .text.composite_u PROGBITS        00000000 00170c 0000b4 00  AX  0   0  4
	-  [80] .rel.text.composi REL             00000000 03b8e8 000050 08   I 359  79  4
	+  [80] .rel.text.composi REL             00000000 03b8e8 000050 08   I 358  79  4
	   [81] .text.composite_b PROGBITS        00000000 0017c0 0000ac 00  AX  0   0  4
	-  [82] .rel.text.composi REL             00000000 03b938 000038 08   I 359  81  4
	+  [82] .rel.text.composi REL             00000000 03b938 000038 08   I 358  81  4
	   [83] .text.g_dnl_do_co PROGBITS        00000000 00186c 00003c 00  AX  0   0  4
	-  [84] .rel.text.g_dnl_d REL             00000000 03b970 000018 08   I 359  83  4
	+  [84] .rel.text.g_dnl_d REL             00000000 03b970 000018 08   I 358  83  4
	   [85] .text.reset_confi PROGBITS        00000000 0018a8 00002c 00  AX  0   0  2
	   [86] .text.composite_d PROGBITS        00000000 0018d4 000028 00  AX  0   0  4
	-  [87] .rel.text.composi REL             00000000 03b988 000010 08   I 359  86  4
	+  [87] .rel.text.composi REL             00000000 03b988 000010 08   I 358  86  4
	   [88] .text.composite_s PROGBITS        00000000 0018fc 000528 00  AX  0   0  4
	-  [89] .rel.text.composi REL             00000000 03b998 000080 08   I 359  88  4
	+  [89] .rel.text.composi REL             00000000 03b998 000080 08   I 358  88  4
	   [90] .text.usb_add_fun PROGBITS        00000000 001e24 000074 00  AX  0   0  2
	   [91] .text.usb_functio PROGBITS        00000000 001e98 00002a 00  AX  0   0  2
	   [92] .text.usb_functio PROGBITS        00000000 001ec2 00002a 00  AX  0   0  2
	   [93] .text.usb_interfa PROGBITS        00000000 001eec 000020 00  AX  0   0  2
	   [94] .text.usb_add_con PROGBITS        00000000 001f0c 00007a 00  AX  0   0  2
	-  [95] .rel.text.usb_add REL             00000000 03ba18 000008 08   I 359  94  4
	+  [95] .rel.text.usb_add REL             00000000 03ba18 000008 08   I 358  94  4
	   [96] .text.usb_string_ PROGBITS        00000000 001f86 00001a 00  AX  0   0  2
	   [97] .text.usb_string_ PROGBITS        00000000 001fa0 000028 00  AX  0   0  2
	   [98] .text.usb_string_ PROGBITS        00000000 001fc8 00001c 00  AX  0   0  2
	   [99] .text.usb_composi PROGBITS        00000000 001fe4 00003c 00  AX  0   0  4
	-  [100] .rel.text.usb_com REL             00000000 03ba20 000020 08   I 359  99  4
	+  [100] .rel.text.usb_com REL             00000000 03ba20 000020 08   I 358  99  4
	   [101] .text.usb_composi PROGBITS        00000000 002020 000020 00  AX  0   0  4
	-  [102] .rel.text.usb_com REL             00000000 03ba40 000018 08   I 359 101  4
	+  [102] .rel.text.usb_com REL             00000000 03ba40 000018 08   I 358 101  4
	   [103] .text.g_dnl_set_s PROGBITS        00000000 002040 000024 00  AX  0   0  4
	-  [104] .rel.text.g_dnl_s REL             00000000 03ba58 000018 08   I 359 103  4
	+  [104] .rel.text.g_dnl_s REL             00000000 03ba58 000018 08   I 358 103  4
	   [105] .text.board_usb_i PROGBITS        00000000 002064 000004 00  AX  0   0  2
	   [106] .text.board_usb_c PROGBITS        00000000 002068 000004 00  AX  0   0  2
	   [107] .text.g_dnl_bind_ PROGBITS        00000000 00206c 000004 00  AX  0   0  2
	   [108] .text.g_dnl_get_b PROGBITS        00000000 002070 000002 00  AX  0   0  2
	   [109] .text.g_dnl_bind  PROGBITS        00000000 002074 0000c0 00  AX  0   0  4
	-  [110] .rel.text.g_dnl_b REL             00000000 03ba70 000068 08   I 359 109  4
	+  [110] .rel.text.g_dnl_b REL             00000000 03ba70 000068 08   I 358 109  4
	   [111] .text.g_dnl_board PROGBITS        00000000 002134 000006 00  AX  0   0  2
	   [112] .text.g_dnl_detac PROGBITS        00000000 00213c 00000c 00  AX  0   0  4
	-  [113] .rel.text.g_dnl_d REL             00000000 03bad8 000008 08   I 359 112  4
	+  [113] .rel.text.g_dnl_d REL             00000000 03bad8 000008 08   I 358 112  4
	   [114] .text.g_dnl_trigg PROGBITS        00000000 002148 00000c 00  AX  0   0  4
	-  [115] .rel.text.g_dnl_t REL             00000000 03bae0 000008 08   I 359 114  4
	+  [115] .rel.text.g_dnl_t REL             00000000 03bae0 000008 08   I 358 114  4
	   [116] .text.g_dnl_clear PROGBITS        00000000 002154 00000c 00  AX  0   0  4
	-  [117] .rel.text.g_dnl_c REL             00000000 03bae8 000008 08   I 359 116  4
	+  [117] .rel.text.g_dnl_c REL             00000000 03bae8 000008 08   I 358 116  4
	   [118] .text.g_dnl_regis PROGBITS        00000000 002160 00002c 00  AX  0   0  4
	-  [119] .rel.text.g_dnl_r REL             00000000 03baf0 000028 08   I 359 118  4
	+  [119] .rel.text.g_dnl_r REL             00000000 03baf0 000028 08   I 358 118  4
	   [120] .text.g_dnl_unreg PROGBITS        00000000 00218c 00000c 00  AX  0   0  4
	-  [121] .rel.text.g_dnl_u REL             00000000 03bb18 000010 08   I 359 120  4
	+  [121] .rel.text.g_dnl_u REL             00000000 03bb18 000010 08   I 358 120  4
	   [122] .text.raise_excep PROGBITS        00000000 002198 00001a 00  AX  0   0  2
	   [123] .text.ep0_queue   PROGBITS        00000000 0021b2 000016 00  AX  0   0  2
	   [124] .text.bulk_in_com PROGBITS        00000000 0021c8 000022 00  AX  0   0  2
	   [125] .text.bulk_out_co PROGBITS        00000000 0021ea 000022 00  AX  0   0  2
	   [126] .text.fsg_set_alt PROGBITS        00000000 00220c 000012 00  AX  0   0  2
	-  [127] .rel.text.fsg_set REL             00000000 03bb28 000008 08   I 359 126  4
	+  [127] .rel.text.fsg_set REL             00000000 03bb28 000008 08   I 358 126  4
	   [128] .text.fsg_disable PROGBITS        00000000 00221e 00000c 00  AX  0   0  2
	-  [129] .rel.text.fsg_dis REL             00000000 03bb30 000008 08   I 359 128  4
	+  [129] .rel.text.fsg_dis REL             00000000 03bb30 000008 08   I 358 128  4
	   [130] .text.fsg_setup   PROGBITS        00000000 00222c 000098 00  AX  0   0  4
	-  [131] .rel.text.fsg_set REL             00000000 03bb38 000028 08   I 359 130  4
	+  [131] .rel.text.fsg_set REL             00000000 03bb38 000028 08   I 358 130  4
	   [132] .text.fsg_unbind  PROGBITS        00000000 0022c4 00002c 00  AX  0   0  2
	-  [133] .rel.text.fsg_unb REL             00000000 03bb60 000020 08   I 359 132  4
	+  [133] .rel.text.fsg_unb REL             00000000 03bb60 000020 08   I 358 132  4
	   [134] .text.store_cdrom PROGBITS        00000000 0022f0 000050 00  AX  0   0  4
	-  [135] .rel.text.store_c REL             00000000 03bb80 000010 08   I 359 134  4
	+  [135] .rel.text.store_c REL             00000000 03bb80 000010 08   I 358 134  4
	   [136] .text.fsg_set_hal PROGBITS        00000000 002340 000008 00  AX  0   0  2
	   [137] .text.start_trans PROGBITS        00000000 002348 000020 00  AX  0   0  2
	   [138] .text.halt_bulk_i PROGBITS        00000000 002368 00001e 00  AX  0   0  2
	-  [139] .rel.text.halt_bu REL             00000000 03bb90 000008 08   I 359 138  4
	+  [139] .rel.text.halt_bu REL             00000000 03bb90 000008 08   I 358 138  4
	   [140] .text.sleep_threa PROGBITS        00000000 002388 000094 00  AX  0   0  4
	-  [141] .rel.text.sleep_t REL             00000000 03bb98 000048 08   I 359 140  4
	+  [141] .rel.text.sleep_t REL             00000000 03bb98 000048 08   I 358 140  4
	   [142] .text.do_read     PROGBITS        00000000 00241c 0001ac 00  AX  0   0  4
	-  [143] .rel.text.do_read REL             00000000 03bbe0 000030 08   I 359 142  4
	+  [143] .rel.text.do_read REL             00000000 03bbe0 000030 08   I 358 142  4
	   [144] .text.do_write    PROGBITS        00000000 0025c8 000288 00  AX  0   0  4
	-  [145] .rel.text.do_writ REL             00000000 03bc10 000040 08   I 359 144  4
	+  [145] .rel.text.do_writ REL             00000000 03bc10 000040 08   I 358 144  4
	   [146] .text.send_status PROGBITS        00000000 002850 0000a8 00  AX  0   0  4
	-  [147] .rel.text.send_st REL             00000000 03bc50 000028 08   I 359 146  4
	+  [147] .rel.text.send_st REL             00000000 03bc50 000028 08   I 358 146  4
	   [148] .text.check_comma PROGBITS        00000000 0028f8 00010c 00  AX  0   0  4
	-  [149] .rel.text.check_c REL             00000000 03bc78 000018 08   I 359 148  4
	+  [149] .rel.text.check_c REL             00000000 03bc78 000018 08   I 358 148  4
	   [150] .text.do_mode_sen PROGBITS        00000000 002a04 0000fc 00  AX  0   0  4
	-  [151] .rel.text.do_mode REL             00000000 03bc90 000010 08   I 359 150  4
	+  [151] .rel.text.do_mode REL             00000000 03bc90 000010 08   I 358 150  4
	   [152] .text.fsg_add     PROGBITS        00000000 002b00 00022c 00  AX  0   0  4
	-  [153] .rel.text.fsg_add REL             00000000 03bca0 0000e8 08   I 359 152  4
	+  [153] .rel.text.fsg_add REL             00000000 03bca0 0000e8 08   I 358 152  4
	   [154] .text.do_set_inte PROGBITS        00000000 002d2c 000180 00  AX  0   0  4
	-  [155] .rel.text.do_set_ REL             00000000 03bd88 000030 08   I 359 154  4
	+  [155] .rel.text.do_set_ REL             00000000 03bd88 000030 08   I 358 154  4
	   [156] .text.set_bit     PROGBITS        00000000 002eac 000018 00  AX  0   0  2
	   [157] .text.clear_bit   PROGBITS        00000000 002ec4 00001a 00  AX  0   0  2
	   [158] .text.fsg_main_th PROGBITS        00000000 002ee0 000dd4 00  AX  0   0  4
	-  [159] .rel.text.fsg_mai REL             00000000 03bdb8 000258 08   I 359 158  4
	+  [159] .rel.text.fsg_mai REL             00000000 03bdb8 000258 08   I 358 158  4
	   [160] .text.usb_copy_de PROGBITS        00000000 003cb4 000048 00  AX  0   0  2
	-  [161] .rel.text.usb_cop REL             00000000 03c010 000010 08   I 359 160  4
	+  [161] .rel.text.usb_cop REL             00000000 03c010 000010 08   I 358 160  4
	   [162] .text.fsg_bind    PROGBITS        00000000 003cfc 000094 00  AX  0   0  4
	-  [163] .rel.text.fsg_bin REL             00000000 03c020 000068 08   I 359 162  4
	+  [163] .rel.text.fsg_bin REL             00000000 03c020 000068 08   I 358 162  4
	   [164] .text.fsg_init    PROGBITS        00000000 003d90 000014 00  AX  0   0  4
	-  [165] .rel.text.fsg_ini REL             00000000 03c088 000010 08   I 359 164  4
	+  [165] .rel.text.fsg_ini REL             00000000 03c088 000010 08   I 358 164  4
	   [166] .text.rx_bytes_ex PROGBITS        00000000 003da4 00003c 00  AX  0   0  4
	-  [167] .rel.text.rx_byte REL             00000000 03c098 000018 08   I 359 166  4
	+  [167] .rel.text.rx_byte REL             00000000 03c098 000018 08   I 358 166  4
	   [168] .text.fastboot_st PROGBITS        00000000 003de0 00003c 00  AX  0   0  2
	-  [169] .rel.text.fastboo REL             00000000 03c0b0 000010 08   I 359 168  4
	+  [169] .rel.text.fastboo REL             00000000 03c0b0 000010 08   I 358 168  4
	   [170] .text.fastboot_un PROGBITS        00000000 003e1c 000010 00  AX  0   0  4
	-  [171] .rel.text.fastboo REL             00000000 03c0c0 000010 08   I 359 170  4
	+  [171] .rel.text.fastboo REL             00000000 03c0c0 000010 08   I 358 170  4
	   [172] .text.fastboot_ad PROGBITS        00000000 003e2c 000074 00  AX  0   0  4
	-  [173] .rel.text.fastboo REL             00000000 03c0d0 000058 08   I 359 172  4
	+  [173] .rel.text.fastboo REL             00000000 03c0d0 000058 08   I 358 172  4
	   [174] .text.fastboot_di PROGBITS        00000000 003ea0 000046 00  AX  0   0  2
	-  [175] .rel.text.fastboo REL             00000000 03c128 000010 08   I 359 174  4
	+  [175] .rel.text.fastboo REL             00000000 03c128 000010 08   I 358 174  4
	   [176] .text.fastboot_se PROGBITS        00000000 003ee8 0000bc 00  AX  0   0  4
	-  [177] .rel.text.fastboo REL             00000000 03c138 000080 08   I 359 176  4
	+  [177] .rel.text.fastboo REL             00000000 03c138 000080 08   I 358 176  4
	   [178] .text.fastboot_co PROGBITS        00000000 003fa4 000018 00  AX  0   0  4
	-  [179] .rel.text.fastboo REL             00000000 03c1b8 000010 08   I 359 178  4
	+  [179] .rel.text.fastboo REL             00000000 03c1b8 000010 08   I 358 178  4
	   [180] .text.do_exit_on_ PROGBITS        00000000 003fbc 000004 00  AX  0   0  2
	-  [181] .rel.text.do_exit REL             00000000 03c1c8 000008 08   I 359 180  4
	+  [181] .rel.text.do_exit REL             00000000 03c1c8 000008 08   I 358 180  4
	   [182] .text.do_bootm_on PROGBITS        00000000 003fc0 000050 00  AX  0   0  4
	-  [183] .rel.text.do_boot REL             00000000 03c1d0 000040 08   I 359 182  4
	+  [183] .rel.text.do_boot REL             00000000 03c1d0 000040 08   I 358 182  4
	   [184] .text.compl_do_re PROGBITS        00000000 004010 00000c 00  AX  0   0  2
	-  [185] .rel.text.compl_d REL             00000000 03c210 000008 08   I 359 184  4
	+  [185] .rel.text.compl_d REL             00000000 03c210 000008 08   I 358 184  4
	   [186] .text.strcmp_l1   PROGBITS        00000000 00401c 000022 00  AX  0   0  2
	-  [187] .rel.text.strcmp_ REL             00000000 03c218 000010 08   I 359 186  4
	+  [187] .rel.text.strcmp_ REL             00000000 03c218 000010 08   I 358 186  4
	   [188] .text.fastboot_tx PROGBITS        00000000 004040 00004c 00  AX  0   0  4
	-  [189] .rel.text.fastboo REL             00000000 03c228 000028 08   I 359 188  4
	+  [189] .rel.text.fastboo REL             00000000 03c228 000028 08   I 358 188  4
	   [190] .text.rx_handler_ PROGBITS        00000000 00408c 0000b0 00  AX  0   0  4
	-  [191] .rel.text.rx_hand REL             00000000 03c250 000058 08   I 359 190  4
	+  [191] .rel.text.rx_hand REL             00000000 03c250 000058 08   I 358 190  4
	   [192] .text.cb_continue PROGBITS        00000000 00413c 00001c 00  AX  0   0  4
	-  [193] .rel.text.cb_cont REL             00000000 03c2a8 000020 08   I 359 192  4
	+  [193] .rel.text.cb_cont REL             00000000 03c2a8 000020 08   I 358 192  4
	   [194] .text.cb_boot     PROGBITS        00000000 004158 00001c 00  AX  0   0  4
	-  [195] .rel.text.cb_boot REL             00000000 03c2c8 000020 08   I 359 194  4
	+  [195] .rel.text.cb_boot REL             00000000 03c2c8 000020 08   I 358 194  4
	   [196] .text.cb_download PROGBITS        00000000 004174 00008c 00  AX  0   0  4
	-  [197] .rel.text.cb_down REL             00000000 03c2e8 000078 08   I 359 196  4
	+  [197] .rel.text.cb_down REL             00000000 03c2e8 000078 08   I 358 196  4
	   [198] .text.rx_handler_ PROGBITS        00000000 004200 0000c4 00  AX  0   0  4
	-  [199] .rel.text.rx_hand REL             00000000 03c360 000078 08   I 359 198  4
	+  [199] .rel.text.rx_hand REL             00000000 03c360 000078 08   I 358 198  4
	   [200] .text.cb_getvar   PROGBITS        00000000 0042c4 000120 00  AX  0   0  4
	-  [201] .rel.text.cb_getv REL             00000000 03c3d8 000120 08   I 359 200  4
	+  [201] .rel.text.cb_getv REL             00000000 03c3d8 000120 08   I 358 200  4
	   [202] .text.fastboot_bi PROGBITS        00000000 0043e4 0000ac 00  AX  0   0  4
	-  [203] .rel.text.fastboo REL             00000000 03c4f8 000078 08   I 359 202  4
	+  [203] .rel.text.fastboo REL             00000000 03c4f8 000078 08   I 358 202  4
	   [204] .text.cb_oem      PROGBITS        00000000 004490 000068 00  AX  0   0  4
	-  [205] .rel.text.cb_oem  REL             00000000 03c570 000060 08   I 359 204  4
	+  [205] .rel.text.cb_oem  REL             00000000 03c570 000060 08   I 358 204  4
	   [206] .text.fastboot_fa PROGBITS        00000000 0044f8 000028 00  AX  0   0  4
	-  [207] .rel.text.fastboo REL             00000000 03c5d0 000020 08   I 359 206  4
	+  [207] .rel.text.fastboo REL             00000000 03c5d0 000020 08   I 358 206  4
	   [208] .text.cb_erase    PROGBITS        00000000 004520 000060 00  AX  0   0  4
	-  [209] .rel.text.cb_eras REL             00000000 03c5f0 000060 08   I 359 208  4
	+  [209] .rel.text.cb_eras REL             00000000 03c5f0 000060 08   I 358 208  4
	   [210] .text.cb_flash    PROGBITS        00000000 004580 000070 00  AX  0   0  4
	-  [211] .rel.text.cb_flas REL             00000000 03c650 000068 08   I 359 210  4
	+  [211] .rel.text.cb_flas REL             00000000 03c650 000068 08   I 358 210  4
	   [212] .text.fastboot_ok PROGBITS        00000000 0045f0 000028 00  AX  0   0  4
	-  [213] .rel.text.fastboo REL             00000000 03c6b8 000020 08   I 359 212  4
	+  [213] .rel.text.fastboo REL             00000000 03c6b8 000020 08   I 358 212  4
	   [214] .text.fb_set_rebo PROGBITS        00000000 004618 000006 00  AX  0   0  2
	   [215] .text.cb_reboot   PROGBITS        00000000 004620 000040 00  AX  0   0  4
	-  [216] .rel.text.cb_rebo REL             00000000 03c6d8 000040 08   I 359 215  4
	+  [216] .rel.text.cb_rebo REL             00000000 03c6d8 000040 08   I 358 215  4
	   [217] .rodata           PROGBITS        00000000 004660 00000c 00   A  0   0  1
	   [218] .rodata.__FUNCTIO PROGBITS        00000000 00466c 00000e 00   A  0   0  1
	   [219] .rodata.__func__. PROGBITS        00000000 00467a 00000f 00   A  0   0  1
	@@ -277,7 +277,7 @@
	   [253] .rodata.cb_oem.st PROGBITS        00000000 004d1c 00005c 01 AMS  0   0  1
	   [254] .rodata.cb_reboot PROGBITS        00000000 004d78 00002d 01 AMS  0   0  1
	   [255] .rodata.cmd_dispa PROGBITS        00000000 004da8 000040 00   A  0   0  4
	-  [256] .rel.rodata.cmd_d REL             00000000 03c718 000080 08   I 359 255  4
	+  [256] .rel.rodata.cmd_d REL             00000000 03c718 000080 08   I 358 255  4
	   [257] .rodata.do_bootm_ PROGBITS        00000000 004de8 00001e 01 AMS  0   0  1
	   [258] .rodata.fastboot_ PROGBITS        00000000 004e06 00000b 01 AMS  0   0  1
	   [259] .rodata.fastboot_ PROGBITS        00000000 004e11 00001e 01 AMS  0   0  1
	@@ -288,59 +288,59 @@
	   [264] .rodata.rx_handle PROGBITS        00000000 004fb2 000033 01 AMS  0   0  1
	   [265] .data             PROGBITS        00000000 004fe5 000000 00  WA  0   0  1
	   [266] .data.dwc2_ep_ops PROGBITS        00000000 004fe8 000028 00  WA  0   0  4
	-  [267] .rel.data.dwc2_ep REL             00000000 03c798 000048 08   I 359 266  4
	+  [267] .rel.data.dwc2_ep REL             00000000 03c798 000048 08   I 358 266  4
	   [268] .data.ep0_fifo_si PROGBITS        00000000 005010 000004 00  WA  0   0  4
	   [269] .data.ep_fifo_siz PROGBITS        00000000 005014 000004 00  WA  0   0  4
	   [270] .data.memory      PROGBITS        00000000 005018 000180 00  WA  0   0  4
	-  [271] .rel.data.memory  REL             00000000 03c7e0 000078 08   I 359 270  4
	+  [271] .rel.data.memory  REL             00000000 03c7e0 000078 08   I 358 270  4
	   [272] .data.reset_avail PROGBITS        00000000 005198 000004 00  WA  0   0  4
	   [273] .data.composite_d PROGBITS        00000000 00519c 000024 00  WA  0   0  4
	-  [274] .rel.data.composi REL             00000000 03c858 000038 08   I 359 273  4
	+  [274] .rel.data.composi REL             00000000 03c858 000038 08   I 358 273  4
	   [275] .data.device_desc PROGBITS        00000000 0051c0 000012 00  WA  0   0  1
	   [276] .data.g_dnl_compo PROGBITS        00000000 0051d4 000008 00  WA  0   0  4
	-  [277] .rel.data.g_dnl_c REL             00000000 03c890 000008 08   I 359 276  4
	+  [277] .rel.data.g_dnl_c REL             00000000 03c890 000008 08   I 358 276  4
	   [278] .data.g_dnl_drive PROGBITS        00000000 0051dc 000020 00  WA  0   0  4
	-  [279] .rel.data.g_dnl_d REL             00000000 03c898 000020 08   I 359 278  4
	+  [279] .rel.data.g_dnl_d REL             00000000 03c898 000020 08   I 358 278  4
	   [280] .data.g_dnl_strin PROGBITS        00000000 0051fc 000020 00  WA  0   0  4
	-  [281] .rel.data.g_dnl_s REL             00000000 03c8b8 000018 08   I 359 280  4
	+  [281] .rel.data.g_dnl_s REL             00000000 03c8b8 000018 08   I 358 280  4
	   [282] .data.g_dnl_strin PROGBITS        00000000 00521c 000008 00  WA  0   0  4
	-  [283] .rel.data.g_dnl_s REL             00000000 03c8d0 000008 08   I 359 282  4
	+  [283] .rel.data.g_dnl_s REL             00000000 03c8d0 000008 08   I 358 282  4
	   [284] .u_boot_list_2_g_ PROGBITS        00000000 005224 000000 00  WA  0   0  4
	   [285] .u_boot_list_2_g_ PROGBITS        00000000 005224 000000 00  WA  0   0  4
	   [286] .data.fsg_fs_bulk PROGBITS        00000000 005224 000009 00  WA  0   0  1
	   [287] .data.fsg_fs_bulk PROGBITS        00000000 00522d 000009 00  WA  0   0  1
	   [288] .data.fsg_fs_func PROGBITS        00000000 005238 000010 00  WA  0   0  4
	-  [289] .rel.data.fsg_fs_ REL             00000000 03c8d8 000018 08   I 359 288  4
	+  [289] .rel.data.fsg_fs_ REL             00000000 03c8d8 000018 08   I 358 288  4
	   [290] .data.fsg_hs_bulk PROGBITS        00000000 005248 000009 00  WA  0   0  1
	   [291] .data.fsg_hs_bulk PROGBITS        00000000 005251 000009 00  WA  0   0  1
	   [292] .data.fsg_hs_func PROGBITS        00000000 00525c 000010 00  WA  0   0  4
	-  [293] .rel.data.fsg_hs_ REL             00000000 03c8f0 000018 08   I 359 292  4
	+  [293] .rel.data.fsg_hs_ REL             00000000 03c8f0 000018 08   I 358 292  4
	   [294] .data.fsg_intf_de PROGBITS        00000000 00526c 000009 00  WA  0   0  1
	   [295] .data.fsg_strings PROGBITS        00000000 005278 000010 00  WA  0   0  4
	-  [296] .rel.data.fsg_str REL             00000000 03c908 000008 08   I 359 295  4
	+  [296] .rel.data.fsg_str REL             00000000 03c908 000008 08   I 358 295  4
	   [297] .data.fsg_strings PROGBITS        00000000 005288 000008 00  WA  0   0  4
	-  [298] .rel.data.fsg_str REL             00000000 03c910 000008 08   I 359 297  4
	+  [298] .rel.data.fsg_str REL             00000000 03c910 000008 08   I 358 297  4
	   [299] .data.fsg_stringt PROGBITS        00000000 005290 000008 00  WA  0   0  4
	-  [300] .rel.data.fsg_str REL             00000000 03c918 000008 08   I 359 299  4
	+  [300] .rel.data.fsg_str REL             00000000 03c918 000008 08   I 358 299  4
	   [301] .u_boot_list_2_g_ PROGBITS        00000000 005298 000008 00  WA  0   0  4
	-  [302] .rel.u_boot_list_ REL             00000000 03c920 000010 08   I 359 301  4
	+  [302] .rel.u_boot_list_ REL             00000000 03c920 000010 08   I 358 301  4
	   [303] .data.fastboot_st PROGBITS        00000000 0052a0 000010 00  WA  0   0  4
	-  [304] .rel.data.fastboo REL             00000000 03c930 000008 08   I 359 303  4
	+  [304] .rel.data.fastboo REL             00000000 03c930 000008 08   I 358 303  4
	   [305] .data.fastboot_st PROGBITS        00000000 0052b0 000008 00  WA  0   0  4
	-  [306] .rel.data.fastboo REL             00000000 03c938 000008 08   I 359 305  4
	+  [306] .rel.data.fastboo REL             00000000 03c938 000008 08   I 358 305  4
	   [307] .data.fb_fs_funct PROGBITS        00000000 0052b8 00000c 00  WA  0   0  4
	-  [308] .rel.data.fb_fs_f REL             00000000 03c940 000018 08   I 359 307  4
	+  [308] .rel.data.fb_fs_f REL             00000000 03c940 000018 08   I 358 307  4
	   [309] .data.fb_hs_funct PROGBITS        00000000 0052c4 000010 00  WA  0   0  4
	-  [310] .rel.data.fb_hs_f REL             00000000 03c958 000018 08   I 359 309  4
	+  [310] .rel.data.fb_hs_f REL             00000000 03c958 000018 08   I 358 309  4
	   [311] .data.fs_ep_in    PROGBITS        00000000 0052d4 000009 00  WA  0   0  1
	   [312] .data.fs_ep_out   PROGBITS        00000000 0052dd 000009 00  WA  0   0  1
	   [313] .data.hs_ep_in    PROGBITS        00000000 0052e6 000009 00  WA  0   0  1
	   [314] .data.hs_ep_out   PROGBITS        00000000 0052ef 000009 00  WA  0   0  1
	   [315] .data.interface_d PROGBITS        00000000 0052f8 000009 00  WA  0   0  1
	   [316] .data.stringtab_f PROGBITS        00000000 005304 000008 00  WA  0   0  4
	-  [317] .rel.data.stringt REL             00000000 03c970 000008 08   I 359 316  4
	+  [317] .rel.data.stringt REL             00000000 03c970 000008 08   I 358 316  4
	   [318] .u_boot_list_2_g_ PROGBITS        00000000 00530c 000008 00  WA  0   0  4
	-  [319] .rel.u_boot_list_ REL             00000000 03c978 000010 08   I 359 318  4
	+  [319] .rel.u_boot_list_ REL             00000000 03c978 000010 08   I 358 318  4
	   [320] .bss              NOBITS          00000000 005314 000000 00  WA  0   0  1
	   [321] .bss.epnum        NOBITS          00000000 005314 000004 00  WA  0   0  4
	   [322] .bss.clear_featur NOBITS          00000000 005314 000004 00  WA  0   0  4
	@@ -366,22 +366,22 @@
	   [342] .note.GNU-stack   PROGBITS        00000000 005392 000000 00      0   0  1
	   [343] .ARM.attributes   ARM_ATTRIBUTES  00000000 005392 00002d 00      0   0  1
	   [344] .debug_aranges    PROGBITS        00000000 0053bf 000478 00      0   0  1
	-  [345] .rel.debug_arange REL             00000000 03c988 000408 08   I 359 344  4
	+  [345] .rel.debug_arange REL             00000000 03c988 000408 08   I 358 344  4
	   [346] .debug_info       PROGBITS        00000000 005837 015a91 00      0   0  1
	-  [347] .rel.debug_info   REL             00000000 03cd90 00bf40 08   I 359 346  4
	+  [347] .rel.debug_info   REL             00000000 03cd90 00bf40 08   I 358 346  4
	   [348] .debug_abbrev     PROGBITS        00000000 01b2c8 00223e 00      0   0  1
	   [349] .debug_line       PROGBITS        00000000 01d506 00446f 00      0   0  1
	-  [350] .rel.debug_line   REL             00000000 048cd0 0003d0 08   I 359 349  4
	+  [350] .rel.debug_line   REL             00000000 048cd0 0003d0 08   I 358 349  4
	   [351] .debug_frame      PROGBITS        00000000 021978 000db8 00      0   0  4
	-  [352] .rel.debug_frame  REL             00000000 0490a0 0007c0 08   I 359 351  4
	+  [352] .rel.debug_frame  REL             00000000 0490a0 0007c0 08   I 358 351  4
	   [353] .debug_str        PROGBITS        00000000 022730 0095cc 01  MS  0   0  1
	   [354] .debug_loc        PROGBITS        00000000 02bcfc 00a092 00      0   0  1
	-  [355] .rel.debug_loc    REL             00000000 049860 00a280 08   I 359 354  4
	+  [355] .rel.debug_loc    REL             00000000 049860 00a280 08   I 358 354  4
	   [356] .debug_ranges     PROGBITS        00000000 035d8e 0016f8 00      0   0  1
	-  [357] .rel.debug_ranges REL             00000000 053ae0 002260 08   I 359 356  4
	-  [358] .shstrtab         STRTAB          00000000 055d40 00174e 00      0   0  1
	-  [359] .symtab           SYMTAB          00000000 037488 003230 10     360 720  4
	-  [360] .strtab           STRTAB          00000000 03a6b8 000e2e 00      0   0  1
	+  [357] .rel.debug_ranges REL             00000000 053ae0 002260 08   I 358 356  4
	+  [358] .symtab           SYMTAB          00000000 037488 003230 10     359 720  4
	+  [359] .strtab           STRTAB          00000000 03a6b8 000e2e 00      0   0  1
	+  [360] .shstrtab         STRTAB          00000000 055d40 00174e 00      0   0  1
	 Key to Flags:
	   W (write), A (alloc), X (execute), M (merge), S (strings)
	   I (info), L (link order), G (group), T (TLS), E (exclude), x (unknown)

