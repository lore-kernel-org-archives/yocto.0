Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7769FE00DE6; Mon, 26 Feb 2018 02:17:10 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f45.google.com (mail-it0-f45.google.com
	[209.85.214.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7AD3E00843
	for <yocto@yoctoproject.org>; Mon, 26 Feb 2018 02:17:09 -0800 (PST)
Received: by mail-it0-f45.google.com with SMTP id c11so890868ith.4
	for <yocto@yoctoproject.org>; Mon, 26 Feb 2018 02:17:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=wW6585PRi01GfcnZpLKJHulfQ3k1zLJHqLiBT3nwENg=;
	b=HEwbgNXzelemItibiYYc08Yuu5I4tlKrFkAmTi9a91g1iHKl7MnkYVL6OgtUH75tNK
	38HDNyxR2OSFMYkCBSbzAl8cVQB1TpHSbHPjdD3UDpg252hJ6bbQHNtvPtnYPwZr0Lha
	w3tH7tsyqJSjY8Yt9ymU4um+GYqvzr9fpnToNwIIAoQ1TLGIXL9uNgDkTjMPbilelZQ2
	Q7viXiNlnJOoERa++CDY0ytZz1dxnQG+zIj6EBEr7pUaq81u97MYsvIuecUtY7ZzL+tI
	RFZsKVYxzrs4AsGYzaqaYo77hK+wqXrjYlYgY1OXIpE/brK33Hunanky9ijfEgwhWxwn
	Ldcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=wW6585PRi01GfcnZpLKJHulfQ3k1zLJHqLiBT3nwENg=;
	b=O5svSL9LZjLn3NnJkccXfP9olzg3VZeGPLhO1uW0jNDnImB5k78obW0Xlzc0dL8FIc
	TAIJYV+kj6nKIG+dAS4Pz3ORBDkw4untPpibUNWItpt8vV78iBDr8ZKZa/emTZsErM+k
	wCifUh0fqZ5Jup/gASqg62Use8S/2TLnfa2qsZPCq/807mgO/08A8ngZsFWVdjPJap6r
	slu6d+ck24aBd5Lmoz0AIo3b+ch6/88c5OmSsctQvakvpsK0/JAxBcFTBqG3URo6Lo50
	aGkvLibifXWC+8TmcvOkk5t55tuTk4ZemAPMyFtkRp9hRC4kNgUb1M+sVU2mYIif7Dau
	ogyg==
X-Gm-Message-State: APf1xPB50f8iTyNKB1ghMZRVrJHO5BWnAJTa2cVQYZl9oGbzAWbdFiwe
	bVC9pIWGP60HXyECDH2t1/8XBwy9yd8HD+jGzIIjtQ==
X-Google-Smtp-Source: AG47ELvA0tYWFW9SbgtEjhy4VsdcEEEnp3+0dkZzwbt3ILuffVKg2VepiVa8sXdN/85zeMF0OgJmhzpNBp23XoMpjzo=
X-Received: by 10.36.34.11 with SMTP id o11mr7235505ito.60.1519640228909; Mon,
	26 Feb 2018 02:17:08 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.17.200 with HTTP; Mon, 26 Feb 2018 02:16:48 -0800 (PST)
In-Reply-To: <4225ccb9.2bcb.161cd3007f8.Coremail.qinlaigui@126.com>
References: <4225ccb9.2bcb.161cd3007f8.Coremail.qinlaigui@126.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 26 Feb 2018 10:16:48 +0000
Message-ID: <CAJTo0LbATQ9yrwDC2ynDXdAVz9ZqdAjrvsdLNq3wyy-2QdFDQg@mail.gmail.com>
To: Laigui Qin <qinlaigui@126.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: [Meta-Raspberrypi] Yocto apt sources.list for Raspberry Pi
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
X-List-Received-Date: Mon, 26 Feb 2018 10:17:10 -0000
Content-Type: multipart/alternative; boundary="001a113f77ba07ec9305661ad065"

--001a113f77ba07ec9305661ad065
Content-Type: text/plain; charset="UTF-8"

Running your own feed for personal use is trivial, just point lighttpd or
any other HTTP server at the deploy/deb directory on your build machine.
If you set PACKAGE_FEED_URLS in your local.conf to the URL of the server
then future images will contain a pre-populated sources.list.

However the only relationship between your Yocto image and Rapsian is that
they both use Linux and APT. You can't just re-use packages from Raspian
(just like you wouldn't expect to re-use packages from Fedora), so if
that's your goal then you should just use Raspian.

Ross

On 25 February 2018 at 13:38, Laigui Qin <qinlaigui@126.com> wrote:

> Hi Everyone,
>
> I am building the GNU Linux with Yocto for Raspberry Pi using
> meta-raspberrypi. Everything is good (with help of google search and yocto
> manual) until I added apt support to the image. As I am a little confused
> which Repository URL I should put in the sources.list, I tried the Raspbian
> repository. However, when I do apt-get upgrade I got following error which
> is not expected. Any idea on this effort?
>
> BR,
> Mike
>
> root@raspberrypi-cm3:~# sudo apt-get upgrade
> Reading package lists... Done
> Building dependency tree
> Reading state information... Done
> Calculating upgrade... Done
> The following packages have been kept back:
>   base-files cpp diffutils g++ gcc git initscripts libcap2 libgcc1
> libgmp10 libsysfs2 libusb-1.0-0 libwbclient0 netcat ntp procps samba-common
> usbutils
> The following packages will be upgraded:
>   busybox ethtool sysfsutils
> 3 upgraded, 0 newly installed, 0 to remove and 18 not upgraded.
> Need to get 562 kB of archives.
> After this operation, 1114 kB of additional disk space will be used.
> Do you want to continue? [Y/n]
> Get:1 http://archive.raspbian.org/raspbian wheezy/main armhf busybox
> armhf 1:1.20.0-7 [438 kB]
> Get:2 http://archive.raspbian.org/raspbian wheezy/main armhf ethtool
> armhf 1:3.4.2-1 [98.7 kB]
> Get:3 http://archive.raspbian.org/raspbian wheezy/main armhf sysfsutils
> armhf 2.1.0+repack-2 [24.5 kB]
> Fetched 562 kB in 5s (96.0 kB/s)
> (Reading database ... 16225 files and directories currently installed.)
> Preparing to unpack .../busybox_1%3a1.20.0-7_armhf.deb ...
> Unpacking busybox (1:1.20.0-7) over (1.24.1-r0) ...
> dpkg-deb (subprocess): unable to execute tar (tar): No such file or
> directory
> *dpkg-deb:* *error:* subprocess tar returned error exit status 2
> *dpkg:* error processing archive /var/cache/apt/archives/ethtool_1%3a3.4.2-1_armhf.deb
> (--unpack):
>  subprocess dpkg-deb --control returned error exit status 2
> dpkg-deb (subprocess): unable to execute tar (tar): No such file or
> directory
> *dpkg-deb:* *error:* subprocess tar returned error exit status 2
> *dpkg:* error processing archive /var/cache/apt/archives/
> sysfsutils_2.1.0+repack-2_armhf.deb (--unpack):
>  subprocess dpkg-deb --control returned error exit status 2
> Errors were encountered while processing:
>  /var/cache/apt/archives/ethtool_1%3a3.4.2-1_armhf.deb
>  /var/cache/apt/archives/sysfsutils_2.1.0+repack-2_armhf.deb
> E: Sub-process /usr/bin/dpkg returned an error code (1)
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
>

--001a113f77ba07ec9305661ad065
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Running your own feed for personal use is trivial, just po=
int lighttpd or any other HTTP server at the deploy/deb directory on your b=
uild machine.=C2=A0 If you set PACKAGE_FEED_URLS in your local.conf to the =
URL of the server then future images will contain a pre-populated sources.l=
ist.<div><br></div><div>However the only relationship between your Yocto im=
age and Rapsian is that they both use Linux and APT. You can&#39;t just re-=
use packages from Raspian (just like you wouldn&#39;t expect to re-use pack=
ages from Fedora), so if that&#39;s your goal then you should just use Rasp=
ian.</div><div><br></div><div>Ross</div></div><div class=3D"gmail_extra"><b=
r><div class=3D"gmail_quote">On 25 February 2018 at 13:38, Laigui Qin <span=
 dir=3D"ltr">&lt;<a href=3D"mailto:qinlaigui@126.com" target=3D"_blank">qin=
laigui@126.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 style=3D"line-height:1.7;color:#000000;font-size:14px;font-family:Arial"><=
span style=3D"font-family:Helvetica;font-size:12px">Hi Everyone,</span><div=
 style=3D"font-family:Helvetica;font-size:12px"><br></div><div style=3D"fon=
t-family:Helvetica;font-size:12px">I am building the GNU Linux with Yocto f=
or Raspberry Pi using meta-raspberrypi. Everything is good (with help of go=
ogle search and yocto manual) until I added apt support to the image. As I =
am a little confused which Repository URL I should put in the sources.list,=
 I tried the Raspbian repository. However, when I do apt-get upgrade I got =
following error which is not expected. Any idea on this effort?</div><div s=
tyle=3D"font-family:Helvetica;font-size:12px"><br></div><div style=3D"font-=
family:Helvetica;font-size:12px">BR,</div><div style=3D"font-family:Helveti=
ca;font-size:12px">Mike</div><div style=3D"font-family:Helvetica;font-size:=
12px"><br></div><div style=3D"font-family:Helvetica;font-size:12px"><div st=
yle=3D"margin:0px;font-stretch:normal;font-size:14px;line-height:normal;fon=
t-family:Menlo"><span style=3D"font-variant-ligatures:no-common-ligatures">=
root@raspberrypi-cm3:~# sudo apt-get upgrade</span></div><div style=3D"marg=
in:0px;font-stretch:normal;font-size:14px;line-height:normal;font-family:Me=
nlo"><span style=3D"font-variant-ligatures:no-common-ligatures">Reading pac=
kage lists... Done</span></div><div style=3D"margin:0px;font-stretch:normal=
;font-size:14px;line-height:normal;font-family:Menlo"><span style=3D"font-v=
ariant-ligatures:no-common-ligatures">Building dependency tree=C2=A0 =C2=A0=
 =C2=A0 =C2=A0</span></div><div style=3D"margin:0px;font-stretch:normal;fon=
t-size:14px;line-height:normal;font-family:Menlo"><span style=3D"font-varia=
nt-ligatures:no-common-ligatures">Reading state information... Done</span><=
/div><div style=3D"margin:0px;font-stretch:normal;font-size:14px;line-heigh=
t:normal;font-family:Menlo"><span style=3D"font-variant-ligatures:no-common=
-ligatures">Calculating upgrade... Done</span></div><div style=3D"margin:0p=
x;font-stretch:normal;font-size:14px;line-height:normal;font-family:Menlo">=
<span style=3D"font-variant-ligatures:no-common-ligatures">The following pa=
ckages have been kept back:</span></div><div style=3D"margin:0px;font-stret=
ch:normal;font-size:14px;line-height:normal;font-family:Menlo"><span style=
=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 base-files cpp diffu=
tils g++ gcc git initscripts libcap2 libgcc1 libgmp10 libsysfs2 libusb-1.0-=
0 libwbclient0 netcat ntp procps samba-common usbutils</span></div><div sty=
le=3D"margin:0px;font-stretch:normal;font-size:14px;line-height:normal;font=
-family:Menlo"><span style=3D"font-variant-ligatures:no-common-ligatures">T=
he following packages will be upgraded:</span></div><div style=3D"margin:0p=
x;font-stretch:normal;font-size:14px;line-height:normal;font-family:Menlo">=
<span style=3D"font-variant-ligatures:no-common-ligatures">=C2=A0 busybox e=
thtool sysfsutils</span></div><div style=3D"margin:0px;font-stretch:normal;=
font-size:14px;line-height:normal;font-family:Menlo"><span style=3D"font-va=
riant-ligatures:no-common-ligatures">3 upgraded, 0 newly installed, 0 to re=
move and 18 not upgraded.</span></div><div style=3D"margin:0px;font-stretch=
:normal;font-size:14px;line-height:normal;font-family:Menlo"><span style=3D=
"font-variant-ligatures:no-common-ligatures">Need to get 562 kB of archives=
.</span></div><div style=3D"margin:0px;font-stretch:normal;font-size:14px;l=
ine-height:normal;font-family:Menlo"><span style=3D"font-variant-ligatures:=
no-common-ligatures">After this operation, 1114 kB of additional disk space=
 will be used.</span></div><div style=3D"margin:0px;font-stretch:normal;fon=
t-size:14px;line-height:normal;font-family:Menlo"><span style=3D"font-varia=
nt-ligatures:no-common-ligatures">Do you want to continue? [Y/n]=C2=A0</spa=
n></div><div style=3D"margin:0px;font-stretch:normal;font-size:14px;line-he=
ight:normal;font-family:Menlo"><span style=3D"font-variant-ligatures:no-com=
mon-ligatures">Get:1<span class=3D"m_1110297979388989154Apple-converted-spa=
ce">=C2=A0</span><a href=3D"http://archive.raspbian.org/raspbian" target=3D=
"_blank">http://archive.raspbian.<wbr>org/raspbian</a><span class=3D"m_1110=
297979388989154Apple-converted-space">=C2=A0</span>wheezy/main armhf busybo=
x armhf 1:1.20.0-7 [438 kB]</span></div><div style=3D"margin:0px;font-stret=
ch:normal;font-size:14px;line-height:normal;font-family:Menlo"><span style=
=3D"font-variant-ligatures:no-common-ligatures">Get:2<span class=3D"m_11102=
97979388989154Apple-converted-space">=C2=A0</span><a href=3D"http://archive=
.raspbian.org/raspbian" target=3D"_blank">http://archive.raspbian.<wbr>org/=
raspbian</a><span class=3D"m_1110297979388989154Apple-converted-space">=C2=
=A0</span>wheezy/main armhf ethtool armhf 1:3.4.2-1 [98.7 kB]</span></div><=
div style=3D"margin:0px;font-stretch:normal;font-size:14px;line-height:norm=
al;font-family:Menlo"><span style=3D"font-variant-ligatures:no-common-ligat=
ures">Get:3<span class=3D"m_1110297979388989154Apple-converted-space">=C2=
=A0</span><a href=3D"http://archive.raspbian.org/raspbian" target=3D"_blank=
">http://archive.raspbian.<wbr>org/raspbian</a><span class=3D"m_11102979793=
88989154Apple-converted-space">=C2=A0</span>wheezy/main armhf sysfsutils ar=
mhf 2.1.0+repack-2 [24.5 kB]</span></div><div style=3D"margin:0px;font-stre=
tch:normal;font-size:14px;line-height:normal;font-family:Menlo"><span style=
=3D"font-variant-ligatures:no-common-ligatures">Fetched 562 kB in 5s (96.0 =
kB/s)=C2=A0 =C2=A0 =C2=A0 =C2=A0</span></div><div style=3D"margin:0px;font-=
stretch:normal;font-size:14px;line-height:normal;font-family:Menlo"><span s=
tyle=3D"font-variant-ligatures:no-common-ligatures">(Reading database ... 1=
6225 files and directories currently installed.)</span></div><div style=3D"=
margin:0px;font-stretch:normal;font-size:14px;line-height:normal;font-famil=
y:Menlo"><span style=3D"font-variant-ligatures:no-common-ligatures">Prepari=
ng to unpack .../busybox_1%3a1.20.0-7_<wbr>armhf.deb ...</span></div><div s=
tyle=3D"margin:0px;font-stretch:normal;font-size:14px;line-height:normal;fo=
nt-family:Menlo"><span style=3D"font-variant-ligatures:no-common-ligatures"=
>Unpacking busybox (1:1.20.0-7) over (1.24.1-r0) ...</span></div><div style=
=3D"margin:0px;font-stretch:normal;font-size:14px;line-height:normal;font-f=
amily:Menlo"><span style=3D"font-variant-ligatures:no-common-ligatures">dpk=
g-deb (subprocess): unable to execute tar (tar): No such file or directory<=
/span></div><div style=3D"margin:0px;font-stretch:normal;font-size:14px;lin=
e-height:normal;font-family:Menlo"><span style=3D"font-variant-ligatures:no=
-common-ligatures"><b>dpkg-deb:</b><span class=3D"m_1110297979388989154Appl=
e-converted-space">=C2=A0</span></span><span style=3D"font-variant-ligature=
s:no-common-ligatures;color:rgb(195,55,32)"><b>error:</b></span><span style=
=3D"font-variant-ligatures:no-common-ligatures"><span class=3D"m_1110297979=
388989154Apple-converted-space">=C2=A0</span>subprocess tar returned error =
exit status 2</span></div><div style=3D"margin:0px;font-stretch:normal;font=
-size:14px;line-height:normal;font-family:Menlo"><span style=3D"font-varian=
t-ligatures:no-common-ligatures"><b>dpkg:</b><span class=3D"m_1110297979388=
989154Apple-converted-space">=C2=A0</span>error processing archive /var/cac=
he/apt/archives/<wbr>ethtool_1%3a3.4.2-1_armhf.deb (--unpack):</span></div>=
<div style=3D"margin:0px;font-stretch:normal;font-size:14px;line-height:nor=
mal;font-family:Menlo"><span style=3D"font-variant-ligatures:no-common-liga=
tures">=C2=A0subprocess dpkg-deb --control returned error exit status 2</sp=
an></div><div style=3D"margin:0px;font-stretch:normal;font-size:14px;line-h=
eight:normal;font-family:Menlo"><span style=3D"font-variant-ligatures:no-co=
mmon-ligatures">dpkg-deb (subprocess): unable to execute tar (tar): No such=
 file or directory</span></div><div style=3D"margin:0px;font-stretch:normal=
;font-size:14px;line-height:normal;font-family:Menlo"><span style=3D"font-v=
ariant-ligatures:no-common-ligatures"><b>dpkg-deb:</b><span class=3D"m_1110=
297979388989154Apple-converted-space">=C2=A0</span></span><span style=3D"fo=
nt-variant-ligatures:no-common-ligatures;color:rgb(195,55,32)"><b>error:</b=
></span><span style=3D"font-variant-ligatures:no-common-ligatures"><span cl=
ass=3D"m_1110297979388989154Apple-converted-space">=C2=A0</span>subprocess =
tar returned error exit status 2</span></div><div style=3D"margin:0px;font-=
stretch:normal;font-size:14px;line-height:normal;font-family:Menlo"><span s=
tyle=3D"font-variant-ligatures:no-common-ligatures"><b>dpkg:</b><span class=
=3D"m_1110297979388989154Apple-converted-space">=C2=A0</span>error processi=
ng archive /var/cache/apt/archives/<wbr>sysfsutils_2.1.0+repack-2_<wbr>armh=
f.deb (--unpack):</span></div><div style=3D"margin:0px;font-stretch:normal;=
font-size:14px;line-height:normal;font-family:Menlo"><span style=3D"font-va=
riant-ligatures:no-common-ligatures">=C2=A0subprocess dpkg-deb --control re=
turned error exit status 2</span></div><div style=3D"margin:0px;font-stretc=
h:normal;font-size:14px;line-height:normal;font-family:Menlo"><span style=
=3D"font-variant-ligatures:no-common-ligatures">Errors were encountered whi=
le processing:</span></div><div style=3D"margin:0px;font-stretch:normal;fon=
t-size:14px;line-height:normal;font-family:Menlo"><span style=3D"font-varia=
nt-ligatures:no-common-ligatures">=C2=A0/var/cache/apt/archives/<wbr>ethtoo=
l_1%3a3.4.2-1_armhf.deb</span></div><div style=3D"margin:0px;font-stretch:n=
ormal;font-size:14px;line-height:normal;font-family:Menlo"><span style=3D"f=
ont-variant-ligatures:no-common-ligatures">=C2=A0/var/cache/apt/archives/<w=
br>sysfsutils_2.1.0+repack-2_<wbr>armhf.deb</span></div><div style=3D"margi=
n:0px;font-stretch:normal;font-size:14px;line-height:normal;font-family:Men=
lo"><span style=3D"font-variant-ligatures:no-common-ligatures">E: Sub-proce=
ss /usr/bin/dpkg returned an error code (1)</span></div></div></div><br><br=
><span title=3D"neteasefooter"><p>=C2=A0</p></span><br>--<br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
<br></blockquote></div><br></div>

--001a113f77ba07ec9305661ad065--
