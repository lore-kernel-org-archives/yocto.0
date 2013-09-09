Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-wi0-f178.google.com (mail-wi0-f178.google.com
	[209.85.212.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 31227E014E4
	for <yocto@yoctoproject.org>; Mon,  9 Sep 2013 05:45:33 -0700 (PDT)
Received: by mail-wi0-f178.google.com with SMTP id hn9so3316689wib.17
	for <yocto@yoctoproject.org>; Mon, 09 Sep 2013 05:45:32 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=pKflQQHrG6yh4IlsO9uMafGtCFCmLTD+zYvJZqXObBU=;
	b=PmYYr2tW4KizYnQ5OAWkUSH3SkZDhIhJdIj1/APGvmO5KKW898HA6Df8WIvyoBWura
	tGdLjuhcmEBxL6jL0ybRen1VGRXbLTJvlxRXU8XWjkwXHaEU6EwGiayKTKrm1l8augi6
	wiwTh5c+sb86upBmcoxbYvH8Kz1eqjeXItEdxV9FGc4FcAcscffwKy+1OI1g1ufWW7TH
	A3w9kwDTJE6yN+s1fi8EEntQ5mE6tpmYrGGcJCpRgBp/nBJxf2tCs2pMvV1glZlwAgIo
	sX4sply/rcnL+lRC/pohydRcxxvOFe1uDWG8EGdca6NI+AhkZgLsvD62zr5q/AHpHbzU
	iDRw==
X-Gm-Message-State: ALoCoQlihOwzpuUJSGrwtoAbifpA1ZD+iUj2XJXM4N2fzIwv5vmDCXxFO8vmpHTaKjvya9EvU9rJ
X-Received: by 10.180.74.164 with SMTP id u4mr8313068wiv.17.1378730732789;
	Mon, 09 Sep 2013 05:45:32 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.180.218.200 with HTTP; Mon, 9 Sep 2013 05:45:12 -0700 (PDT)
In-Reply-To: <17797116383D4341B029FDF34C22BF6A5D7F5F6077@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A5D7F5F6077@GUREXMB01.ASIAN.AD.ARICENT.COM>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Mon, 9 Sep 2013 14:45:12 +0200
Message-ID: <CAP71WjxsyY39wb3tnBUMV=AuURNi1DrpRBB-aG0qPOA220Fw_g@mail.gmail.com>
To: Rohit2 Jindal <rohit2.jindal@aricent.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto query on SR_URI creation
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
X-List-Received-Date: Mon, 09 Sep 2013 12:45:40 -0000
Content-Type: multipart/alternative; boundary=f46d043c7f5691ba3104e5f2c380

--f46d043c7f5691ba3104e5f2c380
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Sep 9, 2013 at 9:47 AM, Rohit2 Jindal <rohit2.jindal@aricent.com>wrote:

> Actually I want to access external git server of our client using yocto
> SRC_URI. But I am not able to create path to git server .
>
>
> I just have following info of external server with me
>
> 1)~/.ssh/config file
>
> host xyz
> user epuser
> hostname ep-code.xyz.com
> port 22
> identityfile ~/.ssh/abc_r.j
>
>
> 2)abc_r.j.pub file
> 3)abc_r.j file
>
> I am not able to understand which URI protocols will work for me to set
> path in SRC_URI of .bb file
>
>
> Same thing on linux prompt works like this
> $git clone xyz:sysconfig
>
>
>
> $buildroot>make git-checkout
> Available tag used is xxx-ep-20130823-3.0-alpha
> Available server epuser@ep-code.xyz.com:/
>


The following should work:

SRC_URI = "git://foo.xyz.com/folder/project.git;protocol=ssh"

And in ~/.ssh/config

Host foo.xyz.com
  User <your username>
  IdentityFile ~/.ssh/abc_r.j

You would need to ssh once to that server outside of OE so that i records
the server in ~/.ssh/known_hosts first.

--f46d043c7f5691ba3104e5f2c380
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Mon, Sep 9, 2013 at 9:47 AM, Rohit2 Jindal <span dir=3D"ltr">&lt;<a href=
=3D"mailto:rohit2.jindal@aricent.com" target=3D"_blank">rohit2.jindal@arice=
nt.com</a>&gt;</span> wrote:<br>


<blockquote class=3D"gmail_quote" style=3D"margin:0px 0px 0px 0.8ex;border-=
left-width:1px;border-left-color:rgb(204,204,204);border-left-style:solid;p=
adding-left:1ex"><div style=3D"overflow:hidden">Actually I want to access e=
xternal git server of our client using yocto SRC_URI. But I am not able to =
create path to git server .<br>



<br>
<br>
I just have following info of external server with me<br>
<br>
1)~/.ssh/config file<br>
<br>
host xyz<br>
user epuser<br>
hostname <a href=3D"http://ep-code.xyz.com" target=3D"_blank">ep-code.xyz.c=
om</a><br>
port 22<br>
identityfile ~/.ssh/abc_r.j<br>
<br>
<br>
2)abc_r.j.pub file<br>
3)abc_r.j file<br>
<br>
I am not able to understand which URI protocols will work for me to set pat=
h in SRC_URI of .bb file<br>
<br>
<br>
Same thing on linux prompt works like this<br>
$git clone xyz:sysconfig<br>
<br>
<br>
<br>
$buildroot&gt;make git-checkout<br>
Available tag used is xxx-ep-20130823-3.0-alpha<br>
Available server epuser@ep-code.xyz.com:/<br></div></blockquote></div><div =
class=3D"gmail_extra"><br></div><br>The following should work:</div><div cl=
ass=3D"gmail_extra">
<br></div><div class=3D"gmail_extra"><div class=3D"gmail_extra">SRC_URI =3D=
 &quot;git://<a href=3D"http://foo.xyz.com/folder/project.git;protocol=3Dss=
h" target=3D"_blank">foo.xyz.com/folder/project.git;protocol=3Dssh</a>&quot=
;</div><div>

<br></div><div>
And in ~/.ssh/config</div><div><br></div><div>Host <a href=3D"http://foo.xy=
z.com" target=3D"_blank">foo.xyz.com</a></div><div>=A0 User &lt;your userna=
me&gt;</div><div>=A0=A0IdentityFile ~/.ssh/abc_r.j</div></div><div class=3D=
"gmail_extra">

<br></div><div class=3D"gmail_extra">You would need to ssh once to that ser=
ver outside of OE so that i records the server in ~/.ssh/known_hosts first.=
</div>
<div class=3D"gmail_extra"><br></div></div>

--f46d043c7f5691ba3104e5f2c380--
