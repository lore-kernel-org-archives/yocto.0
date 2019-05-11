Return-Path: <madhukanthk@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0B6AFE00D51; Sat, 11 May 2019 13:32:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (madhukanthk[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [74.6.130.41 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from sonic308-2.consmr.mail.bf2.yahoo.com
	(sonic308-2.consmr.mail.bf2.yahoo.com [74.6.130.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B9AB8E00BE9
	for <yocto@yoctoproject.org>; Sat, 11 May 2019 13:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s2048;
	t=1557606740; bh=9Zidid4Cfmxr/fW/HHt3GL7rGC4S6/raJTF9d6VXBa4=;
	h=Date:From:Reply-To:To:Cc:In-Reply-To:References:Subject:From:Subject;
	b=l9a3n7FqUeP7kdlbbECfw8MrQ58oxXHncnAFIr167cyKW9Ks/3UOh2Iv0692oLp7ACrr0RkJtlBKRl0z+Xh58Azqhv+XN3CumABrMKrMbo8zICqEFHD2DWlY+WSJrOh+EtGZRb0Dtv6iYdDLM6enaYlYEFWJsGWVqo2nK/2svTc489RKFnFfGw4l+jRg3wROFbpVqLxU9TMSzw4HpPvNziYLNb7V7lvXRNUONduqwCvCwgo3aSdPDLVRiWfJ+wldABhzoZEdB6WXT7kLzuM4ERyyO4tHm7yf9rwvPcgmNv+zcaHxlZhbtcEzzodXCuMTKnG+jinNjvcDTcHqE6fkrA==
X-YMail-OSG: jlj3rx8VM1lcP3K5Oyc8.DgLJTN9tSgbRyYZgB.IwPsmkN4y76ynCNgSlljUSqJ
	evJijj_VTLk59Tewgd5N_58z1mUtgz_G3ASRUl02Ttj.zZ9snIPQHqN1CsIv3_BH5M0r.PONLVA7
	D4hPOb1XXf40fiSt0Swe3GB_6gO6IVwWOvnQx6c0QEI6OEGO9L911sh612oP42n_VhKkKvk9i4Nl
	Cfqppy1j54ckRdmCrKfKLLHtW0f2F0QzhEJiFItmkSayCHRrA1YRrvriXpgJ.fKEovQ7RtqUs5kY
	gPKhuTRkl9_VIlOM6ZVtAhu0eyEFWPM2vobMZAK2HfXu26qRvIK4Nq0CbM9VZH0sYHL5EdhEU5Vk
	A9r_XERiLdn7L8kglX6PwHpKQ9Mimtv4ic1LWiNSpsjPXS5tOOQmNREGdaoroXnB0xdpuTLKmr6W
	tiSuYAITXrs1E_8rYudgboQ7ZhkPUbJUzz2h2f.P9rUlaaw.LV16gghjHrP8BQ3tH7fQrxPPPSJc
	_mviUycmT3boWqCUUUBul96Mw2XYn.KtMnwB1EXW1CH.zGuQT35exdF9yJmpGliaqgTkYZZY7LgM
	f02.x1M2DYRUTZftzYrJySFmq8rXFnhO_FgoAKLbEMfgsBeitLZqiQ_E74Q4Ye6ykGowe_vAkMbH
	9C3LMATh2TeOEcZWSwfb95DQatxf5NA_mUOzYfW3sTRmEy2w9RUielrUS8uvHuB_VwhsDDeyUHL8
	1OJRxwv9YcaZNy_rJGd2EcCSEQL3000emSY2nTxT4xzLs6890it3hgltgBvTFMK_meXzbhO92ovA
	nCvDQgzCHMV6egGtAbU9xtL63sDdEEive7dCR9jtMa6_Dl4hTmZ2H_N458ZMKWDsS1oMmD4q6TaI
	13NHxnKwDFzqbcopCt.67pqXcaBBIPpp0MgLRB3G._PCKVZC.I9fE_VM5HxAsxSKBpoY_dYP0Nnu
	FMHuUkiSBNjZVCS4pDxgx9MH3o0HDc5A.8AFh7b8gKB3ZojOFI0mM48CRS0hjR5WaGjGvTxLIvDb
	fwqgOuV8vV6bjm6cjJJixb1Ov1pKEMZ1CTnUJrDteP21g6CNRUi8pI8XwqVINwUdm_8uLaCxJ5_Y
	gBfbuc1XxPVG6VTLOAJUYkWn.ebv_wHd9G2jvX6J0qfvxnYdBa638yYMbs_hd0wAEPZKGgchAtie
	ij5GFEafAqhBtawhuIzN8NXXu_A--
Received: from sonic.gate.mail.ne1.yahoo.com by
	sonic308.consmr.mail.bf2.yahoo.com with HTTP;
	Sat, 11 May 2019 20:32:20 +0000
Date: Sat, 11 May 2019 20:32:20 +0000 (UTC)
From: Madhu Krishnamurthy <madhukanthk@yahoo.com>
To: "Burton, Ross" <ross.burton@intel.com>
Message-ID: <960266067.2951469.1557606740217@mail.yahoo.com>
In-Reply-To: <CAJTo0LZa2vc8CDQCdqYSZTTSzdo+PG6fMnxb5NLisvwKxMJEBQ@mail.gmail.com>
References: <230317904.2732545.1557532426303.ref@mail.yahoo.com>
	<230317904.2732545.1557532426303@mail.yahoo.com>
	<CAJTo0LZa2vc8CDQCdqYSZTTSzdo+PG6fMnxb5NLisvwKxMJEBQ@mail.gmail.com>
MIME-Version: 1.0
X-Mailer: WebService/1.1.13583 YahooMailNeo Mozilla/5.0 (Windows NT 6.1; Win64;
	x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131
	Safari/537.36
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How do I include all packages under a layer ?
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Madhu Krishnamurthy <madhukanthk@yahoo.com>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Sat, 11 May 2019 20:32:23 -0000
Content-Type: multipart/alternative; 
	boundary="----=_Part_2951468_1488890076.1557606740215"

------=_Part_2951468_1488890076.1557606740215
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Thanks Ross. The idea of more packages getting pulled in due to dependencie=
s is going to help me.=C2=A0I needed many packages under recipes-devtools. =
So I thought it might be better to pull them all instead of listing each on=
e of them.=C2=A0
After seeing your response I realize that I will end up with 3 package mana=
gers.=C2=A0 So I will just chose one.
If I have to chose just one, will any one of them (say apt)=C2=A0 work? I s=
omehow had come to believe that you can only use opkg in Yocto.=C2=A0
thanks and best regardsMadhu



      From: "Burton, Ross" <ross.burton@intel.com>
 To: Madhu Krishnamurthy <madhukanthk@yahoo.com>=20
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
 Sent: Saturday, May 11, 2019 8:35 AM
 Subject: Re: [yocto] How do I include all packages under a layer ?
  =20
On Sat, 11 May 2019 at 00:54, Madhu Krishnamurthy <madhukanthk@yahoo.com> w=
rote:
> Do I have to specify every package or is there a way I can add all packag=
es inside a layer?
> For example, how do I add all packages from inside poky/meta to my image?
> Or at least how do I add all packages under poky/meta/recipes-devtools ?

You need to list them explicitly.=C2=A0 Some layers have packagegroups that
pull in all the dependencies if that makes sense, but adding "all of
oe-core/recipes-devtools" would be odd: you'd have three package
managers for a start.

Ross


  =20

------=_Part_2951468_1488890076.1557606740215
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><head></head><body><div style=3D"color:#000; background-color:#fff; f=
ont-family:Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;font=
-size:16px"><div id=3D"yui_3_16_0_ym19_1_1557526187761_82162" dir=3D"ltr"><=
span id=3D"yui_3_16_0_ym19_1_1557526187761_82223">Thanks Ross. The idea of =
more packages getting pulled in due to dependencies is going to help me.&nb=
sp;</span></div><div id=3D"yui_3_16_0_ym19_1_1557526187761_82162" dir=3D"lt=
r"><span id=3D"yui_3_16_0_ym19_1_1557526187761_82318">I needed many package=
s under recipes-devtools. So I thought it might be better to pull them all =
instead of listing each one of them.&nbsp;</span></div><div id=3D"yui_3_16_=
0_ym19_1_1557526187761_82162" dir=3D"ltr"><span><br></span></div><div id=3D=
"yui_3_16_0_ym19_1_1557526187761_82162" dir=3D"ltr"><span id=3D"yui_3_16_0_=
ym19_1_1557526187761_82391">After seeing your response I realize that I wil=
l end up with 3 package managers.&nbsp; So I will just chose one.</span></d=
iv><div id=3D"yui_3_16_0_ym19_1_1557526187761_82162" dir=3D"ltr"><span><br>=
</span></div><div id=3D"yui_3_16_0_ym19_1_1557526187761_82162" dir=3D"ltr">=
<span id=3D"yui_3_16_0_ym19_1_1557526187761_82492">If I have to chose just =
one, will any one of them (say apt)&nbsp; work? I somehow had come to belie=
ve that you can only use opkg in Yocto.&nbsp;</span></div><div id=3D"yui_3_=
16_0_ym19_1_1557526187761_82162" dir=3D"ltr"><span><br></span></div><div id=
=3D"yui_3_16_0_ym19_1_1557526187761_82162" dir=3D"ltr"><span id=3D"yui_3_16=
_0_ym19_1_1557526187761_82609">thanks and best regards</span></div><div id=
=3D"yui_3_16_0_ym19_1_1557526187761_82162" dir=3D"ltr"><span>Madhu</span></=
div><div id=3D"yui_3_16_0_ym19_1_1557526187761_82162" dir=3D"ltr"><span><br=
></span></div><div id=3D"yui_3_16_0_ym19_1_1557526187761_82162" dir=3D"ltr"=
><br></div><div class=3D"qtdSeparateBR"><br><br></div><div class=3D"yahoo_q=
uoted" id=3D"yui_3_16_0_ym19_1_1557526187761_82159" style=3D"display: block=
;">  <div style=3D"font-family: Helvetica Neue, Helvetica, Arial, Lucida Gr=
ande, sans-serif; font-size: 16px;" id=3D"yui_3_16_0_ym19_1_1557526187761_8=
2158"> <div style=3D"font-family: HelveticaNeue, Helvetica Neue, Helvetica,=
 Arial, Lucida Grande, sans-serif; font-size: 16px;" id=3D"yui_3_16_0_ym19_=
1_1557526187761_82157"> <div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1557526187=
761_82156"> <font size=3D"2" face=3D"Arial" id=3D"yui_3_16_0_ym19_1_1557526=
187761_82196"> <hr size=3D"1" id=3D"yui_3_16_0_ym19_1_1557526187761_82253">=
 <b id=3D"yui_3_16_0_ym19_1_1557526187761_82406"><span style=3D"font-weight=
:bold;" id=3D"yui_3_16_0_ym19_1_1557526187761_82405">From:</span></b> "Burt=
on, Ross" &lt;ross.burton@intel.com&gt;<br> <b id=3D"yui_3_16_0_ym19_1_1557=
526187761_82409"><span style=3D"font-weight: bold;" id=3D"yui_3_16_0_ym19_1=
_1557526187761_82408">To:</span></b> Madhu Krishnamurthy &lt;madhukanthk@ya=
hoo.com&gt; <br><b id=3D"yui_3_16_0_ym19_1_1557526187761_82412"><span style=
=3D"font-weight: bold;" id=3D"yui_3_16_0_ym19_1_1557526187761_82411">Cc:</s=
pan></b> "yocto@yoctoproject.org" &lt;yocto@yoctoproject.org&gt;<br> <b><sp=
an style=3D"font-weight: bold;">Sent:</span></b> Saturday, May 11, 2019 8:3=
5 AM<br> <b><span style=3D"font-weight: bold;">Subject:</span></b> Re: [yoc=
to] How do I include all packages under a layer ?<br> </font> </div> <div c=
lass=3D"y_msg_container" id=3D"yui_3_16_0_ym19_1_1557526187761_82199"><br><=
div dir=3D"ltr" id=3D"yui_3_16_0_ym19_1_1557526187761_82198">On Sat, 11 May=
 2019 at 00:54, Madhu Krishnamurthy &lt;<a shape=3D"rect" ymailto=3D"mailto=
:madhukanthk@yahoo.com" href=3D"mailto:madhukanthk@yahoo.com" id=3D"yui_3_1=
6_0_ym19_1_1557526187761_82202">madhukanthk@yahoo.com</a>&gt; wrote:<div cl=
ass=3D"yqt0749791922" id=3D"yqtfd24832"><br clear=3D"none">&gt; Do I have t=
o specify every package or is there a way I can add all packages inside a l=
ayer?<br clear=3D"none">&gt; For example, how do I add all packages from in=
side poky/meta to my image?<br clear=3D"none">&gt; Or at least how do I add=
 all packages under poky/meta/recipes-devtools ?</div><br clear=3D"none"><b=
r clear=3D"none">You need to list them explicitly.&nbsp; Some layers have p=
ackagegroups that<br clear=3D"none">pull in all the dependencies if that ma=
kes sense, but adding "all of<br clear=3D"none">oe-core/recipes-devtools" w=
ould be odd: you'd have three package<br clear=3D"none">managers for a star=
t.<br clear=3D"none"><br clear=3D"none">Ross<div class=3D"yqt0749791922" id=
=3D"yqtfd78452"><br clear=3D"none"></div></div><br><br></div> </div> </div>=
  </div></div></body></html>

------=_Part_2951468_1488890076.1557606740215--
