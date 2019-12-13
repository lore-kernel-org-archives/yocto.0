Received: from mail-il1-f195.google.com (mail-il1-f195.google.com [209.85.166.195])
 by mx.groups.io with SMTP id smtpd.web11.14878.1576261253943822601
 for <yocto@lists.yoctoproject.org>;
 Fri, 13 Dec 2019 10:20:54 -0800
Authentication-Results: mx.groups.io;
 dkim=pass header.i=@gmail.com header.s=20161025 header.b=G5HiCfq9;
 spf=pass (domain: gmail.com, ip: 209.85.166.195, mailfrom: eripflo@gmail.com)
Received: by mail-il1-f195.google.com with SMTP id b15so191441ila.7
        for <yocto@lists.yoctoproject.org>; Fri, 13 Dec 2019 10:20:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=lzGml8G/hx78iPijcgxSGmqPsLp7vG+ASW8ymDWYAFA=;
        b=G5HiCfq92TIIr4WSjMD6jFIqvkS3SANvmSt/Y1eFiweYiOi8CSrY9k4oesI4iWzWIe
         pMfzNQQRhG1992Qs6lAcZr0xLkFx9oQU2U854iytW3g2Ysmm8AWKrY8bz2dLqKNE6/qL
         ZWcmhMt0dQW08HVqV8KCbTZOOKnQCIdfPUVuxCwkhsjjUqjmx3HFoX+nM7V2uRnGIrMF
         1f7wNIleZAfsAzZ+y7qq9B8/YUXRcyRCsgnUrj9N97V/LllaamDtLlrBqjV5Fjr5L/Uj
         NOhLnmYb/CfljD/noCnrhXWVHFr66qZiqfay+fUhC5VShIQlS1H3CCR4kSi131frwMar
         eTXA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=lzGml8G/hx78iPijcgxSGmqPsLp7vG+ASW8ymDWYAFA=;
        b=K6bRjCJRDRHYWikjoSNqCcT5lbKWt4VXomGFT573phsxaTpPwephl9PwM5xdQZGE1r
         66ZmhPlx97PRt/SGLqD8ui0jw3vVPVzWyaNj/j4ZMxTMd6LlIfCeQdd1+KYN0vsacyXH
         ALaL1ffob4/vMLjemEjvgRZEi/+eT/PxL1cywBRkoNFefBPK3Uf+pqrH7ZyZhL2oIXqN
         zbfaoMsySTKZ6FmHaBECE1jnaO5a/OoRQUdwqbZcu9C743B13i49s2UarV6S4Y7VgZWv
         qBCa9y/y74DsAiVyaHwW6Aj4oM8Fl74o41ON51udL7iJUJXJa9fjFjJH4fQqb7+ml2pO
         O67g==
X-Gm-Message-State: APjAAAUAMVja3oMvBX03NhSDIW470zMvXb0S8TSY/mtNVer+igphQc8B
	ZxuPyTqpb7cZ8qRgyBiXya1Wby0O1m3d4mdVK/g=
X-Google-Smtp-Source: APXvYqyk7oi8Tik8VjsfRk//lLkfnW5LMdD4bL8T1NeuznH57VmeDlIEe4itS5XfhLEbPAOWfdsPX6xnYz13owskALY=
X-Received: by 2002:a92:8b82:: with SMTP id i124mr619451ild.267.1576261253246;
 Fri, 13 Dec 2019 10:20:53 -0800 (PST)
MIME-Version: 1.0
References: <CAGhBkzwu3B2PWu4FZexiYxcnnKpZLjJaMohm85MKGz9Gur9T+g@mail.gmail.com>
 <YTBPR01MB235019E17369B5A7EDF93FB68A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
In-Reply-To: <YTBPR01MB235019E17369B5A7EDF93FB68A540@YTBPR01MB2350.CANPRD01.PROD.OUTLOOK.COM>
From: "FLoraVLogs" <eripflo@gmail.com>
Date: Fri, 13 Dec 2019 13:20:41 -0500
Message-ID: <CAGhBkzw6Pz6v8XkCiXDcB-LqZss2cP25TeU5H3eP5QUo7BeYHA@mail.gmail.com>
Subject: Re: [yocto] Yocto server is down
To: Kevyn-Alexandre Pare <Kevyn-Alexandre.Pare@opal-rt.com>
Cc: "yocto@lists.yoctoproject.org" <yocto@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="00000000000012b4ce059999ec99"

--00000000000012b4ce059999ec99
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

I did those changes:

 SOURCE_MIRROR_URL ?=3D "file:///source_mirror/sources/"
 INHERIT +=3D "own-mirrors"
 BB_GENERATE_MIRROR_TARBALLS =3D "1"


