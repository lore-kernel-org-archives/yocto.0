Return-Path: <vidal.develone@gmail.com>
Received: from mail-ee0-f45.google.com (mail-ee0-f45.google.com [74.125.83.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 565BFE0140A
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 07:01:13 -0700 (PDT)
Received: by mail-ee0-f45.google.com with SMTP id c50so264705eek.32
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 07:01:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=ICLSzUAUbkId4ZiN8fBMiKUoqaQ4X/Fz7nC4xv857Yg=;
	b=wyAcOHh1DF5h09X1e7VbgyvXwLU6hkNbTlibsYZk8rZc8klbduVKryMqbof9M43Ixv
	fGx9vox9eYdk1BTRHOuprpN52hSuOOrTHoItcNnWULvT5kJyXP2dLaj/WolfpT9JKCE8
	emykuszaFR4drdfCcoeLtv9MqDoO+/Ki/3mtXN4reGYayB4nqZNnEhwApBb4FzF65JX/
	OksifjdfzsjylYTzczTdPmzbsLWax+0KJNnTqbPLHfPku6Mr30nC+1RWbFJ5zwphWKEw
	6X5vSChbjWD7IYA4vqahgQVSCRhdekMrWw7hluPshNAv2xqhLYEuVhNzGIWpEpcrkELZ
	3Yqg==
MIME-Version: 1.0
X-Received: by 10.15.41.2 with SMTP id r2mr6656868eev.20.1366120872268; Tue,
	16 Apr 2013 07:01:12 -0700 (PDT)
Received: by 10.223.168.6 with HTTP; Tue, 16 Apr 2013 07:01:12 -0700 (PDT)
In-Reply-To: <CAJTo0LZY+zTcC2dOLx0-5Y_jw1smgCvV-UGMv_J7VuDm9Bp9+g@mail.gmail.com>
References: <CANwz6nxtkVCvz5GBQwtDaL8Qx1FurZg4vMHv4eSyeP05d6ZQow@mail.gmail.com>
	<CAJTo0LZY+zTcC2dOLx0-5Y_jw1smgCvV-UGMv_J7VuDm9Bp9+g@mail.gmail.com>
Date: Tue, 16 Apr 2013 08:01:12 -0600
Message-ID: <CANwz6nxw7PK_g_RsukLbaFZYCPGEMrviFq_sm5ki6H=R_GiLDA@mail.gmail.com>
From: Edward Vidal <vidal.develone@gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: yocto@yoctoproject.org
Subject: Re: beagleboard, qemuarm, beaglebone, and pandaboard images.
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
X-List-Received-Date: Tue, 16 Apr 2013 14:01:13 -0000
Content-Type: multipart/alternative; boundary=089e016354104ff5d204da7acde5

--089e016354104ff5d204da7acde5
Content-Type: text/plain; charset=ISO-8859-1

Ross,
I did a search for installed-pkgs.txt and complementary-pkgs.txt neither of
these files were on my system.  I am assuming this is because in my
local.conf I am using INHERIT += "rm_work".
as found on page 41 of the ref_manual.  What is the difference between the
two pkgs sets?  The does reduce the capabilities of the systems?  Can the
complementary-pkgs.txt be installed with a flag?
Thanks any and all help is appreciated.
Ed


On Tue, Apr 16, 2013 at 2:54 AM, Burton, Ross <ross.burton@intel.com> wrote:

> On 16 April 2013 01:00, Edward Vidal <vidal.develone@gmail.com> wrote:
> > beagleboard 1949 RPMs
> > qemuarm 1747 RPMs
> > beaglebone 1742 RPMs
> > pandaboard 3842 RPMs
> > Any and all help will be appreciated.
>
> Have a look in work/[machine]/[image]/[version], you'll see
> installed-pkgs.txt and complementary-pkgs.txt.  Comparing these will
> tell you where the differences are.
>
> Ross
>

--089e016354104ff5d204da7acde5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Ross,<br></div>I did a search for inst=
alled-pkgs.txt and complementary-pkgs.txt neither of these files were on my=
 system.=A0 I am assuming this is because in my local.conf I am using INHER=
IT +=3D &quot;rm_work&quot;.<br>
</div>as found on page 41 of the ref_manual.=A0 What is the difference betw=
een the two pkgs sets?=A0 The does reduce the capabilities of the systems?=
=A0 Can the=A0 complementary-pkgs.txt be installed with a flag?<br></div>Th=
anks any and all help is appreciated.<br>
</div>Ed<br></div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_qu=
ote">On Tue, Apr 16, 2013 at 2:54 AM, Burton, Ross <span dir=3D"ltr">&lt;<a=
 href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.=
com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On 16 April 2013 01:00, Ed=
ward Vidal &lt;<a href=3D"mailto:vidal.develone@gmail.com">vidal.develone@g=
mail.com</a>&gt; wrote:<br>

&gt; beagleboard 1949 RPMs<br>
&gt; qemuarm 1747 RPMs<br>
&gt; beaglebone 1742 RPMs<br>
&gt; pandaboard 3842 RPMs<br>
&gt; Any and all help will be appreciated.<br>
<br>
</div>Have a look in work/[machine]/[image]/[version], you&#39;ll see<br>
installed-pkgs.txt and complementary-pkgs.txt. =A0Comparing these will<br>
tell you where the differences are.<br>
<span class=3D"HOEnZb"><font color=3D"#888888"><br>
Ross<br>
</font></span></blockquote></div><br></div>

--089e016354104ff5d204da7acde5--
