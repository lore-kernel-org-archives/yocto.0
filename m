Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f181.google.com (mail-ob0-f181.google.com
	[209.85.214.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFCC7E00796
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 09:13:05 -0800 (PST)
Received: by mail-ob0-f181.google.com with SMTP id uy5so2259804obc.40
	for <yocto@yoctoproject.org>; Fri, 13 Dec 2013 09:13:04 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=eNn5emz3YDGJWuJx9dj7QZY7Fp3OTlqhxUzNotgI+mI=;
	b=kJXYjeGvpinoozyMZIETCTw04y+N6R92Rvhjgx1O3flvhTwdOedj8tjbMxon/QW6mu
	qPF62Zdnrad3mlfgC8Ftj4vuwpWh3nAIDB4dpRacL3jghWcC68VCLgODws6wdki2Ka5m
	TeUV9sRuYIDiDam36SbgVMDBslCpHQ2NNojL/BGISpjG7tLzItYLwXcWvxgtfBGWajhV
	T9D2rhf85AA6vvIjg/d052Th7KIqs3TzBFNXeNbDG6T7LJmGAWfqWqRxivf871qD4NIx
	PN9B5bSSMJqStvWh0ohZlsXQHHCmtq9LfFU6Dh9vlxA0ka8H1mUOfxcNSxa7qy+205Qi
	Qwjw==
X-Gm-Message-State: ALoCoQlBEevFrxRLpk5C2xUGK1n7xL5ijozfTtM6e/3YTh6kAcflTNj8361Xszc5gFV7/sxUv6uh
X-Received: by 10.60.52.177 with SMTP id u17mr2494335oeo.24.1386954784669;
	Fri, 13 Dec 2013 09:13:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.122.81 with HTTP; Fri, 13 Dec 2013 09:12:44 -0800 (PST)
In-Reply-To: <1386953101.37035.YahooMailNeo@web121102.mail.ne1.yahoo.com>
References: <1386953101.37035.YahooMailNeo@web121102.mail.ne1.yahoo.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Fri, 13 Dec 2013 18:12:44 +0100
Message-ID: <CAP71WjxiffLeG1isMFnKb85MSWYW7kZcsZDNZ0muH4iSXKiGmg@mail.gmail.com>
To: J Uhl <juhl_iphone@yahoo.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: e2fsprogs with core-image-minimal
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
X-List-Received-Date: Fri, 13 Dec 2013 17:13:06 -0000
Content-Type: multipart/alternative; boundary=001a1133056a429f7004ed6d9381

--001a1133056a429f7004ed6d9381
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

On Fri, Dec 13, 2013 at 5:45 PM, J Uhl <juhl_iphone@yahoo.com> wrote:

> How do I get mkfs.ext3 binary over to my rootfs image.  I added
>
> IMAGE_INSTALL +=3D =93util-linux e2fsprogs=94
>
> To core-image-minimal but I seem to be missing something.  Mkfs does work
> but no mkfs.ext3.
>

you need to install "e2fsprogs-mke2fs" into your image

--001a1133056a429f7004ed6d9381
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Fri, Dec 13, 2013 at 5:45 PM, J Uhl <span dir=3D"ltr">&lt;<a href=3D"mai=
lto:juhl_iphone@yahoo.com" target=3D"_blank">juhl_iphone@yahoo.com</a>&gt;<=
/span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div style=3D"margin:0in 0in 0pt"><font face=3D"Calibri">H=
ow do I get mkfs.ext3 binary over to my rootfs image.<span>=A0 </span>I add=
ed </font></div>

<div><font face=3D"Times New Roman">

</font></div><div style=3D"margin:0in 0in 0pt"><font face=3D"Calibri">=A0</=
font></div><div><font face=3D"Times New Roman">

</font></div><div style=3D"margin:0in 0in 0pt"><font face=3D"Calibri">IMAGE=
_INSTALL +=3D =93util-linux e2fsprogs=94</font></div><div><font face=3D"Tim=
es New Roman">

</font></div><div style=3D"margin:0in 0in 0pt"><font face=3D"Calibri">=A0</=
font></div><div><font face=3D"Times New Roman">

</font></div><div style=3D"margin:0in 0in 0pt"><font face=3D"Calibri">To co=
re-image-minimal but I seem to be missing something.=A0 Mkfs does work but =
no mkfs.ext3.</font></div><div><font face=3D"Times New Roman">

</font></div><div style=3D"margin:0in 0in 0pt"></div></blockquote></div><br=
>you need to install &quot;e2fsprogs-mke2fs&quot; into your image</div><div=
 class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div></div=
>


--001a1133056a429f7004ed6d9381--
