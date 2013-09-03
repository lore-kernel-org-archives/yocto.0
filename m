Return-Path: <katutxakurra@gmail.com>
Received: from mail-ie0-f180.google.com (mail-ie0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CFFEE01445
	for <yocto@yoctoproject.org>; Tue,  3 Sep 2013 00:41:46 -0700 (PDT)
Received: by mail-ie0-f180.google.com with SMTP id x14so9660480ief.11
	for <yocto@yoctoproject.org>; Tue, 03 Sep 2013 00:41:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=ZY1fFBabT/4E/p97LeJbDvJ/rrRk3JofqkzD1cno0Uk=;
	b=g2Y6bhbH2MVRjrveTbwD8b+qTDliWZiN9TgwXfHBaiTCNXgIi59v0Y8h3gPoMrCMfB
	W79AVgBKQOzLCCI4dqHoGXJIOhBSSAWrOHqePuzyNk4yWCwAf/4YZtlEr8+PbbAVUnjG
	NWsqITM0fQmnn8JcDto6QtzJXiljlXZgMFv7dQL+7DesVwKUUxNu5oAwBoQfAgEpsIqk
	7ShDqIhSQoNWjtzZSNhQIyZlHZQQ2Dl2UHNb8naPl4KDgYZfX3aFTrc1hgZuoKD0ws1/
	XkL5VxfNfyLW3BKTwUIQk7kcyoaIv1/DM2fBy7pZXdtVpvATWRtalHC9BGvZ29Sz/013
	TJ8g==
MIME-Version: 1.0
X-Received: by 10.42.190.17 with SMTP id dg17mr3250023icb.44.1378194105619;
	Tue, 03 Sep 2013 00:41:45 -0700 (PDT)
Received: by 10.50.77.163 with HTTP; Tue, 3 Sep 2013 00:41:45 -0700 (PDT)
In-Reply-To: <001801cea865$56914f90$03b3eeb0$@annabooks.com>
References: <CAM1ZcoVgAgPYTrGzHVYcYt+qwhzqTHne9gjNhhWS75oD0HhFFg@mail.gmail.com>
	<000601cea807$0893e270$19bba750$@annabooks.com>
	<CAM1ZcoUuqJai9s3588RcG5+H-TAfWGo=Ua7zhzQQeEFLTt6FCg@mail.gmail.com>
	<001801cea865$56914f90$03b3eeb0$@annabooks.com>
Date: Tue, 3 Sep 2013 08:41:45 +0100
Message-ID: <CAM1ZcoXqt_dLZFO16dgG138Sxqmm8Lw0qg+AMsdOATwm81uMuw@mail.gmail.com>
From: Katu Txakur <katutxakurra@gmail.com>
To: Sean Liming <sean.liming@annabooks.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz
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
X-List-Received-Date: Tue, 03 Sep 2013 07:41:50 -0000
X-Groupsio-MsgNum: 15807
Content-Type: multipart/related; boundary=20cf303e9e6e18f8df04e575d2df

--20cf303e9e6e18f8df04e575d2df
Content-Type: multipart/alternative; boundary=20cf303e9e6e18f8de04e575d2de

--20cf303e9e6e18f8de04e575d2de
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

Thanks again Sean,

you are right, the scripts are under
poky-dylan-9.0.0/meta/recipes-core/initrdscripts/files

Regards,
Katu


2013/9/3 Sean Liming <sean.liming@annabooks.com>

> Katu,****
>
> ** **
>
> It has been awhile since I looked this one up. I believe the installer
> script is called init-install.sh under the /meta/recipes-core. If you don=
=92t
> use a serial debug port with a terminal to catch the boot menu, you will
> have to modify the syslinux.cfg file (or grub.cfg for EFI boot) to run th=
e
> install option rather than boot option.****
>
> ** **
>
> ** **
>
> Regards,****
>
> ** **
>
> Sean Liming****
>
> Owner****
>
> [image: ablogo color - 500] <http://www.annabooks.com/>****
>
> Tel: 714-970-7523 / Cell: 858-774-3176****
>
> ** **
>
> *From:* Katu Txakur [mailto:katutxakurra@gmail.com]
> *Sent:* Monday, September 02, 2013 3:45 PM
> *To:* Sean Liming
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz****
>
> ** **
>
> Thanks Sean,****
>
> that's great help. Do you know where the installer script is located? I
> was hoping to find it in the yocto project scripts folder but I haven't
> seen any helpful script for partitioning the hard drive and installing th=
e
> yocto distro.****
>
> Regards,****
>
> Katu****
>
> ** **
>
> 2013/9/2 Sean Liming <sean.liming@annabooks.com>****
>
> The BSP for  3rd Generation iCore is this one:
> https://www.yoctoproject.org/download/intel-3rd-generation-core-platforms=
-core-i3-i5-i7-ivy-bridge. of course, you will need the core Yocto Project =
release -
> https://www.yoctoproject.org/downloads ****
>
>  ****
>
> Yes, you can install the distro on the machine. There is an installer
> script that does the partitioning and formatting. ****
>
>  ****
>
> Regards,****
>
>  ****
>
> Sean Liming****
>
> Owner****
>
> **** <http://www.annabooks.com/>
>
> Tel: *714-970-7523* / Cell: *858-774-3176***** <http://www.annabooks.com/=
>
>
>  **** <http://www.annabooks.com/>
>
> *From: yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] On Behalf Of Katu Txakur
> Sent: Monday, September 02, 2013 10:29 AM
> To: yocto@yoctoproject.org
> Subject: [yocto] Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz<http://www.ann=
abooks.com/>
> *
>
>  **** <http://www.annabooks.com/>
>
> Hello,**** <http://www.annabooks.com/>
>
>  **** <http://www.annabooks.com/>
>
> What is the best stable BSP for a Intel(R) Core(TM) i7-3612QM CPU @
> 2.10GHz?**** <http://www.annabooks.com/>
>
> I have a computer with 4 cpus and I would like to compile a Linux
> distro with the Yocto project.**** <http://www.annabooks.com/>
>
> I've read about booting with a live usb but, how can I install the distro
> in the machine? Can I automatize the hard drive partitions too?****<http:=
//www.annabooks.com/>
>
>  **** <http://www.annabooks.com/>
>
> Thanks a lot**** <http://www.annabooks.com/>
>
> ** ** <http://www.annabooks.com/>
>

