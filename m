Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CFB53E00950; Wed, 29 Aug 2018 07:33:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, HTML_OBFUSCATE_05_10,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* 0.3 HTML_OBFUSCATE_05_10 BODY: Message is 5% to 10% HTML obfuscation
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A0706E00474
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 07:33:24 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id h138-v6so3480607qke.8
	for <yocto@yoctoproject.org>; Wed, 29 Aug 2018 07:33:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=LxP5TXSVgKOb5ktGwG1Z5NIINc0jm0luy1R6bSg4tzs=;
	b=F+ZQBLnR+KgC3CJ6X+0MZYKwt48jkP3u/znrwt+SVwUnjGEgheHOUWM5leC6ghdvjB
	N4es1oxQrU1tnrEqBTnQ051nbQdZMfltTXwllnlxLRgpABQcxr6dbQ8m1AaQu5hY67Uz
	/8fpPc3z6lRy7XKbz67j+tWUwHn02j7JKTawFCeFfAUmZos0otQFD4P9EndfrsGJlsJl
	Q1GCUGqQIhmLGYyeMkB9rBPyyG/gfeEn6XjLjdP5KJyss7gglPXOBb98UgeXV9LyQBWA
	c8CrI7EqEh24vbODYJKCRQ4gR3bmraXU+mvYOUTioeWi/oV4smeLZ64QGZls0Zb1k0As
	9FPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=LxP5TXSVgKOb5ktGwG1Z5NIINc0jm0luy1R6bSg4tzs=;
	b=fAKNOYKpy584vylRYp6PqkuJGwuATEjenzW6JyTQNXz/ykzlktr/px5Vs+Gy8b8P6o
	sPUrkHcPJFOWKDTrle0aP19tWGd4Yps6g1044q83KI1nps/dcjeHBgpLb/7rTGbhefGt
	5EAZmj5HYaLdirUSHRRB8Kl/A/X2iZoxUBIRLFxcaMkTkgCfFPS3vT1MpWOippaZQjE3
	jNT1cLcEr1qOTpwA5crQw2Dd4jQ/N7zEgsXuwqIhODsC9xd+f2JqEFIPOMFzo7Svp72Q
	49UjbXYxQ2vv7NlEuExkKKPneJg9p8i8v+QdjTsnlyzzPZjbZwb5XP8yPJsQDazmWK0M
	R+Jg==
X-Gm-Message-State: APzg51Dh+PFiSJIo+QnNCbVjfPLRx91wmKQcDtHD4nVnHhQTkp3Ivf6N
	+1m86MeFd84XMknKFF26EKMSX3OBl6dog2YRCKrIiP1Po+xH1w==
X-Google-Smtp-Source: ANB0VdbBPj0SM4SGZLTUQrmkmUcBnmPQZTkEjo6xXxi3MqhJR0+kW414cKukiePp/7tks6WEhBdPxIvKa6w1c77clfE=
X-Received: by 2002:a37:6d44:: with SMTP id
	i65-v6mr446352qkc.142.1535553203955; 
	Wed, 29 Aug 2018 07:33:23 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:3e77:0:0:0:0:0 with HTTP; Wed, 29 Aug 2018 07:33:23
	-0700 (PDT)
In-Reply-To: <CANmTPBbrFpZPpvqUvsw3Gib4fEC=AOY=UrULik3v9tQRCKcM2Q@mail.gmail.com>
References: <CANmTPBZCG842Rx_7GPaK8LeAwkLe5tHLw8K-yq3Rrs4whAzR1w@mail.gmail.com>
	<CA+chaQev8r11E-j8TH8ZrqMjE3D8kpBdAxCfh0iofmhKfwXasQ@mail.gmail.com>
	<CANmTPBbaJqA-PDXasQ37ZM43kU1iAe4SME_zWtSW8eKHf9UAxw@mail.gmail.com>
	<CANmTPBbrFpZPpvqUvsw3Gib4fEC=AOY=UrULik3v9tQRCKcM2Q@mail.gmail.com>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Wed, 29 Aug 2018 10:33:23 -0400
