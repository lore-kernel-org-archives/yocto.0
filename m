Return-Path: <amusghatge@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D4891E00985; Wed,  4 Feb 2015 04:51:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (amusghatge[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.215.52 listed in list.dnswl.org]
Received: from mail-la0-f52.google.com (mail-la0-f52.google.com
	[209.85.215.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 593D5E0097F
	for <yocto@yoctoproject.org>; Wed,  4 Feb 2015 04:51:41 -0800 (PST)
Received: by mail-la0-f52.google.com with SMTP id gd6so76981lab.11
	for <yocto@yoctoproject.org>; Wed, 04 Feb 2015 04:51:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=t7RN3qu5GMb17nikZlUvl5t1sdfDgV30CqRhycYmsLw=;
	b=x/1mCxDBCNmHjOtiTwAYolnVZB50OnjwaFekSN1n8GZWJrHZLQjhbUFNFoCe9zlAqV
	UFAN7uh0c/YeQnrlUCjvNwilgQObw5kF/nwLv/tjrWTgfp5ZyIzNSu+XomDxo9c70fs+
	s9p9WPvXT4qEoFFK3UYEiYrWMjL5NlkKhuK0R5YHoNfpIG+VviKGMFnFvZ4gSZ5wHQ32
	Q1OONUqHyga1+2MDVgiHOJDY8RTZi4H1pbNbx6C8X3AghRwuryytqHKlWWwiiMrlttZW
	MKjwzZoYz1UgzzScrdqxC/re2tOCHaApXSi4OtgXs2pbaWMbSj6DK3jtLVVLExLwrknr
	qYHg==
MIME-Version: 1.0
X-Received: by 10.152.45.1 with SMTP id i1mr12811263lam.41.1423054300002; Wed,
	04 Feb 2015 04:51:40 -0800 (PST)
Received: by 10.112.4.105 with HTTP; Wed, 4 Feb 2015 04:51:39 -0800 (PST)
Received: by 10.112.4.105 with HTTP; Wed, 4 Feb 2015 04:51:39 -0800 (PST)
In-Reply-To: <54CBA848.6080102@mindchasers.com>
References: <CA+dzM_QFCqJLce1eOfNXGhE1M8AedrsWa00CZue7n1Zxw010Mg@mail.gmail.com>
	<54CBA848.6080102@mindchasers.com>
Date: Wed, 4 Feb 2015 18:21:39 +0530
Message-ID: <CA+dzM_QYA4b4MgjQhuLvzVGX9XXAoACAHAwe1vnjeTn6c2Rd9g@mail.gmail.com>
From: amruuta ghatge <amusghatge@gmail.com>
To: Bob Cochran <yocto@mindchasers.com>
Cc: yocto@yoctoproject.org
Subject: Re: SPR issue while booting qemu for POWER PC ppce500v2
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
X-List-Received-Date: Wed, 04 Feb 2015 12:51:53 -0000
Content-Type: multipart/alternative; boundary=001a11c27c840c3f42050e42a6a5

--001a11c27c840c3f42050e42a6a5
Content-Type: text/plain; charset=UTF-8

On 30-Jan-2015 9:20 pm, "Bob Cochran" <yocto@mindchasers.com> wrote:
>
> On 01/30/2015 06:20 AM, amruuta ghatge wrote:
>>
>>
>> Hello,
>>
>> I am trying to perform LTP testing for POWER ppce500v2.
>>
>> I used the following rfs and kernel image for testing the LTP test
>> prefix [cross build for ppce500ve using ppce500v2 custom toolchain] in
>> QEMU system mode.
>>
>>
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/qemu/qemuppc/core-image-sato-sdk-qemuppc.ext3
>>
>>
>>
http://downloads.yoctoproject.org/releases/yocto/yocto-1.7/machines/qemu/qemuppc/vmlinux--3.14.19+git0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220152.bin
>>
>> When configured for '-M ppce500 -cpu e500v2' it gave me the following
error,
>>
>> $ <path-sysroots>qemu-system-ppc -kernel
>>
vmlinux--3.14.19+git0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220152.bin
-net
>> nic,model=pcnet -net tap,vlan=0,ifname=tap0,script=no,downscript=no -cpu
>> e500v2 -M ppce500 -hda
>> <path-qemuppc>core-image-base-qemuppc-20150112233527.rootfs.ext3
>> -no-reboot -show-cursor -no-reboot -nographic -m 512 --append
>> "root=/dev/hda rw console=ttyS0 console=tty
>> ip=192.168.7.2::192.168.7.1:255.255.255.0 mem=512M console=ttyS0"
>>
>> Trying to write invalid spr 536 (0x218) 000034c0
>
>
>
> Maybe this will help - I just looked at both the E500 (includes V2) and
E5500 reference manuals.  I couldn't find the definition of an SPR 536.
Could SPR 536 be specific to a particular SOC, or maybe it's just a typo in
the code somewhere?

Thank you for the inputs.
The kernel was configured for 'altivec' support and I guess that was
causing the invalid SPR issue.
On reconfiguring the kernel for ppc e500 it did not give ' invalid SPR'
error but gave a blank QEMU console and failed to load the kernel and root
file system.

Using qemu version 2.1.0

Please suggest in case of any missing configurations.
>>
>> Any pointers or inputs/suggestions will be highly appreciated.
>>
>> Regards,
>>
>> Amruta!!!
>>
>>
>>
>

--001a11c27c840c3f42050e42a6a5
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p dir=3D"ltr"><br>
On 30-Jan-2015 9:20 pm, &quot;Bob Cochran&quot; &lt;<a href=3D"mailto:yocto=
@mindchasers.com">yocto@mindchasers.com</a>&gt; wrote:<br>
&gt;<br>
&gt; On 01/30/2015 06:20 AM, amruuta ghatge wrote:<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; Hello,<br>
&gt;&gt;<br>
&gt;&gt; I am trying to perform LTP testing for POWER ppce500v2.<br>
&gt;&gt;<br>
&gt;&gt; I used the following rfs and kernel image for testing the LTP test=
<br>
&gt;&gt; prefix [cross build for ppce500ve using ppce500v2 custom toolchain=
] in<br>
&gt;&gt; QEMU system mode.<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-=
1.7/machines/qemu/qemuppc/core-image-sato-sdk-qemuppc.ext3">http://download=
s.yoctoproject.org/releases/yocto/yocto-1.7/machines/qemu/qemuppc/core-imag=
e-sato-sdk-qemuppc.ext3</a><br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt; <a href=3D"http://downloads.yoctoproject.org/releases/yocto/yocto-=
1.7/machines/qemu/qemuppc/vmlinux--3.14.19+git0+fb6271a942_73e2411cdd-r0-qe=
muppc-20141016220152.bin">http://downloads.yoctoproject.org/releases/yocto/=
yocto-1.7/machines/qemu/qemuppc/vmlinux--3.14.19+git0+fb6271a942_73e2411cdd=
-r0-qemuppc-20141016220152.bin</a><br>
&gt;&gt;<br>
&gt;&gt; When configured for &#39;-M ppce500 -cpu e500v2&#39; it gave me th=
e following error,<br>
&gt;&gt;<br>
&gt;&gt; $ &lt;path-sysroots&gt;qemu-system-ppc -kernel<br>
&gt;&gt; vmlinux--3.14.19+git0+fb6271a942_73e2411cdd-r0-qemuppc-20141016220=
152.bin -net<br>
&gt;&gt; nic,model=3Dpcnet -net tap,vlan=3D0,ifname=3Dtap0,script=3Dno,down=
script=3Dno -cpu<br>
&gt;&gt; e500v2 -M ppce500 -hda<br>
&gt;&gt; &lt;path-qemuppc&gt;core-image-base-qemuppc-20150112233527.rootfs.=
ext3<br>
&gt;&gt; -no-reboot -show-cursor -no-reboot -nographic -m 512 --append<br>
&gt;&gt; &quot;root=3D/dev/hda rw console=3DttyS0 console=3Dtty<br>
&gt;&gt; ip=3D192.168.7.2::192.168.7.1:255.255.255.0 mem=3D512M console=3Dt=
tyS0&quot;<br>
&gt;&gt;<br>
&gt;&gt; Trying to write invalid spr 536 (0x218) 000034c0<br>
&gt;<br>
&gt;<br>
&gt;<br>
&gt; Maybe this will help - I just looked at both the E500 (includes V2) an=
d E5500 reference manuals.=C2=A0 I couldn&#39;t find the definition of an S=
PR 536.=C2=A0 Could SPR 536 be specific to a particular SOC, or maybe it&#3=
9;s just a typo in the code somewhere?</p>
<p dir=3D"ltr">Thank you for the inputs.<br>
The kernel was configured for &#39;altivec&#39; support and I guess that wa=
s causing the invalid SPR issue.<br>
On reconfiguring the kernel for ppc e500 it did not give &#39; invalid SPR&=
#39; error but gave a blank QEMU console and failed to load the kernel and =
root file system.</p>
<p dir=3D"ltr">Using qemu version 2.1.0</p>
<p dir=3D"ltr">Please suggest in case of any missing configurations.<br>
&gt;&gt;<br>
&gt;&gt; Any pointers or inputs/suggestions will be highly appreciated.<br>
&gt;&gt;<br>
&gt;&gt; Regards,<br>
&gt;&gt;<br>
&gt;&gt; Amruta!!!<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;&gt;<br>
&gt;<br>
</p>

--001a11c27c840c3f42050e42a6a5--
