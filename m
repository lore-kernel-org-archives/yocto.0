Return-Path: <leon@sidebranch.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E4591E00CED; Fri,  8 Mar 2019 04:26:21 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.217.66 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-vs1-f66.google.com (mail-vs1-f66.google.com
	[209.85.217.66])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 755B8E00A0C
	for <yocto@yoctoproject.org>; Fri,  8 Mar 2019 04:26:20 -0800 (PST)
Received: by mail-vs1-f66.google.com with SMTP id h7so6522947vsl.1
	for <yocto@yoctoproject.org>; Fri, 08 Mar 2019 04:26:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=sidebranch-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=3YrGQoNMognBgmabcLcf6mO9FU7LKyM5K9teBK6ce/4=;
	b=BPNDFTkv4nTrw0EasWxJezavEtUBDcJ46l2K3jkIWQxiLt/7NSj2gtmCgubGjMKaXF
	yfjlyzwzbtnG48Y0C3jkt8qffNXqd2N8EjennRRXkQdOM0T5NdO9l/n6nvDEFMs4LCPp
	nruYnTs+SVLjRhVb/OVH592U/5rf5guFX8LagQwdEjXR0c66Ong1RnLS8k5PCalQvkIB
	8JBDgAmgnf82SFfqjsYFYjtGTCBtnuRFMTL4KLyEpc6VJbQ2UaF9nofgh2rG1u5lkpP0
	Vew3csZE77Idp1Xy9p6cCT/AV6PzCZGELgnhbq/+3zzPQ56fKVi4+39cCchpjEj4kPa3
	Hc3w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=3YrGQoNMognBgmabcLcf6mO9FU7LKyM5K9teBK6ce/4=;
	b=WxQZutzCLRX2IYtrhSNOJFLs7r63JsiNaERB4ekW1wCByWb4lV0wYBSD2pVILXJ5PJ
	39OQ2i+ICOyoK/Pg1dHSpDXqp35rKmv0/gK5e5xU1rBJJ6Re77y521+FIpoMrn1cAom+
	uaVRWs2JegP+RTswIoMITMRdfLCkIC3M1HYCiNin7oOyKPszzwupj9FSq71hsxSEFsi9
	MndW7ZMONch8+9287BtP+Ve52fuXoEZE+s9D6kkzkbGZP7b4AvoZvnc77sUmwVYY+Btu
	+vVFmNUGO+Gv8EP1BS7ULBNdKFETHLSQ659q+41VPAgHeUE6aNZpp2C6fcjNUK4L26Yf
	5Tjg==
X-Gm-Message-State: APjAAAUxb5Wu13bfYhGl+SAY2vfHL4/wBi/TjP3tGxQo1LRsJ9yHmfGD
	gYKPWm2AUrZa79Dsf3Dc9AyNF9WtAWAEYYNp06CeSA==
X-Google-Smtp-Source: APXvYqyOeFLlsyXbkXZQmEjQH8exzdeeShwIywhR3pbYcQXV9+YILUA8ojQyi8bVCECFni4/nwk9OqtyLwx8pvRK/mA=
X-Received: by 2002:a67:d702:: with SMTP id p2mr8922909vsj.14.1552047979746;
	Fri, 08 Mar 2019 04:26:19 -0800 (PST)
MIME-Version: 1.0
References: <DB5P101MB0039A83F724304074007A441DE4C0@DB5P101MB0039.NAMP101.PROD.OUTLOOK.COM>
	<DB5P101MB00394A574A21D1B420042725DE4D0@DB5P101MB0039.NAMP101.PROD.OUTLOOK.COM>
