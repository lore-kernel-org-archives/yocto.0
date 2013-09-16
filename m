Return-Path: <pcjegan@gmail.com>
Received: from mail-ve0-f171.google.com (mail-ve0-f171.google.com
	[209.85.128.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 053A7E014EA
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 03:32:06 -0700 (PDT)
Received: by mail-ve0-f171.google.com with SMTP id pa12so2809076veb.16
	for <yocto@yoctoproject.org>; Mon, 16 Sep 2013 03:32:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=sSWmosziOlseayD/1pYLaAW2UdwqrJD7TnhL1Xd66GM=;
	b=CLnkcaYjXBJnavGc1tehT/JiBoYf31n5+h0Mh3rzC+vGZPSxrRjo1l7tJQUgxr9MtX
	ImbkXLO/WkfHzlJNlFUYVbdbnJPzBKYJHzDl/M+2Y29/tqpqa5fsyBkSaJWyLlsc/tUc
	6o68DvJJahs2Jy0SOZThfcKoxSGOUqLiaeA6bts5ng2txN8ARa6dtU9unRawqc3hpGQE
	5UFyzXqXw5PcJrhOwc/EfYuXj4PZSy4ylhoIbPWfGYvVEEb4PDscDDEm4bvtOkWX+ayg
	hxYonWkhJVHoJpcXaXcdpeG1yew96VlY/sAv6HXx8QhrK9Bh/Y7WetoLHCTA3L/uVHUY
	BTGQ==
X-Received: by 10.52.94.37 with SMTP id cz5mr84038vdb.30.1379327525914; Mon,
	16 Sep 2013 03:32:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.220.169.146 with HTTP; Mon, 16 Sep 2013 03:31:45 -0700 (PDT)
In-Reply-To: <loom.20130916T112434-834@post.gmane.org>
References: <loom.20130916T112434-834@post.gmane.org>
From: Jegan Chandru <pcjegan@gmail.com>
Date: Mon, 16 Sep 2013 16:01:45 +0530
Message-ID: <CAAA4K6KgpiL+Y1U2Ui3YGm8nV_Y+2bvCjAocw3j=CHQTRhTyvA@mail.gmail.com>
To: Jack <jackrubby2010@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Add nfs package to image minimal for atom-pc
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
X-List-Received-Date: Mon, 16 Sep 2013 10:32:07 -0000
Content-Type: multipart/alternative; boundary=20cf307f31703610ec04e67db7c1

--20cf307f31703610ec04e67db7c1
Content-Type: text/plain; charset=ISO-8859-1

I reckon it should be packagegroup-core-nfs-server??! Can you try adding
this in local.conf?


On Mon, Sep 16, 2013 at 3:07 PM, Jack <jackrubby2010@gmail.com> wrote:

> Hi,
>
> I built a core-image-minimal for atom-pc. Then, I want to add it nfs and
> ssh
> packages. I added IMAGE_INSTALL_append_pn-core-image-minimal = "
> packagegroup-core-ssh-openssh packagegroup-core-nfs" line to local.conf
> file. Package packagegroup-core-ssh-openssh was built but I got error for
> packagegroup-core-nfs. Error is:
>
> Error: packagegroup-core-nfs not found in the base feeds (atom_pc core2
> i686
> i586 i486 i386 x86 noarch any all).
>
> How can I solve this error ?
> Thanks.
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>



-- 
JCP

--20cf307f31703610ec04e67db7c1
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I reckon it should be=A0packagegroup-core-nfs-server??! Ca=
n you try adding this in local.conf?</div><div class=3D"gmail_extra"><br><b=
r><div class=3D"gmail_quote">On Mon, Sep 16, 2013 at 3:07 PM, Jack <span di=
r=3D"ltr">&lt;<a href=3D"mailto:jackrubby2010@gmail.com" target=3D"_blank">=
jackrubby2010@gmail.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">Hi,<br>
<br>
I built a core-image-minimal for atom-pc. Then, I want to add it nfs and ss=
h<br>
packages. I added IMAGE_INSTALL_append_pn-core-image-minimal =3D &quot;<br>
packagegroup-core-ssh-openssh packagegroup-core-nfs&quot; line to local.con=
f<br>
file. Package packagegroup-core-ssh-openssh was built but I got error for<b=
r>
packagegroup-core-nfs. Error is:<br>
<br>
Error: packagegroup-core-nfs not found in the base feeds (atom_pc core2 i68=
6<br>
i586 i486 i386 x86 noarch any all).<br>
<br>
How can I solve this error ?<br>
Thanks.<br>
<br>
<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" target=3D"_blank"=
>https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>JCP
</div>

--20cf307f31703610ec04e67db7c1--
