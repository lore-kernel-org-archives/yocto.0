Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 91BE7E00DC9; Tue,  5 Jul 2016 08:24:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.175 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f175.google.com (mail-qt0-f175.google.com
	[209.85.216.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E04CE00D8F
	for <yocto@yoctoproject.org>; Tue,  5 Jul 2016 08:24:13 -0700 (PDT)
Received: by mail-qt0-f175.google.com with SMTP id w59so102566662qtd.3
	for <yocto@yoctoproject.org>; Tue, 05 Jul 2016 08:24:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=mclKoU7KZox+xa3GPYDKsPM9BojjcMaPVbL8aguRO/A=;
	b=Z6oxYk2xJtDFh36Soofe/CK92ii/+oiLA1231XaRl/7mTZ3GqLepH9rNPtx6cu3Pj5
	K+swNDTcBuhD/mEUp4/4S6kA+zyc45L998z6tBCBJJMwOeD/+braJcRFKMlRAtSPNV/j
	Omyrbtx3VGdVmygIveBD6GC9APIpBSHYDzVkBM6aJWKupR+nbXWY7EetisnFIgQCZKkg
	km/9HyTo2/j6+TXAxqCaT9cUsumr0Gu+jLh40Hq89BA2XYmjXeN3koKGQk3P49kaZ5OO
	hkvC1QVslN2x1GEv3TeO2X0qSjPgMuYuh4/EtCo2kLWIhS8kspbKvD8cOtl60vC2y1dr
	uNPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=mclKoU7KZox+xa3GPYDKsPM9BojjcMaPVbL8aguRO/A=;
	b=TZczQ8l/x6LTOqJ8c7W0v4GzL/MfPltWhOW9xSj17trzFKfFbwF7G7taH0MQ5lpFv2
	2H37skdKRRd85BS8owi5QQAnFqxkCmElCBIceNuO/mU+cMPjgRDJ1oB+6KhXE25Flsoz
	11dp0KsxVNlSPXcrT+hQFpRnPqoA1KJwVz7EAjVPvcBSx0NhS6h26939oueifWbOmhPb
	3/4loI7MvuQMMAqloY+d3rPs/ciIyg8JTL3miiEXpdpBuwy9oPFDtjNMNS+rs9K5gt2h
	T1b4R5e2u7uBiwiJe70zrJ+raTx2y33uvw+J/XKy4MMbVwx7GSuSNv1iZTtcKsdsapiQ
	z/RA==
X-Gm-Message-State: ALyK8tLYXxyZaeaqG3dPSzpmEXa4p0wJ282K4yZFNgYMhFuksJt8Szjt8gkydyeP250S6MUsbLO50zyPuqAFlw==
X-Received: by 10.200.50.77 with SMTP id y13mr27277445qta.5.1467732252316;
	Tue, 05 Jul 2016 08:24:12 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Tue, 5 Jul 2016 08:23:42 -0700 (PDT)
In-Reply-To: <dd76bbae443f4c82a36406a58e07e665@XCH-ALN-006.cisco.com>
References: <cebe898af3ab435595255b7915ba3e38@XCH-ALN-006.cisco.com>
	<CAJTo0LZq6EOSZuD7KFd4EP1TMkoST4MTSCyejs3cgjgE1vj7_Q@mail.gmail.com>
	<dd76bbae443f4c82a36406a58e07e665@XCH-ALN-006.cisco.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 5 Jul 2016 08:23:42 -0700
Message-ID: <CAMKF1spbNRpm+uERMdoVwbEYEO8_UJNoNB4N-DGjQL8MQzWmtA@mail.gmail.com>
To: "Chandra Mishra (chanmish)" <chanmish@cisco.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: yocto build cross toolchain issue
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
X-List-Received-Date: Tue, 05 Jul 2016 15:24:16 -0000
X-Groupsio-MsgNum: 30895
Content-Type: multipart/related; boundary=001a113ff17086891a0536e50b75

--001a113ff17086891a0536e50b75
Content-Type: multipart/alternative; boundary=001a113ff1708689180536e50b74

--001a113ff1708689180536e50b74
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Jul 5, 2016 at 3:06 AM, Chandra Mishra (chanmish) <
chanmish@cisco.com> wrote:

> Thanks Ross for your suggestion. It worked for me. But in the past it
> worked for me with old sequence but different gcc cross toolchain, so not
> thinking of changing the order.
>


why wont you change the order.=E2=80=8B Whats depending on it ?



>
>
> Regards,
>
> [image:
> http://www.cisco.com/c/dam/assets/email-signature-tool/logo_01.png?ct=3D1=
443872971831]
>
> *Chandra Mishra*
> ENGINEER.DIAGNOSTIC ENGINEERING
>
> *chanmish@cisco.com <chanmish@cisco.com>*
> Phone: *+91 80 4429 1490 <%2B91%2080%204429%201490>*
>
> *Cisco Systems, Inc.*
> Cessna Business Park, Kadubeesanahalli Varthur Hobli, Sarjapur Marathalli
> ORR
> BANGALORE
> 560 087
> India
> cisco.com <http://www.cisco.com/>
>
>
>
> [image: http://www.cisco.com/assets/swa/img/thinkbeforeyouprint.gif]Think
> before you print.
>
> This email may contain confidential and privileged material for the sole
> use of the intended recipient. Any review, use, distribution or disclosur=
e
> by others is strictly prohibited. If you are not the intended recipient (=
or
> authorized to receive for the recipient), please contact the sender by
> reply email and delete all copies of this message.
>
> Please click here
> <http://www.cisco.com/web/about/doing_business/legal/cri/index.html> for
> Company Registration Information.
>
>
>
>
>
> *From:* Burton, Ross [mailto:ross.burton@intel.com]
> *Sent:* 05 July 2016 14:59
> *To:* Chandra Mishra (chanmish) <chanmish@cisco.com>
> *Cc:* yocto@yoctoproject.org
> *Subject:* Re: [yocto] yocto build cross toolchain issue
>
>
>
>
>
> On 5 July 2016 at 10:20, Chandra Mishra (chanmish) <chanmish@cisco.com>
> wrote:
>
>  * -Wl,-O1 -Wl,--hash-style=3Dgnu -Wl,--as-needed -static -lnsl -lpthread
> -lm -lrt*
>
> *<TOOLCHAIN_PATH>/sysroots/corei7-64-poky-linux/usr/lib/../lib/librt.a(sh=
m_open.o):
> In function `shm_open':                               *
>
> *<SDK BUILD
> PATH>/build/tmp/work/corei7-64-poky-linux/glibc/2.22-r0/git/rt/../sysdeps=
/posix/shm_open.c:35:
> undefined reference to `__shm_directory'               *
>
>
> At a guess this is due to --as-needed dropping symbols as unused which
> then are used, because --as-needed needs a sorted library list.  Either
> remove --as-needed, or try reordering the libraries so that dependencies
> are in order.
>
>
>
>
> https://wiki.gentoo.org/wiki/Project:Quality_Assurance/As-needed#Importan=
ce_of_linking_order
> has more context.
>
>
>
> In this case I'd start with moving -lpthread to the end of the link line.
>
>
>
> Ross
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

--001a113ff1708689180536e50b74
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div class=3D"gmail_default" style=3D"font-family:monospac=
e,monospace"><br></div><div class=3D"gmail_extra"><br><div class=3D"gmail_q=
uote">On Tue, Jul 5, 2016 at 3:06 AM, Chandra Mishra (chanmish) <span dir=
=3D"ltr">&lt;<a href=3D"mailto:chanmish@cisco.com" target=3D"_blank">chanmi=
sh@cisco.com</a>&gt;</span> wrote:<br><blockquote class=3D"gmail_quote" sty=
le=3D"margin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex">





<div lang=3D"EN-US" link=3D"blue" vlink=3D"purple">
<div>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Thanks Ross for your suggestion. It w=
orked for me. But in the past it worked for me with old sequence but differ=
ent gcc cross toolchain, so not thinking of changing
 the order.=C2=A0</span></p></div></div></blockquote><div><br></div><div><b=
r></div><div><div class=3D"gmail_default" style=3D"font-family:monospace,mo=
nospace">why wont you change the order.=E2=80=8B Whats depending on it ?</d=
iv><br></div><div>=C2=A0</div><blockquote class=3D"gmail_quote" style=3D"ma=
rgin:0 0 0 .8ex;border-left:1px #ccc solid;padding-left:1ex"><div lang=3D"E=
N-US" link=3D"blue" vlink=3D"purple"><div><p class=3D"MsoNormal"><span styl=
e=3D"font-size:11.0pt;font-family:&quot;Calibri&quot;,sans-serif;color:#1f4=
97d"> <u></u><u></u></span></p><span class=3D"">
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d">Regards,<u></u><u></u></span></p>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"950" style=
=3D"width:407.25pt">
<tbody>
<tr>
<td style=3D"padding:0cm 0cm 0cm 0cm">
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"950" style=
=3D"width:407.25pt">
<tbody>
<tr>
<td colspan=3D"3" style=3D"padding:0cm 0cm 0cm 0cm">
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><img width=3D"193" hei=
ght=3D"128" src=3D"cid:image005.png@01D1D6D3.068CF680" alt=3D"http://www.ci=
sco.com/c/dam/assets/email-signature-tool/logo_01.png?ct=3D1443872971831"><=
u></u><u></u></span></p>
</td>
</tr>
<tr>
<td nowrap valign=3D"top" style=3D"padding:0cm 0cm 0cm 18.0pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.5pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#666666">Chandra Mishra</span></b><span style=
=3D"font-size:8.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#666666"=
><br>
ENGINEER.DIAGNOSTIC ENGINEERING<br>
<br>
<u><a href=3D"mailto:chanmish@cisco.com" target=3D"_blank">chanmish@cisco.c=
om</a></u><br>
Phone: <b><a href=3D"tel:%2B91%2080%204429%201490" value=3D"+918044291490" =
target=3D"_blank">+91 80 4429 1490</a></b><u></u><u></u></span></p>
</td>
<td width=3D"50%" valign=3D"top" style=3D"width:50.0%;padding:11.25pt 0cm 7=
.5pt 15.0pt">
<p class=3D"MsoNormal"><b><span style=3D"font-size:8.5pt;font-family:&quot;=
Arial&quot;,sans-serif;color:#666666">Cisco Systems, Inc.</span></b><span s=
tyle=3D"font-size:8.5pt;font-family:&quot;Arial&quot;,sans-serif;color:#666=
666"><br>
Cessna Business Park, Kadubeesanahalli Varthur Hobli, Sarjapur Marathalli O=
RR<br>
BANGALORE<br>
560 087<br>
India<br>
<a href=3D"http://www.cisco.com/" target=3D"_blank"><span style=3D"color:#6=
66666">cisco.com</span></a><u></u><u></u></span></p>
</td>
<td style=3D"padding:0cm 0cm 0cm 0cm"></td>
</tr>
<tr>
<td colspan=3D"3" style=3D"padding:0cm 0cm 0cm 0cm"></td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<table border=3D"0" cellspacing=3D"0" cellpadding=3D"0" width=3D"700" style=
=3D"width:300.0pt">
<tbody>
<tr>
<td style=3D"padding:3.75pt 15.0pt 0cm 18.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#009900"><img border=3D"0" width=3D"32" height=3D=
"33" src=3D"cid:image006.png@01D1D6D3.068CF680" alt=3D"http://www.cisco.com=
/assets/swa/img/thinkbeforeyouprint.gif">Think
 before you print.<u></u><u></u></span></p>
</td>
</tr>
<tr>
<td style=3D"padding:5.25pt 15.0pt 4.5pt 18.0pt">
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#999999">This email may contain confidential and =
privileged material for the sole use of the intended recipient.
 Any review, use, distribution or disclosure by others is strictly prohibit=
ed. If you are not the intended recipient (or authorized to receive for the=
 recipient), please contact the sender by reply email and delete all copies=
 of this message.<u></u><u></u></span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:7.5pt;font-family:&quot;Ari=
al&quot;,sans-serif;color:#999999">Please
<a href=3D"http://www.cisco.com/web/about/doing_business/legal/cri/index.ht=
ml" title=3D"Legal Information" target=3D"_blank">
<span style=3D"color:#0e58a0">click here</span></a> for Company Registratio=
n Information.<u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u><u></u></span></p>
</td>
</tr>
</tbody>
</table>
<p class=3D"MsoNormal"><span lang=3D"EN-GB" style=3D"font-size:11.0pt;font-=
family:&quot;Calibri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></=
span></p>
<p class=3D"MsoNormal"><span style=3D"font-size:11.0pt;font-family:&quot;Ca=
libri&quot;,sans-serif;color:#1f497d"><u></u>=C2=A0<u></u></span></p>
</span><p class=3D"MsoNormal"><b><span style=3D"font-size:11.0pt;font-famil=
y:&quot;Calibri&quot;,sans-serif">From:</span></b><span style=3D"font-size:=
11.0pt;font-family:&quot;Calibri&quot;,sans-serif"> Burton, Ross [mailto:<a=
 href=3D"mailto:ross.burton@intel.com" target=3D"_blank">ross.burton@intel.=
com</a>]
<br>
<b>Sent:</b> 05 July 2016 14:59<br>
<b>To:</b> Chandra Mishra (chanmish) &lt;<a href=3D"mailto:chanmish@cisco.c=
om" target=3D"_blank">chanmish@cisco.com</a>&gt;<br>
<b>Cc:</b> <a href=3D"mailto:yocto@yoctoproject.org" target=3D"_blank">yoct=
o@yoctoproject.org</a><br>
<b>Subject:</b> Re: [yocto] yocto build cross toolchain issue<u></u><u></u>=
</span></p><div><div class=3D"h5">
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
<div>
<p class=3D"MsoNormal">On 5 July 2016 at 10:20, Chandra Mishra (chanmish) &=
lt;<a href=3D"mailto:chanmish@cisco.com" target=3D"_blank">chanmish@cisco.c=
om</a>&gt; wrote:<u></u><u></u></p>
<blockquote style=3D"border:none;border-left:solid #cccccc 1.0pt;padding:0c=
m 0cm 0cm 6.0pt;margin-left:4.8pt;margin-right:0cm">
<p><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,sans-serif;co=
lor:#3d3d3d">=C2=A0</span><strong><span lang=3D"EN" style=3D"font-family:&q=
uot;Calibri&quot;,sans-serif;color:#1f497d"> -Wl,-O1 -Wl,--hash-style=3Dgnu=
 -Wl,--as-needed -static -lnsl -lpthread -lm -lrt</span></strong><span lang=
=3D"EN" style=3D"font-family:&quot;Calibri&quot;,sans-serif;color:#1f497d">=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0
</span><u></u><u></u></p>
<p><strong><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:#1f497d">&lt;TOOLCHAIN_PATH&gt;/sysroots/corei7-64-poky-linux/u=
sr/lib/../lib/librt.a(shm_open.o): In function `shm_open&#39;:=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0
</span></strong><u></u><u></u></p>
<p><strong><span lang=3D"EN" style=3D"font-family:&quot;Calibri&quot;,sans-=
serif;color:#1f497d">&lt;SDK BUILD PATH&gt;/build/tmp/work/corei7-64-poky-l=
inux/glibc/2.22-r0/git/rt/../sysdeps/posix/shm_open.c:35: undefined referen=
ce to `__shm_directory&#39;=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0</span></strong><u></u><u></u></p=
>
</blockquote>
</div>
<p class=3D"MsoNormal"><br>
At a guess this is due to --as-needed dropping symbols as unused which then=
 are used, because --as-needed needs a sorted library list.=C2=A0 Either re=
move --as-needed, or try reordering the libraries so that dependencies are =
in order.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><a href=3D"https://wiki.gentoo.org/wiki/Project:Qual=
ity_Assurance/As-needed#Importance_of_linking_order" target=3D"_blank">http=
s://wiki.gentoo.org/wiki/Project:Quality_Assurance/As-needed#Importance_of_=
linking_order</a> has more context.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">In this case I&#39;d start with moving -lpthread to =
the end of the link line.<u></u><u></u></p>
</div>
<div>
<p class=3D"MsoNormal"><u></u>=C2=A0<u></u></p>
</div>
<div>
<p class=3D"MsoNormal">Ross<u></u><u></u></p>
</div>
</div>
</div></div></div>
</div>

<br>--<br>
_______________________________________________<br>
yocto mailing list<br>
<a href=3D"mailto:yocto@yoctoproject.org">yocto@yoctoproject.org</a><br>
<a href=3D"https://lists.yoctoproject.org/listinfo/yocto" rel=3D"noreferrer=
" target=3D"_blank">https://lists.yoctoproject.org/listinfo/yocto</a><br>
<br></blockquote></div><br></div></div>

--001a113ff1708689180536e50b74--

--001a113ff17086891a0536e50b75
Content-Type: image/png; name="image006.png"
Content-Disposition: inline; filename="image006.png"
Content-Transfer-Encoding: base64
Content-ID: <image006.png@01D1D6D3.068CF680>
X-Attachment-Id: 899dab3dcc22baff_0.0.2

iVBORw0KGgoAAAANSUhEUgAAACAAAAAhCAMAAACP+FljAAAAAXNSR0ICQMB9xQAAAtxQTFRFG5Yb
AJAAAIkAAJYAF5wXAJQABJcEA5oDAI4ABJoEAIwAAZgBAJUAC5kLAJgAAJoAGJ8YGJ0YAJkABpYG
Ep8SAJIAAJcADJsMGp8aEZ4RAIoAAI8AAZQBCpYKAJEABJsEAIsACJwIAJMAAI0AAIgAEZoRDJ4M
E50TE5oTB5gHApkCBZcFBJUEEJgQAZcBB5wHBZsFG50bEJ8QCJoIH6UfHKMcHKQcH6IfFaIVEKAQ
FqIWE6ETG6QbG6MbHaQdPrI+LactIKEgIaUhI6EjLqcuIKQgJ6YnPLA8Pq0+MqoyMa0xJKgkL6wv
MKwwJ6knM64zNK40LqsuNa41PbE9KakpPa89Nq42NK00N683JaglN6o3Q7BDSrdKWrtaWr1aUrZS
W71bW7pbTbZNRbVFXL1cWLxYWb1ZQbFBX75fX7pfX79fUbpRTbhNTrhORrVGRbRFSLNISbJJUbZR
esp6asNqeMd4a8JreMl4asJqf8x/ccVxe8l7d8l3ccRxfMd8ecR5dsh2dsl2bcVtZsJmZMFkbcRt
b8Vvdcd1dcN1dch1esd6c8dze8p7jtKOktSSjtCOjM+MiNCImteanNicgc2BgMyAgcyBnNecntie
ndidltWWhM6El9WXn9mfn9efn9WfmdaZgs2Chs+Gj9KPhs6GpNukotOio9qjptumrd6tptymp9yn
sN+wq92rrt+uqt2qqNyootqiotmiotaiteK1s+CzuOK4suCyt+K3uuO6v+a/tuK2u+S73vPey+rL
2e/ZwebBz+zP3PLc3/LfzuzOxujG1u/WxOjE3vLe1+/X2/Db3PHc2vDa2u/a2O/Y2O7Y2fDZ3fHd
3fLd0e3R8vry+v368frx9fv1/f794/Tj4vPi7/nv9/z39Pv07Pfs5PTk/v/+4fPh6vfq5vXm/v7+
7fjt6/fr5/Xn7fft+/779vz28vny6vbq4vTi6Pbo6fbp+/378/rz9/v3////k5n9hwAAAAlwSFlz
AAAZ1gAAGdYBGNHK7QAAABl0RVh0U29mdHdhcmUATWljcm9zb2Z0IE9mZmljZX/tNXEAAAJKSURB
VDjLY/hMADBgEdu7dNmWK7gVXL3Wa8Jgv/X6DVwK9hU7MDIxR/fdxKVgWwwLMyubY8l+XApubY9l
5zAtPXAbl4I7B8s4uZz6D+F05IE4Z24eXpfyw9gV3Fwez83Ix8/DKFCx4y42BUcSBHmYhYT4mIVd
K+9hU3B/RaIID58QM7Nb1U6sJjx4OMFMVEyIh9V95SOsbng80UOcmU9ITEwiadUDTAV3j1ZLSkkz
C/Hz8XBxeU469gRdweMacxlWMSEQYGaV9ZqMoeDB6tq6KVOT2eUsUqZMq284DrLi6bPnj58/egoB
j06cPHX6TKO8gvf006fPnrsFFGJoak5ITWtpbWoFgbbiKVNgJgAZDUBRBmZLH18/RSU5JTBgBQMe
iDOE+ICAQcF/xpqZAcoqygjAyMrHxyoKBQxy6WtffF6XkZkFAQnZOTm5eVai0qKiwAAFAgZm1cBZ
L++dO38OAi6cOnPh3NE0PiWwDSAFQqKiQbPnzIWAefN3gb27u72jszOYWY6PH6iAT4xdzdIaAtQ1
8ve8AiXcK6+vXFkQIivGB1TAL8QjBwPSHJoFC95AQ+3tjEItVj4GmHcgQIiRI+YMPGAXyjNCFCAB
Rq7k/XAFi1AVAO1ilNYOXfwOKn1xfRE7K1wBn5gY0EVsOmFr33+AKtgQrqsHciRYs5gSIyOXUkRX
3dxrcAsm63Mx80MV8BlY29gaRvZ+/HQVnj3eLzGSExOCKBBjteveuGnz6ktISeNyT5QxMO1BFDAz
eh1Fzz9rzBR4+IFyAGOWZdXd7TboAAAAAElFTkSuQmCC

--001a113ff17086891a0536e50b75
Content-Type: image/png; name="image005.png"
Content-Disposition: inline; filename="image005.png"
Content-Transfer-Encoding: base64
Content-ID: <image005.png@01D1D6D3.068CF680>
X-Attachment-Id: 899dab3dcc22baff_0.0.1

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

--001a113ff17086891a0536e50b75--