Message-ID: <CANmTPBaOO4HguR3z=j4rUn1Bw=pFqf2KB5aKrUoYssv+whG0ow@mail.gmail.com>
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
X-List-Received-Date: Wed, 29 Aug 2018 14:33:25 -0000
Content-Type: multipart/alternative; boundary="000000000000417ac0057493d784"

--000000000000417ac0057493d784
Content-Type: text/plain; charset="UTF-8"

Replacing 'filter'  by 'contains' will do the trick (will compile)

- PACKAGECONFIG ??= "${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)}"
+PACKAGECONFIG ??= "${@bb.utils.contains('DISTRO_FEATURES', 'ipv6', 'ipv6',
'', d)}"


Note that I get the following warning:

WARNING: net-snmp-5.8-r0 do_package_qa: QA Issue: net-snmp-client rdepends
on libpcap, but it isn't a build dependency, missing libpcap in DEPENDS or
PACKAGECONFIG? [build-deps]


S.


On Tue, Aug 28, 2018 at 4:24 PM, Simon Chamlian <simon.chamlian@mpbc.ca>
wrote:

> Will the following method work?
>
> yocto-layer create openembedded*2*
>
> and add the path in conf/bblayers.conf
>
> By doing this, I will have
> openembedded   where  net-snmp version 5.7.3 resides
> openembedded*2*  where  net-snmp version 5.8   resides
>
>
> Then issuing bitbake net-snmp it will take the 5.8?
>
>
>
>
>
> On Tue, Aug 28, 2018 at 2:32 PM, Simon Chamlian <simon.chamlian@mpbc.ca>
> wrote:
>
>> How can I avoid mixing branches.
>>
>> I already have a meta-openembedded layer, which supports net-snmp_5.7.3
>> (which compiles but I want to update).
>>
>> Now I cloned a new meta-openembedded layer, which as net-snmp_5.8.
>>
>> How can I merge the layers (meta-openembedded that I have and the new
>> cloned one)?
>>
>>
>>
>>
>>
>>
>> On Tue, Aug 28, 2018 at 11:43 AM, Martin Jansa <martin.jansa@gmail.com>
>> wrote:
>>
>>> Follow the READMEs and don't mix layers from different branches.
>>>
>>> You need to checkout all repositories with layers from the same branch
>>> to be compatible. Now you're mixing newer meta-oe branch with older oe-core
>>> branch which doesn't have bb.utils.filter function yet.
>>>
>>> On Tue, Aug 28, 2018 at 5:17 PM Simon Chamlian <simon.chamlian@mpbc.ca>
>>> wrote:
>>>
>>>>
>>>> Hi,
>>>>
>>>> Just download  net-snmp_5.8.bb but it failed to compile:
>>>>
>>>>
>>>> $ bitbake net-snmp
>>>> Loading cache: 100% |#############################
>>>> ############################################################
>>>> #######################################################################################|
>>>> Time: 0:00:01
>>>> Loaded 3093 entries from dependency cache.
>>>> *ERROR:* ExpansionError during parsing /opt/PHYTEC_BSPs/yocto_imx7/so
>>>> urces/meta-openembedded/meta-networking/recipes-protocols/net-snmp/
>>>> net-snmp_5.8.bb                                               | ETA:
>>>> --:--:--
>>>> Traceback (most recent call last):
>>>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/classes/base.bbclass",
>>>> line 375, in __anon_656__opt_PHYTEC_BSPs_yo
>>>> cto_imx7_sources_poky_meta_classes_base_bbclass(d=<bb.data_smart.DataSmart
>>>> object at 0x7fe0ee311be0>):
>>>>              pkgconfig = (d.getVar('PACKAGECONFIG', True) or "").split()
>>>>     >        pn = d.getVar("PN", True)
>>>>
>>>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>>>> line 569, in DataSmart.getVar(var='PACKAGECONFIG', expand=True,
>>>> noweakdefault=False, parsing=False):
>>>>          def getVar(self, var, expand, noweakdefault=False,
>>>> parsing=False):
>>>>     >        return self.getVarFlag(var, "_content", expand,
>>>> noweakdefault, parsing)
>>>>
>>>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>>>> line 737, in DataSmart.getVarFlag(var='PACKAGECONFIG',
>>>> flag='_content', expand=True, noweakdefault=False, parsing=False):
>>>>                      cachename = var + "[" + flag + "]"
>>>>     >            value = self.expand(value, cachename)
>>>>
>>>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>>>> line 410, in DataSmart.expand(s="${@bb.utils.filter('DISTRO_FEATURES',
>>>> 'ipv6', d)}", varname='PACKAGECONFIG'):
>>>>          def expand(self, s, varname = None):
>>>>     >        return self.expandWithRefs(s, varname).value
>>>>
>>>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>>>> line 400, in DataSmart.expandWithRefs(s="${
>>>> @bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)}",
>>>> varname='PACKAGECONFIG'):
>>>>                  except Exception as exc:
>>>>     >                raise ExpansionError(varname, s, exc) from exc
>>>>
>>>> bb.data_smart.ExpansionError: Failure expanding variable PACKAGECONFIG,
>>>> expression was ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} which
>>>> triggered exception AttributeError: module 'bb.utils' has no attribute
>>>> 'filter'
>>>>
>>>>
>>>> Summary: There was 1 ERROR message shown, returning a non-zero exit
>>>> code.
>>>> $
>>>>
>>>> Any hints would be greatly appreciated.
>>>>
>>>> S
>>>>
>>>>
>>>>
>>>> --
>>>> _______________________________________________
>>>> yocto mailing list
>>>> yocto@yoctoproject.org
>>>> https://lists.yoctoproject.org/listinfo/yocto
>>>>
>>>
>>
>

