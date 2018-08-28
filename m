Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E9D7AE00848; Tue, 28 Aug 2018 11:32:54 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f173.google.com (mail-qt0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1629AE00519
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 11:32:53 -0700 (PDT)
Received: by mail-qt0-f173.google.com with SMTP id r37-v6so2894903qtc.0
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 11:32:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=lPeBJhETY7LY/XNS4JtJhd2zOzRbfwTO+HSWlWLNia8=;
	b=VnlhJrzkcFKbHfym5bvhA7EuXs++CtuOuWibz4eBU56n/PoSAKtLceVJU8stySiDyk
	cW1+5YodJhprjCNB089j6PEhDEgvdJ8RTIB97W93V1soULmdvQjsHTryEKKpsGeGCNxr
	DQMWh1II4rhVtbes0Y9E0QN2szuu7JqVSKFd86A5zRYAGrA2cnJkOYccs1GzG63WzuNf
	nwIhCDTXOHOFKZVSqN2V7xo1oNP1sCjWS23jjvcHx+wk94cKTUYChx2RIb4shFAmh0+g
	p75A9eUUn9lepnMzKpqVo7zg0ZDFFqwdb2ACQY3hWSGiVdOMk5ECykL9keE4nZaoWz7B
	9XfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=lPeBJhETY7LY/XNS4JtJhd2zOzRbfwTO+HSWlWLNia8=;
	b=oI/ie+sBN2rjJV3fSuZL0LCBEq9eO8rmaA7AoIZu9t4QQSMNVHx/NFPzm9OZxN/Hkx
	CRiJrOozAlud0bPXBnHbMiYRuv9ErJfa1m1PIfFX+ExOAJk4Qvy5ddyZ/wvW2ntKwNqo
	1r6vrqMbhQ4D77jKED81hCzHXxR6QFJm0zLxdUPz4lMpUy68uqXIVBQft75TTjlxwV5S
	kJo+Y+wrconwzHl7yBr+FqUJqvpc8jTQVqGbYBqMJzEzj6EjQadd6/529mMxtt9m6Ada
	nbEVAjgAMLyDbE57dnHcHGEl+wHmFL3CpE0ssYcSMWrQOxDcB7S7j+eWpbTztKZ57FV9
	Dq/A==
X-Gm-Message-State: APzg51C0vvq4mpXlwJknAs7kYVWa9uJft4sc37mK0A5zrEgLpRfv5Vl7
	9kkYqTWnhZgn8YCOsWeQkIB/hV0ED/A35iUoB6G58JW6OOHjrg==
X-Google-Smtp-Source: ANB0VdZkKXwdL1uu3AKCdroP86dPGtVllRWDMZkogoqxgXBNpDLsSUrhTNRlF2ySyK+O/JK8gpLi1miM/sc143FdbM8=
X-Received: by 2002:ac8:84a:: with SMTP id x10-v6mr3112828qth.90.1535481173420;
	Tue, 28 Aug 2018 11:32:53 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:3e77:0:0:0:0:0 with HTTP; Tue, 28 Aug 2018 11:32:52
	-0700 (PDT)
In-Reply-To: <CA+chaQev8r11E-j8TH8ZrqMjE3D8kpBdAxCfh0iofmhKfwXasQ@mail.gmail.com>
References: <CANmTPBZCG842Rx_7GPaK8LeAwkLe5tHLw8K-yq3Rrs4whAzR1w@mail.gmail.com>
	<CA+chaQev8r11E-j8TH8ZrqMjE3D8kpBdAxCfh0iofmhKfwXasQ@mail.gmail.com>
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Tue, 28 Aug 2018 14:32:52 -0400
Message-ID: <CANmTPBbaJqA-PDXasQ37ZM43kU1iAe4SME_zWtSW8eKHf9UAxw@mail.gmail.com>
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
X-List-Received-Date: Tue, 28 Aug 2018 18:32:54 -0000
Content-Type: multipart/alternative; boundary="000000000000e6f2c605748311a1"

--000000000000e6f2c605748311a1
Content-Type: text/plain; charset="UTF-8"

How can I avoid mixing branches.

I already have a meta-openembedded layer, which supports net-snmp_5.7.3
(which compiles but I want to update).

Now I cloned a new meta-openembedded layer, which as net-snmp_5.8.

How can I merge the layers (meta-openembedded that I have and the new
cloned one)?






On Tue, Aug 28, 2018 at 11:43 AM, Martin Jansa <martin.jansa@gmail.com>
wrote:

> Follow the READMEs and don't mix layers from different branches.
>
> You need to checkout all repositories with layers from the same branch to
> be compatible. Now you're mixing newer meta-oe branch with older oe-core
> branch which doesn't have bb.utils.filter function yet.
>
> On Tue, Aug 28, 2018 at 5:17 PM Simon Chamlian <simon.chamlian@mpbc.ca>
> wrote:
>
>>
>> Hi,
>>
>> Just download  net-snmp_5.8.bb but it failed to compile:
>>
>>
>> $ bitbake net-snmp
>> Loading cache: 100% |#############################
>> ############################################################
>> #######################################################################################|
>> Time: 0:00:01
>> Loaded 3093 entries from dependency cache.
>> *ERROR:* ExpansionError during parsing /opt/PHYTEC_BSPs/yocto_imx7/
>> sources/meta-openembedded/meta-networking/recipes-protocols/net-snmp/
>> net-snmp_5.8.bb                                               | ETA:
>> --:--:--
>> Traceback (most recent call last):
>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/meta/classes/base.bbclass",
>> line 375, in __anon_656__opt_PHYTEC_BSPs_yocto_imx7_sources_poky_meta_
>> classes_base_bbclass(d=<bb.data_smart.DataSmart object at
>> 0x7fe0ee311be0>):
>>              pkgconfig = (d.getVar('PACKAGECONFIG', True) or "").split()
>>     >        pn = d.getVar("PN", True)
>>
>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>> line 569, in DataSmart.getVar(var='PACKAGECONFIG', expand=True,
>> noweakdefault=False, parsing=False):
>>          def getVar(self, var, expand, noweakdefault=False,
>> parsing=False):
>>     >        return self.getVarFlag(var, "_content", expand,
>> noweakdefault, parsing)
>>
>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>> line 737, in DataSmart.getVarFlag(var='PACKAGECONFIG', flag='_content',
>> expand=True, noweakdefault=False, parsing=False):
>>                      cachename = var + "[" + flag + "]"
>>     >            value = self.expand(value, cachename)
>>
>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>> line 410, in DataSmart.expand(s="${@bb.utils.filter('DISTRO_FEATURES',
>> 'ipv6', d)}", varname='PACKAGECONFIG'):
>>          def expand(self, s, varname = None):
>>     >        return self.expandWithRefs(s, varname).value
>>
>>   File "/opt/PHYTEC_BSPs/yocto_imx7/sources/poky/bitbake/lib/bb/data_smart.py",
>> line 400, in DataSmart.expandWithRefs(s="${@bb.utils.filter('DISTRO_FEATURES',
>> 'ipv6', d)}", varname='PACKAGECONFIG'):
>>                  except Exception as exc:
>>     >                raise ExpansionError(varname, s, exc) from exc
>>
>> bb.data_smart.ExpansionError: Failure expanding variable PACKAGECONFIG,
>> expression was ${@bb.utils.filter('DISTRO_FEATURES', 'ipv6', d)} which
>> triggered exception AttributeError: module 'bb.utils' has no attribute
>> 'filter'
>>
>>
>> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>> $
>>
>> Any hints would be greatly appreciated.
>>
>> S
>>
>>
>>
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>>
>

