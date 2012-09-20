Return-Path: <tarek.elsherbiny@gmail.com>
Received: from mail-qa0-f48.google.com (mail-qa0-f48.google.com
	[209.85.216.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 62A04E013E6
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 07:25:45 -0700 (PDT)
Received: by qady1 with SMTP id y1so483099qad.14
	for <yocto@yoctoproject.org>; Thu, 20 Sep 2012 07:25:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=o/Mv9eSP09NMrowU3K2z8+v1TJeD3PESKw22nWy9Oec=;
	b=QCcYTx3p3YTRlgdY659TyUQyJSBRKB1U01DnXGU6y/WyZlhJNKSR25VvFNDjz45gRy
	M0j8u8qihNyPwLSOAdXyZ2OVHZzPIITsEC8pvkfAYX0DBiCI6rIsnkT9OUHT5XWLOCIl
	4OfcuqS2fhu33PLO8UaYHFCYfz380zMi4yKbBcrC5pp41RpcmOcjRIsSWdnalAf9t7gL
	oI7P3Zz+nLfWVCqDVC6QNadSI7GFL1JqOekldVPsdDZdDilKau6nfbMfnAJs6/uOGSgc
	xDPvahoHgT/4xbFHuz13DaykrJsdPboH3w8pVm9r9fKJeWCC4w483OH1pmA8MDPtuuRo
	2wPA==
MIME-Version: 1.0
Received: by 10.229.135.85 with SMTP id m21mr1306354qct.44.1348151144575; Thu,
	20 Sep 2012 07:25:44 -0700 (PDT)
Received: by 10.224.174.19 with HTTP; Thu, 20 Sep 2012 07:25:44 -0700 (PDT)
In-Reply-To: <CAOd_LFz1z0RsSVe+Wm+2LWm46XRjQR+am2=uYpYA_LodaBjM5Q@mail.gmail.com>
References: <CAB3sqtYTWOy4YyFRn70Krs5aFCZW+5A=RC4Z32NqDr74vaAngw@mail.gmail.com>
	<CAOd_LFz1z0RsSVe+Wm+2LWm46XRjQR+am2=uYpYA_LodaBjM5Q@mail.gmail.com>
Date: Thu, 20 Sep 2012 15:25:44 +0100
Message-ID: <CAB3sqtZ3+XZUNvyZFLsjhFyH3z-yfgv=AbKkiwumy6Uo1GN9FQ@mail.gmail.com>
From: Tarek El-Sherbiny <tarek.elsherbiny@gmail.com>
To: Cliff Brake <cliff.brake@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: bitbake check out from svn
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Thu, 20 Sep 2012 14:25:45 -0000
Content-Type: multipart/alternative; boundary=00248c6a7a8e13725604ca22e6be

--00248c6a7a8e13725604ca22e6be
Content-Type: text/plain; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Yes, I'm trying to fetch from tip. and yes I've got all the parameters
you mentioned.
The strange thing, bitbake is recognizing the Last Changed Rev: 78205 but
not doing the actual checkout!

NOTE: package web-browser-1.0+svnr*78205*-r6: task do_fetch: Started
WARNING: Failed to fetch URL
svn://svn.ad-group.adh/svn/dev_repos/Generation3_app;module=3Dtrunk;proto=
=3Dhttp
......
.......

/bin:/opt/sh-elf/bin:/opt/insight.sh-elf/bin:/usr/local/cwSDK/cwvx/bin:/opt=
/arm-elf-insight/bin:/opt/android-sdk-linux_x86/platform-tools/:/home/telsh=
erbiny/work/fsl/sources/poky/scripts:/home/telsherbiny/work/fsl/sources/pok=
y/scripts:/home/telsherbiny/work/fsl/sources/poky/scripts:/home/telsherbiny=
/work/fsl/sources/poky/scripts";
/usr/bin/env svn update -r *78205* could not be run:
None
ERROR: Function failed: Fetcher failure for URL:
'svn://svn.ad-group.adh/svn/dev_repos/Generation3_app;module=3Dtrunk;proto=
=3Dhttp'.
Unable to fetch URL from any source.
ERROR: Logfile of failure stored in:
/home/telsherbiny/work/fsl/build/tmp/work/armv7a-vfp-neon-poky-linux-gnueab=
i/web-browser-1.0+svnr78205-r6/temp/log.do_fetch.19552
NOTE: package web-browser-1.0+svnr*78205*-r6: task do_fetch: Failed



On Thu, Sep 20, 2012 at 3:15 PM, Cliff Brake <cliff.brake@gmail.com> wrote:

> On Thu, Sep 20, 2012 at 8:26 AM, Tarek El-Sherbiny <
> tarek.elsherbiny@gmail.com> wrote:
>
>> I'm writing a recipe to checkout files from local svn. Here is my URI:
>>
>> SRC_URI =3D
>> "svn://svn.ad-group.adh/svn/dev_repos/Generation3_app;module=3Dtrunk;pro=
tocol=3Dhttp"
>>
>
> Are you trying to fetch from the tip of the trunk?  In this case, you may
> need something like:
>
> SRCREV =3D "${AUTOREV}"
> PV =3D "1.0+svnr${SRCPV}"
> PR =3D "r6"
>
> SRC_URI =3D "svn://<my repo>;module=3Dmonitor4;proto=3Dhttps"
>
> Cliff
>
> --
> =3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D
> http://bec-systems.com
>

--00248c6a7a8e13725604ca22e6be
Content-Type: text/html; charset=ISO-8859-1
Content-Transfer-Encoding: quoted-printable

Yes, I&#39;m trying to fetch from tip. and yes I&#39;ve got all the paramet=
ers you=A0mentioned.<div>The strange thing, bitbake is=A0recognizing=A0the=
=A0Last Changed Rev: <span style=3D"background-color:rgb(255,255,0)">78205<=
/span>=A0but not doing the actual checkout!</div>
<div><br></div><div><div>NOTE: package web-browser-1.0+svnr<b style=3D"back=
ground-color:rgb(255,255,0)">78205</b>-r6: task do_fetch: Started</div><div=
>WARNING: Failed to fetch URL svn://svn.ad-group.adh/svn/dev_repos/Generati=
on3_app;module=3Dtrunk;proto=3Dhttp</div>
</div><div>......</div><div>.......</div><div><br></div><div><div>/bin:/opt=
/sh-elf/bin:/opt/insight.sh-elf/bin:/usr/local/cwSDK/cwvx/bin:/opt/arm-elf-=
insight/bin:/opt/android-sdk-linux_x86/platform-tools/:/home/telsherbiny/wo=
rk/fsl/sources/poky/scripts:/home/telsherbiny/work/fsl/sources/poky/scripts=
:/home/telsherbiny/work/fsl/sources/poky/scripts:/home/telsherbiny/work/fsl=
/sources/poky/scripts&quot;; /usr/bin/env svn update -r <b style=3D"backgro=
und-color:rgb(255,255,0)">78205</b> could not be run:</div>
<div>None</div><div>ERROR: Function failed: Fetcher failure for URL: &#39;s=
vn://svn.ad-group.adh/svn/dev_repos/Generation3_app;module=3Dtrunk;proto=3D=
http&#39;. Unable to fetch URL from any source.</div><div>ERROR: Logfile of=
 failure stored in: /home/telsherbiny/work/fsl/build/tmp/work/armv7a-vfp-ne=
on-poky-linux-gnueabi/web-browser-1.0+svnr78205-r6/temp/log.do_fetch.19552<=
/div>
<div>NOTE: package web-browser-1.0+svnr<b style=3D"background-color:rgb(255=
,255,0)">78205</b>-r6: task do_fetch: Failed</div><div><br></div><div><br><=
br><div class=3D"gmail_quote">On Thu, Sep 20, 2012 at 3:15 PM, Cliff Brake =
<span dir=3D"ltr">&lt;<a href=3D"mailto:cliff.brake@gmail.com" target=3D"_b=
lank">cliff.brake@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex"><div class=3D"gmail_quote"><div class=3D"im"=
>On Thu, Sep 20, 2012 at 8:26 AM, Tarek El-Sherbiny <span dir=3D"ltr">&lt;<=
a href=3D"mailto:tarek.elsherbiny@gmail.com" target=3D"_blank">tarek.elsher=
biny@gmail.com</a>&gt;</span> wrote:<br>
<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">
I&#39;m writing a recipe to checkout files from local svn. Here is my URI:<=
div><br></div><div>SRC_URI =3D &quot;svn://svn.ad-group.adh/svn/dev_repos/G=
eneration3_app;module=3Dtrunk;protocol=3Dhttp&quot;</div></blockquote><div>=
<br>

</div></div><div>Are you trying to fetch from the tip of the trunk? =A0In t=
his case, you may need something like:</div><div><br></div><div><div>SRCREV=
 =3D &quot;${AUTOREV}&quot;</div><div>PV =3D &quot;1.0+svnr${SRCPV}&quot;</=
div>
<div>
PR =3D &quot;r6&quot;</div><div><br></div><div>SRC_URI =3D &quot;svn://&lt;=
my repo&gt;;module=3Dmonitor4;proto=3Dhttps&quot;</div></div><span class=3D=
"HOEnZb"><font color=3D"#888888"><div><br></div><div>Cliff</div><div><br></=
div></font></span></div>
<span class=3D"HOEnZb"><font color=3D"#888888">-- <br>=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<br><a href=3D"http://bec-systems.com" target=
=3D"_blank">http://bec-systems.com</a><br>

</font></span></blockquote></div><br></div></div>

--00248c6a7a8e13725604ca22e6be--
