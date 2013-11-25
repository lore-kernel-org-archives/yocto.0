Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-oa0-f50.google.com (mail-oa0-f50.google.com
	[209.85.219.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8A2A1E006F4
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 02:32:03 -0800 (PST)
Received: by mail-oa0-f50.google.com with SMTP id n16so4096803oag.37
	for <yocto@yoctoproject.org>; Mon, 25 Nov 2013 02:32:02 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=wtpAhZAhuaPz5bnbRlXhuWTLmaW6URkGepFS/ZT+Jjg=;
	b=IfwQeWLqXMTwFAKn/hMJxQvjAiNXEqOpTwGeYN11IS9YbDAX/L+q/Wff00qGCBd5K9
	LPYbb9AyBkQ2xbwuJBH3dkvGibonZ3PgNDN+xWrE1AN4aNdB5pd1gC7zbOGZDFALrKp0
	QxfLInJpVGxdDiJ7Nj98bgKYTEv4rq3CB0sRKI85BvJw4zgiY5KARtXEdxf0RKJvBuT6
	x+HsWtRgmi3sIh3rcaxMvbbqP/Io16XvBTsV3VCUAxR30EKBILWcKSzSDMC01P8mev3v
	Ri7FOwp6eBOgmQlRVjo9bH1tuH8OAr3/Ov0zTSbopHPtRDBFTaNN8zx3ohO4rf3CiH8l
	GY7A==
X-Gm-Message-State: ALoCoQmbbPy861FkzcXzZ+FjoMCNXSLoEIBu8SB2eiv3AhlfMm/K6iwB04HQDSu/rj+OJCnmQRHv
X-Received: by 10.182.81.197 with SMTP id c5mr5860801oby.40.1385375522188;
	Mon, 25 Nov 2013 02:32:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.76.0.50 with HTTP; Mon, 25 Nov 2013 02:31:42 -0800 (PST)
In-Reply-To: <CACRzEue6532CCMbAo=a43Hb1ycPmaTg60LfOH273Y4CW93kemQ@mail.gmail.com>
References: <CACRzEudEBj6ZfdTyzCtBWCorDdPgPHHpWovbR5VJB5GuRVu8dA@mail.gmail.com>
	<CACRzEue6532CCMbAo=a43Hb1ycPmaTg60LfOH273Y4CW93kemQ@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 25 Nov 2013 11:31:42 +0100
Message-ID: <CAP71Wjwim0JxpX01Zw+EXknG1cLC0xqVcf8ZwK=2=i2Bfswegg@mail.gmail.com>
To: Todd Stellanova <tstellanova@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: unbootable image produced with PACKAGE_CLASSES ?= "package_ipk", /etc missing
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
X-List-Received-Date: Mon, 25 Nov 2013 10:32:08 -0000
Content-Type: multipart/alternative; boundary=047d7b2e4d58e17efe04ebfddfe6

--047d7b2e4d58e17efe04ebfddfe6
Content-Type: text/plain; charset=ISO-8859-1

On Sun, Nov 24, 2013 at 3:51 AM, Todd Stellanova <tstellanova@gmail.com>wrote:

> It appears that copying the files to the ext3 / sdcard image is failing in
> *populate-extfs.sh*
> I see a series of these errors:
>
> *copy_file: Could not allocate block in ext2 filesystem*
>
> Any idea what might cause this?  I've verified that the initial .tar
> archive and the bz2 contain the right files.
>

can you try to create a new <build> folder (do not remove the current one
for now) and reuse the downloads and sstate folder? i am wondering if there
is a bug when trying to change PACKAGE_CLASSES in an existing <build>
folder.

--047d7b2e4d58e17efe04ebfddfe6
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Sun, Nov 24, 2013 at 3:51 AM, Todd Stellanova <span dir=3D"ltr">&lt;<a h=
ref=3D"mailto:tstellanova@gmail.com" target=3D"_blank">tstellanova@gmail.co=
m</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div dir=3D"ltr">It appears that copying the=
 files to the ext3 / sdcard image is failing in=A0<strong style=3D"font-siz=
e:13px;color:rgb(51,51,51);overflow:hidden;text-overflow:ellipsis;width:610=
px;white-space:nowrap;font-family:Helvetica,arial,freesans,clean,sans-serif=
;line-height:33px;background-color:rgb(250,250,250);display:inline!importan=
t">populate-extfs.sh</strong><div>


I see a series of these errors:</div><div><br></div><div><div><b>copy_file:=
 Could not allocate block in ext2 filesystem</b></div></div><div><br></div>=
<div>Any idea what might cause this? =A0I&#39;ve verified that the initial =
.tar archive and the bz2 contain the right files.<br>


</div><div></div></div></blockquote></div><br>can you try to create a new &=
lt;build&gt; folder (do not remove the current one for now) and reuse the d=
ownloads and sstate folder? i am wondering if there is a bug when trying to=
 change PACKAGE_CLASSES in an existing &lt;build&gt; folder.=A0</div>

<div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra"><br></div><=
/div>

--047d7b2e4d58e17efe04ebfddfe6--
