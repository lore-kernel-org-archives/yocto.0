Return-Path: <prawnhongs@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 02DE8E00D97; Tue, 27 Aug 2019 03:26:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (prawnhongs[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.48 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lf1-f48.google.com (mail-lf1-f48.google.com
	[209.85.167.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1B6A9E00927
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 03:26:49 -0700 (PDT)
Received: by mail-lf1-f48.google.com with SMTP id v16so14708393lfg.11
	for <yocto@yoctoproject.org>; Tue, 27 Aug 2019 03:26:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=vI/xqS7ljcyufpmggb/PIutbawdo79dpnH3Bc6C9F9I=;
	b=WsYJtF1ZOzrubwyLeKeQ0HX0+wf83FHxtfXi/Od4lznRuEqim4V/JuxIZ4GfEIcAEg
	1JbevlmEbeBJ48/CnkIUs4IsifvOGwgODQCfH+UwP3Bh5zC4F9fn23W06Bw2eVP5PASE
	N0LsdkWGqK8DnXJI5FNT55HyioeipKYsb1aIBIpjLFiFNK9L1Ly2EFtQxWUH922mpKRm
	kXtIsTPwVNSSGLw1/vj4Z79Ai4OmZYYBehVNShFTOUPqT4kWP1OcrHJoPeAzoRNwomvz
	ZYiWfnBsYqGMY00hW0twT+tb+vA3hc8nQZ/YPZwuGIbG18ksh17KE4lgvUU8GUN9/wUT
	S0vQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=vI/xqS7ljcyufpmggb/PIutbawdo79dpnH3Bc6C9F9I=;
	b=hOIQcre+DxTpyyC5a5WGkjkpdNP8miw9XloCSm17pTh5JiquuN7xo5kqSWJhgxqNXi
	MRexJzFy0GZTO6JElULJdJ3MHM7obBNmNiodqK80CFzX2lepoNmb2JN7RElA8lf7vbqd
	LhhwMH4LWvryHvOSOKlfy2r54y/r5Dvdxdi34BDSDEXs6LYBpjax4Nna83rn3mf4x7jY
	Ti4Qo5LhOXdzQRZwKMurPCJZmOEJSIfkiYfRjOhqtDIj8NL3VyI4aY1H/pEFfja41xj4
	kaydZI6Le2zICd6umju+3gz7FPuJ/2xdVsXdSB7y+4hBNyeynybHGYq51WOfZqR99wEz
	KbOA==
X-Gm-Message-State: APjAAAX2GKY1opFFazsUThK15acxyym1tIYTPYL5Qto3IjC0Q4AYcv1G
	ZHvmQRSJZjqSNco7B3t3ooPVsa01mT9PqVGzJrA08mXPvvk=
X-Google-Smtp-Source: APXvYqx6oLJUpegX4CJ8fkfDuneW9tnGQNGiEIWypMvowb1ToplIpQrETGwWCI4K1Wbsmw4dz/20GWvThrcSvzZ3BV4=
X-Received: by 2002:a19:c3d3:: with SMTP id t202mr10150756lff.48.1566901608715;
	Tue, 27 Aug 2019 03:26:48 -0700 (PDT)
MIME-Version: 1.0
From: Prawn Hongs <prawnhongs@gmail.com>
Date: Tue, 27 Aug 2019 20:26:09 +1000
Message-ID: <CADVHQEjhRe4J22d2+G9bjfVto7P6fq87J_xXk7XvqmNs0eE=Ew@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: SUMO - XT_NAT module - SNAT, DNAT symbols missing
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
X-List-Received-Date: Tue, 27 Aug 2019 10:26:51 -0000
Content-Type: multipart/alternative; boundary="000000000000c91a5e059116b59a"

--000000000000c91a5e059116b59a
Content-Type: text/plain; charset="UTF-8"

Hi Everyone,

I am using SUMO Yocto version to build for zynq machine type.
I am facing problems related to CONNTRACK SNAT, DNAT. I want to know in
this forum like is there a known issue in the kernel version supported in
SUMO.
I have tried various IP table options but I couldn't get the SNAT, DNAT
symbols identified. Here is what I am trying -

# iptables  -A FORWARD -m conntrack --ctstate SNAT,DNAT -j ACCEPT
iptables: No chain/target/match by that name

Here is my lsmod -


$ lsmod
Module                  Size  Used by
iptable_nat            16384  0
nf_conntrack_ipv4      16384  1
nf_defrag_ipv4         16384  1 nf_conntrack_ipv4
nf_nat_ipv4            16384  1 iptable_nat
ipt_MASQUERADE         16384  0
nf_nat_masquerade_ipv4    16384  1 ipt_MASQUERADE
nf_nat                 28672  2 nf_nat_masquerade_ipv4,nf_nat_ipv4
nf_conntrack          139264  5
nf_conntrack_ipv4,ipt_MASQUERADE,nf_nat_masquerade_ipv4,nf_nat_ipv4,nf_nat
iptable_filter         16384  0
ip_tables              20480  2 iptable_filter,iptable_nat
x_tables               24576  3 ip_tables,iptable_filter,ipt_MASQUERADE
fanctl                 45056  0
rtc                    16384  0
cardirq                20480  0

Has anybody faced similar problems? Is it a known problem in the

kernel version supported by SUMO.

--000000000000c91a5e059116b59a
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi Everyone,<div><br></div><div>I am using SUMO Yocto vers=
ion to build for zynq machine type.</div><div>I am facing problems related =
to CONNTRACK SNAT, DNAT. I want to know in this forum like is there a known=
 issue in the kernel version supported in SUMO.</div><div>I have tried vari=
ous IP table options but I couldn&#39;t get the SNAT, DNAT symbols identifi=
ed. Here is what I am trying -=C2=A0</div><div><br></div><div><pre style=3D=
"margin-top:0px;margin-bottom:1em;padding:12px 8px;border:0px;font-variant-=
numeric:inherit;font-variant-east-asian:inherit;font-stretch:inherit;line-h=
eight:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,=
&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Ve=
ra Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;font-size:1=
3px;vertical-align:baseline;box-sizing:inherit;width:auto;max-height:600px;=
overflow:auto;background-color:rgb(239,240,241);border-radius:3px;color:rgb=
(36,39,41)"><code style=3D"margin:0px;padding:0px;border:0px;font-style:inh=
erit;font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-hei=
ght:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&q=
uot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera=
 Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;vertical-alig=
n:baseline;box-sizing:inherit;white-space:inherit"># iptables  -A FORWARD -=
m conntrack --ctstate SNAT,DNAT -j ACCEPT
iptables: No chain/target/match by that name</code></pre><pre style=3D"marg=
in-top:0px;margin-bottom:1em;padding:12px 8px;border:0px;font-variant-numer=
ic:inherit;font-variant-east-asian:inherit;font-stretch:inherit;line-height=
:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot=
;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sa=
ns Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;font-size:13px;v=
ertical-align:baseline;box-sizing:inherit;width:auto;max-height:600px;overf=
low:auto;background-color:rgb(239,240,241);border-radius:3px;color:rgb(36,3=
9,41)"><code style=3D"margin:0px;padding:0px;border:0px;font-style:inherit;=
font-variant:inherit;font-weight:inherit;font-stretch:inherit;line-height:i=
nherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;L=
iberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans=
 Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;vertical-align:bas=
eline;box-sizing:inherit;white-space:inherit">Here is my lsmod -</code></pr=
e><pre style=3D"margin-top:0px;margin-bottom:1em;padding:12px 8px;border:0p=
x;font-variant-numeric:inherit;font-variant-east-asian:inherit;font-stretch=
:inherit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida=
 Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&qu=
ot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-se=
rif;font-size:13px;vertical-align:baseline;box-sizing:inherit;width:auto;ma=
x-height:600px;overflow:auto;background-color:rgb(239,240,241);border-radiu=
s:3px;color:rgb(36,39,41)"><code style=3D"margin:0px;padding:0px;border:0px=
;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stretch:i=
nherit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida C=
onsole&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot=
;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-seri=
f;vertical-align:baseline;box-sizing:inherit;white-space:inherit">

<pre style=3D"margin-top:0px;margin-bottom:1em;padding:12px 8px;border:0px;=
font-variant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:i=
nherit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida C=
onsole&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot=
;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-seri=
f;vertical-align:baseline;box-sizing:inherit;width:auto;max-height:600px;ov=
erflow:auto;border-radius:3px"><code style=3D"margin:0px;padding:0px;border=
:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;font-stret=
ch:inherit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Luci=
da Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&=
quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-=
serif;vertical-align:baseline;box-sizing:inherit;white-space:inherit">$ lsm=
od
Module                  Size  Used by
iptable_nat            16384  0
nf_conntrack_ipv4      16384  1
nf_defrag_ipv4         16384  1 nf_conntrack_ipv4
nf_nat_ipv4            16384  1 iptable_nat
ipt_MASQUERADE         16384  0
nf_nat_masquerade_ipv4    16384  1 ipt_MASQUERADE
nf_nat                 28672  2 nf_nat_masquerade_ipv4,nf_nat_ipv4
nf_conntrack          139264  5 nf_conntrack_ipv4,ipt_MASQUERADE,nf_nat_mas=
querade_ipv4,nf_nat_ipv4,nf_nat
iptable_filter         16384  0
ip_tables              20480  2 iptable_filter,iptable_nat
x_tables               24576  3 ip_tables,iptable_filter,ipt_MASQUERADE
fanctl                 45056  0
rtc                    16384  0
cardirq                20480  0</code></pre><pre style=3D"margin-top:0px;ma=
rgin-bottom:1em;padding:12px 8px;border:0px;font-variant-numeric:inherit;fo=
nt-variant-east-asian:inherit;font-stretch:inherit;line-height:inherit;font=
-family:Consolas,Menlo,Monaco,&quot;Lucida Console&quot;,&quot;Liberation M=
ono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bitstream Vera Sans Mono&quot;=
,&quot;Courier New&quot;,monospace,sans-serif;vertical-align:baseline;box-s=
izing:inherit;width:auto;max-height:600px;overflow:auto;border-radius:3px">=
Has anybody faced similar problems? Is it a known problem in the</pre><pre =
style=3D"margin-top:0px;margin-bottom:1em;padding:12px 8px;border:0px;font-=
variant-numeric:inherit;font-variant-east-asian:inherit;font-stretch:inheri=
t;line-height:inherit;font-family:Consolas,Menlo,Monaco,&quot;Lucida Consol=
e&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&quot;,&quot;Bits=
tream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospace,sans-serif;ver=
tical-align:baseline;box-sizing:inherit;width:auto;max-height:600px;overflo=
w:auto;border-radius:3px">kernel version supported by SUMO.</pre>
</code></pre><pre style=3D"margin-top:0px;margin-bottom:1em;padding:12px 8p=
x;border:0px;font-variant-numeric:inherit;font-variant-east-asian:inherit;f=
ont-stretch:inherit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&=
quot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mon=
o&quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monosp=
ace,sans-serif;font-size:13px;vertical-align:baseline;box-sizing:inherit;wi=
dth:auto;max-height:600px;overflow:auto;background-color:rgb(239,240,241);b=
order-radius:3px;color:rgb(36,39,41)"><code style=3D"margin:0px;padding:0px=
;border:0px;font-style:inherit;font-variant:inherit;font-weight:inherit;fon=
t-stretch:inherit;line-height:inherit;font-family:Consolas,Menlo,Monaco,&qu=
ot;Lucida Console&quot;,&quot;Liberation Mono&quot;,&quot;DejaVu Sans Mono&=
quot;,&quot;Bitstream Vera Sans Mono&quot;,&quot;Courier New&quot;,monospac=
e,sans-serif;vertical-align:baseline;box-sizing:inherit;white-space:inherit=
"><br></code></pre></div></div>

--000000000000c91a5e059116b59a--
