Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9B726E00DF0; Thu, 13 Oct 2016 00:37:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.220.174 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.174 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f174.google.com (mail-qk0-f174.google.com
	[209.85.220.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5236EE00C81
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 00:37:09 -0700 (PDT)
Received: by mail-qk0-f174.google.com with SMTP id o68so117700746qkf.3
	for <yocto@yoctoproject.org>; Thu, 13 Oct 2016 00:37:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linaro.org; s=google;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=ZJYqjpwVskqvdJAtbIVb7tdPS9lXwvOxcyDbxbpngJk=;
	b=b7dxbUUl+gKzT9FDzU0OlJAeGRGKbvA8Y0lVO6yVa+WkeYuJG2m9NK5h1UDrw5hNIv
	jNh5daTbbk6+peVyxlin6SY2O1tEihSYWhg0QH1qx5ztRs4jLP/xlUOotVpnF9URkvVW
	DEMnJbaqi0QVvDpK7JxLXsPnMHsYNQ0Ib490Q=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=ZJYqjpwVskqvdJAtbIVb7tdPS9lXwvOxcyDbxbpngJk=;
	b=edbUI7E7CU/eIPyUTyyFnR0Ac8W1dVdipiilkQ62XRMzK8J1gbpU/nfKWYXZC5/fpZ
	GcH5OPX6sERqs5i9hyHmAUNXxn9TYCFlW8Gpp/4P/6q69Lv9Gt1qW0MuJ+ydQFI/ZVbb
	r7LbuAO54w/syk31Zp2sl87IQyoZ02m5S9Si6xIOWi0G5uy6l1xLfdOwWivMa9+HD4WV
	U8hiqZhRu2GYgqaLBLp4Iq16pdb4qxP5wKl1kdW/WhFA5KDAOYvF36A2m0whFwNy6CW6
	aIpjGfRb/sysj8czpNCaRt36GVbYVAmNyuCy+HrQGVHsr6Q2G4QNwKdJCNiUvCn7Mm9Z
	5fow==
X-Gm-Message-State: AA6/9Rk1AUoiSLQCH4RMDw0y1xg+MtMy/T+yTvZ+Jt0p3EkcApeo992rsYtnUprIX5+hKjk4h0FKrlnoxBmR6jFF
X-Received: by 10.55.154.11 with SMTP id c11mr4593188qke.25.1476344228771;
	Thu, 13 Oct 2016 00:37:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.104.42 with HTTP; Thu, 13 Oct 2016 00:36:48 -0700 (PDT)
In-Reply-To: <CAFq4t4iKCo+VpXK_-J15fOE4fGNh8=NxYVvbJLm-9HSzkkU+gQ@mail.gmail.com>
References: <CAFq4t4i5B5Sk-Bms0zVWr4sU5fgz4zM5pUs-YO8wcCzV5umxog@mail.gmail.com>
	<CAP71WjwLvSQFLF9DfF7YUj1ZXN5Y9GaPM8-ivsZz5+P_ZJXqPw@mail.gmail.com>
	<CAFq4t4iKCo+VpXK_-J15fOE4fGNh8=NxYVvbJLm-9HSzkkU+gQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 13 Oct 2016 09:36:48 +0200
Message-ID: <CAP71Wjx=4PRkhOjGZ03ng1pOOV2HyfZj8Z1DncpNVL1XzWW=9w@mail.gmail.com>
To: Peter Balazovic <balazovic.peter@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: resize2fs
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
X-List-Received-Date: Thu, 13 Oct 2016 07:37:14 -0000
Content-Type: multipart/alternative; boundary=94eb2c054186528f13053eba2d2c

--94eb2c054186528f13053eba2d2c
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 13, 2016 at 9:03 AM, Peter Balazovic <balazovic.peter@gmail.com>
wrote:

> > First, you need an extra space when you use _append operator.
> I got within my local.conf and building for big size SD card.
>
> IMAGE_ROOTFS_EXTRA_SPACE = "25165824"
>

that's not what I meant, you need a leasding space char in the variable like

IMAGE_INSTALL_append = " e2fsprogs-resize2fs"


> > So you need to include e2fsprogs-resize2fs
>
> that's what I'm looking for - where to include ...
>

local.conf would work.

--94eb2c054186528f13053eba2d2c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Oct 13, 2016 at 9:03 AM, Peter Balazovic <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:balazovic.peter@gmail.com" target=3D"_blank">balazovic.peter@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><span cl=
ass=3D""><div><p dir=3D"ltr">&gt; First, you need an extra space when you u=
se _append operator.</p></div></span><div>I got within my local.conf and bu=
ilding for big size SD card.</div><div><br></div><div>IMAGE_ROOTFS_EXTRA_SP=
ACE =3D &quot;25165824&quot;<br></div></blockquote><div><br></div><div>that=
&#39;s not what I meant, you need a leasding space char in the variable lik=
e<br><br></div><div>IMAGE_INSTALL_append =3D &quot; e2fsprogs-resize2fs&quo=
t;<br><br></div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8e=
x;border-left:1px #ccc solid;padding-left:1ex"><div></div><span class=3D"">=
<div><br></div><div>&gt; So you need to include e2fsprogs-resize2fs<br></di=
v><div><br></div></span><div>that&#39;s what I&#39;m looking for - where to=
 include ...</div></blockquote></div><br></div><div class=3D"gmail_extra">l=
ocal.conf would work. <br></div><div class=3D"gmail_extra"><br></div></div>

--94eb2c054186528f13053eba2d2c--