--000000000000417ac0057493d784
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>Replacing &#39;filter&#39;=C2=A0 by =
&#39;contains&#39; will do the trick (will compile)<br></div><div><br></div=
><div></div><div><div style=3D"margin-left:40px"><span style=3D"font-family=
:monospace,monospace">- PACKAGECONFIG ??=3D &quot;${@bb.utils.filter(&#39;D=
ISTRO_</span><wbr><span style=3D"font-family:monospace,monospace">FEATURES&=
#39;, &#39;ipv6&#39;, d)}&quot;</span></div><div style=3D"margin-left:40px"=
><span style=3D"font-family:monospace,monospace">+PACKAGECONFIG ??=3D &quot=
;${@bb.utils.contains(&#39;DISTRO_</span><wbr><span style=3D"font-family:mo=
nospace,monospace">FEATURES&#39;, &#39;ipv6&#39;, &#39;ipv6&#39;, &#39;&#39=
;, d)}&quot;</span></div><div><br></div><br></div><div>Note that I get the =
following warning:<br></div><div><span style=3D"font-family:monospace,monos=
pace"><br>WARNING: net-snmp-5.8-r0 do_package_qa: QA Issue: net-snmp-client=
 rdepends on libpcap, but it isn&#39;t a build dependency, missing libpcap =
in DEPENDS or PACKAGECONFIG? [build-deps]</span></div><div><span style=3D"f=
ont-family:monospace,monospace"><br></span></div><div><br></div><div>S.</di=
v><div><br></div></div></div><div class=3D"gmail_extra"><br><div class=3D"g=
mail_quote">On Tue, Aug 28, 2018 at 4:24 PM, Simon Chamlian <span dir=3D"lt=
r">&lt;<a href=3D"mailto:simon.chamlian@mpbc.ca" target=3D"_blank">simon.ch=
amlian@mpbc.ca</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" s=
tyle=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div=
 dir=3D"ltr"><div dir=3D"ltr"><div>Will the following method work?</div><di=
