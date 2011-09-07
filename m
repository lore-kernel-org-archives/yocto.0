Return-Path: <brduffy@gmail.com>
Received: from mail-wy0-f176.google.com (mail-wy0-f176.google.com
	[74.125.82.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C8130E00731
	for <yocto@yoctoproject.org>; Wed,  7 Sep 2011 10:28:58 -0700 (PDT)
Authentication-Results: yocto-www.yoctoproject.org; dkim=pass
	(1024-bit key; insecure key) header.i=@gmail.com;
	x-dkim-adsp=none (insecure policy)
Received: by wyg30 with SMTP id 30so8263883wyg.35
	for <yocto@yoctoproject.org>; Wed, 07 Sep 2011 10:28:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=EqRH5JkCmmBOejZ039rNS9KdCHe7PLyjk4utlb+/MCw=;
	b=nr9tFVEPILuY9eDOZwU7jdHH6m0U02jHne6qWCe+kLwkWNUPcpwnOnU4B9usoVQEhO
	0i1+O4Hqm1l23qsl+FmQSaucfOG2138rPMxrQmJeobl27oyTSZqzR8aYCc2EJa71Hu4E
	jLvBveWNCpG+w7Y0puahAhfgHqcmYQV1HLpwI=
MIME-Version: 1.0
Received: by 10.216.156.146 with SMTP id m18mr1793381wek.108.1315416537352;
	Wed, 07 Sep 2011 10:28:57 -0700 (PDT)
Received: by 10.216.168.147 with HTTP; Wed, 7 Sep 2011 10:28:57 -0700 (PDT)
In-Reply-To: <CAHrDPkrtx6BTFSxFX2QPiS4uavVWgbxmuKF0O79reN+ztvsx2Q@mail.gmail.com>
References: <CAHrDPkpb38_1KwKi35v2cteF5LFmPeF_pfPz5E-2JUw6o-ge2Q@mail.gmail.com>
	<C6510F6D410BB64A8C15398EDC6B847C16E6E9CB@ORSMSX101.amr.corp.intel.com>
	<CAHrDPkrtx6BTFSxFX2QPiS4uavVWgbxmuKF0O79reN+ztvsx2Q@mail.gmail.com>
Date: Wed, 7 Sep 2011 13:28:57 -0400
Message-ID: <CAHrDPkqw6eNEiNiFtZrW2RtA4qmp41fdwiHs8dvQW+Kcmpg7AA@mail.gmail.com>
From: Brian Duffy <brduffy@gmail.com>
To: yocto@yoctoproject.org
Subject: HOB failure
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
X-List-Received-Date: Wed, 07 Sep 2011 17:28:59 -0000
Content-Type: multipart/alternative; boundary=0016e6567e0670cbcb04ac5d4732

--0016e6567e0670cbcb04ac5d4732
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

---------- Forwarded message ----------
From: Brian Duffy <brduffy@gmail.com>
Date: Wed, Sep 7, 2011 at 1:26 PM
Subject: Re: [yocto] HOB failure
To: "Zhang, Jessica" <jessica.zhang@intel.com>


Hi Jessica,

I already built core-image-minimal last night. I am able to run it in the
emulator as long as I run
run oe-init-build-env first. That complains that it can't write to
"oe-beta/build" and recommends I pass it a path to my own build directory.
When building the image I passed it "~/my-build" which worked fine. Then
when I went to run the emulator I found that certain env variables were not
set so I ran it again but did not provide a path parameter. It fails with
the same error but the environment variables work well enough after that to
run the emulator from the ~/my-build directory. Anyway, that is what I am
doing before I run hob and you saw the error I am getting. Any suggestions.

thnx

Brian


On Wed, Sep 7, 2011 at 12:24 PM, Zhang, Jessica <jessica.zhang@intel.com>wr=
ote:

>  Hi Brian,****
>
> ** **
>
> Were you able to build any image using the same build tree, can you do a
> quick =93bitbake core-image-minimal=94 instead of doing hob, seems you ha=
ve some
> environment setup issue.****
>
> ** **
>
> Thanks,****
>
> Jessica****
>
> ** **
>
> *From:* yocto-bounces@yoctoproject.org [mailto:
> yocto-bounces@yoctoproject.org] *On Behalf Of *Brian Duffy
> *Sent:* Wednesday, September 07, 2011 9:11 AM
> *To:* yocto@yoctoproject.org
> *Subject:* [yocto] HOB failure****
>
> ** **
>
> Hi,****
>
> ** **
>
> I'm having trouble running hob ...****
>
> ** **
>
> [brian@brduffy-PC my-build]$ hob****
>
> You had no conf/hob.local.conf file. An initial version of this
> configuration****
>
> file has therefore been created for you. This file will be used to store
> any****
>
> configuration values you set in hob.****
>
> ** **
>
> Pseudo is not present but is required, building this first before the mai=
n
> build****
>
> Loading cache: 100% |###########################################| ETA:
>  00:00:00****
>
> Loaded 1029 entries from dependency cache.****
>
> ** **
>
> OE Build Configuration:****
>
> BB_VERSION        =3D "1.13.3"****
>
> TARGET_ARCH       =3D "i586"****
>
> TARGET_OS         =3D "linux"****
>
> MACHINE           =3D "qemux86"****
>
> DISTRO            =3D "poky"****
>
> DISTRO_VERSION    =3D "1.0+snapshot-20110907"****
>
> TUNE_FEATURES     =3D "m32 i586"****
>
> TARGET_FPU        =3D ""****
>
> meta              ****
>
> meta-yocto        =3D "<unknown>:<unknown>"****
>
> ** **
>
> NOTE: Resolving any missing task queue dependencies****
>
> NOTE: Preparing runqueue****
>
> NOTE: Executing SetScene Tasks****
>
> NOTE: Executing RunQueue Tasks****
>
> NOTE: Tasks Summary: Attempted 70 tasks of which 70 didn't need to be rer=
un
> and 0 failed.****
>
> /home/brian/oe-beta/scripts/bitbake: line 73:
> /home/brian/oe-beta/build/pseudodone: Permission denied****
>
> cat: /home/brian/oe-beta/build/pseudodone: No such file or directory****
>
> /home/brian/oe-beta/scripts/bitbake: line 82: /pseudo: No such file or
> directory****
>
> [brian@brduffy-PC my-build]$ ****
>
> ** **
>
> Do I just have a permission problem?****
>
> ** **
>
> --
> Duff****
>



--=20
Duff



--=20
Duff

--0016e6567e0670cbcb04ac5d4732
Content-Type: text/html; charset=windows-1252
Content-Transfer-Encoding: quoted-printable

<br><br><div class=3D"gmail_quote">---------- Forwarded message ----------<=
br>From: <b class=3D"gmail_sendername">Brian Duffy</b> <span dir=3D"ltr">&l=
t;<a href=3D"mailto:brduffy@gmail.com">brduffy@gmail.com</a>&gt;</span><br>=
Date: Wed, Sep 7, 2011 at 1:26 PM<br>
Subject: Re: [yocto] HOB failure<br>To: &quot;Zhang, Jessica&quot; &lt;<a h=
ref=3D"mailto:jessica.zhang@intel.com">jessica.zhang@intel.com</a>&gt;<br><=
br><br>Hi Jessica,<div><br></div><div>I already built core-image-minimal la=
st night. I am able to run it in the emulator as long as I run=A0</div>
<div>run oe-init-build-env first. That complains that it can&#39;t write to=
 &quot;oe-beta/build&quot; and recommends I pass it a path to my own build =
directory. When building the image I passed it &quot;~/my-build&quot; which=
 worked fine. Then when I went to run the emulator I found that certain env=
 variables were not set so I ran it again but did not provide a path parame=
ter. It fails with the same error but the environment variables work well e=
nough after that to run the emulator from the ~/my-build directory. Anyway,=
 that is what I am doing before I run hob and you saw the error I am gettin=
g. Any suggestions.</div>

<div><br></div><div>thnx</div><div><br></div><div>Brian<div><div></div><div=
 class=3D"h5"><br><br><div class=3D"gmail_quote">On Wed, Sep 7, 2011 at 12:=
24 PM, Zhang, Jessica <span dir=3D"ltr">&lt;<a href=3D"mailto:jessica.zhang=
@intel.com" target=3D"_blank">jessica.zhang@intel.com</a>&gt;</span> wrote:=
<br>

<blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1p=
x #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Hi Br=
ian,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D"><u></=
u>=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Were =
you able to build any image using the same build tree, can you do a quick =
=93bitbake core-image-minimal=94 instead of doing hob, seems you have some =
environment
 setup issue.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D"><u></=
u>=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Thank=
s,<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D">Jessi=
ca<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;color:#1F497D"><u></=
u>=A0<u></u></span></p>
<div style=3D"border:none;border-top:solid #B5C4DF 1.0pt;padding:3.0pt 0in =
0in 0in">
<p class=3D"MsoNormal"><b><span style=3D"font-size:10.0pt">From:</span></b>=
<span style=3D"font-size:10.0pt"> <a href=3D"mailto:yocto-bounces@yoctoproj=
ect.org" target=3D"_blank">yocto-bounces@yoctoproject.org</a> [mailto:<a hr=
ef=3D"mailto:yocto-bounces@yoctoproject.org" target=3D"_blank">yocto-bounce=
s@yoctoproject.org</a>]
<b>On Behalf Of </b>Brian Duffy<br>
<b>Sent:</b> Wednesday, September 07, 2011 9:11 AM<br>
<b>To:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> [yocto] HOB failure<u></u><u></u></span></p>
</div><div><div></div><div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
<div>
<p class=3D"MsoNormal">Hi,<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">I&#39;m having trouble running hob ...<u></u><u></u>=
</p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<div>
<p class=3D"MsoNormal">[brian@brduffy-PC my-build]$ hob<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">You had no conf/hob.local.conf file. An initial vers=
ion of this configuration<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">file has therefore been created for you. This file w=
ill be used to store any<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">configuration values you set in hob.<u></u><u></u></=
p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Pseudo is not present but is required, building this=
 first before the main build<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Loading cache: 100% |###############################=
############| ETA: =A000:00:00<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Loaded 1029 entries from dependency cache.<u></u><u>=
</u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">OE Build Configuration:<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">BB_VERSION =A0 =A0 =A0 =A0=3D &quot;1.13.3&quot;<u><=
/u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">TARGET_ARCH =A0 =A0 =A0 =3D &quot;i586&quot;<u></u><=
u></u></p>
</div>
<div>
<p class=3D"MsoNormal">TARGET_OS =A0 =A0 =A0 =A0 =3D &quot;linux&quot;<u></=
u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">MACHINE =A0 =A0 =A0 =A0 =A0 =3D &quot;qemux86&quot;<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">DISTRO =A0 =A0 =A0 =A0 =A0 =A0=3D &quot;poky&quot;<u=
></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">DISTRO_VERSION =A0 =A0=3D &quot;1.0+snapshot-2011090=
7&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">TUNE_FEATURES =A0 =A0 =3D &quot;m32 i586&quot;<u></u=
><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">TARGET_FPU =A0 =A0 =A0 =A0=3D &quot;&quot;<u></u><u>=
</u></p>
</div>
<div>
<p class=3D"MsoNormal">meta =A0 =A0 =A0 =A0 =A0 =A0 =A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">meta-yocto =A0 =A0 =A0 =A0=3D &quot;&lt;unknown&gt;:=
&lt;unknown&gt;&quot;<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">NOTE: Resolving any missing task queue dependencies<=
u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">NOTE: Preparing runqueue<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">NOTE: Executing SetScene Tasks<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">NOTE: Executing RunQueue Tasks<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">NOTE: Tasks Summary: Attempted 70 tasks of which 70 =
didn&#39;t need to be rerun and 0 failed.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">/home/brian/oe-beta/scripts/bitbake: line 73: /home/=
brian/oe-beta/build/pseudodone: Permission denied<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">cat: /home/brian/oe-beta/build/pseudodone: No such f=
ile or directory<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">/home/brian/oe-beta/scripts/bitbake: line 82: /pseud=
o: No such file or directory<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal">[brian@brduffy-PC my-build]$=A0<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Do I just have a permission problem?<u></u><u></u></=
p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=A0<u></u></p>
</div>
<p class=3D"MsoNormal">-- <br>
Duff<u></u><u></u></p>
</div>
</div></div></div>
</div>

</blockquote></div><br><br clear=3D"all"><div><br></div></div></div><font c=
olor=3D"#888888">-- <br>Duff<br>
</font></div>
</div><br><br clear=3D"all"><div><br></div>-- <br>Duff<br>

--0016e6567e0670cbcb04ac5d4732--