In-Reply-To: <DB5P101MB00394A574A21D1B420042725DE4D0@DB5P101MB0039.NAMP101.PROD.OUTLOOK.COM>
From: Leon Woestenberg <leon@sidebranch.com>
Date: Fri, 8 Mar 2019 13:26:08 +0100
Message-ID: <CAMjhiJjxBQ=T5xj_k+h_n7xOQJj4OykmJWswPADWBQiJfWzLEA@mail.gmail.com>
To: "Smith, Peter1 (GE Renewable Energy)" <peter.t.smith@ge.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Resizing extended partition in image created with wic (poky sumo)
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
X-List-Received-Date: Fri, 08 Mar 2019 12:26:22 -0000
Content-Type: multipart/alternative; boundary="00000000000081edc3058394541e"

--00000000000081edc3058394541e
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

Hello Peter,

here are some (partial) successes with some twiddling:

https://askubuntu.com/questions/345343/gparted-unable-to-satisfy-all-constr=
aints-on-the-partition

On Fri, Mar 8, 2019 at 10:31 AM Smith, Peter1 (GE Renewable Energy) <
peter.t.smith@ge.com> wrote:

> Posting again as I was not a member=E2=80=A6
>
>
>
>
>
> *From:* Smith, Peter1 (GE Renewable Energy)
> *Sent:* 07 March 2019 16:31
> *To:* 'yocto@yoctoproject.org' <yocto@yoctoproject.org>
> *Subject:* Resizing extended partition in image created with wic (poky
> sumo)
>
>
>
> I am having trouble with resizing a partition inside of an extended
> partition in an image created using wic (poky sumo).
>
>
>
> Here is the .wks file I have used:
>
>
>
> part /mnt/boot --source bootimg-partition --ondisk mmcblk0 --label
> edgeos-boot --active --align 4096 --fixed-size=3D100M --fstype=3Dmsdos
> --use-uuid
>
> part / --source rootfs --rootfs-dir=3Dsdcard-image --ondisk mmcblk0
> --use-uuid --uuid=3DEA2EEE0B-5C82-4817-8439-1202B5E5651A --fstype=3Dext3
> --label edgeos-root --align 4096 --fixed-size 1G
>
> part /mnt/rootfs2 --ondisk mmcblk0 --use-uuid
> --uuid=3DEA2EEE0B-5C82-4817-8439-1202B5E5651B --fstype=3Dext3 --label roo=
tfs2
> --align 4096 --fixed-size 1G
>
> part /mnt/conf --ondisk mmcblk0 --use-uuid --fstype=3Dext3 --label
> edgeos-conf --align 4096 --fixed-size 20M
>
> part /mnt/data --ondisk mmcblk0 --use-uuid --fstype=3Dext3 --label
> edgeos-data --align 4096 --fixed-size 2947M
>
> bootloader --ptable msdos
>
>
>
> =E2=80=A6and here is what parted thinks about the content of the image:
>
>
>
> Sector size (logical/physical): 512B/512B
>
> Partition Table: msdos
>
> Disk Flags:
>
>
>
> Number  Start     End        Size      Type      File system  Flags
>
> 1      8192s     212991s    204800s   primary   fat16        boot
>
> 2      212992s   2310143s   2097152s  primary   ext3
>
> 3      2310144s  4407295s   2097152s  primary   ext3
>
> 4      4415487s  10500095s  6084609s  extended               lba
>
> 5      4415488s  4456447s   40960s    logical   ext3
>
> 6      4464640s  10500095s  6035456s  logical   ext3
>
>
>
> When I try and resize the extended partition to the end of the disk (it=
=E2=80=99s
> a 16GB SDCARD) with the following command I get an error
>
>
>
> parted /dev/=E2=80=A6 resizepart 4 -1s
>
> bash[177]: Expand extended partition(4)... Error: Unable to satisfy all
> constraints on the partition.
>
>
>
> I have searched the internet but can=E2=80=99t seem to find any suggestio=
ns about
> what could be wrong, any ideas?
>
>
>
> Best Regards Peter Smith
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>


--=20
Leon Woestenberg
leon@sidebranch.com
T: +31 40 711 42 76
M: +31 6 472 30 372

Sidebranch
Embedded Systems
Eindhoven, The Netherlands
http://www.sidebranch.com

