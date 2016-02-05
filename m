Return-Path: <nathan@nathan.to>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 08F2EE00D2F; Fri,  5 Feb 2016 10:07:43 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [208.72.237.35 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from sasl.smtp.pobox.com (pb-smtp0.int.icgroup.com [208.72.237.35])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E489DE00D2C
	for <yocto@yoctoproject.org>; Fri,  5 Feb 2016 10:07:39 -0800 (PST)
Received: from sasl.smtp.pobox.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 72D0A40C3D;
	Fri,  5 Feb 2016 13:07:37 -0500 (EST)
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed; d=pobox.com; h=content-type
	:mime-version:subject:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to; s=sasl; bh=
	IRrvqwTgARt/INS9FGJKqpxmM4w=; b=pNyiy+4RNPrkgTHyHpsi0xwQY1M6HaaU
	Cuq/7EMnlZ2xSmOs81rBGqn9lmtUwLFcHFlAce7YvD1SAeMnX5RJe3eCQMZjIc4E
	1OlB/wa5po+kQ0bf5Ng8QN3ptFn2NYiN76nbqycXadNYgN28XcTSzmU6Tz9teCyL
	opQ4euAJSuQ=
Received: from pb-smtp0.int.icgroup.com (unknown [127.0.0.1])
	by pb-smtp0.pobox.com (Postfix) with ESMTP id 66A7F40C3C;
	Fri,  5 Feb 2016 13:07:37 -0500 (EST)
Received: from [10.41.136.109] (unknown [83.61.76.185])
	(using TLSv1 with cipher ECDHE-RSA-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by pb-smtp0.pobox.com (Postfix) with ESMTPSA id DA48C40C36;
	Fri,  5 Feb 2016 13:07:34 -0500 (EST)
Mime-Version: 1.0 (Mac OS X Mail 9.3 \(3119\))
From: Nathan Sowatskey <nathan@nathan.to>
In-Reply-To: <1454695095703.96261@seescan.com>
Date: Fri, 5 Feb 2016 19:06:23 +0100
Message-Id: <B76A5407-9941-4767-AB82-F7D35F9C37B9@nathan.to>
References: <7534F688-4CCB-468C-9E52-813388BC391C@nathan.to>
	<CAJTo0La9vryBMou_wnKKdmdC61Kgu7u2JL+vpx1RY+s7Gbe7QA@mail.gmail.com>
	<2D89126E-8678-494A-A98B-5F5D5723E860@nathan.to>
	<CAJTo0LbbM_TXswmQxbqP5yr4Pf9geh7Ru6=iD3nHNHscC8q-nQ@mail.gmail.com>
	<30E23744-25E6-43C3-A831-A8195E8787C9@nathan.to>
	<1454695095703.96261@seescan.com>
To: Fred Ollinger <Fred.Ollinger@seescan.com>,
	"Burton, Ross" <ross.burton@intel.com>
X-Mailer: Apple Mail (2.3119)
X-Pobox-Relay-ID: 5617F47A-CC33-11E5-8DE3-79226BB36C07-96844961!pb-smtp0.pobox.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: libgcc_s not present in Yocto image
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
X-List-Received-Date: Fri, 05 Feb 2016 18:07:43 -0000
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Thanks guys :-) Suggestions played out below.

find /lib -name libgcc_s.so.1
/lib/libgcc_s.so.1

So, that *is* there. Doh!

file /usr/bin/testprog
/usr/bin/testprog: ELF 64-bit LSB executable, x86-64, version 1 (SYSV), =
dynamically linked, interpreter /lib64/ld-linux-x86-64.so.2, for =
GNU/Linux 2.6.24, =
BuildID[sha1]=3D26317096ed83d21bc6808f0d2d47b12de1ab31ce, not stripped

objdump -p /usr/bin/testprog=20

/usr/bin/testprog:     file format elf64-x86-64

Program Header:
    PHDR off    0x0000000000000040 vaddr 0x0000000000400040 paddr =
0x0000000000400040 align 2**3
         filesz 0x00000000000001f8 memsz 0x00000000000001f8 flags r-x
  INTERP off    0x0000000000000238 vaddr 0x0000000000400238 paddr =
0x0000000000400238 align 2**0
         filesz 0x000000000000001c memsz 0x000000000000001c flags r--
    LOAD off    0x0000000000000000 vaddr 0x0000000000400000 paddr =
0x0000000000400000 align 2**21
         filesz 0x0000000000009e40 memsz 0x0000000000009e40 flags r-x
    LOAD off    0x000000000000ad50 vaddr 0x000000000060ad50 paddr =
0x000000000060ad50 align 2**21
         filesz 0x00000000000005e0 memsz 0x00000000000005e8 flags rw-
 DYNAMIC off    0x000000000000ad78 vaddr 0x000000000060ad78 paddr =
0x000000000060ad78 align 2**3
         filesz 0x0000000000000240 memsz 0x0000000000000240 flags rw-
    NOTE off    0x0000000000000254 vaddr 0x0000000000400254 paddr =
0x0000000000400254 align 2**2
         filesz 0x0000000000000044 memsz 0x0000000000000044 flags r--
EH_FRAME off    0x0000000000008468 vaddr 0x0000000000408468 paddr =
0x0000000000408468 align 2**2
         filesz 0x00000000000004c4 memsz 0x00000000000004c4 flags r--
   STACK off    0x0000000000000000 vaddr 0x0000000000000000 paddr =
0x0000000000000000 align 2**4
         filesz 0x0000000000000000 memsz 0x0000000000000000 flags rw-
   RELRO off    0x000000000000ad50 vaddr 0x000000000060ad50 paddr =
0x000000000060ad50 align 2**0
         filesz 0x00000000000002b0 memsz 0x00000000000002b0 flags r--

Dynamic Section:
  NEEDED               libsnmp.so.30
  NEEDED               libQt5Network.so.5
  NEEDED               libQt5SerialPort.so.5
  NEEDED               libQt5Core.so.5
  NEEDED               libstdc++.so.6
  NEEDED               libgcc_s.so.1
  NEEDED               libpthread.so.0
  NEEDED               libc.so.6
  INIT                 0x00000000004054b0
  FINI                 0x00000000004083c4
  INIT_ARRAY           0x000000000060ad50
  INIT_ARRAYSZ         0x0000000000000010
  FINI_ARRAY           0x000000000060ad60
  FINI_ARRAYSZ         0x0000000000000008
  GNU_HASH             0x0000000000400298
  STRTAB               0x0000000000402460
  SYMTAB               0x00000000004008b8
  STRSZ                0x00000000000023a6
  SYMENT               0x0000000000000018
  DEBUG                0x0000000000000000
  PLTGOT               0x000000000060b000
  PLTRELSZ             0x00000000000008d0
  PLTREL               0x0000000000000007
  JMPREL               0x0000000000404be0
  RELA                 0x0000000000404b08
  RELASZ               0x00000000000000d8
  RELAENT              0x0000000000000018
  VERNEED              0x0000000000404a58
  VERNEEDNUM           0x0000000000000004
  VERSYM               0x0000000000404806

Version References:
  required from libgcc_s.so.1:
    0x0b792650 0x00 08 GCC_3.0
  required from libpthread.so.0:
    0x09691a75 0x00 05 GLIBC_2.2.5
  required from libc.so.6:
    0x09691a75 0x00 07 GLIBC_2.2.5
    0x0d696914 0x00 06 GLIBC_2.4
    0x06969194 0x00 03 GLIBC_2.14
  required from libstdc++.so.6:
    0x08922974 0x00 04 GLIBCXX_3.4
    0x056bafd3 0x00 02 CXXABI_1.3



> On 5 Feb 2016, at 19:00, Fred Ollinger <Fred.Ollinger@seescan.com> =
wrote:
>=20
> What are results of:
>=20
> $ file testprog
>=20
> Frederick
> ________________________________________
> From: Nathan Sowatskey <nathan@nathan.to>
> Sent: Friday, February 5, 2016 9:47 AM
> To: Burton, Ross
> Cc: yocto@yoctoproject.org; Fred Ollinger
> Subject: Re: [yocto] libgcc_s not present in Yocto image
>=20
> Hi Ross
>=20
> Many thanks for following up. Fred also offered some helpful =
suggestions in a different thread.
>=20
> The program in question was supplied to me by a third party for =
testing, so I shall obscure the name here and call it testprog.
>=20
> It was installed by:
>=20
> dpkg -i ./testprog.deb
>=20
>=20
> Where the .deb file was supplied to me. I don=92t know what that was =
built on though.
>=20
> Then:
>=20
> which testprog
> /usr/bin/testprog
> /usr/bin/testprog
> -sh: /usr/bin/testprog: No such file or directory
>=20
> Then I:
>=20
> readelf -a /usr/bin/testprog | grep Shared
> 0x0000000000000001 (NEEDED)             Shared library: =
[libsnmp.so.30]
> 0x0000000000000001 (NEEDED)             Shared library: =
[libQt5Network.so.5]
> 0x0000000000000001 (NEEDED)             Shared library: =
[libQt5SerialPort.so.5]
> 0x0000000000000001 (NEEDED)             Shared library: =
[libQt5Core.so.5]
> 0x0000000000000001 (NEEDED)             Shared library: =
[libstdc++.so.6]
> 0x0000000000000001 (NEEDED)             Shared library: =
[libgcc_s.so.1]
> 0x0000000000000001 (NEEDED)             Shared library: =
[libpthread.so.0]
> 0x0000000000000001 (NEEDED)             Shared library: [libc.so.6]
>=20
> Followed by:
>=20
> find /usr/lib -name libQt5Network.so.5
> /usr/lib/libQt5Network.so.5
>=20
> So, I have that lib.
>=20
> find /usr/lib -name libgcc_s.so.1
> root@qemux86-64:~#
>=20
> I don=92t have that lib.
>=20
> With ldd I get:
>=20
> ldd /usr/bin/testprog
> /usr/bin/ldd: line 117: /usr/bin/testprog: No such file or directory
>=20
> So, that=92s where I am at this stage.
>=20
> Regards
>=20
> Nathan
>=20
>> On 5 Feb 2016, at 16:50, Burton, Ross <ross.burton@intel.com> wrote:
>>=20
>>=20
>> On 5 February 2016 at 15:24, Nathan Sowatskey <nathan@nathan.to> =
wrote:
>> I suspect that my test program, which was supplied to me as a .deb =
package, was compiled on Ubuntu, and so links to libgcc_s.so.1. I can=92t =
see any obvious way to get libgcc_s.so.1 on Yocto. I already have:
>>=20
>> libgcc contains /lib/libgcc_s.so.1, so it should be installed in your =
image already:
>>=20
>> How are you determining that it isn't in your image, and that your =
application doesn't work?
>>=20
>> Ross
>=20


