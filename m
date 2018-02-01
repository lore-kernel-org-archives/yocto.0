Return-Path: <mikehabibi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4D275E00DC6; Thu,  1 Feb 2018 07:03:04 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mikehabibi[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.43 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-pl0-f43.google.com (mail-pl0-f43.google.com
	[209.85.160.43])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E582CE0082E
	for <yocto@yoctoproject.org>; Thu,  1 Feb 2018 07:03:03 -0800 (PST)
Received: by mail-pl0-f43.google.com with SMTP id g18so3707803plo.7
	for <yocto@yoctoproject.org>; Thu, 01 Feb 2018 07:03:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=CMKFPsJcoUBCZAXvbGs+pLWD5O83OsRzE/u+X9F4vsk=;
	b=JiI0W8xBOXBky1nUPryspEwvzg3Yie75OylCH73eqoclhiPm42WQXJb3Zk1QRr7opW
	c1Vb6teYBNsO1vhB5L06DTUvYyIu8O4eXza3uflQ8tPw23SR8SAvznSZY+UzppPySHrA
	HQsjNvNyWFc8H7v6L+v0nYV6N9mWDfRhRk2nbkS8TUNq8jPrjDGYZ47JF1P41SZ/xYXY
	lWLNMQRExO6d0EuwD4EuugJZFpJQF1YTbvkOWcPOewNcolbjlgufZWLE76F6WvGKIkOI
	Xp0JsGg7Cfalv9i1DLaCN+o85DnZe83449A4hYfj+TcP///v7JkFrqkOSbuZz5cj5/7/
	9N5Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=CMKFPsJcoUBCZAXvbGs+pLWD5O83OsRzE/u+X9F4vsk=;
	b=kjOpcQ4LTYKJCAlJt5MlYqwkdCpTprS5TTbZJ6sVFkalQNyu2kndyjbtnv3+vVfBor
	9IQv79K9RFgzyAobnPOPj+u0FVYmXYTobWA3+0B4tmdeawIpJbfVmyh2lgZ6qD3RePKv
	S0GC59O5rvhcEeH+O8HmsZoiB5dA49dUTPOPs7ZIzTYdvpn2NvKcXYbNL4bwEQuQz7/r
	nLSTANb9SkuzPyYThSZL7D49YjjUbUUbfkFxz6/jPhu03w8IEX5tvFd9/MGw0fopRbIo
	AiUBrcLWTZEMBEhrr2mjnXl7KXulnGhGn2nhe9PrZmTtQnv/uiRscoUY/kHU2n/KW0a9
	ysYA==
X-Gm-Message-State: AKwxytfyZEleIBrgtgR+vQK1lP3SA5oPNMUBRqnoLcTzcOoTkAiBsZBJ
	MErDcJOZl3MPXS4pxIw21gwamD4mwJRYDQW+X9A=
X-Google-Smtp-Source: AH8x227dTJvftRblRTnMu5drxMtkbBpuFLpLdhtukx3MSKvj/b9iiEX2SekvI41AmldCLZte9IX9qAxXrCenwPKxk00=
X-Received: by 2002:a17:902:8a8a:: with SMTP id
	p10-v6mr31208619plo.261.1517497383534; 
	Thu, 01 Feb 2018 07:03:03 -0800 (PST)
MIME-Version: 1.0
Received: by 10.100.159.130 with HTTP; Thu, 1 Feb 2018 07:03:02 -0800 (PST)
In-Reply-To: <CAJTo0LZfeg37KA=XOd-G7QJABy53JC5kJ07+uMo17xjjNq66qw@mail.gmail.com>
References: <CAOsp8o_Evg6RvDSuKj_7MBm8GUs8p=SMiTs8DuGEDbPr_hA7dQ@mail.gmail.com>
	<CAJTo0LZfeg37KA=XOd-G7QJABy53JC5kJ07+uMo17xjjNq66qw@mail.gmail.com>
From: Michael Habibi <mikehabibi@gmail.com>
Date: Thu, 1 Feb 2018 09:03:02 -0600
Message-ID: <CAOsp8o83H+_rTgZANb9c9SoLEbMpg6L_O-vAYAygPrNjeMpaFw@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: Yocto <yocto@yoctoproject.org>
Subject: Re: Patching only the target version of a package?
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
X-List-Received-Date: Thu, 01 Feb 2018 15:03:04 -0000
Content-Type: multipart/alternative; boundary="0000000000007e4761056427e4f3"

--0000000000007e4761056427e4f3
Content-Type: text/plain; charset="UTF-8"

So let's say my whole bbappend file is only necessary for the target
version. Can I rename the whole thing package-target.bbappend (add the
-target suffix) and it will only append it to the recipe when building the
target? Is "target" the actual suffix or is it a placeholder for something
more specific? I have only seen -native, -cross, and some other ones that
don't seem to apply to this case.

On Thu, Feb 1, 2018 at 8:44 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 1 February 2018 at 14:29, Michael Habibi <mikehabibi@gmail.com> wrote:
>
>> I'm sure this is really simple but I haven't quite wrapped my head around
>> it.
>>
>> We have a bbappend file that supplies a set of patches. It currently has
>> the unintended side-effect of patching both the native version used during
>> the Yocto build process, and the eventual target version. How do I modify
>> the recipe such that it only acts upon the target version?
>>
>> Would it be something like recipe-cross.bbappend instead of
>> recipe.bbappend? Or something similar?
>>
>
>
> SRC_URI_append_class-target = " file://..."
>
> Ross
>

--0000000000007e4761056427e4f3
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">So let&#39;s say my whole bbappend file is only necessary =
for the target version. Can I rename the whole thing package-target.bbappen=
d (add the -target suffix) and it will only append it to the recipe when bu=
ilding the target? Is &quot;target&quot; the actual suffix or is it a place=
holder for something more specific? I have only seen -native, -cross, and s=
ome other ones that don&#39;t seem to apply to this case.</div><div class=
=3D"gmail_extra"><br><div class=3D"gmail_quote">On Thu, Feb 1, 2018 at 8:44=
 AM, Burton, Ross <span dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel=
.com" target=3D"_blank">ross.burton@intel.com</a>&gt;</span> wrote:<br><blo=
ckquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #c=
cc solid;padding-left:1ex"><div dir=3D"ltr"><div><div class=3D"h5"><div cla=
ss=3D"gmail_extra">On 1 February 2018 at 14:29, Michael Habibi <span dir=3D=
"ltr">&lt;<a href=3D"mailto:mikehabibi@gmail.com" target=3D"_blank">mikehab=
ibi@gmail.com</a>&gt;</span> wrote:<br><div class=3D"gmail_quote"><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr">I&#39;m sure this is really simple b=
ut I haven&#39;t quite wrapped my head around it.<div><br></div><div>We hav=
e a bbappend file that supplies a set of patches. It currently has the unin=
tended side-effect of patching both the native version used during the Yoct=
o build process, and the eventual target version. How do I modify the recip=
e such that it only acts upon the target version?</div><div><br></div><div>=
Would it be something like recipe-cross.bbappend instead of recipe.bbappend=
? Or something similar?</div></div>
</blockquote></div><br></div><div class=3D"gmail_extra"><br></div></div></d=
iv><div class=3D"gmail_extra">SRC_URI_append_class-target =3D &quot; file:/=
/...&quot;</div><span class=3D"HOEnZb"><font color=3D"#888888"><div class=
=3D"gmail_extra"><br></div><div class=3D"gmail_extra">Ross</div></font></sp=
an></div>
</blockquote></div><br></div>

--0000000000007e4761056427e4f3--
