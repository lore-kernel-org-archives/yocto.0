Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EAFBFE00848; Tue, 28 Aug 2018 13:24:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BAC81E00519
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 13:24:24 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id r37-v6so3312736qtc.0
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 13:24:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=NBcqC5JoGPh72W+9My9ssPgG15kq9kM9fxdi7cKKK58=;
	b=e/BhMROF5AvXybr8wkz7Lx7TX/OmlnL4sqQI94MFkcSjWPYaA8+IGCHCGH61VS4dlc
	uJ2jkeoPucOQ1psoGi74XU1Qyj26yCmIS32wEc6XDZ5nnpcizkOmEq0370ngS9RlOwme
	v4dV8B3c2Zjug26tbMX1JVQyMkhEfkfCj+hdsOkw/PtGa+L+VG+bMdHN7OorZ64vSUj6
	kY+xBa9wKDRJCfp6MEFwv2FjG7fxI7f+SI2gFD4wgKnSeJ/+2uCWNM4y75JotWa9WIbf
	aSdgEakFuxnwApX9UPGXHYMVg2vkmtx4fdT/KiKgKt1ZApcopXjBQWtFusFSllJBxjSF
	wFVg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=NBcqC5JoGPh72W+9My9ssPgG15kq9kM9fxdi7cKKK58=;
	b=PvwNNDsMK6FfBtQzyysph5Hz/n2fMPwOKJ9wWCgBKnqaa+sMA7heX2H55mWpZH8LXM
	82Az6ZtXlC05+LbLPR4Rfb51HusyadcXBJjOE/HXMp1eiaupFNyJ1d9KC0z4V/Bucl+A
	DKCqRJkTm2kQYQ2p034V3g0d9b1AB0T0GKkVcsh1NtMpFPCG9ylRa0Xj3cf+oLgx2Pns
	xRPRPfhfKZBnY2/3Oa1ZZlSalvAo8i84eUcG+WPdRwipjWm62zDlAWD5IS0fU5YncCTj
	SdsiieH83m7VcE2+CD/1e5Pxc6hMxh2wBV+HYKNzWK59P/yRsFM+R0bEq9xL/WAQl7Gl
	Hyzg==
X-Gm-Message-State: APzg51BjNQATiMs3YjIfCa5z3CldyrZ76ORbK8ck4MbK0nOfNEFyJYSn
	FDumMOdO7ZVpQTUVGpqIRN/SFC6uvK1cIx+Zm6KBeg==
X-Google-Smtp-Source: ANB0Vdbjtg2NH+rUrZwD6o6dxfEfbn/dEjAykdFSirxaKNUCsRnzNVS7m+MabwG8Wav/2UCXA2a8aah3ngW7+DVWwm8=
X-Received: by 2002:a0c:d4ad:: with SMTP id
	u42-v6mr3398742qvh.247.1535487864041; 
	Tue, 28 Aug 2018 13:24:24 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:3e77:0:0:0:0:0 with HTTP; Tue, 28 Aug 2018 13:24:23
	-0700 (PDT)
In-Reply-To: <CANmTPBbaJqA-PDXasQ37ZM43kU1iAe4SME_zWtSW8eKHf9UAxw@mail.gmail.com>
References: <CANmTPBZCG842Rx_7GPaK8LeAwkLe5tHLw8K-yq3Rrs4whAzR1w@mail.gmail.com>
	<CA+chaQev8r11E-j8TH8ZrqMjE3D8kpBdAxCfh0iofmhKfwXasQ@mail.gmail.com>
	<CANmTPBbaJqA-PDXasQ37ZM43kU1iAe4SME_zWtSW8eKHf9UAxw@mail.gmail.com>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Tue, 28 Aug 2018 16:24:23 -0400
Message-ID: <CANmTPBbrFpZPpvqUvsw3Gib4fEC=AOY=UrULik3v9tQRCKcM2Q@mail.gmail.com>
To: Martin Jansa <martin.jansa@gmail.com>
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
X-List-Received-Date: Tue, 28 Aug 2018 20:24:26 -0000
Content-Type: multipart/alternative; boundary="000000000000b182a5057484a09e"

