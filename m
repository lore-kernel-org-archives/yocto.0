Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ve0-f176.google.com (mail-ve0-f176.google.com
	[209.85.128.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DFDEBE00747
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 02:18:16 -0700 (PDT)
Received: by mail-ve0-f176.google.com with SMTP id jx11so6582281veb.21
	for <yocto@yoctoproject.org>; Thu, 12 Sep 2013 02:18:16 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=OPD6rKyvla1Zm7jvJvsGFpQmZE/mjm4d5cE0aH+Fdys=;
	b=AQ/NzuG/VK6hUn5Lx2IAa4XUej8V0ZY2ICAuUKHvZ1j860dlxkI1I1keD5LPgraG1B
	c4ks4QYLKXEUbQbWKz6oUcdmSfY52Ai3S1HTEnJW8d2BCVdKm1Hjwhx5UMSzTyojK10C
	HHsOQkazNthEAYJNZAYjI/MnN4l2vbD6jwMkP4zZYLIHCDzijnbR8q8sMGHoCshRBGy+
	9zLaF5ZOVm3EGB4xSRfyuNzpnlckRXydRxus3ljPvc0FX6FsEOgR6R3XIFrqa3si9gtb
	rXJQ83Jmdxc3I+hIsrnyTBOqeTgFORcc+yKrMVLmJN0YBYldVBu9NSBWuHY2nSqFKRWu
	TlAA==
X-Gm-Message-State: ALoCoQmTP/t+2sAoCVXJv9EpA3mGiqAq3kZ1p+5+ErHqH1X+ATzXNb9mvHjlomWm62r41c5BHzwB
X-Received: by 10.52.229.73 with SMTP id so9mr583161vdc.27.1378977496386; Thu,
	12 Sep 2013 02:18:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.221.49.202 with HTTP; Thu, 12 Sep 2013 02:17:56 -0700 (PDT)
In-Reply-To: <17797116383D4341B029FDF34C22BF6A5D7F898497@GUREXMB01.ASIAN.AD.ARICENT.COM>
References: <mailman.7042.1376600669.19864.yocto@yoctoproject.org>
	<17797116383D4341B029FDF34C22BF6A5D7F5F6077@GUREXMB01.ASIAN.AD.ARICENT.COM>
	<CAP71WjxsyY39wb3tnBUMV=AuURNi1DrpRBB-aG0qPOA220Fw_g@mail.gmail.com>
	<17797116383D4341B029FDF34C22BF6A5D7F898497@GUREXMB01.ASIAN.AD.ARICENT.COM>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 12 Sep 2013 11:17:56 +0200
Message-ID: <CAP71WjwK0PNte7PLW2PDfQviwm=VB=Gqm7xOtSb_n7CDRtBjzA@mail.gmail.com>
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
X-List-Received-Date: Thu, 12 Sep 2013 09:18:24 -0000
Content-Type: multipart/alternative; boundary=089e0115fe0ed3667004e62c3798

--089e0115fe0ed3667004e62c3798
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Sep 12, 2013 at 10:39 AM, Rohit2 Jindal
<rohit2.jindal@aricent.com>wrote:

> host xyz
> user epuser
> hostname ep-code.xyz.com
> port 22
> identityfile ~/.ssh/abc_r.j
>
> ****
>
> we can only access our servers using xyz:component way in ****
>
> git clone xyz:sysconfig ****
>
> but  in bitbake this doesnot work.****
>
> ** **
>
> Please suggest me the solution****
>
>
hmm. have you tried what I suggested? That .ssh/config above is not what I
suggested. I think your problem is because you use short alias instead of
host. but i am not sure since i haven't tried. can you please try to use
full host name in SRC_URI and modify .ssh/config accordingly? the config i
shared is the one i use for my projects.

--089e0115fe0ed3667004e62c3798
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Thu, Sep 12, 2013 at 10:39 AM, Rohit2 Jindal <span dir=3D"ltr">&lt;<a hr=
ef=3D"mailto:rohit2.jindal@aricent.com" target=3D"_blank">rohit2.jindal@ari=
cent.com</a>&gt;</span> wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im"><p class=3D"MsoNormal">hos=
t xyz<br>
user epuser<br>
hostname <a href=3D"http://ep-code.xyz.com" target=3D"_blank">ep-code.xyz.c=
om</a><br>
port 22<br>
identityfile ~/.ssh/abc_r.j<br>
<br>
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d"><u></u><u></u></span></p>
</div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">we can only access =
our servers using xyz:component way in
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">git clone xyz:sysconfig
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">but=A0 in bitbake this do=
esnot work.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Please suggest me the sol=
ution<u></u><u></u></span></p>
<p class=3D"MsoNormal"></p></blockquote></div><br>hmm. have you tried what =
I suggested? That .ssh/config above is not what I suggested. I think your p=
roblem is because you use short alias instead of host. but i am not sure si=
nce i haven&#39;t tried. can you please try to use full host name in SRC_UR=
I and modify .ssh/config accordingly? the config i shared is the one i use =
for my projects.</div>

<div class=3D"gmail_extra"><br></div></div>

--089e0115fe0ed3667004e62c3798--
