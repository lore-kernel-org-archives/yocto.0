Return-Path: <ravikiran.j@mistralsolutions.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BF7D9E0094C; Mon, 13 Mar 2017 22:03:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, HTML_MESSAGE, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.214.52 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.52 listed in dnsbl.sorbs.net]
Received: from mail-it0-f52.google.com (mail-it0-f52.google.com
	[209.85.214.52])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 635C7E00901
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 22:03:16 -0700 (PDT)
Received: by mail-it0-f52.google.com with SMTP id m27so41091157iti.0
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 22:03:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mistralsolutions.com; s=dkim;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=11jawDb/GEX3TomSOBzsXpsqIQk3QMHJmF66uU3VFV0=;
	b=pp7MkDEbdAT+sTdf2TEP6rracAJxtDUDx6K9JLa0bOhHDlsdlkyTAaVVxYlEwGZ4jY
	6mvK3DzmZjHDiH8qNQ7oH21xcj1k7MZXBFnw72Z5h+tbtmQcRRAY0MoTP8f5xLUBjcxA
	L+ku+1j08RreayPrSSaSE9EJh84fxryhOsMHo=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=11jawDb/GEX3TomSOBzsXpsqIQk3QMHJmF66uU3VFV0=;
	b=ZJzGUsJchmQCBK1Nn2bpn0ZG8WTtrIkrV6bvmEfluLJ89VT/e6U3Cyoa6p0CybsGlE
	9c9i32KPKjICPpPjlkXYT4RRokHuDuYzNlygKxMMjeFJJB9jyMT3yWNHIOJI52P5ikC5
	j/2a8zV3DI4MW7m+f8kLwWfEzipeGmYvQnuDHxKOKWZPKy+VBiI1anmB0jIj2FTYiFlr
	/UlX6ucXy9VlQSwyXoUM1AlvCxBGb/nA/JHwZP6govkOowdTsKPCOg8f9LSKa3K/wpNQ
	kM2UugZCp7KNOs6vNl3e+uSnWT8hURK1VLH0pVnNMvuXt5m78i+37+gVIbsEK/HQLT9R
	Q5pA==
X-Gm-Message-State: AFeK/H2masfqZ+6eWgpcyiWWs0I7suHVMR0U3zAz6AMOj81YXZwz1LqSabbl7DRNGr/fqNwmR5LIdq4d9/qUyw==
X-Received: by 10.36.238.139 with SMTP id b133mr13846583iti.26.1489467796102; 
	Mon, 13 Mar 2017 22:03:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.64.121.197 with HTTP; Mon, 13 Mar 2017 22:03:15 -0700 (PDT)
In-Reply-To: <CAJTo0LbuMZ91LgC7NEmrOQ=_PC9_aV1-uBHqjk8dyMZgA7OJhw@mail.gmail.com>
References: <CALDHXtezhuV9dEp0a9VQQF8P3c9fDOL3M+g0tiz3xPcN-2krEA@mail.gmail.com>
	<CAJTo0LbuMZ91LgC7NEmrOQ=_PC9_aV1-uBHqjk8dyMZgA7OJhw@mail.gmail.com>
From: ravikiran j <ravikiran.j@mistralsolutions.com>
Date: Tue, 14 Mar 2017 10:33:15 +0530
Message-ID: <CALDHXtc94FNoOZgohZngf_zFVYZ-nQ1yP5XnpCOkWH3kLz_Y_Q@mail.gmail.com>
To: "Burton, Ross" <ross.burton@intel.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Procedure to build the xfce UI for ODROID XU3 board
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
X-List-Received-Date: Tue, 14 Mar 2017 05:03:18 -0000
Content-Type: multipart/alternative; boundary=f403045c47c0e45683054aa9be1a

--f403045c47c0e45683054aa9be1a
Content-Type: text/plain; charset=UTF-8

I cloned the meta-openembedded layer and added inside the poky.
then changed the conf/bblayers.conf as follow.

I found that meta-xfce layer depends on openembedded core, oe , multimedia
, gnome, and python.
so i made the following changes in the bblayers.conf file.


OKY_BBLAYERS_CONF_VERSION = "2"

BBPATH = "${TOPDIR}"
BBFILES ?= ""

BBLAYERS ?= " \
  /home/kamama-yocto/yocto/tmp/poky/meta \
  /home/kamama-yocto/yocto/tmp/poky/meta-poky \
  /home/kamama-yocto/yocto/tmp/poky/meta-yocto-bsp \





* /home/kamama-yocto/yocto/tmp/poky/meta-odroid \
/home/kamama-yocto/yocto/tmp/poky/meta-openembedded/meta-xfce \
/home/kamama-yocto/yocto/tmp/poky/meta-openembedded/meta-oe \
/home/kamama-yocto/yocto/tmp/poky/meta-openembedded/meta-multimedia \
/home/kamama-yocto/yocto/tmp/poky/meta-openembedded/meta-gnome \
/home/kamama-yocto/yocto/tmp/poky/meta-openembedded/meta-python \*
  "