--20cf303e9e6e18f8de04e575d2de
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>Thanks again Sean,<br><br></div>you are rig=
ht, the scripts are under poky-dylan-9.0.0/meta/recipes-core/initrdscripts/=
files<br><br></div>Regards,<br></div>Katu<br></div><div class=3D"gmail_extr=
a">
<br><br><div class=3D"gmail_quote">2013/9/3 Sean Liming <span dir=3D"ltr">&=
lt;<a href=3D"mailto:sean.liming@annabooks.com" target=3D"_blank">sean.limi=
ng@annabooks.com</a>&gt;</span><br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">
<div link=3D"blue" vlink=3D"purple" lang=3D"EN-US"><div><p class=3D"MsoNorm=
al"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;color:#1f497d">Katu,<u></u><u></u></span></p><p class=3D"Ms=
oNormal">
<span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-=
serif&quot;;color:#1f497d"><u></u>=A0<u></u></span></p><p class=3D"MsoNorma=
l"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;sa=
ns-serif&quot;;color:#1f497d">It has been awhile since I looked this one up=
. I believe the installer script is called init-install.sh under the /meta/=
recipes-core. If you don=92t use a serial debug port with a terminal to cat=
ch the boot menu, you will have to modify the syslinux.cfg file (or grub.cf=
g for EFI boot) to run the install option rather than boot option.<u></u><u=
></u></span></p>
<div class=3D"im"><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=
=A0<u></u></span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt=
;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u><=
/u>=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Regards,<u></u><u></u></s=
pan></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:=
&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u>=
</span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Sean Liming<u></u><u></u>=
</span></p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-fami=
ly:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Owner<u></u><u=
></u></span></p>
<p class=3D"MsoNormal"><a href=3D"http://www.annabooks.com/" target=3D"_bla=
nk"><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,&quot;s=
ans-serif&quot;;text-decoration:none"><img src=3D"cid:image003.jpg@01CEA82A=
.A8A4F9C0" alt=3D"ablogo color - 500" height=3D"34" border=3D"0" width=3D"1=
60"></span></a><span style=3D"font-size:11.0pt;font-family:&quot;Calibri&qu=
ot;,&quot;sans-serif&quot;;color:#1f497d"><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Tel: <a href=3D"tel:714-9=
70-7523" value=3D"+17149707523" target=3D"_blank">714-970-7523</a> / Cell: =
<a href=3D"tel:858-774-3176" value=3D"+18587743176" target=3D"_blank">858-7=
74-3176</a><u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d"><u></u>=A0<u></u></span><=
/p></div><div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in=
 0in 0in 4.0pt">
<div><div style=3D"border:none;border-top:solid #b5c4df 1.0pt;padding:3.0pt=
 0in 0in 0in"><p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt;fon=
