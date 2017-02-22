Return-Path: <satya.2891@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A0B5EE007AD; Tue, 21 Feb 2017 22:45:27 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (satya.2891[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.47 listed in list.dnswl.org]
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.47 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f47.google.com (mail-lf0-f47.google.com
	[209.85.215.47])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B6911E004D8
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 22:45:25 -0800 (PST)
Received: by mail-lf0-f47.google.com with SMTP id g134so1132462lfe.1
	for <yocto@yoctoproject.org>; Tue, 21 Feb 2017 22:45:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=T1VMdpquYhzBUyuw6eaqTnzLTOElfzonqDZrbucx/j0=;
	b=X+YXW+QlfIuXTl2z+2pKflYYQ+RmXJYxYQiTX5vCAXzOqq8JQSnyT4PbHj/sal9CoH
	iJS6VS2LyIhg+XOOEOLpIWkGhtR+LVEuOyFqmdg/GF/HeKSJaOv0CarYQVmWz8QqxcBY
	sRm4k3Gf/kjmNNVVkWlOIh155KFSLlKK2lM/94AQvqmgAXZMrSY+19+GXlGnqtPpN3tI
	uSmFq3XXpJX7vZFcFZqf9dIoQlqtFU4vLno7MNu+CqY8XL2WUUzMtCwr7B+aEvcs1LlI
	HlIyUUH7bNa1m2hfNimZsngZMeayiv2SZJSOr07vcnFkxkD8j7MpHX1V5KGb0tmm4JcP
	fe+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=T1VMdpquYhzBUyuw6eaqTnzLTOElfzonqDZrbucx/j0=;
	b=avDvHHDi93Vt/MSPRfZZuDmjiqAwBhKShujlT6VYa0Pnv6mjAFvPSeYZ+Tv8UmS1p8
	2OLnjc/A6cK+ZD67CJZNQZScgSoNfMjxOJFCufNH1MC3eOGARvFKJDWu6bWc6LlGsHD/
	N1YdDwcMePssGSHKVIJwQABQbClJDtCEXCHZzNMJL0BFGg0NzfL4B8fWRDgleLxVAzdf
	UOtTtajT8TCZQ6Jw5+nEaNd8a+6ok2MqvGnB4qxtdY5JW5A2oDhhY+QgeRfbaRVVyQc4
	n+w3BiNP+hsmaptaXW5wVhpLeJB3XxT71/r3Z/7tZN1XOuPqi4e90teBRj31nud+A1dN
	2Wyw==
X-Gm-Message-State: AMke39ly9g9lHJUNsW6STGq6fP79CO58X9JEgjILW6hrw8zqFY8t5W/tmqUEHjdooUkP7LoXABnbN0Dvt+sItw==
X-Received: by 10.25.29.66 with SMTP id d63mr2830111lfd.163.1487745924033;
	Tue, 21 Feb 2017 22:45:24 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.228.14 with HTTP; Tue, 21 Feb 2017 22:45:23 -0800 (PST)
From: SatyaNarayana Sampangi <satya.2891@gmail.com>
Date: Wed, 22 Feb 2017 12:15:23 +0530
Message-ID: <CAF1M0z5E3uiNW5cfWWmbrmvLic6kgFnzZkwTig3ss-ktfmbu1g@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Error: bb.data_smart.ExpansionError: Failure expanding variable PV_MAJ, expression
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
X-List-Received-Date: Wed, 22 Feb 2017 06:45:27 -0000
Content-Type: multipart/alternative; boundary=001a1140331e517450054918d7b6

--001a1140331e517450054918d7b6
Content-Type: text/plain; charset=UTF-8

Hi,

1. I wrote the recipe .bb to install the nano editor, the contents given
below,


 1 SUMMARY = "GNU nano- editor"
  2 DESCRIPTION = "GNU nano - an enhanced clone for the pico editor"
  3
  4 HOMEPAGE = "https://www.nano-editor.org/"
  5 BUGTRACKER = "https://savannah.gnu.org/bugs/?group=nano"
  6
  7 SECTION = "console/utils"
  8 PRIORITY = "OPTION"
  9
 10 LICENSE = "GPLv3"
 11 LIC_FILES_CHKSUM =
"file://COPYING;md5=f27defe1e96c2e1ecd4e0c9be8967949    "
 12
 13 DEPENDS = "ncurses"
 14
 15 PV_MAJ = "${@bb.data.getVar('PV',d,1).split('.')[0]}"
 16 PV_MIN = "${@bb.data.getVar('PV',d,1).split('.')[1]}"
 17
 18 SRC_URI = "https://www.nano-editor.org/dist/v${PV_MAJ}.${PV_MIN}/nano-$
{PV}.tar.gz"
 19 #SRC_URI = "https://www.nano-editor.org/dist/v2.3/nano-2.3.1.tar.gz"
 20
 21 SRC_URI[md5sum] = "af09f8828744b0ea0808d6c19a2b4bfd"
 22 SRC_URI[sha256sum] =
"b7bace9a8e543b84736d6ef5ce5430305746efea3aacb2439    1f692efc6f3c8d3"
 23
 24 inherit autotools gettext
 25
 26 RDEPENDS_${PV} = "ncurses"


2. When I run the bitbake nano, the am getting the error as given below,

bitbake nano
Loading cache: 100%
|###################################################################################################################|
Time: 0:00:00
Loaded 1324 entries from dependency cache.
ERROR: ExpansionError during parsing
/home/satya/Yocto/Practice/poky/build-bbb-2/meta-mylayer/recipes-example/nano/
nano_2.3.1.bb       | ETA:  --:--:--
Traceback (most recent call last):
  File "/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py", line
412, in DataSmart.expandWithRefs(s='
https://www.nano-editor.org/dist/v${PV_MAJ}.${PV_MIN}/nano-${PV}.tar.gz',
varname='SRC_URI'):
                 try:
    >                s = __expand_var_regexp__.sub(varparse.var_sub, s)
                     try:
  File "/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py", line
111, in VariableParse.var_sub(match=<_sre.SRE_Match object; span=(34, 43),
match='${PV_MAJ}'>):
                 else:
    >                var = self.d.getVarFlag(key, "_content")
                 self.references.add(key)
  File "/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py", line
773, in DataSmart.getVarFlag(var='PV_MAJ', flag='_content', expand=True,
noweakdefault=False, parsing=False):
                     cachename = var + "[" + flag + "]"
    >            value = self.expand(value, cachename)

  File "/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py", line
436, in DataSmart.expand(s="${@bb.data.getVar('PV',d,1).split('.')[0]}",
varname='PV_MAJ'):
         def expand(self, s, varname = None):
    >        return self.expandWithRefs(s, varname).value

  File "/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py", line
426, in
DataSmart.expandWithRefs(s="${@bb.data.getVar('PV',d,1).split('.')[0]}",
varname='PV_MAJ'):
                 except Exception as exc:
    >                raise ExpansionError(varname, s, exc) from exc

bb.data_smart.ExpansionError: Failure expanding variable PV_MAJ, expression
was ${@bb.data.getVar('PV',d,1).split('.')[0]} which triggered exception
AttributeError: module 'bb.data' has no attribute 'getVar'


Summary: There was 1 ERROR message shown, returning a non-zero exit code.

3. Could not get the solution, any help here. Any patches needs to appy
here, if yes pls suggest.

Thanks,
satya

--001a1140331e517450054918d7b6
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,<br><br></div>1. I wrote the recipe .bb to install=
 the nano editor, the contents given below,<br><br><br><div>=C2=A01 SUMMARY=
 =3D &quot;GNU nano- editor&quot;<br>=C2=A0 2 DESCRIPTION =3D &quot;GNU nan=
o - an enhanced clone for the pico editor&quot;<br>=C2=A0 3 <br>=C2=A0 4 HO=
MEPAGE =3D &quot;<a href=3D"https://www.nano-editor.org/">https://www.nano-=
editor.org/</a>&quot;<br>=C2=A0 5 BUGTRACKER =3D &quot;<a href=3D"https://s=
avannah.gnu.org/bugs/?group=3Dnano">https://savannah.gnu.org/bugs/?group=3D=
nano</a>&quot;<br>=C2=A0 6 <br>=C2=A0 7 SECTION =3D &quot;console/utils&quo=
t;<br>=C2=A0 8 PRIORITY =3D &quot;OPTION&quot;<br>=C2=A0 9 <br>=C2=A010 LIC=
ENSE =3D &quot;GPLv3&quot;<br>=C2=A011 LIC_FILES_CHKSUM =3D &quot;file://CO=
PYING;md5=3Df27defe1e96c2e1ecd4e0c9be8967949=C2=A0=C2=A0=C2=A0 &quot;<br>=
=C2=A012 <br>=C2=A013 DEPENDS =3D &quot;ncurses&quot;<br>=C2=A014 <br>=C2=
=A015 PV_MAJ =3D &quot;${@bb.data.getVar(&#39;PV&#39;,d,1).split(&#39;.&#39=
;)[0]}&quot;<br>=C2=A016 PV_MIN =3D &quot;${@bb.data.getVar(&#39;PV&#39;,d,=
1).split(&#39;.&#39;)[1]}&quot;<br>=C2=A017 <br>=C2=A018 SRC_URI =3D &quot;=
<a href=3D"https://www.nano-editor.org/dist/v${PV_MAJ}.${PV_MIN}/nano-$">ht=
tps://www.nano-editor.org/dist/v${PV_MAJ}.${PV_MIN}/nano-$</a>=C2=A0=C2=A0=
=C2=A0 {PV}.tar.gz&quot;<br>=C2=A019 #SRC_URI =3D &quot;<a href=3D"https://=
www.nano-editor.org/dist/v2.3/nano-2.3.1.tar.gz">https://www.nano-editor.or=
g/dist/v2.3/nano-2.3.1.tar.gz</a>&quot;<br>=C2=A020 <br>=C2=A021 SRC_URI[md=
5sum] =3D &quot;af09f8828744b0ea0808d6c19a2b4bfd&quot;<br>=C2=A022 SRC_URI[=
sha256sum] =3D &quot;b7bace9a8e543b84736d6ef5ce5430305746efea3aacb2439=C2=
=A0=C2=A0=C2=A0 1f692efc6f3c8d3&quot;<br>=C2=A023 <br>=C2=A024 inherit auto=
tools gettext<br>=C2=A025 <br>=C2=A026 RDEPENDS_${PV} =3D &quot;ncurses&quo=
t;<br><br><br></div><div>2. When I run the bitbake nano, the am getting the=
 error as given below,<br><br>bitbake nano<br>Loading cache: 100% |########=
###########################################################################=
################################| Time: 0:00:00<br>Loaded 1324 entries from=
 dependency cache.<br>ERROR: ExpansionError during parsing /home/satya/Yoct=
o/Practice/poky/build-bbb-2/meta-mylayer/recipes-example/nano/<a href=3D"ht=
tp://nano_2.3.1.bb">nano_2.3.1.bb</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 |=
 ETA:=C2=A0 --:--:--<br>Traceback (most recent call last):<br>=C2=A0 File &=
quot;/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py&quot;, li=
ne 412, in DataSmart.expandWithRefs(s=3D&#39;<a href=3D"https://www.nano-ed=
itor.org/dist/v${PV_MAJ}.${PV_MIN}/nano-${PV}.tar.gz">https://www.nano-edit=
or.org/dist/v${PV_MAJ}.${PV_MIN}/nano-${PV}.tar.gz</a>&#39;, varname=3D&#39=
;SRC_URI&#39;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:<br>=C2=A0=C2=A0=C2=A0 &gt;=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0 s =3D __expand_var_regexp__.sub(varparse.var_sub, s)<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:<br>=C2=A0 File &quot;/home/=
satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py&quot;, line 111, in =
VariableParse.var_sub(match=3D&lt;_sre.SRE_Match object; span=3D(34, 43), m=
atch=3D&#39;${PV_MAJ}&#39;&gt;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:<br>=C2=A0=
=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 var =3D self.d.getVarFlag(key, &quot;_con=
tent&quot;)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.references.add(key)<br>=C2=A0 Fil=
e &quot;/home/satya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py&quot;,=
 line 773, in DataSmart.getVarFlag(var=3D&#39;PV_MAJ&#39;, flag=3D&#39;_con=
tent&#39;, expand=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cachename =3D var + &quot;[&quot=
; + flag + &quot;]&quot;<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 value =3D self.expand(value, cac=
hename)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/home/satya/Yocto=
/Practice/poky/bitbake/lib/bb/data_smart.py&quot;, line 436, in DataSmart.e=
xpand(s=3D&quot;${@bb.data.getVar(&#39;PV&#39;,d,1).split(&#39;.&#39;)[0]}&=
quot;, varname=3D&#39;PV_MAJ&#39;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 def expand(self, s, varname =3D None):<br>=C2=A0=C2=A0=C2=A0 &=
gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return self.expandWithRefs(s,=
 varname).value<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/home/sat=
ya/Yocto/Practice/poky/bitbake/lib/bb/data_smart.py&quot;, line 426, in Dat=
aSmart.expandWithRefs(s=3D&quot;${@bb.data.getVar(&#39;PV&#39;,d,1).split(&=
#39;.&#39;)[0]}&quot;, varname=3D&#39;PV_MAJ&#39;):<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 except Exception as exc:<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ra=
ise ExpansionError(varname, s, exc) from exc<br>=C2=A0=C2=A0=C2=A0=C2=A0 <b=
r>bb.data_smart.ExpansionError: Failure expanding variable PV_MAJ, expressi=
on was ${@bb.data.getVar(&#39;PV&#39;,d,1).split(&#39;.&#39;)[0]} which tri=
ggered exception AttributeError: module &#39;bb.data&#39; has no attribute =
&#39;getVar&#39;<br><br><br>Summary: There was 1 ERROR message shown, retur=
ning a non-zero exit code.<br><br></div><div>3. Could not get the solution,=
 any help here. Any patches needs to appy here, if yes pls suggest.<br><br>=
</div><div>Thanks,<br></div><div>satya<br></div><div><br></div></div>

--001a1140331e517450054918d7b6--
