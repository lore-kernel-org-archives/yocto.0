Return-Path: <tarek.elsherbiny@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 035EEE0096C; Fri,  2 May 2014 04:04:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.8 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (tarek.elsherbiny[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.181 listed in list.dnswl.org]
Received: from mail-yk0-f181.google.com (mail-yk0-f181.google.com
	[209.85.160.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B3EB5E00478
	for <yocto@yoctoproject.org>; Fri,  2 May 2014 04:04:32 -0700 (PDT)
Received: by mail-yk0-f181.google.com with SMTP id q200so3662306ykb.12
	for <yocto@yoctoproject.org>; Fri, 02 May 2014 04:04:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=gOo3OWYeeW4LbdUeHcUcoUJhJxx20ktT7ziRwIcv3TQ=;
	b=EdiW5FOHbF9iUouYd7nzzIZjqNHxkk4OTeNwYyjKOhK4GRhlwWoBRUK3KKmrYUZx+2
	0ZiOn/OJQKrcrufgjKq0eFiv9wemQp2OZhtKMKHf0WOy43yynSd2zE1IOA3DsQz3P1+I
	QRifozRd4Nyz1QaRAWbJ2Cg7m7HfHoq1i41cw5fwpEiuw/dCYlzdSsMk82Fy8cqKNNBu
	WL6mIRbVABafbvBvEk8obzzQ+6i5gG2QQqGS/wZVsa5TvBdw6sq6nyYOeuWg4dJR0DG0
	oBuJQpuvnRNACLocH89bDkPXwjxYt99gndG4wYlbR0QmQM12VnwbFxM97cBUxgiixg20
	mUqg==
MIME-Version: 1.0
X-Received: by 10.236.209.68 with SMTP id r44mr3946753yho.152.1399028672203;
	Fri, 02 May 2014 04:04:32 -0700 (PDT)
Received: by 10.170.71.65 with HTTP; Fri, 2 May 2014 04:04:32 -0700 (PDT)
Date: Fri, 2 May 2014 12:04:32 +0100
Message-ID: <CAB3sqtZbtJGsh_jMUnvJAyFmXJVHZT2bvZ=DJ0N-fSB-VYu4Tg@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: yocto@yoctoproject.org, "openembedded-core@lists.openembedded.org"
	<openembedded-core@lists.openembedded.org>
Subject: DNS when using Static IP
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
X-List-Received-Date: Fri, 02 May 2014 11:04:37 -0000
Content-Type: multipart/alternative; boundary=001a11c2a77e099a7b04f868bfdc

--001a11c2a77e099a7b04f868bfdc
Content-Type: text/plain; charset=UTF-8

Hi.

I'm trying to set my IP config to a static address.

iface eth0 inet static
     address 192.168.55.45
     network 192.168.55.0
     netmask 255.255.255.0
     broadcast 192.168.55.255
     gateway 192.168.55.1
     dns-nameservers 192.168.10.2

But I don't get the DNS server address to be included in /etc/resolv.conf

If I run in dchp mode, then the resolv.conf is updated with my DNS address.
Is there something I'm missing here in my setup?


-- 
*Tarek*

--001a11c2a77e099a7b04f868bfdc
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi.</div><div><br></div><div>I&#39;m trying to set my=
 IP config to a static address.</div><div><br></div><div>iface eth0 inet st=
atic</div><div>=C2=A0 =C2=A0 =C2=A0address 192.168.55.45</div><div>=C2=A0 =
=C2=A0 =C2=A0network 192.168.55.0</div>
<div>=C2=A0 =C2=A0 =C2=A0netmask 255.255.255.0</div><div>=C2=A0 =C2=A0 =C2=
=A0broadcast 192.168.55.255</div><div>=C2=A0 =C2=A0 =C2=A0gateway 192.168.5=
5.1</div><div>=C2=A0 =C2=A0 =C2=A0dns-nameservers 192.168.10.2</div><div><b=
r></div><div>But I don&#39;t get the DNS server address to be included in /=
etc/resolv.conf</div>
<div><br></div><div>If I run in dchp mode, then the resolv.conf is updated =
with my DNS address.</div><div>Is there something I&#39;m missing here in m=
y setup?</div><div><br></div><div><br></div>-- <br><div dir=3D"ltr"><i><fon=
t color=3D"#666666" face=3D"arial, helvetica, sans-serif">Tarek</font></i><=
/div>

</div>

--001a11c2a77e099a7b04f868bfdc--
