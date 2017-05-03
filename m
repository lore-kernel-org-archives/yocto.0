Return-Path: <windswept321@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C2B91E00ACD; Wed,  3 May 2017 02:58:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (windswept321[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.42 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.42 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f42.google.com (mail-wm0-f42.google.com [74.125.82.42])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6E2D9E00A30
	for <yocto@yoctoproject.org>; Wed,  3 May 2017 02:58:22 -0700 (PDT)
Received: by mail-wm0-f42.google.com with SMTP id m123so51088982wma.0
	for <yocto@yoctoproject.org>; Wed, 03 May 2017 02:58:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=gb6F+ERkezFBxjZ2WpPNxfEL6jompLszR08cR0MDwws=;
	b=WFWn6a3gs4gVHzUhsCO3BNFpjI06145/yQIl0TIdYwF33PxMtbt5DfefKkfMsa/nk5
	9APp7kuUB3hXvi+3FTg/o8IOl9SttTKuhDVrqeMjRKPytp8bkJ+j7pC8f3W4D19h6Ltm
	sugnNZXPBxPrCHAuEBty13E4KdYKsLHj09YPH4m/GzKnhT0oYQxkx880Z1g8MztCqlh+
	FYFuOtdFG3jaUgmQLGFHiclk3+NU3V9PxJ0KNLgy1jvKSfnX8ZuTfq/keNnpOY+2pDWf
	xAnp1Qm2VdOa8ZOGUZEsbso1MBJ9b+zzAyfvPm1sqtOU4lhCOM0f07/i0cH95CuPwJAS
	2wvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=gb6F+ERkezFBxjZ2WpPNxfEL6jompLszR08cR0MDwws=;
	b=T8ESkpUdeXE7fV+h10HLh4oUdGFHwbdQhBX+SYLGcSMmBurGDeESZ1ZiS0WZQ66wZ8
	/tatVXU+HFPCk19gaNymabUgRocOZeYG8NaYR+mHj26uzWAt3B+nKGR0J+z4SEP9hdvJ
	QqCxzIbHGlEiK5rRd5w1xH0DK7fqC1AMFzFH7JuiSyrh5qm3bZhZezfyhawkBDzumFkf
	4xGrK69kquY9fR9h+T/9tMOIWQ+V3qLPC1Z05bR4ct+l9VcxR4bZuSebmAWRr+zDE3y1
	xGyJhHNTGh2mvq7WvU+DvXnQvFQqaoYm/WgtpKPTuLS5ijiBfeFxzy4no7dhvih0Eetr
	TpNA==
X-Gm-Message-State: AN3rC/56qobB8ASiQLRKPpaURAoF4ysyR0CI2o96TFAhh+f4eBNGS24z
	ldQesuhbWSWLQS1lI9ENHjvOT8yNR8xG
X-Received: by 10.25.209.20 with SMTP id i20mr10302036lfg.49.1493805501641;
	Wed, 03 May 2017 02:58:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.22.201 with HTTP; Wed, 3 May 2017 02:58:21 -0700 (PDT)
From: windswept321 <windswept321@gmail.com>
Date: Wed, 3 May 2017 10:58:21 +0100
Message-ID: <CALBpLHZ4h--81Q6J7c_OfX8tSaO9coSa4H4KRohjFDL42Pq=6A@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto Beginner Issues When Adding Layers / Recipes
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
X-List-Received-Date: Wed, 03 May 2017 09:58:25 -0000
Content-Type: multipart/alternative; boundary=001a114009c849fd65054e9bb207

--001a114009c849fd65054e9bb207
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi List,

I have been trying to get a build up and running for the past couple of
days following the latest official quick-start guide with no success
(Debian 8 =E2=80=94> Debian 7 =E2=80=94> Ubuntu LTS=E2=80=A6)
I want to have openssh, ntp, iptables, dnsmasq and hostapd added to the
build. The meta-amd layer was added in case of there being anything useful
for a GX-412TC Crowned Eagle CPU. It doesn=E2=80=99t seem to have any impac=
t at the
moment.

My bblayers.conf customisations:

  /home/aaron/poky/meta-amd/common \
  /home/aaron/poky/meta-openembedded/meta-networking \
  /home/aaron/poky/meta-openembedded/meta-python \
  /home/aaron/poky/meta-openembedded/meta-oe \

Each of these was added to the poky directory using git clone =E2=80=9Clink=
=E2=80=9D. Some
are dependencies for meta-networking.

I have added the following to my local.conf:

CORE_IMAGE_EXTRA_INSTALL +=3D "openssh ntp iptables dnsmasq hostapd=E2=80=
=9D

On running bitbake core-image-minimal I get the below error.
Is there something wrong with my configuration?

*ERROR*: ExpansionError during parsing
/home/aaron/poky/meta-openembedded/meta-python/recipes-extended/python-pyep=
hem/
python-pyephem_3.7.6.0.bb
Traceback (most recent call last):
  File "/home/aaron/poky/bitbake/lib/bb/data_smart.py", line 386, in
DataSmart.expandWithRefs(s=3D' ${PYPI_SRC_URI}', varname=3D'SRC_URI'):
                 try:
    >                s =3D __expand_var_regexp__.sub(varparse.var_sub, s)
                     try:
  File "/home/aaron/poky/bitbake/lib/bb/data_smart.py", line 111, in
VariableParse.var_sub(match=3D<_sre.SRE_Match object; span=3D(1, 16),
match=3D'${PYPI_SRC_URI}'>):
                 else:
    >                var =3D self.d.getVarFlag(key, "_content", True)
                 self.references.add(key)
  File "/home/aaron/poky/bitbake/lib/bb/data_smart.py", line 737, in
DataSmart.getVarFlag(var=3D'PYPI_SRC_URI', flag=3D'_content', expand=3DTrue=
,
noweakdefault=3DFalse, parsing=3DFalse):
                     cachename =3D var + "[" + flag + "]"
    >            value =3D self.expand(value, cachename)

  File "/home/aaron/poky/bitbake/lib/bb/data_smart.py", line 410, in
DataSmart.expand(s=3D'${@pypi_src_uri(d)}', varname=3D'PYPI_SRC_URI'):
         def expand(self, s, varname =3D None):
    >        return self.expandWithRefs(s, varname).value

  File "/home/aaron/poky/bitbake/lib/bb/data_smart.py", line 400, in
DataSmart.expandWithRefs(s=3D'${@pypi_src_uri(d)}', varname=3D'PYPI_SRC_URI=
'):
                 except Exception as exc:
    >                raise ExpansionError(varname, s, exc) from exc

bb.data_smart.ExpansionError: Failure expanding variable PYPI_SRC_URI,
expression was ${@pypi_src_uri(d)} which triggered exception TypeError:
getVar() missing 1 required positional argument: 'expand'


Summary: There was 1 ERROR message shown, returning a non-zero exit code.

--001a114009c849fd65054e9bb207
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">







<p class=3D"gmail-p1"><font face=3D"HelveticaNeue" class=3D"gmail-" style=
=3D"color:rgb(0,0,0);font-size:14px">Hi List,</font></p><div class=3D"gmail=
-" style=3D"color:rgb(0,0,0);font-family:helvetica;font-size:12px"><font fa=
ce=3D"HelveticaNeue" class=3D"gmail-" style=3D"font-size:14px"><br class=3D=
"gmail-"></font></div><div class=3D"gmail-" style=3D"color:rgb(0,0,0);font-=
family:helvetica;font-size:12px"><font face=3D"HelveticaNeue" class=3D"gmai=
l-" style=3D"font-size:14px">I have been trying to get a build up and runni=
ng for the past couple of days following the latest official quick-start gu=
ide with no success (Debian 8 =E2=80=94&gt; Debian 7 =E2=80=94&gt; Ubuntu L=
TS=E2=80=A6)</font></div><div class=3D"gmail-" style=3D"color:rgb(0,0,0);fo=
nt-family:helvetica;font-size:12px"><font face=3D"HelveticaNeue" class=3D"g=
mail-" style=3D"font-size:14px">I want to have openssh, ntp, iptables, dnsm=
asq and hostapd added to the build. The meta-amd layer was added in case of=
 there being anything useful for a GX-412TC Crowned Eagle CPU. It doesn=E2=
=80=99t seem to have any impact at the moment.</font></div><div class=3D"gm=
ail-" style=3D"color:rgb(0,0,0);font-family:helvetica;font-size:12px"><font=
 face=3D"HelveticaNeue" class=3D"gmail-" style=3D"font-size:14px"><br class=
=3D"gmail-"></font></div><div class=3D"gmail-" style=3D"color:rgb(0,0,0);fo=
nt-family:helvetica;font-size:12px"><font face=3D"HelveticaNeue" class=3D"g=
mail-" style=3D"font-size:14px">My bblayers.conf customisations:</font></di=
v><div class=3D"gmail-" style=3D"color:rgb(0,0,0);font-family:helvetica;fon=
t-size:12px"><font face=3D"HelveticaNeue" class=3D"gmail-" style=3D"font-si=
ze:14px"><br class=3D"gmail-"></font></div><div class=3D"gmail-" style=3D"c=
olor:rgb(0,0,0);font-family:helvetica;font-size:12px"><div class=3D"gmail-"=
 style=3D"margin:0px;line-height:normal"><span class=3D"gmail-" style=3D"fo=
nt-variant-ligatures:no-common-ligatures;font-size:14px"><font face=3D"Helv=
eticaNeue" class=3D"gmail-">=C2=A0=C2=A0/home/aaron/poky/meta-amd/common \<=
/font></span></div><div class=3D"gmail-" style=3D"margin:0px;line-height:no=
rmal"><span class=3D"gmail-" style=3D"font-variant-ligatures:no-common-liga=
tures;font-size:14px"><font face=3D"HelveticaNeue" class=3D"gmail-">=C2=A0 =
/home/aaron/poky/meta-openembedded/meta-networking \</font></span></div><di=
v class=3D"gmail-" style=3D"margin:0px;line-height:normal"><span class=3D"g=
mail-" style=3D"font-variant-ligatures:no-common-ligatures;font-size:14px">=
<font face=3D"HelveticaNeue" class=3D"gmail-">=C2=A0 /home/aaron/poky/meta-=
openembedded/meta-python \</font></span></div><div class=3D"gmail-" style=
=3D"margin:0px;line-height:normal"><span class=3D"gmail-" style=3D"font-var=
iant-ligatures:no-common-ligatures;font-size:14px"><font face=3D"HelveticaN=
eue" class=3D"gmail-">=C2=A0 /home/aaron/poky/meta-openembedded/meta-oe \</=
font></span></div></div><div class=3D"gmail-" style=3D"color:rgb(0,0,0);fon=
t-family:helvetica;font-size:12px;margin:0px;line-height:normal"><span clas=
s=3D"gmail-" style=3D"font-variant-ligatures:no-common-ligatures;font-size:=
14px"><font face=3D"HelveticaNeue" class=3D"gmail-"><br class=3D"gmail-"></=
font></span></div><div class=3D"gmail-" style=3D"color:rgb(0,0,0);font-fami=
ly:helvetica;font-size:12px;margin:0px;line-height:normal"><span class=3D"g=
mail-" style=3D"font-variant-ligatures:no-common-ligatures;font-size:14px">=
<font face=3D"HelveticaNeue" class=3D"gmail-">Each of these was added to th=
e poky directory using git clone =E2=80=9Clink=E2=80=9D. Some are dependenc=
ies for meta-networking.</font></span></div><div class=3D"gmail-" style=3D"=
color:rgb(0,0,0);font-family:helvetica;font-size:12px"><font face=3D"Helvet=
icaNeue" class=3D"gmail-" style=3D"font-size:14px"><br class=3D"gmail-"></f=
ont></div><div class=3D"gmail-" style=3D"color:rgb(0,0,0);font-family:helve=
tica;font-size:12px"><font face=3D"HelveticaNeue" class=3D"gmail-" style=3D=
"font-size:14px">I have added the following to my local.conf:</font></div><=
div class=3D"gmail-" style=3D"color:rgb(0,0,0);font-family:helvetica;font-s=
ize:12px"><font face=3D"HelveticaNeue" class=3D"gmail-" style=3D"font-size:=
14px"><br class=3D"gmail-"></font></div><div class=3D"gmail-" style=3D"colo=
r:rgb(0,0,0);font-family:helvetica;font-size:12px"><div class=3D"gmail-" st=
yle=3D"margin:0px;line-height:normal"><span class=3D"gmail-" style=3D"font-=
variant-ligatures:no-common-ligatures;font-size:14px"><font face=3D"Helveti=
caNeue" class=3D"gmail-">CORE_IMAGE_EXTRA_INSTALL +=3D &quot;openssh ntp ip=
tables dnsmasq hostapd=E2=80=9D</font></span></div></div><div class=3D"gmai=
l-" style=3D"color:rgb(0,0,0);font-family:helvetica;font-size:12px;margin:0=
px;line-height:normal"><span class=3D"gmail-" style=3D"font-variant-ligatur=
es:no-common-ligatures;font-size:14px"><font face=3D"HelveticaNeue" class=
=3D"gmail-"><br class=3D"gmail-"></font></span></div><div class=3D"gmail-" =
style=3D"color:rgb(0,0,0);font-family:helvetica;font-size:12px;margin:0px;l=
ine-height:normal"><span class=3D"gmail-" style=3D"font-variant-ligatures:n=
o-common-ligatures;font-size:14px"><font face=3D"HelveticaNeue" class=3D"gm=
ail-">On running bitbake core-image-minimal I get the=C2=A0below error.</fo=
nt></span></div><div class=3D"gmail-" style=3D"color:rgb(0,0,0);font-family=
:helvetica;font-size:12px;margin:0px;line-height:normal"><font face=3D"Helv=
eticaNeue" class=3D"gmail-" style=3D"font-size:14px">Is there something wro=
ng with my configuration?</font></div><div class=3D"gmail-" style=3D"color:=
rgb(0,0,0);font-family:helvetica;margin:0px;font-size:11px;line-height:norm=
al"><span class=3D"gmail-" style=3D"font-variant-ligatures:no-common-ligatu=
res"><font face=3D"HelveticaNeue" class=3D"gmail-"><br class=3D"gmail-"></f=
ont></span></div><div class=3D"gmail-" style=3D"color:rgb(0,0,0);font-famil=
y:helvetica;margin:0px;font-size:11px;line-height:normal"><span class=3D"gm=
ail-" style=3D"font-variant-ligatures:no-common-ligatures"><font face=3D"He=
lveticaNeue" class=3D"gmail-"><div class=3D"gmail-" style=3D"margin:0px;lin=
e-height:normal;color:rgb(195,55,32)"><span class=3D"gmail-"><b class=3D"gm=
ail-">ERROR</b></span><span class=3D"gmail-" style=3D"color:rgb(0,0,0)">:=
=C2=A0</span><span class=3D"gmail-">ExpansionError during parsing /home/aar=
on/poky/meta-openembedded/meta-python/recipes-extended/python-pyephem/<a hr=
ef=3D"http://python-pyephem_3.7.6.0.bb">python-pyephem_3.7.6.0.bb</a></span=
></div><div class=3D"gmail-" style=3D"margin:0px;line-height:normal"><span =
class=3D"gmail-">Traceback (most recent call last):</span></div><div class=
=3D"gmail-" style=3D"margin:0px;line-height:normal"><span class=3D"gmail-">=
=C2=A0 File &quot;/home/aaron/poky/bitbake/lib/bb/data_smart.py&quot;, line=
 386, in DataSmart.expandWithRefs(s=3D&#39; ${PYPI_SRC_URI}&#39;, varname=
=3D&#39;SRC_URI&#39;):</span></div><div class=3D"gmail-" style=3D"margin:0p=
x;line-height:normal"><span class=3D"gmail-">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:</span></div><div class=3D"gmail-" styl=
e=3D"margin:0px;line-height:normal"><span class=3D"gmail-">=C2=A0 =C2=A0 &g=
t;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 s =3D __expand_va=
r_regexp__.sub(varparse.var_sub, s)</span></div><div class=3D"gmail-" style=
=3D"margin:0px;line-height:normal"><span class=3D"gmail-">=C2=A0=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 try:</span></di=
v><div class=3D"gmail-" style=3D"margin:0px;line-height:normal"><span class=
=3D"gmail-">=C2=A0 File &quot;/home/aaron/poky/bitbake/lib/bb/data_smart.py=
&quot;, line 111, in VariableParse.var_sub(match=3D&lt;_sre.SRE_Match objec=
t; span=3D(1, 16), match=3D&#39;${PYPI_SRC_URI}&#39;&gt;):</span></div><div=
 class=3D"gmail-" style=3D"margin:0px;line-height:normal"><span class=3D"gm=
ail-">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 else:</=
span></div><div class=3D"gmail-" style=3D"margin:0px;line-height:normal"><s=
pan class=3D"gmail-">=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 var =3D self.d.getVarFlag(key, &quot;_content&quot;, T=
rue)</span></div><div class=3D"gmail-" style=3D"margin:0px;line-height:norm=
al"><span class=3D"gmail-">=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 self.references.add(key)</span></div><div class=3D"gmail-" st=
yle=3D"margin:0px;line-height:normal"><span class=3D"gmail-">=C2=A0 File &q=
uot;/home/aaron/poky/bitbake/lib/bb/data_smart.py&quot;, line 737, in DataS=
mart.getVarFlag(var=3D&#39;PYPI_SRC_URI&#39;, flag=3D&#39;_content&#39;, ex=
pand=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):</span></div><div clas=
s=3D"gmail-" style=3D"margin:0px;line-height:normal"><span class=3D"gmail-"=
>=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 cachename =3D var + &quot;[&quot; + flag + &quot;]&quot;</span></div><d=
iv class=3D"gmail-" style=3D"margin:0px;line-height:normal"><span class=3D"=
gmail-">=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 value =
=3D self.expand(value, cachename)</span></div><div class=3D"gmail-" style=
=3D"margin:0px;line-height:normal;min-height:13px"><span class=3D"gmail-">=
=C2=A0 =C2=A0 =C2=A0</span><br class=3D"gmail-webkit-block-placeholder"></d=
iv><div class=3D"gmail-" style=3D"margin:0px;line-height:normal"><span clas=
s=3D"gmail-">=C2=A0 File &quot;/home/aaron/poky/bitbake/lib/bb/data_smart.p=
y&quot;, line 410, in DataSmart.expand(s=3D&#39;${@pypi_src_uri(d)}&#39;, v=
arname=3D&#39;PYPI_SRC_URI&#39;):</span></div><div class=3D"gmail-" style=
=3D"margin:0px;line-height:normal"><span class=3D"gmail-">=C2=A0=C2=A0 =C2=
=A0 =C2=A0 =C2=A0 def expand(self, s, varname =3D None):</span></div><div c=
lass=3D"gmail-" style=3D"margin:0px;line-height:normal"><span class=3D"gmai=
l-">=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 return self.expandWithRef=
s(s, varname).value</span></div><div class=3D"gmail-" style=3D"margin:0px;l=
ine-height:normal;min-height:13px"><span class=3D"gmail-">=C2=A0 =C2=A0 =C2=
=A0</span><br class=3D"gmail-webkit-block-placeholder"></div><div class=3D"=
gmail-" style=3D"margin:0px;line-height:normal"><span class=3D"gmail-">=C2=
=A0 File &quot;/home/aaron/poky/bitbake/lib/bb/data_smart.py&quot;, line 40=
0, in DataSmart.expandWithRefs(s=3D&#39;${@pypi_src_uri(d)}&#39;, varname=
=3D&#39;PYPI_SRC_URI&#39;):</span></div><div class=3D"gmail-" style=3D"marg=
in:0px;line-height:normal"><span class=3D"gmail-">=C2=A0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 except Exception as exc:</span></div=
><div class=3D"gmail-" style=3D"margin:0px;line-height:normal"><span class=
=3D"gmail-">=C2=A0 =C2=A0 &gt;=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 raise ExpansionError(varname, s, exc) from exc</span></div><div =
class=3D"gmail-" style=3D"margin:0px;line-height:normal;min-height:13px"><s=
pan class=3D"gmail-">=C2=A0 =C2=A0 =C2=A0</span><br class=3D"gmail-webkit-b=
lock-placeholder"></div><div class=3D"gmail-" style=3D"margin:0px;line-heig=
ht:normal"><span class=3D"gmail-">bb.data_smart.ExpansionError: Failure exp=
anding variable PYPI_SRC_URI, expression was ${@pypi_src_uri(d)} which trig=
gered exception TypeError: getVar() missing 1 required positional argument:=
 &#39;expand&#39;</span></div><div class=3D"gmail-" style=3D"margin:0px;lin=
e-height:normal;min-height:13px"><span class=3D"gmail-"></span><br class=3D=
"gmail-"></div><div class=3D"gmail-" style=3D"margin:0px;line-height:normal=
;min-height:13px"><span class=3D"gmail-"></span><br class=3D"gmail-"></div>=
<div class=3D"gmail-" style=3D"margin:0px;line-height:normal"><span class=
=3D"gmail-">Summary: There was 1 ERROR message shown, returning a non-zero =
exit code.</span></div></font></span></div></div>

--001a114009c849fd65054e9bb207--