--00000000000081edc3058394541e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hello Peter,</div><div dir=3D"ltr"><br></=
div><div dir=3D"ltr">here are some (partial) successes with some twiddling:=
<br><div><br></div><div><a href=3D"https://askubuntu.com/questions/345343/g=
parted-unable-to-satisfy-all-constraints-on-the-partition">https://askubunt=
u.com/questions/345343/gparted-unable-to-satisfy-all-constraints-on-the-par=
tition</a></div></div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr"=
 class=3D"gmail_attr">On Fri, Mar 8, 2019 at 10:31 AM Smith, Peter1 (GE Ren=
ewable Energy) &lt;<a href=3D"mailto:peter.t.smith@ge.com">peter.t.smith@ge=
.com</a>&gt; wrote:<br></div><blockquote class=3D"gmail_quote" style=3D"mar=
gin:0px 0px 0px 0.8ex;border-left-width:1px;border-left-style:solid;border-=
left-color:rgb(204,204,204);padding-left:1ex">





<div lang=3D"EN-GB">
<div class=3D"gmail-m_6095664518799808044WordSection1">
<p class=3D"MsoNormal">Posting again as I was not a member=E2=80=A6<u></u><=
u></u></p>
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:9pt;font-family:Arial,sans-=
serif;color:gray"><u></u>=C2=A0<u></u></span></p>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div style=3D"border-style:solid none none;border-top-width:1pt;border-top-=
color:rgb(225,225,225);padding:3pt 0cm 0cm">
<p class=3D"MsoNormal"><b><span lang=3D"EN-US">From:</span></b><span lang=
=3D"EN-US"> Smith, Peter1 (GE Renewable Energy)
<br>
<b>Sent:</b> 07 March 2019 16:31<br>
<b>To:</b> &#39;<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank"=
>yocto@yoctoproject.org</a>&#39; &lt;<a href=3D"mailto:yocto@yoctoproject.o=
rg" target=3D"_blank">yocto@yoctoproject.org</a>&gt;<br>
<b>Subject:</b> Resizing extended partition in image created with wic (poky=
 sumo)<u></u><u></u></span></p>
</div>
</div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I am having trouble with resizing a partition inside=
 of an extended partition in an image created using wic (poky sumo).<u></u>=
<u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Here is the .wks file I have used:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">part /mnt/boot --source bootimg-partition --ondisk m=
mcblk0 --label edgeos-boot --active --align 4096 --fixed-size=3D100M --fsty=
pe=3Dmsdos --use-uuid<u></u><u></u></p>
<p class=3D"MsoNormal">part / --source rootfs --rootfs-dir=3Dsdcard-image -=
-ondisk mmcblk0 --use-uuid --uuid=3DEA2EEE0B-5C82-4817-8439-1202B5E5651A --=
fstype=3Dext3 --label edgeos-root --align 4096 --fixed-size 1G<u></u><u></u=
></p>
<p class=3D"MsoNormal">part /mnt/rootfs2 --ondisk mmcblk0 --use-uuid --uuid=
=3DEA2EEE0B-5C82-4817-8439-1202B5E5651B --fstype=3Dext3 --label rootfs2 --a=
lign 4096 --fixed-size 1G<u></u><u></u></p>
<p class=3D"MsoNormal">part /mnt/conf --ondisk mmcblk0 --use-uuid --fstype=
=3Dext3 --label edgeos-conf --align 4096 --fixed-size 20M<u></u><u></u></p>
<p class=3D"MsoNormal">part /mnt/data --ondisk mmcblk0 --use-uuid --fstype=
=3Dext3 --label edgeos-data --align 4096 --fixed-size 2947M<u></u><u></u></=
p>
<p class=3D"MsoNormal">bootloader --ptable msdos<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">=E2=80=A6and here is what parted thinks about the co=
ntent of the image:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Sector size (logical/physical): 512B/512B<u></u><u><=
/u></p>
<p class=3D"MsoNormal">Partition Table: msdos<u></u><u></u></p>
<p class=3D"MsoNormal">Disk Flags:<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Number=C2=A0 Start=C2=A0=C2=A0=C2=A0=C2=A0 End=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Size=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 Typ=
e=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 File system=C2=A0 Flags<u></u><u></u></p>
<p class=3D"MsoNormal">1=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 8192s=C2=A0=C2=A0=C2=
=A0=C2=A0 212991s=C2=A0=C2=A0=C2=A0 204800s=C2=A0=C2=A0 primary=C2=A0=C2=A0=
 fat16=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 boot<u></u><u></u></p>