v><br></div><div>yocto-layer create=20
openembedded<b>2</b> <br></div><div><br></div><div>and add the path in conf=
/bblayers.conf</div><div><br></div><div>By doing this, I will have <br></di=
v><div>
openembedded=C2=A0=C2=A0 where=C2=A0 net-snmp version 5.7.3 resides</div><d=
iv>
openembedded<b>2</b>=C2=A0 where=C2=A0 net-snmp version 5.8 =C2=A0=20
 resides=C2=A0</div><div><br></div><div><br></div><div>Then issuing bitbake=
 net-snmp it will take the 5.8?</div><div><br></div><div><br></div><div><br=
></div><div><br></div></div></div><div class=3D"HOEnZb"><div class=3D"h5"><=
div class=3D"gmail_extra"><br><div class=3D"gmail_quote">On Tue, Aug 28, 20=
18 at 2:32 PM, Simon Chamlian <span dir=3D"ltr">&lt;<a href=3D"mailto:simon=
.chamlian@mpbc.ca" target=3D"_blank">simon.chamlian@mpbc.ca</a>&gt;</span> =
wrote:<br><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;bord=
er-left:1px #ccc solid;padding-left:1ex"><div dir=3D"ltr"><div dir=3D"ltr">=
<div>How can I avoid mixing branches.</div><div><br></div><div>I already ha=
ve a meta-openembedded layer, which supports net-snmp_5.7.3 (which compiles=
 but I want to update).</div><div><br></div><div>Now I cloned a new meta-op=
enembedded layer, which as net-snmp_5.8.</div><div><br></div><div>How can I=
 merge the layers (meta-openembedded that I have and the new cloned one)?</=
div><div><br></div><div><br></div><div><br></div><div><br></div><div><br></=
div></div></div><div class=3D"m_-6953314575681119641HOEnZb"><div class=3D"m=
_-6953314575681119641h5"><div class=3D"gmail_extra"><br><div class=3D"gmail=
_quote">On Tue, Aug 28, 2018 at 11:43 AM, Martin Jansa <span dir=3D"ltr">&l=
t;<a href=3D"mailto:martin.jansa@gmail.com" target=3D"_blank">martin.jansa@=
gmail.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" style=
=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div dir=
=3D"ltr">Follow the READMEs and don&#39;t mix layers from different branche=
s.<div><br></div><div>You need to checkout all repositories with layers fro=
m the same branch to be compatible. Now you&#39;re mixing newer meta-oe bra=
nch with older oe-core branch which doesn&#39;t have bb.utils.filter functi=
on yet.</div></div><br><div class=3D"gmail_quote"><div><div class=3D"m_-695=
3314575681119641m_-6254070435289824073h5"><div dir=3D"ltr">On Tue, Aug 28, =
2018 at 5:17 PM Simon Chamlian &lt;<a href=3D"mailto:simon.chamlian@mpbc.ca=
" target=3D"_blank">simon.chamlian@mpbc.ca</a>&gt; wrote:<br></div></div></=
div><blockquote class=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-lef=
t:1px #ccc solid;padding-left:1ex"><div><div class=3D"m_-695331457568111964=
1m_-6254070435289824073h5"><div dir=3D"ltr"><div dir=3D"ltr"><div dir=3D"lt=
r"><div><br></div><div>Hi,</div><div><br></div><div>Just download=C2=A0 <a =
href=3D"http://net-snmp_5.8.bb" target=3D"_blank">net-snmp_5.8.bb</a> but i=
t failed to compile:</div><div><br></div><div><br></div><div><span style=3D=
"font-family:monospace,monospace">$ bitbake net-snmp<br>Loading cache: 100%=
 |#############################<wbr>##############################<wbr>####=
