Subject: Re: #yocto
To: yocto@lists.yoctoproject.org
From: "Monsees, Steven C (US)" <steven.monsees@baesystems.com>
X-Originating-Location: US (149.32.192.43)
X-Originating-Platform: Windows IE 11
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 02 Nov 2020 04:36:55 -0800
References: <f2d33431-6a8c-43e6-abdf-c9909e15591e@email.android.com>
In-Reply-To: <f2d33431-6a8c-43e6-abdf-c9909e15591e@email.android.com>
Message-ID: <24906.1604320615591404696@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="5W6LpyBq5oaDusGLLNdV"

--5W6LpyBq5oaDusGLLNdV
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

I am not sure I am following ...

#1 is the actual package being built, #2 is the mods to the recipes for th=
e image I am building...

(1)./workspace_1/poky/../meta-intel

(2)./workspace_1/poky/../meta-1/meta-2/meta-intel
These directories share the same name, but the local.conf for #2 requires =
a unique BBFILE_COLLECTIONS name now ?

If I change the BBFILE_COLLECTIONS name to be unique,=C2=A0 I see the foll=
owing error:

--- Starting bitbake server pid 12022 at 2020-11-02 07:19:06.133802 ---
ERROR: Unable to parse Var <AVAILABLE_LICENSES[:=3D]>
Traceback (most recent call last):
File "Var <AVAILABLE_LICENSES[:=3D]>", line 1, in <module>
File "/disk0/scratch/smonsees/yocto/workspace_3/poky/meta/classes/license.=
bbclass", line 275, in available_licenses(d=3D<bb.data_smart.DataSmart obje=
ct at 0x7fc921cbdda0>):
for lic_dir in lic_dirs:
>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 licenses +=3D os.listdir(lic_d=
ir)

bb.data_smart.ExpansionError: Failure expanding variable AVAILABLE_LICENSE=
S[:=3D], expression was ${@' '.join(available_licenses(d))} which triggered=
 exception FileNotFoundError: [Errno 2] No such file or directory: '/disk0/=
scratch/smonsees/yocto/workspace_3/poky/../meta-bae/meta-limws/meta-intel/c=
ustom-licenses'

--5W6LpyBq5oaDusGLLNdV
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

<br/>I am not sure I am following ...<br/><br/>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN" sty=
le=3D"color: #333333;">#1 is the actual package being built, #2 is the mods=
 to the recipes for the image I am building... </span></p>
<p class=3D"DefangedMsoListParagraph" style=3D"margin-bottom:0px;"><span l=
ang=3D"EN" style=3D"color: #333333;"><span>=C2=A0=C2=A0=C2=A0 (1)<span styl=
e=3D"font: 7pt/normal &#39;Times New Roman&#39;; font-size-adjust: none; fo=
nt-stretch: normal;">=C2=A0=C2=A0=C2=A0 </span></span></span><span lang=3D"=
EN" style=3D"color: #333333;">./workspace_1/poky/../meta-intel</span></p>
<p class=3D"DefangedMsoListParagraph" style=3D"margin-bottom:0px;"><span l=
ang=3D"EN" style=3D"color: #333333;"><span>=C2=A0=C2=A0=C2=A0 (2)<span styl=
e=3D"font: 7pt/normal &#39;Times New Roman&#39;; font-size-adjust: none; fo=
nt-stretch: normal;">=C2=A0=C2=A0=C2=A0 </span></span></span><span lang=3D"=
EN" style=3D"color: #333333;">./workspace_1/poky/../meta-1/meta-2/meta-inte=
l<br/>These directories share the same name, but the local.conf for #2 requ=
ires a unique BBFILE_COLLECTIONS name now ?<br/><br/>If I change the BBFILE=
_COLLECTIONS name to be unique,=C2=A0 I see the following error:<br/><br/>-=
-- Starting bitbake server pid 12022 at 2020-11-02 07:19:06.133802 ---<br/>=
ERROR: Unable to parse Var &lt;AVAILABLE_LICENSES[:=3D]&gt;<br/>Traceback (=
most recent call last):<br/>=C2=A0 File &#34;Var &lt;AVAILABLE_LICENSES[:=
=3D]&gt;&#34;, line 1, in &lt;module&gt;<br/>=C2=A0 File &#34;/disk0/scrat=
ch/smonsees/yocto/workspace_3/poky/meta/classes/license.bbclass&#34;, line =
275, in available_licenses(d=3D&lt;bb.data_smart.DataSmart object at 0x7fc9=
21cbdda0&gt;):<br/>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 for lic=
_dir in lic_dirs:<br/>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=
=C2=A0=C2=A0 licenses +=3D os.listdir(lic_dir)<br/>=C2=A0=C2=A0=C2=A0=C2=
=A0 <br/>bb.data_smart.ExpansionError: Failure expanding variable AVAILABL=
E_LICENSES[:=3D], expression was <a href=3D"mailto:${@&#39;">${@&#39;</a> &=
#39;.join(available_licenses(d))} which triggered exception FileNotFoundErr=
or: [Errno 2] No such file or directory: &#39;/disk0/scratch/smonsees/yocto=
/workspace_3/poky/../meta-bae/meta-limws/meta-intel/custom-licenses&#39;</s=
pan></p>
<p class=3D"DefangedMsoListParagraph" style=3D"margin-bottom:0px;"><span l=
ang=3D"EN" style=3D"color: #333333;"><br/><br/></span></p>
<p class=3D"DefangedMsoNormal" style=3D"margin:0px;"><span lang=3D"EN" sty=
le=3D"color: #333333;">=C2=A0</span></p>

--5W6LpyBq5oaDusGLLNdV--