then i trying to build the
*image core-image-minimal-xfce*
Building gives the  following errors.


ERROR: ExpansionError during parsing
/home/kamama-yocto/yocto/tmp/poky/meta-openembedded/meta-python/recipes-extended/python-pyephem/
python-pyephem_3.7.6.0.bb
Traceback (most recent call last):
  File "/home/kamama-yocto/yocto/tmp/poky/bitbake/lib/bb/data_smart.py",
line 386, in DataSmart.expandWithRefs(s=' ${PYPI_SRC_URI}',
varname='SRC_URI'):
                 try:
    >                s = __expand_var_regexp__.sub(varparse.var_sub, s)
                     try:
  File "/home/kamama-yocto/yocto/tmp/poky/bitbake/lib/bb/data_smart.py",
line 111, in VariableParse.var_sub(match=<_sre.SRE_Match object; span=(1,
16), match='${PYPI_SRC_URI}'>):
                 else:
    >                var = self.d.getVarFlag(key, "_content", True)
                 self.references.add(key)
  File "/home/kamama-yocto/yocto/tmp/poky/bitbake/lib/bb/data_smart.py",
line 737, in DataSmart.getVarFlag(var='PYPI_SRC_URI', flag='_content',
expand=True, noweakdefault=False, parsing=False):
                     cachename = var + "[" + flag + "]"
    >            value = self.expand(value, cachename)

  File "/home/kamama-yocto/yocto/tmp/poky/bitbake/lib/bb/data_smart.py",
line 410, in DataSmart.expand(s='${@pypi_src_uri(d)}',
varname='PYPI_SRC_URI'):
         def expand(self, s, varname = None):
    >        return self.expandWithRefs(s, varname).value

  File "/home/kamama-yocto/yocto/tmp/poky/bitbake/lib/bb/data_smart.py",
line 400, in DataSmart.expandWithRefs(s='${@pypi_src_uri(d)}',
varname='PYPI_SRC_URI'):
                 except Exception as exc:
    >                raise ExpansionError(varname, s, exc) from exc

bb.data_smart.ExpansionError: Failure expanding variable PYPI_SRC_URI,
expression was ${@pypi_src_uri(d)} which triggered exception TypeError:
getVar() missing 1 required positional argument: 'expand'



how to solve this problems ?






On Mon, Mar 13, 2017 at 7:51 PM, Burton, Ross <ross.burton@intel.com> wrote:

>
> On 13 March 2017 at 13:54, ravikiran j <ravikiran.j@mistralsolutions.com>
> wrote:
>
>> What is the procedure to build the xfce  UI for ODROID XU3 board.
>>
>
> Add meta-xfce to bblayers.conf, then build an image that contains xfce
> (either add it to your image, or build the sample image
> core-image-minimal-xfce).
>
> Ross
>

