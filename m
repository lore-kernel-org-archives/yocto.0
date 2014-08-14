Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C89D9E007A1; Thu, 14 Aug 2014 05:39:28 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 79F16E0079A
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 05:39:18 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h3so4822499igd.2
	for <yocto@yoctoproject.org>; Thu, 14 Aug 2014 05:39:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=AA9ls4gQ9SchcGXvT9K1Jsr9lf8H9dg9WjY2RzY48Eg=;
	b=rI+JU86PWef/fiK301erU14/twY8IevWe5IRu2R1rZi8GObfBqAQS675caGZKrb4ck
	J26bvoKKayLUj86LxlNOgcPEnJ4oBVNaLPnhyD0EATV4o+el5z8Q0eYqwuz7/k4wdYmQ
	T27jTNPMiIlk1u85PscDQIh/zPi7LRpfPmW/jxYQ8MBdovlHUyKnujhjcqLLxJAuQ5tW
	4lsTPavGQm1k6HyztDHmKAOXFf7SFqRH4Cf0q0HilOEXMrVBes/YY1NZAcILz65Qa6He
	s+Zk9872HqqWHbdH5TdLJevCP2DhblmljSmjSzby1hRrYy65V308BgJCfYe5FcV0ARiE
	z0ag==
MIME-Version: 1.0
X-Received: by 10.42.247.80 with SMTP id mb16mr14199507icb.38.1408019957739;
	Thu, 14 Aug 2014 05:39:17 -0700 (PDT)
Received: by 10.64.232.36 with HTTP; Thu, 14 Aug 2014 05:39:17 -0700 (PDT)
Received: by 10.64.232.36 with HTTP; Thu, 14 Aug 2014 05:39:17 -0700 (PDT)
In-Reply-To: <d83d174900974afe9e993337abf55b35@HKNPR03MB354.apcprd03.prod.outlook.com>
References: <70c818031fe4471ea683fc552b9ad1b5@HKNPR03MB354.apcprd03.prod.outlook.com>
	<d83d174900974afe9e993337abf55b35@HKNPR03MB354.apcprd03.prod.outlook.com>
Date: Thu, 14 Aug 2014 18:09:17 +0530
Message-ID: <CAH21_vFThtJ6WtBzT8CMd8grdNwbXOGNAsO79cZB5f_SOx6_cw@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Building toolchain(meta-toolchain) issue for mips
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
X-List-Received-Date: Thu, 14 Aug 2014 12:39:28 -0000
Content-Type: multipart/alternative; boundary=90e6ba1f01986af733050096313c

--90e6ba1f01986af733050096313c
Content-Type: text/plain; charset=UTF-8

Hi Folks,



I am trying to build toolchain, but while building I am getting following
warning:

                WARNING: QA Issue: gcc-cross-canadian-mips64-n32: found
library in wrong location:
/usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/libexec/mips64-windriver-linux-gnun32/gcc/mips64-windriver-linux-gnun32/4.9.1/liblto_plugin.so.0.0.0

gcc-cross-canadian-mips64-n32: found library in wrong location:
/usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/libexec/mips64-windriver-linux-gnun32/gcc/mips64-windriver-linux-gnun32/4.9.1/liblto_plugin.so

gcc-cross-canadian-mips64-n32: found library in wrong location:
/usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/libexec/mips64-windriver-linux-gnun32/gcc/mips64-windriver-linux-gnun32/4.9.1/liblto_plugin.so.0
[libdir]



                Matched in
manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips64.populate_sysroot

manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips32r2.populate_sysroot


/data/home/asingh/Yocto/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/share/gdb/syscalls/mips-n32-linux.xml

   Matched in
manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips64.populate_sysroot

manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips32r2.populate_sysroot


/data/home/asingh/Yocto/poky/build/tmp/sysroots/x86_64-nativesdk-pokysdk-linux/usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/share/gdb/syscalls/arm-linux.xml



Thanks and Regards,

ATUL KUMAR SINGH



This message contains information that may be privileged or confidential
and is the property of the KPIT Technologies Ltd. It is intended only for
the person to whom it is addressed. If you are not the intended recipient,
you are not authorized to read, print, retain copy, disseminate,
distribute, or use this message or any part thereof. If you receive this
message in error, please notify the sender immediately and delete all
copies of this message. KPIT Technologies Ltd. does not accept any
liability for virus infected mails.

--90e6ba1f01986af733050096313c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi Folks,</p>
<p>=C2=A0</p>
<p>I am trying to build toolchain, but while building I am getting followin=
g warning:</p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 WARNING: QA Issue: gcc-cross-canadian-mips64-n32: found =
library in wrong location: /usr/local/windriver/sysroots/x86_64-pokysdk-lin=
ux/usr/libexec/mips64-windriver-linux-gnun32/gcc/mips64-windriver-linux-gnu=
n32/4.9.1/liblto_plugin.so.0.0.0</p>

<p>gcc-cross-canadian-mips64-n32: found library in wrong location: /usr/loc=
al/windriver/sysroots/x86_64-pokysdk-linux/usr/libexec/mips64-windriver-lin=
ux-gnun32/gcc/mips64-windriver-linux-gnun32/4.9.1/liblto_plugin.so</p>

<p>gcc-cross-canadian-mips64-n32: found library in wrong location: /usr/loc=
al/windriver/sysroots/x86_64-pokysdk-linux/usr/libexec/mips64-windriver-lin=
ux-gnun32/gcc/mips64-windriver-linux-gnun32/4.9.1/liblto_plugin.so.0 [libdi=
r]</p>

<p>=C2=A0</p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 Matched in manifest-x86_64_x86_64-nativesdk-gdb-cross-ca=
nadian-mips64.populate_sysroot</p>
<p>manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips32r2.populate_sy=
sroot</p>
<p>=C2=A0=C2=A0 /data/home/asingh/Yocto/poky/build/tmp/sysroots/x86_64-nati=
vesdk-pokysdk-linux/usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/s=
hare/gdb/syscalls/mips-n32-linux.xml</p>
<p>=C2=A0=C2=A0 Matched in manifest-x86_64_x86_64-nativesdk-gdb-cross-canad=
ian-mips64.populate_sysroot</p>
<p>manifest-x86_64_x86_64-nativesdk-gdb-cross-canadian-mips32r2.populate_sy=
sroot</p>
<p>=C2=A0=C2=A0 /data/home/asingh/Yocto/poky/build/tmp/sysroots/x86_64-nati=
vesdk-pokysdk-linux/usr/local/windriver/sysroots/x86_64-pokysdk-linux/usr/s=
hare/gdb/syscalls/arm-linux.xml</p>
<p>=C2=A0</p>
<p>Thanks and Regards,</p>
<p>ATUL KUMAR SINGH</p>
<p>=C2=A0</p>
<p>This message contains information that may be privileged or confidential=
 and is the property of the KPIT Technologies Ltd. It is intended only for =
the person to whom it is addressed. If you are not the intended recipient, =
you are not authorized to read, print, retain copy, disseminate, distribute=
, or use this message or any part thereof. If you receive this message in e=
rror, please notify the sender immediately and delete all copies of this me=
ssage. KPIT Technologies Ltd. does not accept any liability for virus infec=
ted mails.</p>


--90e6ba1f01986af733050096313c--