--000000000000e6f2c605748311a1
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr"><div>How can I avoid mixing branches.</di=
v><div><br></div><div>I already have a meta-openembedded layer, which suppo=
rts net-snmp_5.7.3 (which compiles but I want to update).</div><div><br></d=
iv><div>Now I cloned a new meta-openembedded layer, which as net-snmp_5.8.<=
/div><div><br></div><div>How can I merge the layers (meta-openembedded that=
 I have and the new cloned one)?</div><div><br></div><div><br></div><div><b=
r></div><div><br></div><div><br></div></div></div><div class=3D"gmail_extra=
"><br><div class=3D"gmail_quote">On Tue, Aug 28, 2018 at 11:43 AM, Martin J=
ansa <span dir=3D"ltr">&lt;<a href=3D"mailto:martin.jansa@gmail.com" target=
=3D"_blank">martin.jansa@gmail.com</a>&gt;</span> wrote:<br><blockquote cla=
ss=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pa=
dding-left:1ex"><div dir=3D"ltr">Follow the READMEs and don&#39;t mix layer=
s from different branches.<div><br></div><div>You need to checkout all repo=
sitories with layers from the same branch to be compatible. Now you&#39;re =
mixing newer meta-oe branch with older oe-core branch which doesn&#39;t hav=
e bb.utils.filter function yet.</div></div><br><div class=3D"gmail_quote"><=
div><div class=3D"h5"><div dir=3D"ltr">On Tue, Aug 28, 2018 at 5:17 PM Simo=
n Chamlian &lt;<a href=3D"mailto:simon.chamlian@mpbc.ca" target=3D"_blank">=
simon.chamlian@mpbc.ca</a>&gt; wrote:<br></div></div></div><blockquote clas=
s=3D"gmail_quote" style=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;pad=
ding-left:1ex"><div><div class=3D"h5"><div dir=3D"ltr"><div dir=3D"ltr"><di=
v dir=3D"ltr"><div><br></div><div>Hi,</div><div><br></div><div>Just downloa=
d=C2=A0 <a href=3D"http://net-snmp_5.8.bb" target=3D"_blank">net-snmp_5.8.b=
b</a> but it failed to compile:</div><div><br></div><div><br></div><div><sp=
an style=3D"font-family:monospace,monospace">$ bitbake net-snmp<br>Loading =
cache: 100% |#############################<wbr>############################=
##<wbr>##############################<wbr>##############################<wb=
r>##############################<wbr>###########################| Time: 0:0=
0:01<br>Loaded 3093 entries from dependency cache.<br><b>ERROR:</b> Expansi=
onError during parsing /opt/PHYTEC_BSPs/yocto_imx7/<wbr>sources/meta-openem=
bedded/<wbr>meta-networking/recipes-<wbr>protocols/net-snmp/<a href=3D"http=
://net-snmp_5.8.bb" target=3D"_blank">net-snmp_5.<wbr>8.bb</a>=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 | ETA:=C2=A0 --:--:--<br>Trac=
eback (most recent call last):<br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_=
imx7/<wbr>sources/poky/meta/classes/<wbr>base.bbclass&quot;, line 375, in _=
_anon_656__opt_PHYTEC_BSPs_<wbr>yocto_imx7_sources_poky_meta_<wbr>classes_b=
ase_bbclass(d=3D&lt;bb.<wbr>data_smart.DataSmart object at 0x7fe0ee311be0&g=
t;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 pkgconfig =3D (d.getVar(&#39;PACKAGECONFIG&#39;, True) or &quot;&quo=
t;).split()<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 pn =3D d.getVar(&quot;PN&quot;, True)<br>=C2=A0=C2=A0=C2=A0=C2=A0 <b=
r>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/<wbr>sources/poky/bitbake/l=
ib/bb/<wbr>data_smart.py&quot;, line 569, in DataSmart.getVar(var=3D&#39;<w=
br>PACKAGECONFIG&#39;, expand=3DTrue, noweakdefault=3DFalse, parsing=3DFals=
e):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def getVar(self, va=
r, expand, noweakdefault=3DFalse, parsing=3DFalse):<br>=C2=A0=C2=A0=C2=A0 &=
gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return self.getVarFlag(var, &=
quot;_content&quot;, expand, noweakdefault, parsing)<br>=C2=A0=C2=A0=C2=A0=
=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/<wbr>sources/poky/=
bitbake/lib/bb/<wbr>data_smart.py&quot;, line 737, in DataSmart.getVarFlag(=
var=3D&#39;<wbr>PACKAGECONFIG&#39;, flag=3D&#39;_content&#39;, expand=3DTru=
e, noweakdefault=3DFalse, parsing=3DFalse):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 cachename =3D var + &quot;[&quot; + flag + &quot;]&quot;=
<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0 value =3D self.expand(value, cachename)<br>=C2=A0=C2=A0=
=C2=A0=C2=A0 <br>=C2=A0 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/<wbr>sources=
/poky/bitbake/lib/bb/<wbr>data_smart.py&quot;, line 410, in DataSmart.expan=
d(s=3D&quot;${@bb.<wbr>utils.filter(&#39;DISTRO_FEATURES&#39;<wbr>, &#39;ip=
v6&#39;, d)}&quot;, varname=3D&#39;PACKAGECONFIG&#39;):<br>=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 def expand(self, s, varname =3D None):<br=
>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 return s=
elf.expandWithRefs(s, varname).value<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>=C2=A0=
 File &quot;/opt/PHYTEC_BSPs/yocto_imx7/<wbr>sources/poky/bitbake/lib/bb/<w=
br>data_smart.py&quot;, line 400, in DataSmart.expandWithRefs(s=3D&quot;${<=
wbr>@bb.utils.filter(&#39;DISTRO_<wbr>FEATURES&#39;, &#39;ipv6&#39;, d)}&qu=
ot;, varname=3D&#39;PACKAGECONFIG&#39;):<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 except E=
xception as exc:<br>=C2=A0=C2=A0=C2=A0 &gt;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 raise Expansio=
nError(varname, s, exc) from exc<br>=C2=A0=C2=A0=C2=A0=C2=A0 <br>bb.data_sm=
art.ExpansionError: Failure expanding variable PACKAGECONFIG, expression wa=
s ${@bb.utils.filter(&#39;DISTRO_<wbr>FEATURES&#39;, &#39;ipv6&#39;, d)} wh=
ich triggered exception AttributeError: module &#39;bb.utils&#39; has no at=
tribute &#39;filter&#39;<br><br><br>Summary: There was 1 ERROR message show=
n, returning a non-zero exit code.<br>$ <br><br></span></div><div><span sty=
le=3D"font-family:arial,helvetica,sans-serif">Any hints would be greatly ap=
preciated.</span></div><div><span style=3D"font-family:monospace,monospace"=
><br></span></div><div><span style=3D"font-family:monospace,monospace">S</s=
pan></div><div><span style=3D"font-family:monospace,monospace"><br></span><=
/div><div class=3D"gmail_extra"><span style=3D"font-family:monospace,monosp=
ace"><br></span><br></div></div></div></div></div></div><span class=3D"HOEn=
Zb"><font color=3D"#888888">
-- <br>
______________________________<wbr>_________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yocto@yoctoproj=
ect.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.<wbr>org/listinfo/yocto</a><=
br>
</font></span></blockquote></div>
</blockquote></div><br></div>

--000000000000e6f2c605748311a1--