But still I am running into bake issues.
where source_mirror_url path is my custom path
rest I left as same.

Am I missing something?

I see {source_mirror_url} is invalid and cannot be interpreted.


Regards,

Ripu

On Fri, Dec 13, 2019 at 12:56 PM Kevyn-Alexandre Pare <
Kevyn-Alexandre.Pare@opal-rt.com> wrote:

>
> Same here,
>
>
> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198=
.145.29.63|:80...
> failed: Connection timed out.
>
>
>
> build are failing
>
> ```
> NOTE: Fetching uninative binary shim from
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk=
-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832bbd924ebf5f=
dccb622fc0a8684
> WARNING: Failed to fetch URL
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk=
-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832bbd924ebf5f=
dccb622fc0a8684,
> attempting MIRRORS if available
> ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export
> PATH=3D"/work/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/work/pok=
y/scripts:/work/build/tmp/work/corei7-64-poky-linux/defaultpkgname/1.0-r0/r=
ecipe-sysroot-native/usr/bin/x86_64-poky-linux:/work/build/tmp/work/corei7-=
64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/wo=
rk/build/tmp/work/corei7-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot=
-native/usr/sbin:/work/build/tmp/work/corei7-64-poky-linux/defaultpkgname/1=
.0-r0/recipe-sysroot-native/usr/bin:/work/build/tmp/work/corei7-64-poky-lin=
ux/defaultpkgname/1.0-r0/recipe-sysroot-native/sbin:/work/build/tmp/work/co=
rei7-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/bin:/work/po=
ky/bitbake/bin:/work/build/tmp/hosttools";
> export HOME=3D"/home/pokyuser"; /usr/bin/env wget -t 2 -T 30 --passive-ft=
p
> --no-check-certificate -P
> /work/build/downloads/uninative/c6954563dad3c95608117c6fc328099036c832bbd=
924ebf5fdccb622fc0a8684
> '
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk=
-libc.tar.bz2'
> --progress=3Ddot -v failed with exit code 4, output:
> --2019-12-13 17:35:36--
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk=
-libc.tar.bz2
> Resolving downloads.yoctoproject.org (downloads.yoctoproject.org)...
> 198.145.29.63
> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198=
.145.29.63|:80...
> failed: Connection timed out.
> Retrying.
>
> --2019-12-13 17:36:07--  (try: 2)
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk=
-libc.tar.bz2
> Connecting to downloads.yoctoproject.org (downloads.yoctoproject.org)|198=
.145.29.63|:80...
> failed: Connection timed out.
> Giving up.
>
>
> WARNING: Disabling uninative as unable to fetch uninative tarball: Fetche=
r
> failure for URL: '
> http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64-nativesdk=
-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832bbd924ebf5f=
dccb622fc0a8684'.
> Unable to fetch URL from any source.
> WARNING: To build your own uninative loader, please bitbake
> uninative-tarball and set UNINATIVE_TARBALL appropriately.
> Initialising tasks: 100%
> |########################################################################=
######################|
> Time: 0:00:00
> Checking sstate mirror object availability:  15% |##########
>                                               | ETA:  1:10:17
>
>
> ```
>
> bitbake is stuck...
>
> Any ways to have a bitbake that works offline by default?!
>
> found this:
>
> https://www.yoctoproject.org/pipermail/yocto/2018-July/042017.html
>
> Cheers,
>
> -KA
>
> From: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org> on
> behalf of FLoraVLogs via Lists.Yoctoproject.Org <eripflo=3D
> gmail.com@lists.yoctoproject.org>
>
> Sent: Friday, December 13, 2019 10:46
>
> To: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
>
> Cc: yocto@lists.yoctoproject.org <yocto@lists.yoctoproject.org>
>
> Subject: [yocto] Yocto server is down
>
>
>
>
> Hi,
>
>
>
>
> I went to "http://downloads.yoctoproject.org/" and I get the
> following message:
>
>
> Gateway Timeout
> Server error - server 198.145.29.63 is unreachable at this moment.
>
>
>
> Please retry the request or contact your administrator.
> Kindly assist here.
> Regards,
> Ripu
>
>

--00000000000012b4ce059999ec99
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">I did those changes:<br><pre style=3D"fon=
t-family:monospace,Courier;padding:1em;border:1px dashed rgb(47,111,171);co=
lor:rgb(0,0,0);background-color:rgb(249,249,249);line-height:1.1em;font-siz=
e:12.7px"> SOURCE_MIRROR_URL=C2=A0?=3D &quot;file:///source_mirror/sources/=
&quot;
 INHERIT +=3D &quot;own-mirrors&quot;=20
 BB_GENERATE_MIRROR_TARBALLS =3D &quot;1&quot;</pre></div><br><div class=3D=
