Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C68DFE00519; Tue, 28 Aug 2018 08:17:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f180.google.com (mail-qt0-f180.google.com
	[209.85.216.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CCF6DE003D9
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 08:17:05 -0700 (PDT)
Received: by mail-qt0-f180.google.com with SMTP id h4-v6so2100421qtj.7
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 08:17:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=T6GvvfH0KrfV/Zpypc3nvu79Ua8mmnR0Ibj5W1XYaU8=;
	b=axFK6ueISlhcIa2rnh13zc9ZYBTq6ql9vyoycAC6Yn4npnWMMuN4Qb+gS/12Bgye11
	HJWrTxOKpeSWhRBUexbGhyTysxdrt7hnJidvmZEJH227ucRLpG4KG2/w9kJ8OGxlsU5A
	Z6mImzA1XKVKBBg/qLYgWpvJFF9i+RcJ1pm9o8WS9End6z6dYv8gwF7F5NKS48ivvRHK
	3K/M3mFg2KIz+VEjpXlK0qoBW61l+JKmTxZUgFlX9/NND3i+fy1QwPJOXL21LX2vUbMS
	cTK6WW/Ai0I/rEKx0263JHsYPnwOS0RGooQ9Vw/OzyIjd4xpD03tw2DHfl4dSaGDGjvP
	Udfw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=T6GvvfH0KrfV/Zpypc3nvu79Ua8mmnR0Ibj5W1XYaU8=;
	b=N7MIkwqX981HAtcP8EBOMzUUbjjvM/50aqH7Zp68Gb7pKCg9MEZUJMzBGJC86Jm54v
	mdioemS3HlpEFxdzdfzt8Lnl2CJ7U0oJ6edVi42j7PAZjqXJiVaAjSujsF27+yAnBdYr
	MlVc6Oq+Tt+keMAYMmJef6yGmfgf2BIltxMllDyJpnka5rhm9tbadAcnzGh+U6etnCFJ
	/L6y5LRjPkGnJpi1X3QExJUQllWifrEF47U4VfD7K7zDTt+tGh4NaHrEnDT2yMqEy2X6
	VIfQRyUAv2yaJ30K1oHdNve4h5figZlJxqeFNODwyCmv/CjK3KK3gU96s2odzg3YnxcJ
	d/aQ==
X-Gm-Message-State: APzg51Dp+MxpHOWmzQ+c2nBz7iaf0cKloU83hG3WErryL9X33Nzn8KQC
	s8bKMc5cw01p7DdSXF6KqLHY9IDeNqYmNXDw5HrS/iNvu6df8w==
X-Google-Smtp-Source: ANB0VdYXNQtWhdaGrFvuHCO9mpPB2KQDDMVMqWIrbmRqkB10zS2jCKbb+pOv252Eoea7AnGFHM4ll50zBVWeTjFCoGU=
X-Received: by 2002:a0c:a789:: with SMTP id
	v9-v6mr2043910qva.144.1535469425002; 
	Tue, 28 Aug 2018 08:17:05 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:3e77:0:0:0:0:0 with HTTP; Tue, 28 Aug 2018 08:17:04
	-0700 (PDT)
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Tue, 28 Aug 2018 11:17:04 -0400
Message-ID: <CANmTPBZCG842Rx_7GPaK8LeAwkLe5tHLw8K-yq3Rrs4whAzR1w@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: net-snmp_5.8.bb failed to compile
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
X-List-Received-Date: Tue, 28 Aug 2018 15:17:06 -0000
Content-Type: multipart/alternative; boundary="000000000000a4769505748055cc"

--000000000000a4769505748055cc
Content-Type: text/plain; charset="UTF-8"

Hi,

Just download  net-snmp_5.8.bb but it failed to compile:


$ bitbake net-snmp
Loading cache: 100%
|################################################################################################################################################################################|
Time: 0:00:01
Loaded 3093 entries from dependency cache.
*ERROR:* ExpansionError during parsing
/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-openembedded/meta-networking/recipes-protocols/net-snmp/
net-snmp_5.8.bb                                               | ETA:
--:--:--
Traceback (most recent call last):
  File
"/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/classes/base.bbclass", line
375, in
__anon_656__opt_PHYTEC_BSPs_yocto_imx7_sources_poky_meta_classes_base_bbclass(d=<bb.data_smart.DataSmart
object at 0x7fe0ee311be0>):
             pkgconfig = (d.getVar('PACKAGECONFIG', True) or "").split()
    >        pn = d.getVar("PN", True)

  File
"/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
line 569, in DataSmart.getVar(var='PACKAGECONFIG', expand=True,
noweakdefault=False, parsing=False):
         def getVar(self, var, expand, noweakdefault=False, parsing=False):
    >        return self.getVarFlag(var, "_content", expand, noweakdefault,
parsing)

  File
"/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
line 737, in DataSmart.getVarFlag(var='PACKAGECONFIG', flag='_content',
expand=True, noweakdefault=False, parsing=False):
                     cachename = var + "[" + flag + "]"
    >            value = self.expand(value, cachename)

  File
"/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
line 410, in DataSmart.expand(s="${@bb.utils.filter('DISTRO_FEATURES',
'ipv6', d)}", varname='PACKAGECONFIG'):
         def expand(self, s, varname = None):
    >        return self.expandWithRefs(s, varname).value

  File
"/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
line 400, in
DataSmart.expandWithRefs(s="${@bb.utils.filter('DISTRO_FEATURES', 'ipv6',
d)}", varname='PACKAGECONFIG'):
                 except Exception as exc:
    >                raise ExpansionError(varname, s, exc) from exc