t-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;">From:</span></b><span s=
tyle=3D"font-size:10.0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&qu=
ot;"> Katu Txakur [mailto:<a href=3D"mailto:katutxakurra@gmail.com" target=
=3D"_blank">katutxakurra@gmail.com</a>] <br>
<b>Sent:</b> Monday, September 02, 2013 3:45 PM<br><b>To:</b> Sean Liming<b=
r><b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yo=
cto@yoctoproject.org</a><br><b>Subject:</b> Re: [yocto] Intel(R) Core(TM) i=
7-3612QM CPU @ 2.10GHz<u></u><u></u></span></p>
</div></div><div class=3D"im"><p class=3D"MsoNormal"><u></u>=A0<u></u></p><=
div><div><div><div><p class=3D"MsoNormal" style=3D"margin-bottom:12.0pt">Th=
anks Sean,<u></u><u></u></p></div><p class=3D"MsoNormal" style=3D"margin-bo=
ttom:12.0pt">
that&#39;s great help. Do you know where the installer script is located? I=
 was hoping to find it in the yocto project scripts folder but I haven&#39;=
t seen any helpful script for partitioning the hard drive and installing th=
e yocto distro.<u></u><u></u></p>
</div><p class=3D"MsoNormal">Regards,<u></u><u></u></p></div><p class=3D"Ms=
oNormal">Katu<u></u><u></u></p></div></div><div><p class=3D"MsoNormal" styl=
e=3D"margin-bottom:12.0pt"><u></u>=A0<u></u></p><div><p class=3D"MsoNormal"=
>2013/9/2 Sean Liming &lt;<a href=3D"mailto:sean.liming@annabooks.com" targ=
et=3D"_blank">sean.liming@annabooks.com</a>&gt;<u></u><u></u></p>
<div><div><div class=3D"im"><p class=3D"MsoNormal"><span style=3D"font-size=
:11.0pt;font-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497=
d">The BSP for =A03<sup>rd</sup> Generation iCore is this one: <a href=3D"h=
ttps://www.yoctoproject.org/download/intel-3rd-generation-core-platforms-co=
re-i3-i5-i7-ivy-bridge" target=3D"_blank">https://www.yoctoproject.org/down=
load/intel-3rd-generation-core-platforms-core-i3-i5-i7-ivy-bridge</a> . of =
course, you will need the core Yocto Project release - <a href=3D"https://w=
ww.yoctoproject.org/downloads" target=3D"_blank">https://www.yoctoproject.o=
rg/downloads</a> </span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Yes, you can install t=
he distro on the machine. There is an installer script that does the partit=
ioning and formatting. </span><u></u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Regards,</span><u></u>=
<u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">=A0</span><u></u><u></u><=
/p><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot=
;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d">Sean Liming</span><u><=
/u><u></u></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,&quot;sans-serif&quot;;color:#1f497d">Owner</span><u></u><u></u=
></p><p class=3D"MsoNormal"><a href=3D"http://www.annabooks.com/" target=3D=
"_blank"><span style=3D"color:windowtext;text-decoration:none"><u></u><u></=
u></span></a></p>
</div><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&q=
uot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"><a href=3D"http://w=
ww.annabooks.com/" target=3D"_blank"><span style=3D"color:#1f497d;text-deco=
ration:none">Tel: <u><span style=3D"color:blue">714-970-7523</span></u> / C=
ell: <u><span style=3D"color:blue">858-774-3176</span></u></span><span styl=
e=3D"font-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&q=
uot;;color:windowtext;text-decoration:none"><u></u><u></u></span></a></span=
></p>
<div class=3D"im"><p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;fo=
nt-family:&quot;Calibri&quot;,&quot;sans-serif&quot;;color:#1f497d"><a href=
=3D"http://www.annabooks.com/" target=3D"_blank"><span style=3D"color:#1f49=
7d;text-decoration:none">=A0</span><span style=3D"font-size:12.0pt;font-fam=
ily:&quot;Times New Roman&quot;,&quot;serif&quot;;color:windowtext;text-dec=
oration:none"><u></u><u></u></span></a></span></p>
<div style=3D"border:none;border-left:solid blue 1.5pt;padding:0in 0in 0in =
4.0pt"><div><div style=3D"border:none;border-top:solid #b5c4df 1.0pt;paddin=
g:3.0pt 0in 0in 0in"><p class=3D"MsoNormal"><b><span style=3D"font-size:10.=
0pt;font-family:&quot;Tahoma&quot;,&quot;sans-serif&quot;"><a href=3D"http:=
//www.annabooks.com/" target=3D"_blank"><span style=3D"color:windowtext;tex=
t-decoration:none">From:</span><span style=3D"color:windowtext;font-weight:=
normal;text-decoration:none"> <u><span style=3D"color:blue">yocto-bounces@y=
octoproject.org</span></u> [mailto:<u><span style=3D"color:blue">yocto-boun=
ces@yoctoproject.org</span></u>] </span><span style=3D"color:windowtext;tex=
t-decoration:none">On Behalf Of </span><span style=3D"color:windowtext;font=
-weight:normal;text-decoration:none">Katu Txakur<br>
</span><span style=3D"color:windowtext;text-decoration:none">Sent:</span><s=
pan style=3D"color:windowtext;font-weight:normal;text-decoration:none"> Mon=
day, September 02, 2013 10:29 AM<br></span><span style=3D"color:windowtext;=
text-decoration:none">To:</span><span style=3D"color:windowtext;font-weight=
:normal;text-decoration:none"> <u><span style=3D"color:blue">yocto@yoctopro=
ject.org</span></u><br>
</span><span style=3D"color:windowtext;text-decoration:none">Subject:</span=
><span style=3D"color:windowtext;font-weight:normal;text-decoration:none"> =
[yocto] Intel(R) Core(TM) i7-3612QM CPU @ 2.10GHz</span><span style=3D"font=
-size:12.0pt;font-family:&quot;Times New Roman&quot;,&quot;serif&quot;;colo=
r:windowtext;font-weight:normal;text-decoration:none"><u></u><u></u></span>=
</a></span></b></p>
</div></div><div><div><p class=3D"MsoNormal"><a href=3D"http://www.annabook=
s.com/" target=3D"_blank"><span style=3D"color:windowtext;text-decoration:n=
one">=A0<u></u><u></u></span></a></p><div><p class=3D"MsoNormal"><a href=3D=
"http://www.annabooks.com/" target=3D"_blank"><span style=3D"color:windowte=
xt;text-decoration:none">Hello,<u></u><u></u></span></a></p>
<div><p class=3D"MsoNormal"><a href=3D"http://www.annabooks.com/" target=3D=
"_blank"><span style=3D"color:windowtext;text-decoration:none">=A0<u></u><u=
></u></span></a></p></div><div><p class=3D"MsoNormal"><a href=3D"http://www=
.annabooks.com/" target=3D"_blank"><span style=3D"color:windowtext;text-dec=
oration:none">What is the best stable BSP for a=A0Intel(R) Core(TM) i7-3612=
QM CPU @ 2.10GHz?<u></u><u></u></span></a></p>
</div><div><p class=3D"MsoNormal"><a href=3D"http://www.annabooks.com/" tar=
get=3D"_blank"><span style=3D"color:windowtext;text-decoration:none">I have=
 a computer with 4 cpus=A0and I would like to compile a Linux distro=A0with=
 the Yocto project.<u></u><u></u></span></a></p>
