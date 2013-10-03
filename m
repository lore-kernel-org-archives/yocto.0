Return-Path: <munoz0raul@gmail.com>
Received: from mail-bk0-f53.google.com (mail-bk0-f53.google.com
	[209.85.214.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3A048E0161B
	for <yocto@yoctoproject.org>; Thu,  3 Oct 2013 08:37:06 -0700 (PDT)
Received: by mail-bk0-f53.google.com with SMTP id d7so983924bkh.26
	for <yocto@yoctoproject.org>; Thu, 03 Oct 2013 08:37:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=W2GOY7OhUlyFohxcJQztnsh6kOYGlpyO5cDL/OKDOos=;
	b=0MUCXfE+Vzl/UVkqE1H2bmgAEkX7HgTSirN+nygJgcLeTsvjWLm1SzGzd+8iRmnG6v
	FiVjfDTmZCn1QDB3bpQipWKWk9Xb6/0cLN03h/Mx9hKmrtOKWTqrDVgx34BmjdmRhM96
	o23nrWbPA7a+FlJD5IPwut59obsKS70whRcMucHYKb3Wfj5fmpcHO77Uv+Kwapv9WTtr
	bFRkXxJh2QJQ4BSvwcKb4EW+IKjVSs8Z41zHZxwN7gdVS0M93mwjp4/ww0Gds45s3vYd
	Rq0UmyyyW+dMSM/5XWoqe9FYiJpE+W45XAHyMhGTIjOLMD+a8pOp2pYZ4CNhQerRlSA/
	nuIw==
MIME-Version: 1.0
X-Received: by 10.204.168.197 with SMTP id v5mr8275159bky.24.1380814625307;
	Thu, 03 Oct 2013 08:37:05 -0700 (PDT)
Received: by 10.205.19.197 with HTTP; Thu, 3 Oct 2013 08:37:05 -0700 (PDT)
In-Reply-To: <524D7D94.10401@windriver.com>
References: <CANmVirhM7Lo1_ZCfqJw1-U2oqu0b3DueWY71euz27GRz__3hkg@mail.gmail.com>
	<524D6529.90802@windriver.com>
	<CANmVirhtHb+fS=SSyMKu053DQq3tiTfX-V1nyA+ak44tFGdaPg@mail.gmail.com>
	<524D7809.5040700@windriver.com>
	<CANmVirgN+tS+g_2bCxeSMbQf67x-=GZPxF50CPnSP7QL1OrwSg@mail.gmail.com>
	<524D7D94.10401@windriver.com>
Date: Thu, 3 Oct 2013 12:37:05 -0300
Message-ID: <CANmViriLvOkVbrVtVcASeNLHc77kD-1Y6T=Wmnn+=ZW0r3mg2w@mail.gmail.com>
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
X-List-Received-Date: Thu, 03 Oct 2013 15:37:07 -0000
Content-Type: multipart/alternative; boundary=bcaec52c5efb3e3eb904e7d7f551

--bcaec52c5efb3e3eb904e7d7f551
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Bruce, I don't know if i did the correct thing but works.

I found in my tmp some thing about kernel 3.8 fslc and I deleted it.



/tmp$ find . -name "*3.8*" | grep fslc
./stamps/imx28evk-poky-linux-gnueabi/linux-fslc/3.8+gitAUTOINC+720534092422=
44eaa59497e665945ddeea69c397-r5.do_cleansstate.sigdata.fff4fea9e1722790f7eb=
22d5d464b82a
./stamps/imx28evk-poky-linux-gnueabi/linux-fslc/3.8+gitAUTOINC+720534092422=
44eaa59497e665945ddeea69c397-r5.do_cleansstate.fff4fea9e1722790f7eb22d5d464=
b82a
./work/imx28evk-poky-linux-gnueabi/linux-fslc/3.8+gitAUTOINC+72053409242244=
eaa59497e665945ddeea69c397-r5
./work/imx28evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/lib/mod=
ules/3.8.13-fslc+g7205340
./work/imx28evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/boot/uI=
mage-3.8.13-fslc+g7205340
./work/imx28evk-poky-linux-gnueabi/core-image-minimal/1.0-r0/rootfs/etc/rpm=
-postinsts/kernel-image-3.8.13-fslc+g7205340
./buildstats/virtual/kernel-imx28evk/201310011528/linux-fslc-3.8+gitAUTOINC=
+72053409242244eaa59497e665945ddeea69c397-r5


After that I returned my prefered kernel version for 3.8, and did a bitbake
cleanall virtual/kernel.

And change again my kernel version for default 2.6.35 and works perfect.

Thanks For all help, did you help me a lot!



On Thu, Oct 3, 2013 at 11:22 AM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 13-10-03 10:09 AM, Raul Rosetto Munoz wrote:
>
>> Look all the time the modules of kernel 3.8 come.
>>
>> My /lib/modules is like this:
>>
>
> That's where ? In your booted target ? What BSP are you using, how did
> you install the image ?
>
> Answering that question, will likely get you your answer. If you previous=
ly
> generated a rootfs and installed it. You'd need to do the same thing
> and do it with a clean install with the new kernel to remove all
> remnants of the old package.
>
> (That's assuming you aren't using package management on the target,
> or package feeds. I don't, so manually look after this sort of thing).
>
> Cheers,
>
> Bruce
>
>
>> /lib/modules$ ll
>> total 16
>> drwxr-xr-x 4 raul raul 4096 Oct  3 10:09 ./
>> drwxr-xr-x 7 raul raul 4096 Oct  3 10:09 ../
>> drwxr-xr-x 2 raul raul 4096 Oct  3 10:09 2.6.35.3-1.1.0+yocto+g914558e/
>> drwxr-xr-x 3 raul raul 4096 Oct  1 15:45 3.8.13-fslc+g7205340/
>>
>>
>> /lib/modules$ ll 2.6.35.3-1.1.0+yocto+g914558e/
>> total 36
>> drwxr-xr-x 2 raul raul 4096 Oct  3 10:09 ./
>> drwxr-xr-x 4 raul raul 4096 Oct  3 10:09 ../
>> -rw-r--r-- 1 raul raul   45 Oct  3 10:09 modules.alias
>> -rw-r--r-- 1 raul raul   12 Oct  3 10:09 modules.alias.bin
>> -rw-r--r-- 1 raul raul    0 Oct  3 10:09 modules.builtin.bin
>> -rw-r--r-- 1 raul raul    0 Oct  3 10:09 modules.dep
>> -rw-r--r-- 1 raul raul   12 Oct  3 10:09 modules.dep.bin
>> -rw-r--r-- 1 raul raul   52 Oct  3 10:09 modules.devname
>> -rw-r--r-- 1 raul raul  131 Oct  3 10:09 modules.softdep
>> -rw-r--r-- 1 raul raul   49 Oct  3 10:09 modules.symbols
>> -rw-r--r-- 1 raul raul   12 Oct  3 10:09 modules.symbols.bin
>>
>> /lib/modules$ ll 3.8.13-fslc+g7205340/
>> total 24
>> drwxr-xr-x 3 raul raul 4096 Oct  1 15:45 ./
>> drwxr-xr-x 4 raul raul 4096 Oct  3 10:09 ../
>> drwxr-xr-x 6 raul raul 4096 Oct  1 15:45 kernel/
>> -rw-r--r-- 1 raul raul 5153 Oct  1 15:45 modules.builtin
>> -rw-r--r-- 1 raul raul  391 Oct  1 15:45 modules.order
>>
>> I have no idea how to remove the remains of the kernel 3.8.
>>
>> I dont want to delete all the /tmp
>>
>> =3D/
>>
>> Take so much time.
>>
>>
>>
>>
>>
>>
>>
>>
>> On Thu, Oct 3, 2013 at 10:58 AM, Bruce Ashfield
>> <bruce.ashfield@windriver.com <mailto:bruce.ashfield@**windriver.com<bru=
ce.ashfield@windriver.com>>>
>> wrote:
>>
>>
>>     On 13-10-03 09 <tel:13-10-03%2009>:32 AM, Raul Rosetto Munoz wrote:
>>
>>         I think that I found my problem,
>>
>>         I tryed to use the kernel 3.8 before in this build system, but I
>>         decided
>>         to go back to the 2.6.35.3.
>>
>>         But now I did bitbake -c cleanall virtual/kernel, I tryed to
>> delete
>>         every thing about kernel 3.8 but the modules that are instaled i=
n
>> my
>>         /lib/modules/ still be the modules of kernel 3.8.
>>
>>         How I clean the modules and force to use no 2.6.35.3 again.
>>
>>         Which package or command do that?
>>
>>
>>     If you reconstruct your image, the old module package shouldn't be
>>     re-used, since you would now have a dependency on the 2.6.35.x kerne=
l.
>>
>>     How exactly are they installed in /lib/modules ? Did you do anything
>>     in particular ?
>>
>>     Bruce
>>
>>
>>         Thanks for all Help.
>>
>>
>>         On Thu, Oct 3, 2013 at 9:38 AM, Bruce Ashfield
>>         <bruce.ashfield@windriver.com
>>         <mailto:bruce.ashfield@**windriver.com<bruce.ashfield@windriver.=
com>
>> >
>>         <mailto:bruce.ashfield@__windr**iver.com <http://windriver.com>
>>         <mailto:bruce.ashfield@**windriver.com<bruce.ashfield@windriver.=
com>>>>
>> wrote:
>>
>>
>>              On 13-10-03 08 <tel:13-10-03%2008> <tel:13-10-03%2008>:34
>>
>>         AM, Raul Rosetto Munoz wrote:
>>
>>                  Hello All,
>>
>>                  I'm Trying to install the kernel modules inside my
>>         rootfs but I
>>                  couldn't
>>                  find an especific information that help me to do that!
>>
>>                  I have in my /tmp/images/ the tgz with all the modules
>>         that I need.
>>
>>                  modules--2.6.35.3-r32.23-____**
>> imx28evk-20131002210958.tgz
>>
>>
>>
>>                  I just want that this tzg was extracted inside my rootf=
s
>>                  /lib/modules.
>>
>>                  Please some one can help me with this?
>>
>>
>>              Does your image type have a RDEPENDS on "kernel-modules",
>>         or do you
>>              have IMAGE_INSTALL_append =3D " kernel-modules", in your
>>         local.conf ?
>>
>>              If you do either of the above, the entire set of built
>>         modules will
>>              be installed.
>>
>>              You can also install / require individual modules via
>>              kernel-module-<module name>.
>>
>>              The Yocto docs should have details on this as well.
>>
>>              Cheers,
>>
>>              Bruce
>>
>>
>>                  Thanks so much.
>>
>>                  --
>>                  *Raul Rosetto Mu=F1oz*
>>
>>
>>                  ______________________________**_____________________
>>
>>                  yocto mailing list
>>         yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**>
>>         <mailto:yocto@yoctoproject.org <mailto:yocto@yoctoproject.org**
>> >__>
>>         https://lists.yoctoproject.___**_org/listinfo/yocto
>>
>>
>>                  <https://lists.yoctoproject.__**org/listinfo/yocto
>>         <https://lists.yoctoproject.**org/listinfo/yocto<https://lists.y=
octoproject.org/listinfo/yocto>
>> >>
>>
>>
>>
>>
>>
>>         --
>>         *Raul Rosetto Mu=F1oz*
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

--bcaec52c5efb3e3eb904e7d7f551
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Bruce, I don&#39;t know if i did the correct thing bu=
t works.</div><div><br></div><div>I found in my tmp some thing about kernel=
 3.8 fslc and I deleted it.</div><div><br></div><div><br></div><div style>
<br></div><div style><div><font face=3D"courier new, monospace">/tmp$=A0fin=
d . -name &quot;*3.8*&quot; | grep fslc</font></div><div><font face=3D"cour=
ier new, monospace">./stamps/imx28evk-poky-linux-gnueabi/linux-fslc/3.8+git=
AUTOINC+72053409242244eaa59497e665945ddeea69c397-r5.do_cleansstate.sigdata.=
fff4fea9e1722790f7eb22d5d464b82a</font></div>
<div><font face=3D"courier new, monospace">./stamps/imx28evk-poky-linux-gnu=
eabi/linux-fslc/3.8+gitAUTOINC+72053409242244eaa59497e665945ddeea69c397-r5.=
do_cleansstate.fff4fea9e1722790f7eb22d5d464b82a</font></div><div><font face=
=3D"courier new, monospace">./work/imx28evk-poky-linux-gnueabi/linux-fslc/3=
.8+gitAUTOINC+72053409242244eaa59497e665945ddeea69c397-r5</font></div>
<div><font face=3D"courier new, monospace">./work/imx28evk-poky-linux-gnuea=
bi/core-image-minimal/1.0-r0/rootfs/lib/modules/3.8.13-fslc+g7205340</font>=
</div><div><font face=3D"courier new, monospace">./work/imx28evk-poky-linux=
-gnueabi/core-image-minimal/1.0-r0/rootfs/boot/uImage-3.8.13-fslc+g7205340<=
/font></div>
<div><font face=3D"courier new, monospace">./work/imx28evk-poky-linux-gnuea=
bi/core-image-minimal/1.0-r0/rootfs/etc/rpm-postinsts/kernel-image-3.8.13-f=
slc+g7205340</font></div><div><font face=3D"courier new, monospace">./build=
stats/virtual/kernel-imx28evk/201310011528/linux-fslc-3.8+gitAUTOINC+720534=
09242244eaa59497e665945ddeea69c397-r5</font></div>
<div><br></div><div><br></div><div style><div>After that I returned my pref=
ered kernel version for 3.8, and did a bitbake cleanall virtual/kernel.</di=
v><div><br></div><div>And change again my kernel version for default 2.6.35=
 and works perfect.</div>
<div><br></div><div>Thanks For all help, did you help me a lot!</div></div>=
<div style><br></div></div></div><div class=3D"gmail_extra"><br><br><div cl=
ass=3D"gmail_quote">On Thu, Oct 3, 2013 at 11:22 AM, Bruce Ashfield <span d=
ir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_b=
lank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"im">On <a href=3D"tel:13-10-03=
%2010" value=3D"+13100310" target=3D"_blank">13-10-03 10</a>:09 AM, Raul Ro=
setto Munoz wrote:<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Look all the time the modules of kernel 3.8 come.<br>
<br>
My /lib/modules is like this:<br>
</blockquote>
<br></div>
That&#39;s where ? In your booted target ? What BSP are you using, how did<=
br>
you install the image ?<br>
<br>
Answering that question, will likely get you your answer. If you previously=
<br>
generated a rootfs and installed it. You&#39;d need to do the same thing<br=
>
and do it with a clean install with the new kernel to remove all<br>
remnants of the old package.<br>
<br>
(That&#39;s assuming you aren&#39;t using package management on the target,=
<br>
or package feeds. I don&#39;t, so manually look after this sort of thing).<=
br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div><div class=3D"h5">
<br>
/lib/modules$ ll<br>
total 16<br>
drwxr-xr-x 4 raul raul 4096 Oct =A03 10:09 ./<br>
drwxr-xr-x 7 raul raul 4096 Oct =A03 10:09 ../<br>
drwxr-xr-x 2 raul raul 4096 Oct =A03 10:09 2.6.35.3-1.1.0+yocto+g914558e/<b=
r>
drwxr-xr-x 3 raul raul 4096 Oct =A01 15:45 3.8.13-fslc+g7205340/<br>
<br>
<br>
/lib/modules$ ll 2.6.35.3-1.1.0+yocto+g914558e/<br>
total 36<br>
drwxr-xr-x 2 raul raul 4096 Oct =A03 10:09 ./<br>
drwxr-xr-x 4 raul raul 4096 Oct =A03 10:09 ../<br>
-rw-r--r-- 1 raul raul =A0 45 Oct =A03 10:09 modules.alias<br>
-rw-r--r-- 1 raul raul =A0 12 Oct =A03 10:09 modules.alias.bin<br>
-rw-r--r-- 1 raul raul =A0 =A00 Oct =A03 10:09 modules.builtin.bin<br>
-rw-r--r-- 1 raul raul =A0 =A00 Oct =A03 10:09 modules.dep<br>
-rw-r--r-- 1 raul raul =A0 12 Oct =A03 10:09 modules.dep.bin<br>
-rw-r--r-- 1 raul raul =A0 52 Oct =A03 10:09 modules.devname<br>
-rw-r--r-- 1 raul raul =A0131 Oct =A03 10:09 modules.softdep<br>
-rw-r--r-- 1 raul raul =A0 49 Oct =A03 10:09 modules.symbols<br>
-rw-r--r-- 1 raul raul =A0 12 Oct =A03 10:09 modules.symbols.bin<br>
<br>
/lib/modules$ ll 3.8.13-fslc+g7205340/<br>
total 24<br>
drwxr-xr-x 3 raul raul 4096 Oct =A01 15:45 ./<br>
drwxr-xr-x 4 raul raul 4096 Oct =A03 10:09 ../<br>
drwxr-xr-x 6 raul raul 4096 Oct =A01 15:45 kernel/<br>
-rw-r--r-- 1 raul raul 5153 Oct =A01 15:45 modules.builtin<br>
-rw-r--r-- 1 raul raul =A0391 Oct =A01 15:45 modules.order<br>
<br>
I have no idea how to remove the remains of the kernel 3.8.<br>
<br>
I dont want to delete all the /tmp<br>
<br>
=3D/<br>
<br>
Take so much time.<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
<br>
On Thu, Oct 3, 2013 at 10:58 AM, Bruce Ashfield<br></div></div>
&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D"_blank">bruce=
.ashfield@windriver.com</a> &lt;mailto:<a href=3D"mailto:bruce.ashfield@win=
driver.com" target=3D"_blank">bruce.ashfield@<u></u>windriver.com</a>&gt;&g=
t; wrote:<div class=3D"im">
<br>
<br>
=A0 =A0 On <a href=3D"tel:13-10-03%2009" value=3D"+13100309" target=3D"_bla=
nk">13-10-03 09</a> &lt;tel:13-10-03%2009&gt;:32 AM, Raul Rosetto Munoz wro=
te:<br>
<br>
=A0 =A0 =A0 =A0 I think that I found my problem,<br>
<br>
=A0 =A0 =A0 =A0 I tryed to use the kernel 3.8 before in this build system, =
but I<br>
=A0 =A0 =A0 =A0 decided<br>
=A0 =A0 =A0 =A0 to go back to the 2.6.35.3.<br>
<br>
=A0 =A0 =A0 =A0 But now I did bitbake -c cleanall virtual/kernel, I tryed t=
o delete<br>
=A0 =A0 =A0 =A0 every thing about kernel 3.8 but the modules that are insta=
led in my<br>
=A0 =A0 =A0 =A0 /lib/modules/ still be the modules of kernel 3.8.<br>
<br>
=A0 =A0 =A0 =A0 How I clean the modules and force to use no 2.6.35.3 again.=
<br>
<br>
=A0 =A0 =A0 =A0 Which package or command do that?<br>
<br>
<br>
=A0 =A0 If you reconstruct your image, the old module package shouldn&#39;t=
 be<br>
=A0 =A0 re-used, since you would now have a dependency on the 2.6.35.x kern=
el.<br>
<br>
=A0 =A0 How exactly are they installed in /lib/modules ? Did you do anythin=
g<br>
=A0 =A0 in particular ?<br>
<br>
=A0 =A0 Bruce<br>
<br>
<br>
=A0 =A0 =A0 =A0 Thanks for all Help.<br>
<br>
<br>
=A0 =A0 =A0 =A0 On Thu, Oct 3, 2013 at 9:38 AM, Bruce Ashfield<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=
=3D"_blank">bruce.ashfield@windriver.com</a><br>
=A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:bruce.ashfield@windriver.com" =
target=3D"_blank">bruce.ashfield@<u></u>windriver.com</a>&gt;<br></div>
=A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:bruce.ashfield@" target=3D"_bl=
ank">bruce.ashfield@</a>__<a href=3D"http://windriver.com" target=3D"_blank=
">windr<u></u>iver.com</a><br>
=A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:bruce.ashfield@windriver.com" =
target=3D"_blank">bruce.ashfield@<u></u>windriver.com</a>&gt;&gt;&gt; wrote=
:<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0On <a href=3D"tel:13-10-03%2008" value=3D"+13100=
308" target=3D"_blank">13-10-03 08</a> &lt;tel:13-10-03%2008&gt; &lt;tel:13=
-10-03%2008&gt;:34<div class=3D"im"><br>
=A0 =A0 =A0 =A0 AM, Raul Rosetto Munoz wrote:<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Hello All,<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0I&#39;m Trying to install the kernel mod=
ules inside my<br>
=A0 =A0 =A0 =A0 rootfs but I<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0couldn&#39;t<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0find an especific information that help =
me to do that!<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0I have in my /tmp/images/ the tgz with a=
ll the modules<br>
=A0 =A0 =A0 =A0 that I need.<br>
<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0modules--2.6.35.3-r32.23-____<u></u>imx2=
8evk-20131002210958.tgz<div class=3D"im"><br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0I just want that this tzg was extracted =
inside my rootfs<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0/lib/modules.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Please some one can help me with this?<b=
r>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0Does your image type have a RDEPENDS on &quot;ke=
rnel-modules&quot;,<br>
=A0 =A0 =A0 =A0 or do you<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0have IMAGE_INSTALL_append =3D &quot; kernel-modu=
les&quot;, in your<br>
=A0 =A0 =A0 =A0 local.conf ?<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0If you do either of the above, the entire set of=
 built<br>
=A0 =A0 =A0 =A0 modules will<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0be installed.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0You can also install / require individual module=
s via<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0kernel-module-&lt;module name&gt;.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0The Yocto docs should have details on this as we=
ll.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0Cheers,<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0Bruce<br>
<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0Thanks so much.<br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0--<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0*Raul Rosetto Mu=F1oz*<br>
<br>
<br></div>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0______________________________<u></u>___=
__________________<div class=3D"im"><br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0yocto mailing list<br>
=A0 =A0 =A0 =A0 <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@yoctoproject=
.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;<br></div>
=A0 =A0 =A0 =A0 &lt;mailto:<a href=3D"mailto:yocto@yoctoproject.org" target=
=3D"_blank">yocto@yoctoproject.org</a> &lt;mailto:<a href=3D"mailto:yocto@y=
octoproject.org" target=3D"_blank">yocto@yoctoproject.org</a><u></u>&gt;__&=
gt;<br>
=A0 =A0 =A0 =A0 <a href=3D"https://lists.yoctoproject." target=3D"_blank">h=
ttps://lists.yoctoproject.</a>___<u></u>_org/listinfo/yocto<div class=3D"im=
"><br>
<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0&lt;<a href=3D"https://lists.yoctoprojec=
t." target=3D"_blank">https://lists.yoctoproject.</a>__<u></u>org/listinfo/=
yocto<br>
=A0 =A0 =A0 =A0 &lt;<a href=3D"https://lists.yoctoproject.org/listinfo/yoct=
o" target=3D"_blank">https://lists.yoctoproject.<u></u>org/listinfo/yocto</=
a>&gt;&gt;<br>
<br>
<br>
<br>
<br>
<br>
=A0 =A0 =A0 =A0 --<br>
=A0 =A0 =A0 =A0 *Raul Rosetto Mu=F1oz*<br>
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

--bcaec52c5efb3e3eb904e7d7f551--