--000000000000b182a5057484a09e
Content-Type: text/plain; charset="UTF-8"

Will the following method work?

yocto-layer create openembedded*2*

and add the path in conf/bblayers.conf

By doing this, I will have
openembedded   where  net-snmp version 5.7.3 resides
openembedded*2*  where  net-snmp version 5.8   resides


Then issuing bitbake net-snmp it will take the 5.8?





On Tue, Aug 28, 2018 at 2:32 PM, Simon Chamlian <simon.chamlian@mpbc.ca>
wrote:

> How can I avoid mixing branches.
>
> I already have a meta-openembedded layer, which supports net-snmp_5.7.3
> (which compiles but I want to update).
>
> Now I cloned a new meta-openembedded layer, which as net-snmp_5.8.
>
> How can I merge the layers (meta-openembedded that I have and the new
> cloned one)?
>
>
>
>
>
>
> On Tue, Aug 28, 2018 at 11:43 AM, Martin Jansa <martin.jansa@gmail.com>
> wrote:
>
>> Follow the READMEs and don't mix layers from different branches.
>>
>> You need to checkout all repositories with layers from the same branch to
>> be compatible. Now you're mixing newer meta-oe branch with older oe-core
>> branch which doesn't have bb.utils.filter function yet.
>>
>> On Tue, Aug 28, 2018 at 5:17 PM Simon Chamlian <simon.chamlian@mpbc.ca>
>> wrote:
>>
>>>
>>> Hi,
>>>
>>> Just download  net-snmp_5.8.bb but it failed to compile:
>>>
>>>
>>> $ bitbake net-snmp
>>> Loading cache: 100% |#############################
>>> ############################################################
>>> #######################################################################################|
>>> Time: 0:00:01
>>> Loaded 3093 entries from dependency cache.
>>> *ERROR:* ExpansionError during parsing /opt/PHYTEC_BSPs/yocto_imx7/so
>>> urces/meta-openembedded/meta-networking/recipes-protocols/net-snmp/
>>> net-snmp_5.8.bb                                               | ETA:
>>> --:--:--
>>> Traceback (most recent call last):
>>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/classes/base.bbclass",
>>> line 375, in __anon_656__opt_PHYTEC_BSPs_yo
>>> cto_imx7_sources_poky_meta_classes_base_bbclass(d=<bb.data_smart.DataSmart
>>> object at 0x7fe0ee311be0>):
>>>              pkgconfig = (d.getVar('PACKAGECONFIG', True) or "").split()
>>>     >        pn = d.getVar("PN", True)
>>>
>>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>>> line 569, in DataSmart.getVar(var='PACKAGECONFIG', expand=True,
>>> noweakdefault=False, parsing=False):
>>>          def getVar(self, var, expand, noweakdefault=False,
>>> parsing=False):
>>>     >        return self.getVarFlag(var, "_content", expand,
>>> noweakdefault, parsing)
>>>
>>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>>> line 737, in DataSmart.getVarFlag(var='PACKAGECONFIG', flag='_content',
>>> expand=True, noweakdefault=False, parsing=False):
>>>                      cachename = var + "[" + flag + "]"
>>>     >            value = self.expand(value, cachename)
>>>
>>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>>> line 410, in DataSmart.expand(s="${@bb.utils.filter('DISTRO_FEATURES',
>>> 'ipv6', d)}", varname='PACKAGECONFIG'):
>>>          def expand(self, s, varname = None):
>>>     >        return self.expandWithRefs(s, varname).value
>>>
>>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>>> line 400, in DataSmart.expandWithRefs(s="${
>>> @bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)}",
>>> varname='PACKAGECONFIG'):
>>>                  except Exception as exc:
>>>     >                raise ExpansionError(varname, s, exc) from exc
>>>
>>> bb.data_smart.ExpansionError: Failure expanding variable PACKAGECONFIG,
>>> expression was ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} which
>>> triggered exception AttributeError: module 'bb.utils' has no attribute
>>> 'filter'
>>>
>>>
>>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>>> $
>>>
>>> Any hints would be greatly appreciated.
>>>
>>> S
>>>
>>>
>>>
>>> --
>>> _______________________________________________
>>> yocto mailing list
>>> yocto@yoctoproject.org
>>> https://lists.yoctoproject.org/listinfo/yocto
>>>
>>
>

