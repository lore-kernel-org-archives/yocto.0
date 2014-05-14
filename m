Return-Path: <soniaverma9727@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C9675E00B83; Wed, 14 May 2014 04:35:27 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (soniaverma9727[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.181 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 1274 seconds by postgrey-1.32 at yocto-www;
	Wed, 14 May 2014 04:35:23 PDT
Received: from mail-we0-f181.google.com (unknown [74.125.82.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 74839E00975
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 04:35:23 -0700 (PDT)
Received: by mail-we0-f181.google.com with SMTP id w61so1747827wes.40
	for <yocto@yoctoproject.org>; Wed, 14 May 2014 04:35:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=W9POY8tfUQVV8l+rTpX1Y6Vdr2v88ITCnzvNSne7+TQ=;
	b=n1X2oWxkcaqWNPwnJ4HhyMVvo6oiHiAg20sm7nc4EirME+80KXJu5BqcIB8efVwYfo
	aSfVrJFFVx/KwqstDQ89y5J3/ANhhiYjF8ZVpzWNCf2FjSYH28/UkcgtYhY8+ZpyaiQ0
	pk2nJqIzyqBwYGacWcE8ddqcoUePvAtj8fngG+9I6nNkh5y2V0w/AWN6k1JTSzvszd8v
	cNai7bFKioN67o6L4OmD41VOtm5/xeTnwDsOTp3VwirC2vLA/13AIi/yEBt+jteTE9t+
	OIc7y2Bj0MX+EJ9JDAqiiDwv7GiOI47FJO9hjUsEU5RgScvsgsnbN2olM/ddFnRTXtu2
	P4wg==
MIME-Version: 1.0
X-Received: by 10.180.74.203 with SMTP id w11mr25324861wiv.27.1400065619615;
	Wed, 14 May 2014 04:06:59 -0700 (PDT)
Received: by 10.194.38.168 with HTTP; Wed, 14 May 2014 04:06:59 -0700 (PDT)
Date: Wed, 14 May 2014 16:36:59 +0530
Message-ID: <CAJ7VaygmmV7zNKMO+uCfY3VzoWEO5Z4kDOAqMfZDeq9o4qQ8ZA@mail.gmail.com>
From: sonia verma <soniaverma9727@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: kvm error
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
X-List-Received-Date: Wed, 14 May 2014 11:35:27 -0000
Content-Type: multipart/alternative; boundary=f46d043891ffeb625104f95a2d8f

--f46d043891ffeb625104f95a2d8f
Content-Type: text/plain; charset=UTF-8

Hi

I'm getting below error when trying to boot the KVM with ethernet
bridging,kvm support and universel TUN enabled by the following command..

/usr/bin/qemu-system-ppc64 -m 512 -nographic -hda
/var/volatile/debian_lenny_powerpc_standard.qcow2
>> annot manage 'OHCI USB controller' PCI device type 'usb':
>>  106b 3f (c 3 10)

>> =============================================================
>> OpenBIOS 1.0 [Aug 28 2012 05:40]
>> Configuration device id QEMU version 1 machine id 3
>> CPUs: 1
>> Memory: 512M
>> UUID: 00000000-0000-0000-0000-000000000000



Please help regarding this.


Thanks
Sonia

--f46d043891ffeb625104f95a2d8f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi <br><br></div>I&#39;m getting below=
 error when trying to boot the KVM with ethernet bridging,kvm support and u=
niversel TUN enabled by the following command..<br><br>/usr/bin/qemu-system=
-ppc64 -m 512 -nographic -hda /var/volatile/debian_lenny_powerpc_standard.q=
cow2 <br>
&gt;&gt; annot manage &#39;OHCI USB controller&#39; PCI device type &#39;us=
b&#39;:<br>&gt;&gt;=C2=A0 106b 3f (c 3 10)<br><br>&gt;&gt; =3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D<br>&gt;&gt; OpenBIOS 1.0 [Aug 28 2012 05:40]<br>
&gt;&gt; Configuration device id QEMU version 1 machine id 3<br>&gt;&gt; CP=
Us: 1<br>&gt;&gt; Memory: 512M<br>&gt;&gt; UUID: 00000000-0000-0000-0000-00=
0000000000<br><br><br><br></div>Please help regarding this.<br><br><br>
</div>Thanks<br></div>Sonia<br><div><div><div><br></div></div></div></div>

--f46d043891ffeb625104f95a2d8f--