--f403045c47c0e45683054aa9be1a
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>I cloned the meta-openembedded layer and added i=
nside the poky.<br></div>then changed the conf/bblayers.conf as follow.<br>=
<br></div><div>I found that meta-xfce layer depends on openembedded core, o=
e , multimedia , gnome, and python.<br></div><div>so i made the following c=
hanges in the bblayers.conf file.<br></div><div><br><br><div>OKY_BBLAYERS_C=
ONF_VERSION =3D &quot;2&quot;<br><br>BBPATH =3D &quot;${TOPDIR}&quot;<br>BB=
FILES ?=3D &quot;&quot;<br><br>BBLAYERS ?=3D &quot; \<br>=C2=A0 /home/kamam=
a-yocto/yocto/tmp/poky/meta \<br>=C2=A0 /home/kamama-yocto/yocto/tmp/poky/m=
eta-poky \<br>=C2=A0 /home/kamama-yocto/yocto/tmp/poky/meta-yocto-bsp \<br>=
=C2=A0<b> /home/kamama-yocto/yocto/tmp/poky/meta-odroid \<br>=C2=A0 /home/k=
amama-yocto/yocto/tmp/poky/meta-openembedded/meta-xfce \<br>=C2=A0 /home/ka=
mama-yocto/yocto/tmp/poky/meta-openembedded/meta-oe \<br>=C2=A0 /home/kamam=
a-yocto/yocto/tmp/poky/meta-openembedded/meta-multimedia \<br>=C2=A0 /home/=
kamama-yocto/yocto/tmp/poky/meta-openembedded/meta-gnome \<br>=C2=A0 /home/=
kamama-yocto/yocto/tmp/poky/meta-openembedded/meta-python \</b><br>=C2=A0 &=
quot;<br><br></div><div>then i trying to build the <b>image core-image-mini=
mal-xfce<br></b><br></div><div>Building gives the=C2=A0 following errors.<b=
r><br><br></div><div>ERROR: ExpansionError during parsing /home/kamama-yoct=
o/yocto/tmp/poky/meta-openembedded/meta-python/recipes-extended/python-pyep=
hem/<a href=3D"http://python-pyephem_3.7.6.0.bb">python-pyephem_3.7.6.0.bb<=
/a><br>Traceback (most recent call last):<br>=C2=A0 File &quot;/home/kamama=
-yocto/yocto/tmp/poky/bitbake/lib/bb/data_smart.py&quot;, line 386, in Data=
Smart.expandWithRefs(s=3D&#39; ${PYPI_SRC_URI}&#39;, varname=3D&#39;SRC_URI=
&#39;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 s =3D __expand_var_regexp__.sub(varparse.var_sub, s)<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 try:<br>=C2=A0 File &quot;/home/kamama-yo=
cto/yocto/tmp/poky/bitbake/lib/bb/data_smart.py&quot;, line 111, in Variabl=
eParse.var_sub(match=3D&lt;_sre.SRE_Match object; span=3D(1, 16), match=3D&=
#39;${PYPI_SRC_URI}&#39;&gt;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 else:<br>=C2=A0=
=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 var =3D self.d.getVarFlag(key, &quot;_con=
tent&quot;, True)<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 self.references.add(key)<br>=C2=
=A0 File &quot;/home/kamama-yocto/yocto/tmp/poky/bitbake/lib/bb/data_smart.=
py&quot;, line 737, in DataSmart.getVarFlag(var=3D&#39;PYPI_SRC_URI&#39;, f=
lag=3D&#39;_content&#39;, expand=3DTrue, noweakdefault=3DFalse, parsing=3DF=
alse):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cachename =3D var=
 + &quot;[&quot; + flag + &quot;]&quot;<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 value =3D self.ex=
pand(value, cachename)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/h=
ome/kamama-yocto/yocto/tmp/poky/bitbake/lib/bb/data_smart.py&quot;, line 41=
0, in DataSmart.expand(s=3D&#39;${@pypi_src_uri(d)}&#39;, varname=3D&#39;PY=
PI_SRC_URI&#39;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def e=
xpand(self, s, varname =3D None):<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 return self.expandWithRefs(s, varname).value<br=
>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/home/kamama-yocto/yocto/tm=
p/poky/bitbake/lib/bb/data_smart.py&quot;, line 400, in DataSmart.expandWit=
hRefs(s=3D&#39;${@pypi_src_uri(d)}&#39;, varname=3D&#39;PYPI_SRC_URI&#39;):=
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 except Exception as exc:<br>=C2=A0=C2=A0=C2=A0 =
&gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 raise ExpansionError(varname, s, exc) from exc<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 <br>bb.data_smart.ExpansionError: Failure expanding v=
ariable PYPI_SRC_URI, expression was ${@pypi_src_uri(d)} which triggered ex=
ception TypeError: getVar() missing 1 required positional argument: &#39;ex=
pand&#39;<br><br><br><br></div><div>how to solve this problems ?<br><br><br=
><br></div><div><br><br></div></div></div><div class=3D"gmail_extra"><br><d=
iv class=3D"gmail_quote">On Mon, Mar 13, 2017 at 7:51 PM, Burton, Ross <spa=
n dir=3D"ltr">&lt;<a href=3D"mailto:ross.burton@intel.com" target=3D"_blank=
">ross.burton@intel.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail=
_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:=
1ex"><div dir=3D"ltr"><div class=3D"gmail_extra"><span class=3D""><br><div =
class=3D"gmail_quote">On 13 March 2017 at 13:54, ravikiran j <span dir=3D"l=
tr">&lt;<a href=3D"mailto:ravikiran.j@mistralsolutions.com" target=3D"_blan=
k">ravikiran.j@mistralsolutions.<wbr>com</a>&gt;</span> wrote:<br><blockquo=
te class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc so=
lid;padding-left:1ex"><div dir=3D"ltr">What is the procedure to build the x=
fce=C2=A0 UI for ODROID XU3 board.<br></div>
</blockquote></div><br></span>Add meta-xfce to bblayers.conf, then build an=
 image that contains xfce (either add it to your image, or build the sample=
 image core-image-minimal-xfce).</div><span class=3D"HOEnZb"><font color=3D=
"#888888"><div class=3D"gmail_extra"><br></div><div class=3D"gmail_extra">R=
oss</div></font></span></div>
</blockquote></div><br></div>

--f403045c47c0e45683054aa9be1a--
