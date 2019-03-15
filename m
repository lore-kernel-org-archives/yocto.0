Return-Path: <ticotimo@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 21230E00D2B; Fri, 15 Mar 2019 16:40:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ticotimo[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.221.174 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vk1-f174.google.com (mail-vk1-f174.google.com
	[209.85.221.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5FE5EE00CD5
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 16:40:22 -0700 (PDT)
Received: by mail-vk1-f174.google.com with SMTP id r189so2601630vkb.0
	for <yocto@yoctoproject.org>; Fri, 15 Mar 2019 16:40:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=SyIP7cZw0EAYiw5Gr9qOjX1ucWtpuZ1EH/OP11SnI5w=;
	b=eJUHgjDSeV2A8Zt1qyzzybpPoR6JUOORiNH/N9sbtuKatRlfp7dCLpbulgUNYq/7ZH
	kweUvt3/+meuouPL0jNe4gZcOoGCs/s1MsbwpaUaZ+apfB7VXHN66+7oLhKExNkPpjm/
	s+2XcyNFdSjl0DfSAeLMo4EkBSM7nFdBnrMxtDKDhxisvFI0J15Uk5tOuUnFnYLyp4nV
	kKr4S4kXsYHNbdHOPRCfh7ggeuy9kxOCBZs5N4v2rCQ7MNCsSn+Y9M24A+oI5oaALLR7
	HAORorYjs9UFg2A6I/CgNzEvZFm6PjQpvrQvSkiaxere9NpHBSdUJEn8ekBgCgHPKuB5
	CFJw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=SyIP7cZw0EAYiw5Gr9qOjX1ucWtpuZ1EH/OP11SnI5w=;
	b=DhzI+bttBpamCZtYBwYJhUww8Rn5vxzVSzNtCDRND3HkesAK8nqR1boIcoktNKPDHv
	KzmspnwVbBtdH2wsIOSlCH/mTZeaNTlNxpI9na94rYyzftz0iWS0LqQpoVKMqTqBDEHz
	t84REEElIWewo/IAUVwUbCKqcDNdoL1Eyk6kQFOVL5rfINvgE9JRv8aIuUQgHhFrKXfZ
	3pL4QZPsElFmwgB/dGQsqdPoZw3Mb/XXRJxqQ92MdsSHvUR9JTU3dmZM0NLYnRgZ332s
	4qNzxOivM9Uzp3FOI1r5X63i/HeNVVf+ZFxP2GRhmXuDvKLqKhNTnQZpQFm/WNpVdHlt
	aIMQ==
X-Gm-Message-State: APjAAAVdDmDVdDvXA9SqWXnIYraz4coIq5N++TcnL42zRb8d7ltBxn5S
	XHzVRlMEvW2kp+6YduZbVYwhlN1BffsYzRPIx/0=
X-Google-Smtp-Source: APXvYqyFyapKv+c9E+FM9v5NpbDjH9AOoJCgMtE37seV+ro714QBRTMBueKB/iDrSyg0yluTvhMEuRiSPIBtY/dWCQ0=
X-Received: by 2002:a1f:5841:: with SMTP id m62mr1872634vkb.46.1552693221564; 
	Fri, 15 Mar 2019 16:40:21 -0700 (PDT)
MIME-Version: 1.0
References: <CADmsHKfN0X-HCCdd_4mi=xEvjybWUKC8YXcoq5c__EZDxRDkZw@mail.gmail.com>
	<CAJTo0LZq9RxtqcBbXEOSXJHKPr63FFN6gPx3OY8dqwbVb7o+LQ@mail.gmail.com>
In-Reply-To: <CAJTo0LZq9RxtqcBbXEOSXJHKPr63FFN6gPx3OY8dqwbVb7o+LQ@mail.gmail.com>
From: Tim Orling <ticotimo@gmail.com>
Date: Fri, 15 Mar 2019 16:40:10 -0700
Message-ID: <CANx9H-ATyFHvqo+QoGuRDCx+8B964n77neDqGyrU2GyiskQrzw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>,
	Derek Dresser <dresser.net@gmail.com>
Subject: Re: can't find libudev.h
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
X-List-Received-Date: Fri, 15 Mar 2019 23:40:23 -0000
Content-Type: multipart/alternative; boundary="000000000000eaab6305842a8f00"

--000000000000eaab6305842a8f00
Content-Type: text/plain; charset="UTF-8"

On Fri, Mar 15, 2019 at 10:23 AM Burton, Ross <ross.burton@intel.com> wrote:

> On Fri, 15 Mar 2019 at 17:00, Derek Dresser <dresser.net@gmail.com> wrote:
> > | gcc -fPIC   -c -g -MMD -MP -MF build/Debug/GNU-Linux-x86/hid.o.d -o
> build/Debug/GNU-Linux-x86/hid.o hid.c
>
> 'gcc' isn't a cross compiler, and it isn't using the sysroot flags.
>
> The problem with people writing their own makefiles is that they think
> it's easy, but it isn't.  You'll have to figure out why the maze of
> Makefiles in that project don't respect CC/CPPFLAGS/CFLAGS/LDFLAGS
> that are exported into the environment.
>

You might want to consider a different driver:

https://archive.fosdem.org/2018/schedule/event/rapid_spi_over_usb/attachments/audio/2461/export/events/attachments/rapid_spi_over_usb/audio/2461/USB_SPI_FOSDEM_2018.pdf


> Ross
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--000000000000eaab6305842a8f00
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div><br></div><div><br><div class=3D"gmail_quote"><div dir=3D"ltr" class=
=3D"gmail_attr">On Fri, Mar 15, 2019 at 10:23 AM Burton, Ross &lt;<a href=
=3D"mailto:ross.burton@intel.com">ross.burton@intel.com</a>&gt; wrote:<br><=
/div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-le=
ft:1px #ccc solid;padding-left:1ex">On Fri, 15 Mar 2019 at 17:00, Derek Dre=
sser &lt;<a href=3D"mailto:dresser.net@gmail.com" target=3D"_blank">dresser=
.net@gmail.com</a>&gt; wrote:<br>
&gt; | gcc -fPIC=C2=A0 =C2=A0-c -g -MMD -MP -MF build/Debug/GNU-Linux-x86/h=
id.o.d -o build/Debug/GNU-Linux-x86/hid.o hid.c<br>
<br>
&#39;gcc&#39; isn&#39;t a cross compiler, and it isn&#39;t using the sysroo=
t flags.<br>
<br>
The problem with people writing their own makefiles is that they think<br>
it&#39;s easy, but it isn&#39;t.=C2=A0 You&#39;ll have to figure out why th=
e maze of<br>
Makefiles in that project don&#39;t respect CC/CPPFLAGS/CFLAGS/LDFLAGS<br>
that are exported into the environment.<br>
</blockquote><div dir=3D"auto"><br></div><div dir=3D"auto">You might want t=
o consider a different driver:</div><div dir=3D"auto"><br></div><div dir=3D=
"auto"><div><a href=3D"https://archive.fosdem.org/2018/schedule/event/rapid=
_spi_over_usb/attachments/audio/2461/export/events/attachments/rapid_spi_ov=
er_usb/audio/2461/USB_SPI_FOSDEM_2018.pdf">https://archive.fosdem.org/2018/=
schedule/event/rapid_spi_over_usb/attachments/audio/2461/export/events/atta=
chments/rapid_spi_over_usb/audio/2461/USB_SPI_FOSDEM_2018.pdf</a></div><br>=
</div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-l=
eft:1px #ccc solid;padding-left:1ex"><br>
Ross<br>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div></div>

--000000000000eaab6305842a8f00--
