Subject: Fixing vulnerabilities in glibc #yocto
To: yocto@lists.yoctoproject.org
From: milunj@yahoo.com
X-Originating-Location: Hickory, North Carolina, US (198.90.66.177)
X-Originating-Platform: Windows Firefox 57
User-Agent: GROUPS.IO Web Poster
MIME-Version: 1.0
Date: Mon, 09 Dec 2019 05:48:02 -0800
Message-ID: <R19L.1575899282432368398.77t7@lists.yoctoproject.org>
Content-Type: multipart/alternative; boundary="a1bCypXTUbcd3kh5jadQ"

--a1bCypXTUbcd3kh5jadQ
Content-Type: text/plain; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

My greeting to all
I am new on yocto project and yocto build environment is also new to me ..=
.
My working task is removing=C2=A0 vulnerabilities from libc library...
The processor is based on arm5 while newer yoctos 2.7.x and 3.x. do not pr=
ovide environment support for arm5 based processors.

The glibc vulnerabilities are fixed in the latest glibc 2.30 released. ( h=
ttps://sourceware.org/ml/libc-alpha/2019-08/msg00029.html ) package while y=
octo 2.6.x=C2=A0 includes 2.28 package.
Also some of glibc vulnerabilities are patched in 2.6.4 (\oecore-thud-20.0=
.4.tar\oecore-thud-20.0.4\meta\recipes-core\glibc\glibc):

CVE-2016-10739
CVE-2018-19591
CVE-2019-6488
CVE-2019-7309
CVE-2019-9169
while there are some others those have not been patched:
https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2005-3590
https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2006-7254
https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2018-20796
https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2019-9192

Does anyone know whether new vulnerability patches will be applied for yoc=
to 2.6.5 and=C2=A0 when will be released yocto 2.6.5 ?
Thank you in advance
Milun

--a1bCypXTUbcd3kh5jadQ
Content-Type: text/html; charset="utf-8"
Content-Transfer-Encoding: quoted-printable

My greeting to all<br />I am new on yocto project and yocto build environme=
nt is also new to me ...<br />My working task is removing&nbsp; vulnerabili=
ties from libc library...<br />The processor is based on arm5 while newer y=
octos 2.7.x and 3.x. do not provide environment support for arm5 based proc=
essors.<br /><br />The glibc vulnerabilities are fixed in the latest <a hre=
f=3D"https://sourceware.org/ml/libc-alpha/2019-08/msg00029.html">glibc 2.30=
 released.</a> package while yocto 2.6.x&nbsp; includes 2.28 package.<br />=
Also some of glibc vulnerabilities are patched in 2.6.4 (\oecore-thud-20.0.=
4.tar\oecore-thud-20.0.4\meta\recipes-core\glibc\glibc):<br /><br />CVE-201=
6-10739<br />CVE-2018-19591<br />CVE-2019-6488<br />CVE-2019-7309<br />CVE-=
2019-9169<br />while there are some others those have not been patched:<br =
/>
<div id=3D"polarion-dle-clipboard-container" class=3D"polarion-dle-clipboa=
rd-container" contenteditable=3D"true"><span id=3D"polarion_source=3DVulnDB=
/VUL-9899" data-prototype=3D"WorkItem"></span><a href=3D"https://web.nvd.ni=
st.gov/view/vuln/detail?vulnId=3DCVE-2005-3590" target=3D"_blank" rel=3D"no=
opener">https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2005-3590</a=
><br />
<div id=3D"polarion-dle-clipboard-container" class=3D"polarion-dle-clipboa=
rd-container" contenteditable=3D"true"><span id=3D"polarion_source=3DVulnDB=
/VUL-9901" data-prototype=3D"WorkItem"></span><a href=3D"https://web.nvd.ni=
st.gov/view/vuln/detail?vulnId=3DCVE-2006-7254" target=3D"_blank" rel=3D"no=
opener">https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2006-7254</a=
><br />
<div id=3D"polarion-dle-clipboard-container" class=3D"polarion-dle-clipboa=
rd-container" contenteditable=3D"true"><span id=3D"polarion_source=3DVulnDB=
/VUL-9066" data-prototype=3D"WorkItem"></span><a href=3D"https://web.nvd.ni=
st.gov/view/vuln/detail?vulnId=3DCVE-2018-20796" target=3D"_blank" rel=3D"n=
oopener">https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2018-20796<=
/a><br />
<div id=3D"polarion-dle-clipboard-container" class=3D"polarion-dle-clipboa=
rd-container" contenteditable=3D"true"><span id=3D"polarion_source=3DVulnDB=
/VUL-9068" data-prototype=3D"WorkItem"></span><a href=3D"https://web.nvd.ni=
st.gov/view/vuln/detail?vulnId=3DCVE-2019-9192" target=3D"_blank" rel=3D"no=
opener">https://web.nvd.nist.gov/view/vuln/detail?vulnId=3DCVE-2019-9192</a=
><br /><br />Does anyone know whether new vulnerability patches will be app=
lied for yocto 2.6.5 and&nbsp; when will be released yocto 2.6.5 ?<br />Tha=
nk you in advance<br />Milun</div>
</div>
<div id=3D"polarion-dle-clipboard-container" class=3D"polarion-dle-clipboa=
rd-container" contenteditable=3D"true">&nbsp;</div>
</div>
<br /><br /></div>

--a1bCypXTUbcd3kh5jadQ--