--000000000000b182a5057484a09e
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Will the following method work?</div=
><div><br></div><div>yocto-layer create=20
openembedded<b>2</b> <br></div><div><br></div><div>and add the path in conf=
/bblayers.conf</div><div><br></div><div>By doing this, I will have <br></di=
v><div>
openembedded=C2=A0=C2=A0 where=C2=A0 net-snmp version 5.7.3 resides</div><d=
iv>
openembedded<b>2</b>=C2=A0 where=C2=A0 net-snmp version 5.8 =C2=A0=20
 resides=C2=A0</div><div><br></div><div><br></div><div>Then issuing bitbake=
 net-snmp it will take the 5.8?</div><div><br></div><div><br></div><div><br=
></div><div><br></div></div></div><div class=3D"gmail_extra"><br><div class=
=3D"gmail_quote">On Tue, Aug 28, 2018 at 2:32 PM, Simon Chamlian <span dir=
=3D"ltr">&lt;<a href=3D"mailto:simon.chamlian@mpbc.ca" target=3D"_blank">si=
mon.chamlian@mpbc.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_qu=
ote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex=
"><div dir=3D"ltr"><div dir=3D"ltr"><div>How can I avoid mixing branches.</=
div><div><br></div><div>I already have a meta-openembedded layer, which sup=
ports net-snmp_5.7.3 (which compiles but I want to update).</div><div><br><=
/div><div>Now I cloned a new meta-openembedded layer, which as net-snmp_5.8=
.</div><div><br></div><div>How can I merge the layers (meta-openembedded th=
at I have and the new cloned one)?</div><div><br></div><div><br></div><div>=
<br></div><div><br></div><div><br></div></div></div><div class=3D"HOEnZb"><=
div class=3D"h5"><div class=3D"gmail_extra"><br><div class=3D"gmail_quote">=
On Tue, Aug 28, 2018 at 11:43 AM, Martin Jansa <span dir=3D"ltr">&lt;<a hre=
f=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@gmail.co=
m</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=3D"margi=
n:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr">=
Follow the READMEs and don&#39;t mix layers from different branches.<div><b=
r></div><div>You need to checkout all repositories with layers from the sam=
e branch to be compatible. Now you&#39;re mixing newer meta-oe branch with =
older oe-core branch which doesn&#39;t have bb.utils.filter function yet.</=
div></div><br><div class=3D"gmail_quote"><div><div class=3D"m_-625407043528=
9824073h5"><div dir=3D"ltr">On Tue, Aug 28, 2018 at 5:17 PM Simon Chamlian =
&lt;<a href=3D"mailto:simon.chamlian@mpbc.ca" target=3D"_blank">simon.chaml=
ian@mpbc.ca</a>&gt; wrote:<br></div></div></div><blockquote class=3D"gmail_=
quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1=
ex"><div><div class=3D"m_-6254070435289824073h5"><div dir=3D"ltr"><div dir=
=3D"ltr"><div dir=3D"ltr"><div><br></div><div>Hi,</div><div><br></div><div>=
Just download=C2=A0 <a href=3D"http://net-snmp_5.8.bb" target=3D"_blank">ne=
t-snmp_5.8.bb</a> but it failed to compile:</div><div><br></div><div><br></=
div><div><span style=3D"font-family:monospace,monospace">$ bitbake net-snmp=
<br>Loading cache: 100% |#############################<wbr>################=
##############<wbr>##############################<wbr>#####################=
#########<wbr>##############################<wbr>##########################=
#| Time: 0:00:01<br>Loaded 3093 entries from dependency cache.<br><b>ERROR:=
</b> ExpansionError during parsing /opt/PHYTEC_BSPs/yocto_imx7/so<wbr>urces=
/meta-openembedded/meta-<wbr>networking/recipes-protocols/<wbr>net-snmp/<a =
href=3D"http://net-snmp_5.8.bb" target=3D"_blank">net-snmp_5.8.bb</a>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 --:-=
-:--<br>Traceback (most recent call last):<br>=C2=A0 File &quot;/opt/PHYTEC=
_BSPs/yocto_imx7/s<wbr>ources/poky/meta/classes/base.<wbr>bbclass&quot;, li=
ne 375, in __anon_656__opt_PHYTEC_BSPs_yo<wbr>cto_imx7_sources_poky_meta_cl=
a<wbr>sses_base_bbclass(d=3D&lt;bb.data_<wbr>smart.DataSmart object at 0x7f=
e0ee311be0&gt;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 pkgconfig =3D (d.getVar(&#39;PACKAGECONFIG&#39;, True) o=
r &quot;&quot;).split()<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 pn =3D d.getVar(&quot;PN&quot;, True)<br>=C2=A0=C2=A0=C2=
=A0=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/s<wbr>ources/po=
ky/bitbake/lib/bb/dat<wbr>a_smart.py&quot;, line 569, in DataSmart.getVar(v=
ar=3D&#39;PACKAGEC<wbr>ONFIG&#39;, expand=3DTrue, noweakdefault=3DFalse, pa=
rsing=3DFalse):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def get=
Var(self, var, expand, noweakdefault=3DFalse, parsing=3DFalse):<br>=C2=A0=
=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return self.get=
VarFlag(var, &quot;_content&quot;, expand, noweakdefault, parsing)<br>=C2=
=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/s<w=
br>ources/poky/bitbake/lib/bb/dat<wbr>a_smart.py&quot;, line 737, in DataSm=
art.getVarFlag(var=3D&#39;PACK<wbr>AGECONFIG&#39;, flag=3D&#39;_content&#39=
;, expand=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):<br>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 cachename =3D var + &quot;[&quot; + flag =
+ &quot;]&quot;<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 value =3D self.expand(value, cachename)<b=
r>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx=
7/s<wbr>ources/poky/bitbake/lib/bb/dat<wbr>a_smart.py&quot;, line 410, in D=
ataSmart.expand(s=3D&quot;${@bb.util<wbr>s.filter(&#39;DISTRO_FEATURES&#39;=
, &#39;ipv6&#39;, d)}&quot;, varname=3D&#39;PACKAGECONFIG&#39;):<br>=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def expand(self, s, varname =3D =
None):<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 return self.expandWithRefs(s, varname).value<br>=C2=A0=C2=A0=C2=A0=C2=A0 <=
br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/s<wbr>ources/poky/bitbake/=
lib/bb/dat<wbr>a_smart.py&quot;, line 400, in DataSmart.expandWithRefs(s=3D=
&quot;${<wbr>@bb.utils.filter(&#39;DISTRO_FEATU<wbr>RES&#39;, &#39;ipv6&#39=
;, d)}&quot;, varname=3D&#39;PACKAGECONFIG&#39;):<br>=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
 except Exception as exc:<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise=
 ExpansionError(varname, s, exc) from exc<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>b=
b.data_smart.ExpansionError: Failure expanding variable PACKAGECONFIG, expr=
ession was ${@bb.utils.filter(&#39;DISTRO_FEA<wbr>TURES&#39;, &#39;ipv6&#39=
;, d)} which triggered exception AttributeError: module &#39;bb.utils&#39; =
has no attribute &#39;filter&#39;<br><br><br>Summary: There was 1 ERROR mes=
sage shown, returning a non-zero exit code.<br>$ <br><br></span></div><div>=
<span style=3D"font-family:arial,helvetica,sans-serif">Any hints would be g=
reatly appreciated.</span></div><div><span style=3D"font-family:monospace,m=
onospace"><br></span></div><div><span style=3D"font-family:monospace,monosp=
ace">S</span></div><div><span style=3D"font-family:monospace,monospace"><br=
></span></div><div class=3D"gmail_extra"><span style=3D"font-family:monospa=
ce,monospace"><br></span><br></div></div></div></div></div></div><span clas=
s=3D"m_-6254070435289824073HOEnZb"><font color=3D"#888888">
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org<wbr>/listinfo/yocto</a><=
br>
</font></span></blockquote></div>
</blockquote></div><br></div>
</div></div></blockquote></div><br></div>

--000000000000b182a5057484a09e--