</div><div><p class=3D"MsoNormal"><a href=3D"http://www.annabooks.com/" tar=
get=3D"_blank"><span style=3D"color:windowtext;text-decoration:none">I&#39;=
ve read about booting with a live usb but, how can I install the distro in =
the machine? Can I automatize the hard drive partitions too?<u></u><u></u><=
/span></a></p>
</div><div><p class=3D"MsoNormal"><a href=3D"http://www.annabooks.com/" tar=
get=3D"_blank"><span style=3D"color:windowtext;text-decoration:none">=A0<u>=
</u><u></u></span></a></p></div><div><p class=3D"MsoNormal"><a href=3D"http=
://www.annabooks.com/" target=3D"_blank"><span style=3D"color:windowtext;te=
xt-decoration:none">Thanks a lot<u></u><u></u></span></a></p>
</div></div></div></div></div></div></div></div></div><p class=3D"MsoNormal=
"><a href=3D"http://www.annabooks.com/" target=3D"_blank"><span style=3D"co=
lor:windowtext;text-decoration:none"><u></u>=A0<u></u></span></a></p></div>=
</div>
</div></div></blockquote></div><br></div>

--20cf303e9e6e18f8de04e575d2de--

--20cf303e9e6e18f8df04e575d2df
Content-Type: image/jpeg; name="image003.jpg"
Content-Transfer-Encoding: base64
Content-ID: <image003.jpg@01CEA82A.A8A4F9C0>
X-Attachment-Id: 488c54937be05fac_0.1

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
AKUpQBis0pQgFKUoA//Z

--20cf303e9e6e18f8df04e575d2df--
