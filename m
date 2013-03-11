Return-Path: <hans.beckerus@gmail.com>
Received: from mail-qe0-f49.google.com (mail-qe0-f49.google.com
	[209.85.128.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3EF64E006E9
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 06:28:36 -0700 (PDT)
Received: by mail-qe0-f49.google.com with SMTP id 1so2246063qec.36
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 06:28:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:content-type;
	bh=u1CcTsQqZYr0sSN7QNO+5/5ckAAHaUCXkZvFG5RNbxg=;
	b=mANGNPDUYE8SBgpmxsaEgwMfig31E/r6iYh4rOxKHJtbLFSC6i1+joFezH7GZAmgO6
	YycuHhnIz1l48Gg4WeJHxarg/yOMWkZhyu3w0j4DdkXwfmg0xXdQ4vvdlG4WNR11CjS9
	rRwfzdaE6mu3TReMAG5tRptejXFNUHAeWW6l3zYRxlaI5Tem59Ab6XuNA3DkS1ujduMq
	gDkV4LDhnsD2fy9C6UWwCVusL5R+je9dVkXtARXc1fXR9vq1/xEtkyfaO7oq9yfoCYiC
	W4+uPwTW8BOLX+O88lyotKrA9uIk8KIjoVbcY4pILTlvIEP02ltvIIQxop5ea5MTfHpe
	tvnA==
MIME-Version: 1.0
X-Received: by 10.49.108.104 with SMTP id hj8mr4237782qeb.4.1363008515383;
	Mon, 11 Mar 2013 06:28:35 -0700 (PDT)
Received: by 10.49.67.98 with HTTP; Mon, 11 Mar 2013 06:28:35 -0700 (PDT)
In-Reply-To: <CAFyqS9rT=amDBNTO_awzXL3zNS-vCx1+0ERCspXTps8u_VpHwA@mail.gmail.com>
References: <CAFyqS9qFQ+kHrjmDAw4mCKop6RMzH7Ws1V6tt0_A2gM2a5UmYg@mail.gmail.com>
	<20130308191213.102258ca@e6520eb> <513A3557.10405@gmail.com>
	<513A7836.2050908@windriver.com>
	<CAFyqS9rT=amDBNTO_awzXL3zNS-vCx1+0ERCspXTps8u_VpHwA@mail.gmail.com>
Date: Mon, 11 Mar 2013 14:28:35 +0100
Message-ID: <CAFyqS9q5aDSUiGFOsOz4CWN7oV8kAiAuzA5mK4HbsEaReqQzHA@mail.gmail.com>
From: =?ISO-8859-1?Q?Hans_Beck=E9rus?= <hans.beckerus@gmail.com>
To: yocto@yoctoproject.org
Subject: How do I control what kernel modules are being loaded?
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
X-List-Received-Date: Mon, 11 Mar 2013 13:28:36 -0000
Content-Type: multipart/alternative; boundary=047d7bdc82e662a91204d7a626a4

--047d7bdc82e662a91204d7a626a4
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

On Sat, Mar 9, 2013 at 12:45 AM, Bruce Ashfield <
bruce.ashfield@windriver.com> wrote:

> On 13-03-08 2:00 PM, Hans Beckerus wrote:
>
>> On 2013-03-08 7:12, Eric B=E9nard wrote:
>>
>>> Hi Hans,
>>>
>>> Le Fri, 8 Mar 2013 13:08:21 +0100,
>>> Hans Beck=E9rus <hans.beckerus@gmail.com> a =E9crit :
>>>
>>>  Hi. I have built some custom kernel modules (.ko) using a .bb that
>>>> inherits from the module.bbclass. There is one main kernel module and
>>>> the rest are dependent on the first. Building and installing the
>>>> modules to the rootfs works fine. Next question is how do I control
>>>> what actual modules are loaded at boot, or actually how do I control
>>>> this through Yocto? To my surprise one of the kernel module loaded
>>>> automatically!? How could this happen? I did not have an entry for it
>>>> in /etc/modules. And what do I need to do to actually add entries to
>>>> /etc/modules? Or is there some other mechanism that I should use. I
>>>> tried going through the module.bbclass but must admit I lost it
>>>> somewhere in the middle ;) Any guidance would be appreciated.
>>>>
>>>>  when the module is built by the kernel recipe you can use :
>>> module_autoload and you can see somme usage examples here :
>>> http://cgit.openembedded.org/**meta-handheld/tree/conf/**
>>> machine/palmtx.conf<http://cgit.openembedded.org/meta-handheld/tree/con=
f/machine/palmtx.conf>
>>> http://cgit.openembedded.org/**meta-handheld/tree/conf/**
>>> machine/include/palm.inc<http://cgit.openembedded.org/meta-handheld/tre=
e/conf/machine/include/palm.inc>
>>>
>>>
>>> maybe you could get inspiration from kernel.bbclass to do the same
>>> thing in your recipe.
>>>
>>> Eric
>>>
>> Thanks guys for your quick feedback. I can see that using
>> module_autoload_${PN} seems like a good approach, if a package maps 1:1
>> to a module.
>> In my case that is not so. The package/recipe builds six (or even more)
>> .ko files using one makefile.
>> I guess one option could be to split each module build in its own
>> recipe, but that is not supported by the makefile and thus would require
>> patching from my side in the source tree. I think the only option I have
>> left is to try to use /etc/modules and add the modules there in a
>> do_install_append().
>> But the problem then is, what happens if some other package also add a
>> /etc/modules.conf to the image folder? Will it be merged or only copied?
>> In the latter case last package wins which would not work out very well =
:(
>>
>> Out of curiosity, what will module_autoload do? Will it add the .ko to
>> /etc/modules or does it implement some other mechanism to make a module
>> load automatically at boot?
>>
>
> It depends on what release you are using. In yocto 1.3 and before the
> autoload variables translated to mod-util loading, using just what you'd
> think. In yocto 1.4 and kmod in the picture:
>
>         # If autoloading is requested, output /etc/modules-load.d/<name>.=
*
> *conf and append
>         # appropriate modprobe commands to the postinst
>         autoload =3D d.getVar('module_autoload_%s' % basename, True)
>         if autoload:
>             name =3D '%s/etc/modules-load.d/%s.**conf' % (dvar, basename)
>             f =3D open(name, 'w')
>             for m in autoload.split():
>                 f.write('%s\n' % m)
>             f.close()
>             postinst =3D d.getVar('pkg_postinst_%s' % pkg, True)
>             if not postinst:
>                 bb.fatal("pkg_postinst_%s not defined" % pkg)
>             postinst +=3D d.getVar('autoload_postinst_**fragment', True) =
%
> autoload
>             d.setVar('pkg_postinst_%s' % pkg, postinst)
>
>         # Write out any modconf fragment
>         modconf =3D d.getVar('module_conf_%s' % basename, True)
>         if modconf:
>             name =3D '%s/etc/modprobe.d/%s.conf' % (dvar, basename)
>             f =3D open(name, 'w')
>             f.write("%s\n" % modconf)
>             f.close()
>
> Cheers,
>
> Bruce
>
> I do not have much luck getting this to work I am afraid. No matter what =
I
try with module_autoload it does not seem to have any effect on my system
(no file(s) created in /etc). I have tried adding module_autoload to both
my machine config and/or distro. I am running danny 8.0 which is version
1.3 of the poky distro I guess. I can see how module_autoload_%s is parsed
in kernel.bb but how is that recipe called as part om my module package? I
can not see that anything is inheriting from it so when is the
module_autoload supposed to be parsed and place files in in the package
/etc? Do I need to rebuild something other than my module package? My guess
Is that I should see something in the package image folder, or? All I see
is the lib folder holding the kernel module hierarchy and the .ko files of
course. I would really like getting this to work. Otherwise the only ugly
workaround I can see is to write my own simplistic init script that calls
modprobe on the modules I need after boot.

Hans

--047d7bdc82e662a91204d7a626a4
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

<br><div class=3D"gmail_quote"><div class=3D"HOEnZb"><div class=3D"h5"><div=
 class=3D"gmail_quote">On Sat, Mar 9, 2013 at 12:45 AM, Bruce Ashfield <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:bruce.ashfield@windriver.com" target=3D=
"_blank">bruce.ashfield@windriver.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
<div><div>On 13-03-08 2:00 PM, Hans Beckerus wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
On 2013-03-08 7:12, Eric B=E9nard wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi Hans,<br>
<br>
Le Fri, 8 Mar 2013 13:08:21 +0100,<br>
Hans Beck=E9rus &lt;<a href=3D"mailto:hans.beckerus@gmail.com" target=3D"_b=
lank">hans.beckerus@gmail.com</a>&gt; a =E9crit :<br>
<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
Hi. I have built some custom kernel modules (.ko) using a .bb that<br>
inherits from the module.bbclass. There is one main kernel module and<br>
the rest are dependent on the first. Building and installing the<br>
modules to the rootfs works fine. Next question is how do I control<br>
what actual modules are loaded at boot, or actually how do I control<br>
this through Yocto? To my surprise one of the kernel module loaded<br>
automatically!? How could this happen? I did not have an entry for it<br>
in /etc/modules. And what do I need to do to actually add entries to<br>
/etc/modules? Or is there some other mechanism that I should use. I<br>
tried going through the module.bbclass but must admit I lost it<br>
somewhere in the middle ;) Any guidance would be appreciated.<br>
<br>
</blockquote>
when the module is built by the kernel recipe you can use :<br>
module_autoload and you can see somme usage examples here :<br>
<a href=3D"http://cgit.openembedded.org/meta-handheld/tree/conf/machine/pal=
mtx.conf" target=3D"_blank">http://cgit.openembedded.org/<u></u>meta-handhe=
ld/tree/conf/<u></u>machine/palmtx.conf</a><br>
<a href=3D"http://cgit.openembedded.org/meta-handheld/tree/conf/machine/inc=
lude/palm.inc" target=3D"_blank">http://cgit.openembedded.org/<u></u>meta-h=
andheld/tree/conf/<u></u>machine/include/palm.inc</a><br>
<br>
<br>
maybe you could get inspiration from kernel.bbclass to do the same<br>
thing in your recipe.<br>
<br>
Eric<br>
</blockquote>
Thanks guys for your quick feedback. I can see that using<br>
module_autoload_${PN} seems like a good approach, if a package maps 1:1<br>
to a module.<br>
In my case that is not so. The package/recipe builds six (or even more)<br>
.ko files using one makefile.<br>
I guess one option could be to split each module build in its own<br>
recipe, but that is not supported by the makefile and thus would require<br=
>
patching from my side in the source tree. I think the only option I have<br=
>
left is to try to use /etc/modules and add the modules there in a<br>
do_install_append().<br>
But the problem then is, what happens if some other package also add a<br>
/etc/modules.conf to the image folder? Will it be merged or only copied?<br=
>
In the latter case last package wins which would not work out very well :(<=
br>
<br>
Out of curiosity, what will module_autoload do? Will it add the .ko to<br>
/etc/modules or does it implement some other mechanism to make a module<br>
load automatically at boot?<br>
</blockquote>
<br></div></div>
It depends on what release you are using. In yocto 1.3 and before the<br>
autoload variables translated to mod-util loading, using just what you&#39;=
d<br>
think. In yocto 1.4 and kmod in the picture:<br>
<br>
=A0 =A0 =A0 =A0 # If autoloading is requested, output /etc/modules-load.d/&=
lt;name&gt;.<u></u>conf and append<br>
=A0 =A0 =A0 =A0 # appropriate modprobe commands to the postinst<br>
=A0 =A0 =A0 =A0 autoload =3D d.getVar(&#39;module_autoload_%s&#39; % basena=
me, True)<br>
=A0 =A0 =A0 =A0 if autoload:<br>
=A0 =A0 =A0 =A0 =A0 =A0 name =3D &#39;%s/etc/modules-load.d/%s.<u></u>conf&=
#39; % (dvar, basename)<br>
=A0 =A0 =A0 =A0 =A0 =A0 f =3D open(name, &#39;w&#39;)<br>
=A0 =A0 =A0 =A0 =A0 =A0 for m in autoload.split():<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 f.write(&#39;%s\n&#39; % m)<br>
=A0 =A0 =A0 =A0 =A0 =A0 f.close()<br>
=A0 =A0 =A0 =A0 =A0 =A0 postinst =3D d.getVar(&#39;pkg_postinst_%s&#39; % p=
kg, True)<br>
=A0 =A0 =A0 =A0 =A0 =A0 if not postinst:<br>
=A0 =A0 =A0 =A0 =A0 =A0 =A0 =A0 bb.fatal(&quot;pkg_postinst_%s not defined&=
quot; % pkg)<br>
=A0 =A0 =A0 =A0 =A0 =A0 postinst +=3D d.getVar(&#39;autoload_postinst_<u></=
u>fragment&#39;, True) % autoload<br>
=A0 =A0 =A0 =A0 =A0 =A0 d.setVar(&#39;pkg_postinst_%s&#39; % pkg, postinst)=
<br>
<br>
=A0 =A0 =A0 =A0 # Write out any modconf fragment<br>
=A0 =A0 =A0 =A0 modconf =3D d.getVar(&#39;module_conf_%s&#39; % basename, T=
rue)<br>
=A0 =A0 =A0 =A0 if modconf:<br>
=A0 =A0 =A0 =A0 =A0 =A0 name =3D &#39;%s/etc/modprobe.d/%s.conf&#39; % (dva=
r, basename)<br>
=A0 =A0 =A0 =A0 =A0 =A0 f =3D open(name, &#39;w&#39;)<br>
=A0 =A0 =A0 =A0 =A0 =A0 f.write(&quot;%s\n&quot; % modconf)<br>
=A0 =A0 =A0 =A0 =A0 =A0 f.close()<br>
<br>
Cheers,<br>
<br>
Bruce<br>
<br></blockquote></div></div></div>I do not have much luck getting this to =
work I am afraid. No matter what I try with module_autoload it does not see=
m to have any effect on my system (no file(s) created in /etc). I have trie=
d adding module_autoload to both my machine config and/or distro. I am runn=
ing danny 8.0 which is version 1.3 of the poky distro I guess. I can see ho=
w module_autoload_%s is parsed in <a href=3D"http://kernel.bb" target=3D"_b=
lank">kernel.bb</a> but how is that recipe called as part om my module pack=
age? I can not see that anything is inheriting from it so when is the modul=
e_autoload supposed to be parsed and place files in in the package /etc? Do=
 I need to rebuild something other than my module package? My guess Is that=
 I should see something in the package image folder, or? All I see is the l=
ib folder holding the kernel module hierarchy and the .ko files of course. =
I would really like getting this to work. Otherwise the only ugly workaroun=
d I can see is to write my own simplistic init script that calls modprobe o=
n the modules I need after boot.<span class=3D"HOEnZb"><font color=3D"#8888=
88"><br>

<br>Hans<br><br><br>
</font></span></div><br>

--047d7bdc82e662a91204d7a626a4--