<p class=3D"MsoNormal">2=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 212992s=C2=A0=C2=A0 =
2310143s=C2=A0=C2=A0 2097152s=C2=A0 primary=C2=A0=C2=A0 ext3<u></u><u></u><=
/p>
<p class=3D"MsoNormal">3=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 2310144s=C2=A0 44072=
95s=C2=A0=C2=A0 2097152s=C2=A0 primary=C2=A0=C2=A0 ext3<u></u><u></u></p>
<p class=3D"MsoNormal">4=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4415487s=C2=A0 10500=
095s=C2=A0 6084609s=C2=A0 extended=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 lba<u></u><u></u></p>
<p class=3D"MsoNormal">5=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4415488s=C2=A0 44564=
47s=C2=A0=C2=A0 40960s=C2=A0=C2=A0=C2=A0 logical=C2=A0=C2=A0 ext3<u></u><u>=
</u></p>
<p class=3D"MsoNormal">6=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 4464640s=C2=A0 10500=
095s=C2=A0 6035456s=C2=A0 logical=C2=A0=C2=A0 ext3<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">When I try and resize the extended partition to the =
end of the disk (it=E2=80=99s a 16GB SDCARD) with the following command I g=
et an error<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">parted /dev/=E2=80=A6 resizepart 4 -1s<u></u><u></u>=
</p>
<p class=3D"MsoNormal">bash[177]: Expand extended partition(4)... Error: Un=
able to satisfy all constraints on the partition.<u></u><u></u></p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">I have searched the internet but can=E2=80=99t seem =
to find any suggestions about what could be wrong, any ideas?<u></u><u></u>=
</p>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<p class=3D"MsoNormal">Best Regards Peter Smith<u></u><u></u></p>
</div>
</div>

-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div><br clear=3D"all"><div><br></div>-- <br><div dir=3D"ltr"=
 class=3D"gmail_signature"><div dir=3D"ltr"><div style=3D"color:rgb(0,0,0);=
font-family:Helvetica">Leon Woestenberg</div><div style=3D"color:rgb(0,0,0)=
;font-family:Helvetica"><a href=3D"mailto:leon@sidebranch.com" style=3D"col=
or:rgb(17,85,204)" target=3D"_blank">leon@sidebranch.com</a></div><div styl=
e=3D"color:rgb(0,0,0);font-family:Helvetica"><div>T: +31 40 711 42 76</div>=
<div>M: +31 6 472 30 372</div></div><div style=3D"color:rgb(0,0,0);font-fam=
ily:Helvetica"><br></div><div style=3D"color:rgb(0,0,0);font-family:Helveti=
ca">Sidebranch</div><div style=3D"color:rgb(0,0,0);font-family:Helvetica">E=
mbedded Systems</div><div style=3D"color:rgb(0,0,0);font-family:Helvetica">=
Eindhoven, The Netherlands</div><a href=3D"http://www.sidebranch.com/" styl=
e=3D"color:rgb(17,85,204);font-family:Helvetica" target=3D"_blank">http://w=
ww.sidebranch.com</a><div><br></div><div><img src=3D"http://www.sidebranch.=
nl/sites/default/files/images/unnamed.png" style=3D"color: rgb(0, 0, 0); fo=
nt-family: Helvetica;"><br></div><div><br><div><br></div></div></div></div>

--00000000000081edc3058394541e--