"gmail_quote"><div class=3D"gmail_attr">But still I am running into bake is=
sues.=C2=A0</div><div class=3D"gmail_attr">where source_mirror_url path is =
my custom path</div><div class=3D"gmail_attr">rest I left as same.</div><di=
v class=3D"gmail_attr"><br></div><div class=3D"gmail_attr">Am I missing som=
ething?</div><div class=3D"gmail_attr"><br></div><div class=3D"gmail_attr">=
I see {source_mirror_url} is invalid and cannot be interpreted.</div><div c=
lass=3D"gmail_attr"><br></div><div class=3D"gmail_attr"><br></div><div clas=
s=3D"gmail_attr">Regards,</div><div class=3D"gmail_attr"><br></div><div cla=
ss=3D"gmail_attr">Ripu</div><div class=3D"gmail_attr"><br></div><div dir=3D=
"ltr" class=3D"gmail_attr">On Fri, Dec 13, 2019 at 12:56 PM Kevyn-Alexandre=
 Pare &lt;<a href=3D"mailto:Kevyn-Alexandre.Pare@opal-rt.com">Kevyn-Alexand=
re.Pare@opal-rt.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quot=
e" style=3D"margin:0px 0px 0px 0.8ex;border-left:1px solid rgb(204,204,204)=
;padding-left:1ex"><br>
Same here,<br>
<br>
<br>
Connecting to <a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferr=
er" target=3D"_blank">downloads.yoctoproject.org</a> (<a href=3D"http://dow=
nloads.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">downloads.yoc=
toproject.org</a>)|198.145.29.63|:80... failed: Connection timed out.<br>
<br>
<br>
<br>
build are failing<br>
<br>
```<br>
NOTE: Fetching uninative binary shim from <a href=3D"http://downloads.yocto=
project.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=
=3Dc6954563dad3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684" rel=3D=
"noreferrer" target=3D"_blank">http://downloads.yoctoproject.org/releases/u=
ninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c9560811=
7c6fc328099036c832bbd924ebf5fdccb622fc0a8684</a><br>
WARNING: Failed to fetch URL <a href=3D"http://downloads.yoctoproject.org/r=
eleases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad=
3c95608117c6fc328099036c832bbd924ebf5fdccb622fc0a8684" rel=3D"noreferrer" t=
arget=3D"_blank">http://downloads.yoctoproject.org/releases/uninative/2.3/x=
86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036=
c832bbd924ebf5fdccb622fc0a8684</a>, attempting MIRRORS if available<br>
ERROR: Fetcher failure: Fetch command export PSEUDO_DISABLED=3D1; export PA=
TH=3D&quot;/work/build/tmp/sysroots-uninative/x86_64-linux/usr/bin:/work/po=
ky/scripts:/work/build/tmp/work/corei7-64-poky-linux/defaultpkgname/1.0-r0/=
recipe-sysroot-native/usr/bin/x86_64-poky-linux:/work/build/tmp/work/corei7=
-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot/usr/bin/crossscripts:/w=
ork/build/tmp/work/corei7-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroo=
t-native/usr/sbin:/work/build/tmp/work/corei7-64-poky-linux/defaultpkgname/=
1.0-r0/recipe-sysroot-native/usr/bin:/work/build/tmp/work/corei7-64-poky-li=
nux/defaultpkgname/1.0-r0/recipe-sysroot-native/sbin:/work/build/tmp/work/c=
orei7-64-poky-linux/defaultpkgname/1.0-r0/recipe-sysroot-native/bin:/work/p=
oky/bitbake/bin:/work/build/tmp/hosttools&quot;; export HOME=3D&quot;/home/=
pokyuser&quot;; /usr/bin/env wget -t 2 -T 30 --passive-ftp --no-check-certi=
ficate -P /work/build/downloads/uninative/c6954563dad3c95608117c6fc32809903=
6c832bbd924ebf5fdccb622fc0a8684 &#39;<a href=3D"http://downloads.yoctoproje=
ct.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2" rel=3D"norefer=
rer" target=3D"_blank">http://downloads.yoctoproject.org/releases/uninative=
/2.3/x86_64-nativesdk-libc.tar.bz2</a>&#39; --progress=3Ddot -v failed with=
 exit code 4, output:<br>
--2019-12-13 17:35:36--=C2=A0 <a href=3D"http://downloads.yoctoproject.org/=
releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2" rel=3D"noreferrer" ta=
rget=3D"_blank">http://downloads.yoctoproject.org/releases/uninative/2.3/x8=
6_64-nativesdk-libc.tar.bz2</a><br>
Resolving <a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferrer" =
target=3D"_blank">downloads.yoctoproject.org</a> (<a href=3D"http://downloa=
ds.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">downloads.yoctopr=
oject.org</a>)... 198.145.29.63<br>
Connecting to <a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferr=
er" target=3D"_blank">downloads.yoctoproject.org</a> (<a href=3D"http://dow=
nloads.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">downloads.yoc=
toproject.org</a>)|198.145.29.63|:80... failed: Connection timed out.<br>
Retrying.<br>
<br>
--2019-12-13 17:36:07--=C2=A0 (try: 2)=C2=A0 <a href=3D"http://downloads.yo=
ctoproject.org/releases/uninative/2.3/x86_64-nativesdk-libc.tar.bz2" rel=3D=
"noreferrer" target=3D"_blank">http://downloads.yoctoproject.org/releases/u=
ninative/2.3/x86_64-nativesdk-libc.tar.bz2</a><br>
Connecting to <a href=3D"http://downloads.yoctoproject.org" rel=3D"noreferr=
er" target=3D"_blank">downloads.yoctoproject.org</a> (<a href=3D"http://dow=
nloads.yoctoproject.org" rel=3D"noreferrer" target=3D"_blank">downloads.yoc=
toproject.org</a>)|198.145.29.63|:80... failed: Connection timed out.<br>
Giving up.<br>
<br>
<br>
WARNING: Disabling uninative as unable to fetch uninative tarball: Fetcher =
failure for URL: &#39;<a href=3D"http://downloads.yoctoproject.org/releases=
/uninative/2.3/x86_64-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608=
117c6fc328099036c832bbd924ebf5fdccb622fc0a8684" rel=3D"noreferrer" target=
=3D"_blank">http://downloads.yoctoproject.org/releases/uninative/2.3/x86_64=
-nativesdk-libc.tar.bz2;sha256sum=3Dc6954563dad3c95608117c6fc328099036c832b=
bd924ebf5fdccb622fc0a8684</a>&#39;. Unable to fetch URL from any source.<br=
>
WARNING: To build your own uninative loader, please bitbake uninative-tarba=
ll and set UNINATIVE_TARBALL appropriately.<br>
Initialising tasks: 100% |#################################################=
#############################################| Time: 0:00:00<br>
Checking sstate mirror object availability:=C2=A0 15% |##########=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 | ETA:=C2=A0 1:10:17<b=
r>
<br>
<br>
```<br>
<br>
bitbake is stuck...<br>
<br>
Any ways to have a bitbake that works offline by default?!<br>
<br>
found this:<br>
<br>
<a href=3D"https://www.yoctoproject.org/pipermail/yocto/2018-July/042017.ht=
ml" rel=3D"noreferrer" target=3D"_blank">https://www.yoctoproject.org/piper=
mail/yocto/2018-July/042017.html</a><br>
<br>
Cheers,<br>
<br>
-KA<br>
<br>
From: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yoc=
to@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoprojec=
t.org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt; on behalf of =
FLoraVLogs via <a href=3D"http://Lists.Yoctoproject.Org" rel=3D"noreferrer"=
 target=3D"_blank">Lists.Yoctoproject.Org</a> &lt;eripflo=3D<a href=3D"mail=
