Return-Path: <munoz0raul@gmail.com>
Received: from mail-bk0-f47.google.com (mail-bk0-f47.google.com
	[209.85.214.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F126AE0161C
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 07:09:34 -0700 (PDT)
Received: by mail-bk0-f47.google.com with SMTP id mx12so951537bkb.34
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2013 07:09:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=+S/XQZueVPxucYtXRwUJaPsiCcIC440Rj4G/ExKB+oQ=;
	b=EFdn+hc6VlAhM0ti+fCywf7SmFa6bNE3pmkk7hXgxW/MqKFun4FsqOgxKz8BqmWWQu
	KlpqcpBa5WSp/hl9L9Bufr4njwTcJjDKSex3jzbNnCfIPyOGBwEUoJuPP7E481WPGOUo
	NjgEvlulXtBMW2WeXhTo9sc4kHFctkwPiL/g5R1IKYBPlMZ0GAC4y2xRoK++q0Kgfqyf
	VVOi6hGITWEULxwZ9GWKKSV+nNEPs2ieCzmhFuNMwgxvTxGcJlILhFqkh/w042NQk3tS
	wsiNX12az1TBGcGR2d4rA5KjdEbg6m4wWmkIh7wCVZ9Iq+w467OKWMZ/8Ms+9ZsrRugt
	g8XA==
MIME-Version: 1.0
X-Received: by 10.204.231.71 with SMTP id jp7mr39496bkb.48.1380809372948; Thu,
	03 Oct 2013 07:09:32 -0700 (PDT)
Received: by 10.205.19.197 with HTTP; Thu, 3 Oct 2013 07:09:32 -0700 (PDT)
In-Reply-To: <524D7809.5040700@windriver.com>
References: <CANmVirhM7Lo1_ZCfqJw1-U2oqu0b3DueWY71euz27GRz__3hkg@mail.gmail.com>
	<524D6529.90802@windriver.com>
	<CANmVirhtHb+fS=SSyMKu053DQq3tiTfX-V1nyA+ak44tFGdaPg@mail.gmail.com>
	<524D7809.5040700@windriver.com>
Date: Thu, 3 Oct 2013 11:09:32 -0300
Message-ID: <CANmVirgN+tS+g_2bCxeSMbQf67x-=GZPxF50CPnSP7QL1OrwSg@mail.gmail.com>
From: Raul Rosetto Munoz <munoz0raul@gmail.com>
To: Bruce Ashfield <bruce.ashfield@windriver.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Install Kernel Modules in rootfs
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
X-List-Received-Date: Thu, 03 Oct 2013 14:09:37 -0000
Content-Type: multipart/alternative; boundary=485b393aa9752d9ce304e7d6bcf5

--485b393aa9752d9ce304e7d6bcf5
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Look all the time the modules of kernel 3.8 come.

My /lib/modules is like this:

/lib/modules$ ll
total 16
drwxr-xr-x 4 raul raul 4096 Oct  3 10:09 ./
drwxr-xr-x 7 raul raul 4096 Oct  3 10:09 ../
drwxr-xr-x 2 raul raul 4096 Oct  3 10:09 2.6.35.3-1.1.0+yocto+g914558e/
drwxr-xr-x 3 raul raul 4096 Oct  1 15:45 3.8.13-fslc+g7205340/


/lib/modules$ ll 2.6.35.3-1.1.0+yocto+g914558e/
total 36
drwxr-xr-x 2 raul raul 4096 Oct  3 10:09 ./
drwxr-xr-x 4 raul raul 4096 Oct  3 10:09 ../
-rw-r--r-- 1 raul raul   45 Oct  3 10:09 modules.alias
-rw-r--r-- 1 raul raul   12 Oct  3 10:09 modules.alias.bin
-rw-r--r-- 1 raul raul    0 Oct  3 10:09 modules.builtin.bin
-rw-r--r-- 1 raul raul    0 Oct  3 10:09 modules.dep
-rw-r--r-- 1 raul raul   12 Oct  3 10:09 modules.dep.bin
-rw-r--r-- 1 raul raul   52 Oct  3 10:09 modules.devname
-rw-r--r-- 1 raul raul  131 Oct  3 10:09 modules.softdep
-rw-r--r-- 1 raul raul   49 Oct  3 10:09 modules.symbols
-rw-r--r-- 1 raul raul   12 Oct  3 10:09 modules.symbols.bin

/lib/modules$ ll 3.8.13-fslc+g7205340/
total 24
drwxr-xr-x 3 raul raul 4096 Oct  1 15:45 ./
drwxr-xr-x 4 raul raul 4096 Oct  3 10:09 ../
drwxr-xr-x 6 raul raul 4096 Oct  1 15:45 kernel/
-rw-r--r-- 1 raul raul 5153 Oct  1 15:45 modules.builtin
-rw-r--r-- 1 raul raul  391 Oct  1 15:45 modules.order

I have no idea how to remove the remains of the kernel 3.8.

I dont want to delete all the /tmp

=3D/

Take so much time.








On Thu, Oct 3, 2013 at 10:58 AM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 13-10-03 09:32 AM, Raul Rosetto Munoz wrote:
>
>> I think that I found my problem,
>>
>> I tryed to use the kernel 3.8 before in this build system, but I decided
>> to go back to the 2.6.35.3.
>>
>> But now I did bitbake -c cleanall virtual/kernel, I tryed to delete
>> every thing about kernel 3.8 but the modules that are instaled in my
>> /lib/modules/ still be the modules of kernel 3.8.
>>
>> How I clean the modules and force to use no 2.6.35.3 again.
>>
>> Which package or command do that?
>>
>
> If you reconstruct your image, the old module package shouldn't be
> re-used, since you would now have a dependency on the 2.6.35.x kernel.
>
> How exactly are they installed in /lib/modules ? Did you do anything
> in particular ?
>
> Bruce
>
>
>> Thanks for all Help.
>>
>>
>> On Thu, Oct 3, 2013 at 9:38 AM, Bruce Ashfield
>> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@**windriver.com<bru=
ce.ashfield@windriver.com>>>
>> wrote:
>>
>>
>>     On 13-10-03 08 <tel:13-10-03%2008>:34 AM, Raul Rosetto Munoz wrote:
>>
>>         Hello All,
>>
>>         I'm Trying to install the kernel modules inside my rootfs but I
>>         couldn't
>>         find an especific information that help me to do that!
>>
>>         I have in my /tmp/images/ the tgz with all the modules that I
>> need.
>>
>>         modules--2.6.35.3-r32.23-__**imx28evk-20131002210958.tgz
>>
>>
>>         I just want that this tzg was extracted inside my rootfs
>>         /lib/modules.
>>
>>         Please some one can help me with this?
>>
>>
>>     Does your image type have a RDEPENDS on "kernel-modules", or do you
>>     have IMAGE_INSTALL_append =3D " kernel-modules", in your local.conf =
?
>>
>>     If you do either of the above, the entire set of built modules will
>>     be installed.
>>
>>     You can also install / require individual modules via
>>     kernel-module-<module name>.
>>
>>     The Yocto docs should have details on this as well.
>>
>>     Cheers,
>>
>>     Bruce
>>
>>
>>         Thanks so much.
>>
>>         --
>>         *Raul Rosetto Mu=F1oz*
>>
>>
>>         ______________________________**___________________
>>         yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>>         https://lists.yoctoproject.__**org/listinfo/yocto
>>
>>         <https://lists.yoctoproject.**org/listinfo/yocto<https://lists.y=
octoproject.org/listinfo/yocto>
>> >
>>
>>
>>
>>
>>
>> --
>> *Raul Rosetto Mu=F1oz*
>>
>
>


--=20
*Raul Rosetto Mu=F1oz*

--485b393aa9752d9ce304e7d6bcf5
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Look all the time the modules of kernel 3.8 come.<div><br>=
</div><div style>My /lib/modules is like this:</div><div style><br></div><d=
iv style><div><font face=3D"courier new, monospace">/lib/modules$ ll</font>=
</div>
<div><font face=3D"courier new, monospace">total 16</font></div><div><font =
face=3D"courier new, monospace">drwxr-xr-x 4 raul raul 4096 Oct =A03 10:09 =
./</font></div><div><font face=3D"courier new, monospace">drwxr-xr-x 7 raul=
 raul 4096 Oct =A03 10:09 ../</font></div>
<div><font face=3D"courier new, monospace">drwxr-xr-x 2 raul raul 4096 Oct =
=A03 10:09 2.6.35.3-1.1.0+yocto+g914558e/</font></div><div><font face=3D"co=
urier new, monospace">drwxr-xr-x 3 raul raul 4096 Oct =A01 15:45 3.8.13-fsl=
c+g7205340/</font></div>
<div><font face=3D"courier new, monospace"><br></font></div><div><font face=
=3D"courier new, monospace"><br></font></div><div><div><font face=3D"courie=
r new, monospace">/lib/modules$ ll 2.6.35.3-1.1.0+yocto+g914558e/</font></d=
iv>
<div><font face=3D"courier new, monospace">total 36</font></div><div><font =
face=3D"courier new, monospace">drwxr-xr-x 2 raul raul 4096 Oct =A03 10:09 =
./</font></div><div><font face=3D"courier new, monospace">drwxr-xr-x 4 raul=
 raul 4096 Oct =A03 10:09 ../</font></div>
<div><font face=3D"courier new, monospace">-rw-r--r-- 1 raul raul =A0 45 Oc=
t =A03 10:09 modules.alias</font></div><div><font face=3D"courier new, mono=
space">-rw-r--r-- 1 raul raul =A0 12 Oct =A03 10:09 modules.alias.bin</font=
></div><div>
<font face=3D"courier new, monospace">-rw-r--r-- 1 raul raul =A0 =A00 Oct =
=A03 10:09 modules.builtin.bin</font></div><div><font face=3D"courier new, =
monospace">-rw-r--r-- 1 raul raul =A0 =A00 Oct =A03 10:09 modules.dep</font=
></div><div><font face=3D"courier new, monospace">-rw-r--r-- 1 raul raul =
=A0 12 Oct =A03 10:09 modules.dep.bin</font></div>
<div><font face=3D"courier new, monospace">-rw-r--r-- 1 raul raul =A0 52 Oc=
t =A03 10:09 modules.devname</font></div><div><font face=3D"courier new, mo=
nospace">-rw-r--r-- 1 raul raul =A0131 Oct =A03 10:09 modules.softdep</font=
></div><div>
<font face=3D"courier new, monospace">-rw-r--r-- 1 raul raul =A0 49 Oct =A0=
3 10:09 modules.symbols</font></div><div><font face=3D"courier new, monospa=
ce">-rw-r--r-- 1 raul raul =A0 12 Oct =A03 10:09 modules.symbols.bin</font>=
</div></div>
<div><font face=3D"courier new, monospace"><br></font></div><div><div><font=
 face=3D"courier new, monospace">/lib/modules$ ll 3.8.13-fslc+g7205340/</fo=
nt></div><div><font face=3D"courier new, monospace">total 24</font></div><d=
iv>
<font face=3D"courier new, monospace">drwxr-xr-x 3 raul raul 4096 Oct =A01 =
15:45 ./</font></div><div><font face=3D"courier new, monospace">drwxr-xr-x =
4 raul raul 4096 Oct =A03 10:09 ../</font></div><div><font face=3D"courier =
new, monospace">drwxr-xr-x 6 raul raul 4096 Oct =A01 15:45 kernel/</font></=
div>
<div><font face=3D"courier new, monospace">-rw-r--r-- 1 raul raul 5153 Oct =
=A01 15:45 modules.builtin</font></div><div><font face=3D"courier new, mono=
space">-rw-r--r-- 1 raul raul =A0391 Oct =A01 15:45 modules.order</font></d=
iv></div>
<div><br></div><div style>I have no idea how to remove the remains of the k=
ernel 3.8.</div><div style><br></div><div style>I dont want to delete all t=
he /tmp</div><div style><br></div><div style>=3D/</div><div style><br></div=
>
<div style>Take so much time.</div><div style><br></div><div style><br></di=
v><div><br></div><div><br></div><div><br></div></div><div style><br></div><=
/div><div class=3D"gmail_extra"><br><br><div class=3D"gmail_quote">On Thu, =
Oct 3, 2013 at 10:58 AM, Bruce Ashfield <span dir=3D"ltr">&lt;<a href=3D"ma=
ilto:bruce.ashfield@windriver.com" target=3D"_blank">bruce.ashfield@windriv=
er.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On <a href=3D"tel:13-10-03=
%2009" value=3D"+13100309" target=3D"_blank">13-10-03 09</a>:32 AM, Raul Ro=
setto Munoz wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I think that I found my problem,<br>
<br>
I tryed to use the kernel 3.8 before in this build system, but I decided<br=
>
to go back to the 2.6.35.3.<br>
<br>
But now I did bitbake -c cleanall virtual/kernel, I tryed to delete<br>
every thing about kernel 3.8 but the modules that are instaled in my<br>
/lib/modules/ still be the modules of kernel 3.8.<br>
<br>
How I clean the modules and force to use no 2.6.35.3 again.<br>
<br>
Which package or command do that?<br>
</blockquote>
<br></div>
If you reconstruct your image, the old module package shouldn&#39;t be<br>
re-used, since you would now have a dependency on the 2.6.35.x kernel.<br>
<br>
How exactly are they installed in /lib/modules ? Did you do anything<br>
in particular ?<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">
<br>
Thanks for all Help.<br>
<br>
<br>
On Thu, Oct 3, 2013 at 9:38 AM, Bruce Ashfield<br></div>
&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce=
.ashfield@windriver.com</a> &lt;mailto:<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@<u></u>windriver.com</a>&gt;&g=
t; wrote:<div class=3D"im">
<br>
<br>
=A0 =A0 On <a href=3D"tel:13-10-03%2008" value=3D"+13100308" target=3D"_bla=
nk">13-10-03 08</a> &lt;tel:13-10-03%2008&gt;:34 AM, Raul Rosetto Munoz wro=
te:<br>
<br>
=A0 =A0 =A0 =A0 Hello All,<br>
<br>
=A0 =A0 =A0 =A0 I&#39;m Trying to install the kernel modules inside my root=
fs but I<br>
=A0 =A0 =A0 =A0 couldn&#39;t<br>
=A0 =A0 =A0 =A0 find an especific information that help me to do that!<br>
<br>
=A0 =A0 =A0 =A0 I have in my /tmp/images/ the tgz with all the modules that=
 I need.<br>
<br></div>
=A0 =A0 =A0 =A0 modules--2.6.35.3-r32.23-__<u></u>imx28evk-20131002210958.t=
gz<div class=3D"im"><br>
<br>
=A0 =A0 =A0 =A0 I just want that this tzg was extracted inside my rootfs<br=
>
=A0 =A0 =A0 =A0 /lib/modules.<br>
<br>
=A0 =A0 =A0 =A0 Please some one can help me with this?<br>
<br>
<br>
=A0 =A0 Does your image type have a RDEPENDS on &quot;kernel-modules&quot;,=
 or do you<br>
=A0 =A0 have IMAGE_INSTALL_append =3D &quot; kernel-modules&quot;, in your =
local.conf ?<br>
<br>
=A0 =A0 If you do either of the above, the entire set of built modules will=
<br>
=A0 =A0 be installed.<br>
<br>
=A0 =A0 You can also install / require individual modules via<br>
=A0 =A0 kernel-module-&lt;module name&gt;.<br>
<br>
=A0 =A0 The Yocto docs should have details on this as well.<br>
<br>
=A0 =A0 Cheers,<br>
<br>
=A0 =A0 Bruce<br>
<br>
<br>
=A0 =A0 =A0 =A0 Thanks so much.<br>
<br>
=A0 =A0 =A0 =A0 --<br>
=A0 =A0 =A0 =A0 *Raul Rosetto Mu=F1oz*<br>
<br>
<br></div>
=A0 =A0 =A0 =A0 ______________________________<u></u>___________________<br=
>
=A0 =A0 =A0 =A0 yocto mailing list<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<br>
=A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject." target=3D"_blank">h=
ttps://lists.yoctoproject.</a>__<u></u>org/listinfo/yocto<div class=3D"im">=
<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</=
a>&gt;<br>
<br>
<br>
<br>
<br>
<br>
--<br>
*Raul Rosetto Mu=F1oz*<br>
</div></blockquote>
<br>
</blockquote></div><br><br clear=3D"all"><div><br></div>-- <br>*Raul Rosett=
o Mu=F1oz*<br>
</div>

--485b393aa9752d9ce304e7d6bcf5--