bb.data_smart.ExpansionError: Failure expanding variable PACKAGECONFIG,
expression was ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} which
triggered exception AttributeError: module 'bb.utils' has no attribute
'filter'


Summary: There was 1 ERROR message shown, returning a non-zero exit code.
$

Any hints would be greatly appreciated.

S

--000000000000a4769505748055cc
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Hi,<=
/div><div><br></div><div>Just download=C2=A0 <a href=3D"http://net-snmp_5.8=
.bb">net-snmp_5.8.bb</a> but it failed to compile:</div><div><br></div><div=
><br></div><div><span style=3D"font-family:monospace,monospace">$ bitbake n=
et-snmp<br>Loading cache: 100% |###########################################=
###########################################################################=
##########################################################| Time: 0:00:01<b=
r>Loaded 3093 entries from dependency cache.<br><b>ERROR:</b> ExpansionErro=
r during parsing /opt/PHYTEC_BSPs/yocto_imx7/sources/meta-openembedded/meta=
-networking/recipes-protocols/net-snmp/<a href=3D"http://net-snmp_5.8.bb">n=
et-snmp_5.8.bb</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA=
:=C2=A0 --:--:--<br>Traceback (most recent call last):<br>=C2=A0 File &quot=
;/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/classes/base.bbclass&quot;, =
line 375, in __anon_656__opt_PHYTEC_BSPs_yocto_imx7_sources_poky_meta_class=
es_base_bbclass(d=3D&lt;bb.data_smart.DataSmart object at 0x7fe0ee311be0&gt=
;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 pkgconfig =3D (d.getVar(&#39;PACKAGECONFIG&#39;, True) or &quot;&quo=
t;).split()<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 pn =3D d.getVar(&quot;PN&quot;, True)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <b=
r>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb=
/data_smart.py&quot;, line 569, in DataSmart.getVar(var=3D&#39;PACKAGECONFI=
G&#39;, expand=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def getVar(self, var, expand, no=
weakdefault=3DFalse, parsing=3DFalse):<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return self.getVarFlag(var, &quot;_conten=
t&quot;, expand, noweakdefault, parsing)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=
=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/d=
ata_smart.py&quot;, line 737, in DataSmart.getVarFlag(var=3D&#39;PACKAGECON=
FIG&#39;, flag=3D&#39;_content&#39;, expand=3DTrue, noweakdefault=3DFalse, =
parsing=3DFalse):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cachenam=
e =3D var + &quot;[&quot; + flag + &quot;]&quot;<br>=C2=A0=C2=A0=C2=A0 &gt;=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 value =
=3D self.expand(value, cachename)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 Fi=
le &quot;/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart=
.py&quot;, line 410, in DataSmart.expand(s=3D&quot;${@bb.utils.filter(&#39;=
DISTRO_FEATURES&#39;, &#39;ipv6&#39;, d)}&quot;, varname=3D&#39;PACKAGECONF=
IG&#39;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def expand(se=
lf, s, varname =3D None):<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 return self.expandWithRefs(s, varname).value<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/sou=
rces/poky/bitbake/lib/bb/data_smart.py&quot;, line 400, in DataSmart.expand=
WithRefs(s=3D&quot;${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;ipv6&=
#39;, d)}&quot;, varname=3D&#39;PACKAGECONFIG&#39;):<br>=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0 except Exception as exc:<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 ra=
ise ExpansionError(varname, s, exc) from exc<br>=C2=A0=C2=A0=C2=A0=C2=A0 <b=
r>bb.data_smart.ExpansionError: Failure expanding variable PACKAGECONFIG, e=
xpression was ${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;ipv6&#39;,=
 d)} which triggered exception AttributeError: module &#39;bb.utils&#39; ha=
s no attribute &#39;filter&#39;<br><br><br>Summary: There was 1 ERROR messa=
ge shown, returning a non-zero exit code.<br>$ <br><br></span></div><div><s=
pan style=3D"font-family:arial,helvetica,sans-serif">Any hints would be gre=
atly appreciated.</span></div><div><span style=3D"font-family:monospace,mon=
ospace"><br></span></div><div><span style=3D"font-family:monospace,monospac=
e">S</span></div><div><span style=3D"font-family:monospace,monospace"><br><=
/span></div><div class=3D"gmail_extra"><span style=3D"font-family:monospace=
,monospace"><br></span><br></div></div></div></div>

--000000000000a4769505748055cc--