##########################<wbr>##############################<wbr>#########=
#####################<wbr>###########################| Time: 0:00:01<br>Loa=
ded 3093 entries from dependency cache.<br><b>ERROR:</b> ExpansionError dur=
ing parsing /opt/PHYTEC_BSPs/yocto_imx7/so<wbr>urces/meta-openembedded/meta=
-n<wbr>etworking/recipes-protocols/ne<wbr>t-snmp/<a href=3D"http://net-snmp=
_5.8.bb" target=3D"_blank">net-snmp_5.8.bb</a>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 --:--:--<br>Traceback (mo=
st recent call last):<br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/s<wb=
r>ources/poky/meta/classes/base.<wbr>bbclass&quot;, line 375, in __anon_656=
__opt_PHYTEC_BSPs_yo<wbr>cto_imx7_sources_poky_meta_cla<wbr>sses_base_bbcla=
ss(d=3D&lt;bb.data_s<wbr>mart.DataSmart object at 0x7fe0ee311be0&gt;):<br>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pk=
gconfig =3D (d.getVar(&#39;PACKAGECONFIG&#39;, True) or &quot;&quot;).split=
()<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 pn =
=3D d.getVar(&quot;PN&quot;, True)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 F=
ile &quot;/opt/PHYTEC_BSPs/yocto_imx7/s<wbr>ources/poky/bitbake/lib/bb/dat<=
wbr>a_smart.py&quot;, line 569, in DataSmart.getVar(var=3D&#39;PACKAGEC<wbr=
>ONFIG&#39;, expand=3DTrue, noweakdefault=3DFalse, parsing=3DFalse):<br>=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def getVar(self, var, expand,=
 noweakdefault=3DFalse, parsing=3DFalse):<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return self.getVarFlag(var, &quot;_con=
tent&quot;, expand, noweakdefault, parsing)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br=
>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/s<wbr>ources/poky/bitbake/li=
b/bb/dat<wbr>a_smart.py&quot;, line 737, in DataSmart.getVarFlag(var=3D&#39=
;PACK<wbr>AGECONFIG&#39;, flag=3D&#39;_content&#39;, expand=3DTrue, noweakd=
efault=3DFalse, parsing=3DFalse):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 cachename =3D var + &quot;[&quot; + flag + &quot;]&quot;<br>=C2=
=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0 value =3D self.expand(value, cachename)<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/s<wbr>ources/poky/=
bitbake/lib/bb/dat<wbr>a_smart.py&quot;, line 410, in DataSmart.expand(s=3D=
&quot;${@bb.util<wbr>s.filter(&#39;DISTRO_FEATURES&#39;, &#39;ipv6&#39;, d)=
}&quot;, varname=3D&#39;PACKAGECONFIG&#39;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0 def expand(self, s, varname =3D None):<br>=C2=A0=C2=
=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return self.expand=
WithRefs(s, varname).value<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0 File &quo=
t;/opt/PHYTEC_BSPs/yocto_imx7/s<wbr>ources/poky/bitbake/lib/bb/dat<wbr>a_sm=
art.py&quot;, line 400, in DataSmart.expandWithRefs(s=3D&quot;${<wbr>@bb.ut=
ils.filter(&#39;DISTRO_FEATU<wbr>RES&#39;, &#39;ipv6&#39;, d)}&quot;, varna=
me=3D&#39;PACKAGECONFIG&#39;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except Exception =
as exc:<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise ExpansionError(va=
rname, s, exc) from exc<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>bb.data_smart.Expan=
sionError: Failure expanding variable PACKAGECONFIG, expression was ${@bb.u=
tils.filter(&#39;DISTRO_FEA<wbr>TURES&#39;, &#39;ipv6&#39;, d)} which trigg=
ered exception AttributeError: module &#39;bb.utils&#39; has no attribute &=
#39;filter&#39;<br><br><br>Summary: There was 1 ERROR message shown, return=
ing a non-zero exit code.<br>$ <br><br></span></div><div><span style=3D"fon=
t-family:arial,helvetica,sans-serif">Any hints would be greatly appreciated=
.</span></div><div><span style=3D"font-family:monospace,monospace"><br></sp=
an></div><div><span style=3D"font-family:monospace,monospace">S</span></div=
><div><span style=3D"font-family:monospace,monospace"><br></span></div><div=
 class=3D"gmail_extra"><span style=3D"font-family:monospace,monospace"><br>=
</span><br></div></div></div></div></div></div><span class=3D"m_-6953314575=
681119641m_-6254070435289824073HOEnZb"><font color=3D"#888888">
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
</div></div></blockquote></div><br></div>

--000000000000417ac0057493d784--
