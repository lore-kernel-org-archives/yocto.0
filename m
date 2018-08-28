Return-Path: <martin.jansa@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 45B1DE00519; Tue, 28 Aug 2018 08:43:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (martin.jansa[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.221.44 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wr1-f44.google.com (mail-wr1-f44.google.com
	[209.85.221.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 0C3A4E003D9
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 08:43:33 -0700 (PDT)
Received: by mail-wr1-f44.google.com with SMTP id j26-v6so2039182wre.2
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 08:43:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=JOKFqxG34Z/4sGAp+FnNpUVb24uRNNDTDtoCIdSHR3U=;
	b=bL1KGT/rAH+o6N3E+o93KEuORpLOFr2nLGQZTbUmti7IejxbEjk2wc2y6DZxkl43Qb
	ojhV3pAdYp20s+KT8u/g6f+Rs7eUppEQsKC7/7Q+gKKdqcDhojlewCciXO/xMBiTWYvM
	dN1IbUib7AQ7noBRtHD19HMVn1fpLa724/wF7YL79BqEP+mh5EsWwUdi7kQXBXFUgmFy
	wraZWNxsz8JefxWPaLMFX11DYuoFGuX+Uv8Vgjd+kt2ZKcS7maoce52noyOEKleFjDR0
	mcsTfx2MAuScT5wEc6i9VhS5HS7bByYgEemYau7nT4v/3bj360iBLxX/gyD9dUvrcVHz
	PECg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=JOKFqxG34Z/4sGAp+FnNpUVb24uRNNDTDtoCIdSHR3U=;
	b=ETtgyErmKGbVGoVJqpwhTceitFYc8IfqwOq0O4rPXCel1SDq3EDOVojqVnRSOV2tUN
	j4HDNV9Dl1g6ui4iRMokxYdL12WXVp1UCOfd1Kv79BpQCDBsCSTvR4dsIHOzsXYk4nDr
	Vs6wj4aamhd042I1rXT86T8Ng7h5jZNa6aPCMyBmMLTO0AKpmPHQMR510rAkrMuc5CuA
	rCVIY76BSlUzq1jaOLxb+Wi7Nyl7LUcWBjgqNCl0SiiybQheyDkW4DIPAUZNa2boZ/2G
	scDb+mrr3HYMRoO5eWxrjPD0HT+FXNuaKLbkl9ZnYZAJZKn5gSj7Mkzkyqor5rSISw42
	8Ysw==
X-Gm-Message-State: APzg51DKlY5Y2ya8jLswSWiYbQPYIwDGxUJNEiauxmU4xIAtaU4j/KBq
	N3qmN2wnb7u6120oTGQUNuTlw+sl/gTMoS0pEeA=
X-Google-Smtp-Source: ANB0VdYDypg4ZlHir930SdRnr8UbPbE6uTsLDPmXSIdBb6pkS4Gw1pQCx+bvhTpSBh14dRVYJ2Exc9JCwKs2J43e9k8=
X-Received: by 2002:adf:e505:: with SMTP id
	j5-v6mr1496355wrm.111.1535471013184; 
	Tue, 28 Aug 2018 08:43:33 -0700 (PDT)
MIME-Version: 1.0
References: <CANmTPBZCG842Rx_7GPaK8LeAwkLe5tHLw8K-yq3Rrs4whAzR1w@mail.gmail.com>
In-Reply-To: <CANmTPBZCG842Rx_7GPaK8LeAwkLe5tHLw8K-yq3Rrs4whAzR1w@mail.gmail.com>
From: Martin Jansa <martin.jansa@gmail.com>
Date: Tue, 28 Aug 2018 17:43:21 +0200
Message-ID: <CA+chaQev8r11E-j8TH8ZrqMjE3D8kpBdAxCfh0iofmhKfwXasQ@mail.gmail.com>
To: simon.chamlian@mpbc.ca
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: net-snmp_5.8.bb failed to compile
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
X-List-Received-Date: Tue, 28 Aug 2018 15:43:35 -0000
Content-Type: multipart/alternative; boundary="0000000000004dcb57057480b48d"

--0000000000004dcb57057480b48d
Content-Type: text/plain; charset="UTF-8"

Follow the READMEs and don't mix layers from different branches.

You need to checkout all repositories with layers from the same branch to
be compatible. Now you're mixing newer meta-oe branch with older oe-core
branch which doesn't have bb.utils.filter function yet.

On Tue, Aug 28, 2018 at 5:17 PM Simon Chamlian <simon.chamlian@mpbc.ca>
wrote:

>
> Hi,
>
> Just download  net-snmp_5.8.bb but it failed to compile:
>
>
> $ bitbake net-snmp
> Loading cache: 100%
> |################################################################################################################################################################################|
> Time: 0:00:01
> Loaded 3093 entries from dependency cache.
> *ERROR:* ExpansionError during parsing
> /opt/PHYTEC_BSPs/yocto_imx7/sources/meta-openembedded/meta-networking/recipes-protocols/net-snmp/
> net-snmp_5.8.bb                                               | ETA:
> --:--:--
> Traceback (most recent call last):
>   File
> "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/classes/base.bbclass", line
> 375, in
> __anon_656__opt_PHYTEC_BSPs_yocto_imx7_sources_poky_meta_classes_base_bbclass(d=<bb.data_smart.DataSmart
> object at 0x7fe0ee311be0>):
>              pkgconfig = (d.getVar('PACKAGECONFIG', True) or "").split()
>     >        pn = d.getVar("PN", True)
>
>   File
> "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
> line 569, in DataSmart.getVar(var='PACKAGECONFIG', expand=True,
> noweakdefault=False, parsing=False):
>          def getVar(self, var, expand, noweakdefault=False, parsing=False):
>     >        return self.getVarFlag(var, "_content", expand,
> noweakdefault, parsing)
>
>   File
> "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
> line 737, in DataSmart.getVarFlag(var='PACKAGECONFIG', flag='_content',
> expand=True, noweakdefault=False, parsing=False):
>                      cachename = var + "[" + flag + "]"
>     >            value = self.expand(value, cachename)
>
>   File
> "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
> line 410, in DataSmart.expand(s="${@bb.utils.filter('DISTRO_FEATURES',
> 'ipv6', d)}", varname='PACKAGECONFIG'):
>          def expand(self, s, varname = None):
>     >        return self.expandWithRefs(s, varname).value
>
>   File
> "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
> line 400, in
> DataSmart.expandWithRefs(s="${@bb.utils.filter('DISTRO_FEATURES', 'ipv6',
> d)}", varname='PACKAGECONFIG'):
>                  except Exception as exc:
>     >                raise ExpansionError(varname, s, exc) from exc
>
> bb.data_smart.ExpansionError: Failure expanding variable PACKAGECONFIG,
> expression was ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} which
> triggered exception AttributeError: module 'bb.utils' has no attribute
> 'filter'
>
>
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
> $
>
> Any hints would be greatly appreciated.
>
> S
>
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

--0000000000004dcb57057480b48d
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Follow the READMEs and don&#39;t mix layers from different=
 branches.<div><br></div><div>You need to checkout all repositories with la=
yers from the same branch to be compatible. Now you&#39;re mixing newer met=
a-oe branch with older oe-core branch which doesn&#39;t have bb.utils.filte=
r function yet.</div></div><br><div class=3D"gmail_quote"><div dir=3D"ltr">=
On Tue, Aug 28, 2018 at 5:17 PM Simon Chamlian &lt;<a href=3D"mailto:simon.=
chamlian@mpbc.ca">simon.chamlian@mpbc.ca</a>&gt; wrote:<br></div><blockquot=
e class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc sol=
id;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v><br></div><div>Hi,</div><div><br></div><div>Just download=C2=A0 <a href=
=3D"http://net-snmp_5.8.bb" target=3D"_blank">net-snmp_5.8.bb</a> but it fa=
iled to compile:</div><div><br></div><div><br></div><div><span style=3D"fon=
t-family:monospace,monospace">$ bitbake net-snmp<br>Loading cache: 100% |##=
###########################################################################=
###########################################################################=
########################| Time: 0:00:01<br>Loaded 3093 entries from depende=
ncy cache.<br><b>ERROR:</b> ExpansionError during parsing /opt/PHYTEC_BSPs/=
yocto_imx7/sources/meta-openembedded/meta-networking/recipes-protocols/net-=
snmp/<a href=3D"http://net-snmp_5.8.bb" target=3D"_blank">net-snmp_5.8.bb</=
a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 --:--:-=
-<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/opt/PHYTEC_BS=
Ps/yocto_imx7/sources/poky/meta/classes/base.bbclass&quot;, line 375, in __=
anon_656__opt_PHYTEC_BSPs_yocto_imx7_sources_poky_meta_classes_base_bbclass=
(d=3D&lt;bb.data_smart.DataSmart object at 0x7fe0ee311be0&gt;):<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pkgconfi=
g =3D (d.getVar(&#39;PACKAGECONFIG&#39;, True) or &quot;&quot;).split()<br>=
=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pn =3D d.=
getVar(&quot;PN&quot;, True)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &q=
uot;/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py&q=
uot;, line 569, in DataSmart.getVar(var=3D&#39;PACKAGECONFIG&#39;, expand=
=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0 def getVar(self, var, expand, noweakdefault=3DF=
alse, parsing=3DFalse):<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 return self.getVarFlag(var, &quot;_content&quot;, expand=
, noweakdefault, parsing)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot=
;/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py&quot=
;, line 737, in DataSmart.getVarFlag(var=3D&#39;PACKAGECONFIG&#39;, flag=3D=
&#39;_content&#39;, expand=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):=
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cachename =3D var + &qu=
ot;[&quot; + flag + &quot;]&quot;<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 value =3D self.expand(v=
alue, cachename)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/opt/PHY=
TEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py&quot;, line 4=
10, in DataSmart.expand(s=3D&quot;${@bb.utils.filter(&#39;DISTRO_FEATURES&#=
39;, &#39;ipv6&#39;, d)}&quot;, varname=3D&#39;PACKAGECONFIG&#39;):<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def expand(self, s, varname =
=3D None):<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 return self.expandWithRefs(s, varname).value<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitba=
ke/lib/bb/data_smart.py&quot;, line 400, in DataSmart.expandWithRefs(s=3D&q=
uot;${@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;ipv6&#39;, d)}&quot;=
, varname=3D&#39;PACKAGECONFIG&#39;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except Exce=
ption as exc:<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise ExpansionEr=
ror(varname, s, exc) from exc<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>bb.data_smart=
.ExpansionError: Failure expanding variable PACKAGECONFIG, expression was $=
{@bb.utils.filter(&#39;DISTRO_FEATURES&#39;, &#39;ipv6&#39;, d)} which trig=
gered exception AttributeError: module &#39;bb.utils&#39; has no attribute =
&#39;filter&#39;<br><br><br>Summary: There was 1 ERROR message shown, retur=
ning a non-zero exit code.<br>$ <br><br></span></div><div><span style=3D"fo=
nt-family:arial,helvetica,sans-serif">Any hints would be greatly appreciate=
d.</span></div><div><span style=3D"font-family:monospace,monospace"><br></s=
pan></div><div><span style=3D"font-family:monospace,monospace">S</span></di=
v><div><span style=3D"font-family:monospace,monospace"><br></span></div><di=
v class=3D"gmail_extra"><span style=3D"font-family:monospace,monospace"><br=
></span><br></div></div></div></div>
-- <br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
</blockquote></div>

--0000000000004dcb57057480b48d--
