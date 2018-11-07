Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 00E3AE009AA; Wed,  7 Nov 2018 04:48:53 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.45 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f45.google.com (mail-io1-f45.google.com
	[209.85.166.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E6DC4E00950
	for <yocto@yoctoproject.org>; Wed,  7 Nov 2018 04:48:52 -0800 (PST)
Received: by mail-io1-f45.google.com with SMTP id t81-v6so11764177iod.10
	for <yocto@yoctoproject.org>; Wed, 07 Nov 2018 04:48:52 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=L7d1zdC/VQUEcGsFq6Ir1dUBb7US0TX3NlNFTlLJPz4=;
	b=YwRddr9XC42NYBxf/d2FduJ+bLBd2bJ/Us3DkKMvLPUkUJVBPmPGLHpB5MLq0qZayp
	jWGBqjN4ikvCCyqzn31UIDzjID0JqCx9+evzqmI45+zM1ltDwU7ssYtJFId4rxaKjcrk
	7M5hsSx8i7+0d2cATf646mEZoaws9g6tnMQWMWqlczBdmRGNa2Vu8LlrEU9L50Bh5yk5
	cZPbyyeRitmQ0elSODbS+vmiIO3RUdkykvAAXxqEOa72bgsjjgBc4wb4K2y5kD93XVgR
	BAC1vn8p3THHT2d9dSmAYws0cBlZLVaFiFVVs3gGhzgQDWf5oKSwF9n2Sxf9jOXWnvO1
	PLcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=L7d1zdC/VQUEcGsFq6Ir1dUBb7US0TX3NlNFTlLJPz4=;
	b=WoxPloxTHmb2iNyBeB+n9kuXIQAg3hWQvqG8p/tUj6K8DjKpQSXSHwea/uns8XVnlY
	6GU0D9msvbXFI941pbjhfBc9AlEts3ndPE/xD49GCYgzxWZcMA6nhnNPGy4oZMmL7IO4
	+beJIunGyOdy1J0/ukO2Yewrimll4uGmBlAY6nX88E17picFt7n29LqW0t+6tkudz5Sh
	9fB/uSrURTXT3sXjOjRjEWZX5TgGceVJPiZFJk6ejn5prWFEPi8Y4EqFPzHGa6oQkWQB
	vKA73MMitqQQcNgROjeExehyR+Wuatvab3/ph+PocYTfXtEvOA6cX7zHuxDP/Pp93nM+
	q6lw==
X-Gm-Message-State: AGRZ1gJVveOrofwTVXmp1ZbFCVieMzxUtSi+OvgCUtgUMtJbiyMzhJbD
	yjWb4dq2iYKunkrL2+0DWhveU/Bwwg5ew3SbOCJrTQ==
X-Google-Smtp-Source: AJdET5f21i2eSpB5RMuO42Mnqzx5WDDdJXjovcwDJ1mFPPJ1oxizr4eoUwy1AMcJKP3394Cp1mqQrNsIQ/wvLmSTL0k=
X-Received: by 2002:a6b:1602:: with SMTP id 2-v6mr41726iow.201.1541594932200; 
	Wed, 07 Nov 2018 04:48:52 -0800 (PST)
MIME-Version: 1.0
References: <DM5PR15MB1913AB2A45AB39D4E13747C0F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
	<4bdb31ad-0680-364f-e03a-adb208843b0c@windriver.com>
	<DM5PR15MB19136741E6F723877E25D769F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
In-Reply-To: <DM5PR15MB19136741E6F723877E25D769F0C40@DM5PR15MB1913.namprd15.prod.outlook.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 7 Nov 2018 12:48:39 +0000
Message-ID: <CAJTo0LbkXG4WMg=xht0p3Ho9Jgg3XdTUiRjOawt0-6QjhkmdjQ@mail.gmail.com>
To: "Mohammad, Jamal M" <MohammadJamal.Mohiuddin@ncr.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: lib32-ncurses not installing in rootfs
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
X-List-Received-Date: Wed, 07 Nov 2018 12:48:54 -0000
Content-Type: multipart/alternative; boundary="0000000000005263ef057a128a06"

--0000000000005263ef057a128a06
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

The curses libraries are split up further, have a look at what else is in
packages-split, or even better use oe-pkgdata-util:

$ oe-pkgdata-util list-pkg-files -p lib32-ncurses
...
lib32-ncurses-libncurses:
        /lib/libncurses.so.5
        /lib/libncurses.so.5.9
lib32-ncurses-libncursesw:
        /lib/libncursesw.so.5
        /lib/libncursesw.so.5.9
lib32-ncurses-libpanel:
        /usr/lib/libpanel.so.5
        /usr/lib/libpanel.so.5.9
...

$ oe-pkgdata-util find-path */libncurses.so.*
lib32-ncurses-dbg: /lib/.debug/libncurses.so.5.9
lib32-ncurses-libncurses: /lib/libncurses.so.5
lib32-ncurses-libncurses: /lib/libncurses.so.5.9

Ross

On Wed, 7 Nov 2018 at 09:39, Mohammad, Jamal M <
MohammadJamal.Mohiuddin@ncr.com> wrote:

> There are many directories inside packages-split folder , lib32-ncurses,
> lib32-ncurses-dbg, lib32-ncurses-dev, lib32-ncurses-doc
>
>
>
> Looking into lib32-ncurses,
>
>
>
> lib32-ncurses
>
> =E2=94=94=E2=94=80=E2=94=80 usr
>
>     =E2=94=9C=E2=94=80=E2=94=80 bin
>
>     =E2=94=82   =E2=94=9C=E2=94=80=E2=94=80 tput
>
>     =E2=94=82   =E2=94=94=E2=94=80=E2=94=80 tset
>
>     =E2=94=94=E2=94=80=E2=94=80 share
>
>         =E2=94=94=E2=94=80=E2=94=80 tabset
>
>             =E2=94=9C=E2=94=80=E2=94=80 std
>
>             =E2=94=9C=E2=94=80=E2=94=80 stdcrt
>
>             =E2=94=9C=E2=94=80=E2=94=80 vt100
>
>             =E2=94=94=E2=94=80=E2=94=80 vt300
>
>
>
> It doesn=E2=80=99t have lib folder, so where are the libncurses.so missin=
g..
>
>
>
> *From:* ChenQi [mailto:Qi.Chen@windriver.com]
> *Sent:* Wednesday, November 7, 2018 3:04 PM
> *To:* Mohammad, Jamal M <MohammadJamal.Mohiuddin@ncr.com>;
> Yocto-mailing-list <yocto@yoctoproject.org>
> *Subject:* Re: [yocto] lib32-ncurses not installing in rootfs
>
>
>
> **External Message* - Use caution before opening links or attachments*
>
>
>
> Check the packages-split/ directory to see how files are put in each
> package.
> I guess these files are packages into other packages derived from the
> ncurses recipe.
>
> Best Regards,
> Chen Qi
>
> On 11/07/2018 05:21 PM, Mohammad, Jamal M wrote:
>
> Hi Guys,
>
> I am trying to add 32-bit ncurses into my root file system
>
> I am using intel yocto bsp sumo branch
>
> Here is my local.conf:
>
>
>
> require conf/multilib.conf
>
> DEFAULTTUNE_virtclass-multilib-lib32 =3D "x86"
>
> IMAGE_INSTALL_append =3D " dpkg gnutls lib32-glibc lib32-libgcc
> lib32-libstdc++ lib32-gnutls lib32-freetype lib32    -libx11 lib32-ncurse=
s
> lib32-dpkg python3-six"
>
>
>
> ncurses folder is present in tmp
>
> build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6.0+20171125-r0
>
>
>
> The image folder is created and has the libraries
>
>
> build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6.0+20171125-r0/image/=
lib
>
> libncurses.so.5  libncurses.so.5.9  libncursesw.so.5  libncursesw.so.5.9
> libtinfo.so.5  libtinfo.so.5.9
>
>
>
> But these files are not present in root file system.
>
> How can i debug or what should be my next step to get them into root file
> system. which log files should I look
>
> Thanks for your time.
>
>
>
> Regards,
>
> Jamal,
>
> Software Specialist,
>
> NCR Corporation
>
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000005263ef057a128a06
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr">The cur=
ses libraries are split up further, have a look at what else is in packages=
-split, or even better use oe-pkgdata-util:</div><div dir=3D"ltr"><br></div=
><div dir=3D"ltr">$ oe-pkgdata-util list-pkg-files -p lib32-ncurses<div>...=
</div><div><div>lib32-ncurses-libncurses:</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 /lib/libncurses.so.5</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 /lib/libn=
curses.so.5.9</div><div>lib32-ncurses-libncursesw:</div><div>=C2=A0 =C2=A0 =
=C2=A0 =C2=A0 /lib/libncursesw.so.5</div><div>=C2=A0 =C2=A0 =C2=A0 =C2=A0 /=
lib/libncursesw.so.5.9</div><div>lib32-ncurses-libpanel:</div><div>=C2=A0 =
=C2=A0 =C2=A0 =C2=A0 /usr/lib/libpanel.so.5</div><div>=C2=A0 =C2=A0 =C2=A0 =
=C2=A0 /usr/lib/libpanel.so.5.9</div></div><div>...</div><div><br></div><di=
v><div>$ oe-pkgdata-util find-path */libncurses.so.*</div><div>lib32-ncurse=
s-dbg: /lib/.debug/libncurses.so.5.9</div><div>lib32-ncurses-libncurses: /l=
ib/libncurses.so.5</div><div>lib32-ncurses-libncurses: /lib/libncurses.so.5=
.9</div></div><div><br></div><div>Ross</div></div></div></div></div><br><di=
v class=3D"gmail_quote"><div dir=3D"ltr">On Wed, 7 Nov 2018 at 09:39, Moham=
mad, Jamal M &lt;<a href=3D"mailto:MohammadJamal.Mohiuddin@ncr.com">Mohamma=
dJamal.Mohiuddin@ncr.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex">





<div bgcolor=3D"white" lang=3D"EN-US" link=3D"#0563C1" vlink=3D"#954F72">
<div class=3D"m_8553149051529753677WordSection1">
<p class=3D"MsoNormal"><span style=3D"color:windowtext">There are many dire=
ctories inside packages-split folder , lib32-ncurses, lib32-ncurses-dbg, li=
b32-ncurses-dev, lib32-ncurses-doc<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">Looking into lib32-=
ncurses,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">lib32-ncurses<u></u=
><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">=E2=94=94=E2=94=80=
=E2=94=80 usr<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=C2=A0=C2=A0 =
</span><span style=3D"font-family:&quot;Arial&quot;,sans-serif;color:window=
text">=E2=94=9C</span><span style=3D"color:windowtext">=E2=94=80=E2=94=80</=
span><span style=3D"color:windowtext"> bin<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=C2=A0=C2=A0 =
=E2=94=82=C2=A0=C2=A0 </span><span style=3D"font-family:&quot;Arial&quot;,s=
ans-serif;color:windowtext">=E2=94=9C</span><span style=3D"color:windowtext=
">=E2=94=80=E2=94=80</span><span style=3D"color:windowtext"> tput<u></u><u>=
</u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=C2=A0=C2=A0 =
=E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 tset<u></u><u></u></span>=
</p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=C2=A0=C2=A0 =
=E2=94=94=E2=94=80=E2=94=80 share<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 tabset<u></u><u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif;color:windowtext">=E2=94=9C</span><spa=
n style=3D"color:windowtext">=E2=94=80=E2=94=80</span><span style=3D"color:=
windowtext"> std<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif;color:windowtext">=E2=94=9C</span><spa=
n style=3D"color:windowtext">=E2=94=80=E2=94=80</span><span style=3D"color:=
windowtext"> stdcrt<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 </span><span style=3D"font=
-family:&quot;Arial&quot;,sans-serif;color:windowtext">=E2=94=9C</span><spa=
n style=3D"color:windowtext">=E2=94=80=E2=94=80</span><span style=3D"color:=
windowtext"> vt100<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=
=80 vt300<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><u></u>=C2=A0<u></u=
></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext">It doesn=E2=80=99t =
have lib folder, so where are the libncurses.so missing..
<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"color:windowtext"><u></u>=C2=A0<u></u=
></span></p>
<div>
<div style=3D"border:none;border-top:solid #e1e1e1 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"color:windowtext">From:</span></b>=
<span style=3D"color:windowtext"> ChenQi [mailto:<a href=3D"mailto:Qi.Chen@=
windriver.com" target=3D"_blank">Qi.Chen@windriver.com</a>]
<br>
<b>Sent:</b> Wednesday, November 7, 2018 3:04 PM<br>
<b>To:</b> Mohammad, Jamal M &lt;<a href=3D"mailto:MohammadJamal.Mohiuddin@=
ncr.com" target=3D"_blank">MohammadJamal.Mohiuddin@ncr.com</a>&gt;; Yocto-m=
ailing-list &lt;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Re: [yocto] lib32-ncurses not installing in rootfs<u></u><u=
></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<table class=3D"m_8553149051529753677MsoNormalTable" border=3D"0" cellspaci=
ng=3D"3" cellpadding=3D"0" style=3D"background:yellow">
<tbody>
<tr>
<td style=3D"padding:.75pt .75pt .75pt .75pt">
<p class=3D"MsoNormal"><b>*External Message* - Use caution before opening l=
inks or attachments</b><u></u><u></u></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Check the packages-split/ directory to see how files=
 are put in each package.<br>
I guess these files are packages into other packages derived from the ncurs=
es recipe.<br>
<br>
Best Regards,<br>
Chen Qi<br>
<br>
On 11/07/2018 05:21 PM, Mohammad, Jamal M wrote:<u></u><u></u></p>
</div>
<blockquote style=3D"margin-top:5.0pt;margin-bottom:5.0pt">
<p class=3D"MsoNormal">Hi Guys,<u></u><u></u></p>
<p class=3D"MsoNormal">I am trying to add 32-bit ncurses into my root file =
system<u></u><u></u></p>
<p class=3D"MsoNormal">I am using intel yocto bsp sumo branch<u></u><u></u>=
</p>
<p class=3D"MsoNormal">Here is my local.conf:<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">require conf/multilib.conf<u></u><u></u></p>
<p class=3D"MsoNormal">DEFAULTTUNE_virtclass-multilib-lib32 =3D &quot;x86&q=
uot;<u></u><u></u></p>
<p class=3D"MsoNormal">IMAGE_INSTALL_append =3D &quot; dpkg gnutls lib32-gl=
ibc lib32-libgcc lib32-libstdc++ lib32-gnutls lib32-freetype lib32=C2=A0=C2=
=A0=C2=A0 -libx11 lib32-ncurses lib32-dpkg python3-six&quot;<u></u><u></u><=
/p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">ncurses folder is present in tmp<u></u><u></u></p>
<p class=3D"MsoNormal">build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6=
.0+20171125-r0<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">The image folder is created and has the libraries<u>=
</u><u></u></p>
<p class=3D"MsoNormal">build/tmp/work/x86-pokymllib32-linux/lib32-ncurses/6=
.0+20171125-r0/image/lib<u></u><u></u></p>
<p class=3D"MsoNormal">libncurses.so.5=C2=A0 libncurses.so.5.9=C2=A0 libncu=
rsesw.so.5=C2=A0 libncursesw.so.5.9=C2=A0 libtinfo.so.5=C2=A0 libtinfo.so.5=
.9<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">But these files are not present in root file system.=
<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"font-variant-ligatures:normal;font-variant-=
caps:normal;font-variant-numeric:inherit;font-variant-east-asian:inherit;fo=
nt-stretch:inherit;line-height:inherit;box-sizing:inherit;text-decoration-s=
tyle:initial;text-decoration-color:initial;word-spacing:0px">
How can i debug or what should be my next step to get them into root file s=
ystem. which log files should I look<u></u><u></u></p>
<p class=3D"MsoNormal" style=3D"font-variant-ligatures:normal;font-variant-=
caps:normal;font-variant-numeric:inherit;font-variant-east-asian:inherit;fo=
nt-stretch:inherit;line-height:inherit;box-sizing:inherit;text-decoration-s=
tyle:initial;text-decoration-color:initial;word-spacing:0px">
Thanks for your time.<u></u><u></u></p>
<p class=3D"MsoNormal">=C2=A0<u></u><u></u></p>
<p class=3D"MsoNormal">Regards,<u></u><u></u></p>
<p class=3D"MsoNormal">Jamal,<u></u><u></u></p>
<p class=3D"MsoNormal">Software Specialist,<u></u><u></u></p>
<p class=3D"MsoNormal">NCR Corporation<u></u><u></u></p>
<p class=3D"MsoNormal"><br>
<br>
<u></u><u></u></p>
</blockquote>
<p><u></u>=C2=A0<u></u></p>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000005263ef057a128a06--