to:gmail.com@lists.yoctoproject.org" target=3D"_blank">gmail.com@lists.yoct=
oproject.org</a>&gt;<br>
<br>
Sent: Friday, December 13, 2019 10:46<br>
<br>
To: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto=
@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.=
org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<br>
Cc: <a href=3D"mailto:yocto@lists.yoctoproject.org" target=3D"_blank">yocto=
@lists.yoctoproject.org</a> &lt;<a href=3D"mailto:yocto@lists.yoctoproject.=
org" target=3D"_blank">yocto@lists.yoctoproject.org</a>&gt;<br>
<br>
Subject: [yocto] Yocto server is down<br>
<br>
=C2=A0<br>
<br>
<br>
Hi,<br>
<br>
<br>
<br>
<br>
I went to &quot;<a href=3D"http://downloads.yoctoproject.org/" rel=3D"noref=
errer" target=3D"_blank">http://downloads.yoctoproject.org/</a>&quot; and I=
 get the following=C2=A0message:<br>
<br>
<br>
Gateway Timeout<br>
Server error - server 198.145.29.63 is unreachable at this moment.<br>
<br>
<br>
<br>
Please retry the request or contact your administrator.<br>
Kindly assist here.<br>
Regards,<br>
Ripu<br>
<br>
</blockquote></div></div>

--00000000000012b4ce059999ec99--
