Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 26274E008D0; Thu,  9 Mar 2017 03:08:47 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.1 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 02F13E004D2
	for <yocto@yoctoproject.org>; Thu,  9 Mar 2017 03:08:45 -0800 (PST)
Received: by mail-qk0-f174.google.com with SMTP id 1so112585460qkl.3
	for <yocto@yoctoproject.org>; Thu, 09 Mar 2017 03:08:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=R5ZNkIjhmju9rS0BPi6oes84BdlyHQ5sMil5X33V0uo=;
	b=Cd+PSI7EsKt1OlVMXJHnjU9gjTXF5Rm5/Ot7fHsr42fDJcbB7wUDH/jo8d2FsnUq5c
	/5TIlL6SbXYQfq54WGx29KaAPx0tutWWuDdewbJYFhoeJa9tmp7rC5MA7Xm4f5YY0x8v
	l8ZYrsU5q43C9ZU4AaAZ4aeB3RW6PrthMu4wEVnNsGc+//Mx2EJjiR+ufuolkbp6GOYG
	iEwY/okDB5GlKpDfa+4RIQb9prNO8SLSHPwziRWkE81MCTKdNwQpHUgqXBJwvKgFhNUp
	PDpSvclT1OL3QiUfvYcL4OtVpdIwxCaFXE4keysiMSuVH9Qxo2LhHrf0osAcM7WfpdOq
	hWkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=R5ZNkIjhmju9rS0BPi6oes84BdlyHQ5sMil5X33V0uo=;
	b=I8fjwt7poqaDXqrj1PQV8Njr31UvCgxhb8v3ZiB/HEyC9A6xCzO4WUpguav3ujOhfx
	hJ417KhE0fAv5gMT5L8Mlg7Gzk+zC7SxgnNRqnwHQiRkUgQhdBZSJPyFNVyOqdQpK4X6
	Wv/OT4NfCea/FzEdYbu+ryurgR/QTzJ+pLWzRq41U8kcHnPXEhIRvtE4MT9zoNPgvIBs
	Ax0SBOn8gn2ye9hdWt20BXWkw2QGS5eYTg9nbQfMdkhma+FZIk6mIOnqReZTovwLmsLS
	7oiuZwDYgv2rRBeqq5qjnzIp5G9Ajkp9ZU0OZTUp+1psax+JBzCBDC0I5pjCAvzqFk8e
	0JWw==
X-Gm-Message-State: AMke39mUa3qCoKU6II/Im2Yu07BXBAzQj2VjzEvxBaD5WAmcVaHHWHhAZ9wkBW65DsLhzs9zXj4cDRuQjNZiOzjH
X-Received: by 10.237.53.9 with SMTP id a9mr13125786qte.188.1489057724605;
	Thu, 09 Mar 2017 03:08:44 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.22.166 with HTTP; Thu, 9 Mar 2017 03:08:24 -0800 (PST)
In-Reply-To: <DM5PR0101MB29532B9D3B4ADB2D6E76DB7DB6210@DM5PR0101MB2953.prod.exchangelabs.com>
References: <DM5PR0101MB2953A7BCD17DDE333B00C2CAB6210@DM5PR0101MB2953.prod.exchangelabs.com>
	<DM5PR0101MB29532B9D3B4ADB2D6E76DB7DB6210@DM5PR0101MB2953.prod.exchangelabs.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Thu, 9 Mar 2017 11:08:24 +0000
Message-ID: <CAJTo0LZOT0aD4gTknQt++cAG+s6uyvTwEsBX+tgtkxuMtK8SMA@mail.gmail.com>
To: Takashi Matsuzawa <tmatsuzawa@xevo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: hddimg 4GB limit?
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
X-List-Received-Date: Thu, 09 Mar 2017 11:08:47 -0000
Content-Type: multipart/alternative; boundary=001a11c0285eb9c674054a4a4496

--001a11c0285eb9c674054a4a4496
Content-Type: text/plain; charset=UTF-8

On 9 March 2017 at 07:04, Takashi Matsuzawa <tmatsuzawa@xevo.com> wrote:

> I found hddimg 4GB-1 bye restriction because it creates a file called
> rootfs.img which is copied into FAT.
>
> That means rootfs.img size must be below FAT max file size...
>
>
Yes.  This is why I'd like to see hddimg removed and replaced with a
partition layout in wic that doesn't use a FAT container.

Ross

--001a11c0285eb9c674054a4a4496
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On 9 March 2017 at 07:04, Takashi Matsuzawa <span dir=3D"ltr">&lt;<a href=
=3D"mailto:tmatsuzawa@xevo.com" target=3D"_blank">tmatsuzawa@xevo.com</a>&g=
t;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0=
 .8ex;border-left:1px #ccc solid;padding-left:1ex"><p>I found=C2=A0hddimg 4=
GB-1 bye restriction because it creates a file called rootfs.img which is c=
opied into FAT.</p>
<p>That means rootfs.img size must be below FAT max file size...</p>
<p></p></blockquote></div><br>Yes.=C2=A0 This is why I&#39;d like to see hd=
dimg removed and replaced with a partition layout in wic that doesn&#39;t u=
se a FAT container.</div><div class=3D"gmail_extra"><br></div><div class=3D=
"gmail_extra">Ross</div></div>

--001a11c0285eb9c674054a4a4496--
