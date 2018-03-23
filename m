Return-Path: <matthias.schoepfer@identpro.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 536E7E009DB; Fri, 23 Mar 2018 03:12:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [212.227.126.130 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
X-Greylist: delayed 304 seconds by postgrey-1.32 at yocto-www;
	Fri, 23 Mar 2018 03:12:57 PDT
Received: from mout.kundenserver.de (mout.kundenserver.de [212.227.126.130])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AFC26E00823
	for <yocto@yoctoproject.org>; Fri, 23 Mar 2018 03:12:57 -0700 (PDT)
Received: from SBS-IDENTPRO.intranet.identpro.net ([176.95.137.65]) by
	mrelayeu.kundenserver.de (mreue005 [212.227.15.167]) with ESMTPSA
	(Nemesis)
	id 0MJYJr-1f2Lkb1tLX-0031q7; Fri, 23 Mar 2018 11:07:50 +0100
Received: from SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) by
	SBS-IDENTPRO.intranet.identpro.net ([192.168.27.6]) with mapi id
	14.01.0438.000; Fri, 23 Mar 2018 11:07:46 +0100
From: =?Windows-1252?Q?Matthias_Sch=F6pfer?= <matthias.schoepfer@identpro.de>
To: Peter Balazovic <balazovic.peter@gmail.com>, Yocto-mailing-list
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] scipy recipe
Thread-Index: AQHTvIcgotqwIFrfW0WRlMSMHcZZhQ==
Date: Fri, 23 Mar 2018 10:07:44 +0000
Message-ID: <C44683C49AD51C4AB28DA746E48E35870101C9F0@SBS-IDENTPRO.intranet.identpro.net>
References: <CAFq4t4gpGaMCyvR2drwjU8+NWYS5aSodmzPhPb4FWio6vm+12Q@mail.gmail.com>
	<CAFq4t4jerHvsYRmh41=nu01OK6cE0Vszn4Vs0VYFsFMDxN97pw@mail.gmail.com>
Accept-Language: en-US, de-DE
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-originating-ip: [176.95.137.65]
MIME-Version: 1.0
X-Provags-ID: V03:K0:utvGVli3lBjWVWgPddfiHVF4QyYWEFdfkY9l/6gS8OL5E1zzfyu
	p5vDFTBY5pvX+9JnED2qgeT3ZNXfLWCfFPK5zPJ7qDPija0oSVvwq2CQ5u3f5iPbuCa8f6x
	MVtRcE4E11R08ompa8maRUSIiwhSrHO7+3NHrkNeKUoyzX11fOpzH9wkWmfBt4/DURnYYg2
	ZgSVcw8fPj5OBJcWdqnfA==
X-UI-Out-Filterresults: notjunk:1;V01:K0:qd8fe4jtdXQ=:B9EHjnvUd/WFoi/hYsMDH3
	pltFiNdgpKLkEWWclqmFfN+mU8wfFElM3Cc2xHh7Oy4QMKODVvIaLf2VXIOTJf3O3q/JTtujM
	3WuC7RPPa1pjiJu4CbSKg140bldecNKNaJw/kx4SwdwyEYm5mGMn/XMoRxOHzmZigeMFi2wGt
	0lqh1g1wD3gWvihyQqdMHLyor81oOXbDRRnkySPU4pv9ogRyfEdJirmabrahs73bkg8WfnYRA
	vCkjRczfdKhg9aoMXCwBhTJsOLCNUc3ZjnbxKeErl/2urOAJRjIOkI4B8dvTlUiaNXusk+k8V
	hmwL+Jw2v+k8XbsnGPjOo1FWlCKrA5Wj1gEKvhulET0tBqc/NjPfFLxaN6Z9Qto5mePtwEo7Y
	8ynXXhc+UZZxOeiS+obTEYoMd7s4r7DasRG93mOjkmvDAh7jsUWW342+up9Sm9ogWC4qpYN0V
	KgxFKuY6zINtBFmJEVU7UwCzKIltDqZgveVLqEP3X5rAJ6cUj/xa9JNSe/Tdf+dgRcTszftDM
	Gd2fGUZ7K9hej118zclVSv01RHyuzZVeI8IRtXtoiIZ6pRSxJ56x9p/akiECY08wtfrHXpM6s
	a86az220SwuLd1zULRMA93bWbbTDWJ3Cgd16NbwCwpO72koiPLYELXX5KckSkpw6QX4QQz7F6
	wzPNgD/NXW9l2Tk9NhEn7LsgqQ6EE6c25tKDeHIE9G7C6yLrXqD+RKtNfGiQPQvQLl35sCg2C
	rPPRcldM+RgxmUeDZvWcTvqvjxLKsWqcD5pacg==
Subject: Re: scipy recipe
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
X-List-Received-Date: Fri, 23 Mar 2018 10:12:59 -0000
X-Groupsio-MsgNum: 40377
Content-Language: de-DE
Content-Type: multipart/mixed;
	boundary="_005_C44683C49AD51C4AB28DA746E48E35870101C9F0SBSIDENTPROintr_"

--_005_C44683C49AD51C4AB28DA746E48E35870101C9F0SBSIDENTPROintr_
Content-Type: text/plain; charset="Windows-1252"
Content-Transfer-Encoding: quoted-printable

Hi Peter,=0A=
=0A=
I managed to get scipy to cross compile, since I was in a hurry, and=0A=
have no deeper understanding of python / distutils / setuptools, it=0A=
turned out to be an ugly hack (but obviously I was not the first one to=0A=
do ugly things there ;) )=0A=
=0A=
Maybe you have had some progress as well, and we can figure out a nicer=0A=
solution.=0A=
=0A=
See the attached files, involving openblas, a bbappend for python-numpy=0A=
and python-scipy.=0A=
=0A=
Regards,=0A=
=0A=
	Matthias=0A=
=0A=
-- =0A=
Dr.-Ing. Matthias Sch=F6pfer=0A=
=0A=
Softwareentwicklung=0A=
=0A=
____________________________________=0A=
=0A=
IdentPro GmbH=0A=
Camp-Spich-Str. 4=0A=
53842 Troisdorf=0A=
=0A=
Tel:   +49 (0)2241 / 866 392 46=0A=
Fax:   +49 (0)2241 / 866 392 99=0A=
eMail: matthias.schoepfer@identpro.de=0A=
=0A=
http://www.identpro.de=0A=
=0A=
identplus=AE =96 Das 3D Staplerleitsystem mit enormen Sparpotenzial: z. B.=
=0A=
=FCber 67.000 EUR pro Jahr bei 500 Transporten t=E4glich! Berechnen Sie das=
=0A=
Einsparpotenzial f=FCr Ihr Lager mit dem identplus=AE Potenzialrechner.=0A=
=0A=
identplus=AE live erleben: Vereinbaren Sie jetzt einen Termin!=0A=
=0A=
---------------------------------=0A=
IdentPro GmbH=0A=
Member of Dr. Wack Holding GmbH & Co.KG=0A=
Sitz und Registergericht: St. Augustin, HRB 9770 Siegburg=0A=
Gesch=E4ftsf=FChrer: Michael Wack=0A=
Umsatzsteuer-ID-Nr.: DE 254 824 945=0A=
WEEE-Reg.-Nr. DE 79026890=0A=

--_005_C44683C49AD51C4AB28DA746E48E35870101C9F0SBSIDENTPROintr_
Content-Type: text/plain; name="openblas_0.2.20.bb"
Content-Description: openblas_0.2.20.bb
Content-Disposition: attachment; filename="openblas_0.2.20.bb"; size=650;
	creation-date="Fri, 23 Mar 2018 10:07:44 GMT";
	modification-date="Fri, 23 Mar 2018 10:07:44 GMT"
Content-Transfer-Encoding: base64

REVTQ1JJUFRJT04gPSAiT3BlbkJMQVMgaXMgYW4gb3B0aW1pemVkIEJMQVMgbGlicmFyeSBiYXNl
ZCBvbiBHb3RvQkxBUzIgMS4xMyBCU0QgdmVyc2lvbi4iClNVTU1BUlkgPSAiT3BlbkJMQVMgOiBB
biBvcHRpbWl6ZWQgQkxBUyBsaWJyYXJ5IgpBVVRIT1IgPSAiQWxleGFuZGVyIExlaXZhIDxub3J4
YW5kZXJAZ21haWwuY29tPiIKSE9NRVBBR0UgPSAiaHR0cDovL3d3dy5vcGVuYmxhcy5uZXQvIgpQ
UklPUklUWT0gIm9wdGlvbmFsIgpTRUNUSU9OID0gImxpYnMiCkxJQ0VOU0UgPSAiQlNEIgpQUiA9
ICJyMCIKCkxJQ19GSUxFU19DSEtTVU0gPSAiZmlsZTovL0xJQ0VOU0U7bWQ1PTVhZGY0NzkyYzk0
OWEwMDAxM2NlMjVkNDc2YTJhYmMwIgoKU1JDX1VSSSA9ICJodHRwczovL2dpdGh1Yi5jb20veGlh
bnlpL09wZW5CTEFTL2FyY2hpdmUvdiR7UFZ9LnRhci5neiIKU1JDX1VSSVttZDVzdW1dID0gIjQ4
NjM3ZWIyOWY1YjQ5MmI5MTQ1OTE3NWRjYzU3NGIxIgpTUkNfVVJJW3NoYTI1NnN1bV0gPSAiNWVm
MzhiMTVkOWM2NTI5ODU3NzQ4NjllZmQ1NDhiOGUzZTk3MmUxZTk5NDc1YzY3M2IyNTUzN2VkN2Jj
ZjM5NCIKClMgPSAiJHtXT1JLRElSfS9PcGVuQkxBUy0ke1BWfSIKCmluaGVyaXQgY21ha2UKCkRF
UEVORFMgPSAiIGxpYmdmb3J0cmFuICI=

--_005_C44683C49AD51C4AB28DA746E48E35870101C9F0SBSIDENTPROintr_
Content-Type: text/plain; name="python-numpy_1.13.1.bbappend"
Content-Description: python-numpy_1.13.1.bbappend
Content-Disposition: attachment; filename="python-numpy_1.13.1.bbappend";
	size=130; creation-date="Fri, 23 Mar 2018 10:07:44 GMT";
	modification-date="Fri, 23 Mar 2018 10:07:44 GMT"
Content-Transfer-Encoding: base64

RklMRVNFWFRSQVBBVEhTX3ByZXBlbmQgOj0gIiR7VEhJU0RJUn0vZmlsZXM6IgoKU1JDX1VSSSAr
PSAiIFwKCWZpbGU6Ly8wMDAxLXJhZ2dlZC1zZXQtb2YtcGF0Y2hlcy10by1hbGxvdy1jcm9zcy1j
b21waWxlLnBhdGNoIFwKIg==

--_005_C44683C49AD51C4AB28DA746E48E35870101C9F0SBSIDENTPROintr_
Content-Type: text/x-patch;
	name="0001-ragged-set-of-patches-to-allow-cross-compile.patch"
Content-Description: 0001-ragged-set-of-patches-to-allow-cross-compile.patch
Content-Disposition: attachment;
	filename="0001-ragged-set-of-patches-to-allow-cross-compile.patch";
	size=2810; creation-date="Fri, 23 Mar 2018 10:07:44 GMT";
	modification-date="Fri, 23 Mar 2018 10:07:44 GMT"
Content-Transfer-Encoding: base64

RnJvbSBlMTQ0YzNiODZhYmI0OWJiYzk0M2ExN2U1MjcxYmY4ODBkZmNhNWRmIE1vbiBTZXAgMTcg
MDA6MDA6MDAgMjAwMQpGcm9tOiBNYXR0aGlhcyBTY2hvZXBmZXIgPG1hdHRoaWFzLnNjaG9lcGZl
ckBpZGVudHByby5kZT4KRGF0ZTogVGh1LCAyMiBNYXIgMjAxOCAxNTo1NzoxMyArMDEwMApTdWJq
ZWN0OiBbUEFUQ0hdIHJhZ2dlZCBzZXQgb2YgcGF0Y2hlcyB0byBhbGxvdyBjcm9zcyBjb21waWxl
CgotLS0KIG51bXB5L2Rpc3R1dGlscy9jb21tYW5kL2J1aWxkX2V4dC5weSB8IDQgKystLQogbnVt
cHkvZGlzdHV0aWxzL2V4ZWNfY29tbWFuZC5weSAgICAgIHwgMSArCiBudW1weS9kaXN0dXRpbHMv
ZmNvbXBpbGVyL2dudS5weSAgICAgfCAyICstCiBudW1weS92ZXJzaW9uLnB5ICAgICAgICAgICAg
ICAgICAgICAgfCAyICstCiA0IGZpbGVzIGNoYW5nZWQsIDUgaW5zZXJ0aW9ucygrKSwgNCBkZWxl
dGlvbnMoLSkKCmRpZmYgLS1naXQgYS9udW1weS9kaXN0dXRpbHMvY29tbWFuZC9idWlsZF9leHQu
cHkgYi9udW1weS9kaXN0dXRpbHMvY29tbWFuZC9idWlsZF9leHQucHkKaW5kZXggMGZhNTJhMi4u
ZTIxNTRlNyAxMDA2NDQKLS0tIGEvbnVtcHkvZGlzdHV0aWxzL2NvbW1hbmQvYnVpbGRfZXh0LnB5
CisrKyBiL251bXB5L2Rpc3R1dGlscy9jb21tYW5kL2J1aWxkX2V4dC5weQpAQCAtNDExLDEwICs0
MTEsMTAgQEAgY2xhc3MgYnVpbGRfZXh0IChvbGRfYnVpbGRfZXh0KToKICAgICAgICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAgICAgICBkZXBlbmRzPWV4dC5kZXBlbmRzKQogCiAgICAg
ICAgIG9iamVjdHMgPSBjX29iamVjdHMgKyBmX29iamVjdHMKLQorICAgICAgICBmcm9tIGRpc3R1
dGlscy5zeXNjb25maWcgaW1wb3J0IGdldF9jb25maWdfdmFycwogICAgICAgICBpZiBleHQuZXh0
cmFfb2JqZWN0czoKICAgICAgICAgICAgIG9iamVjdHMuZXh0ZW5kKGV4dC5leHRyYV9vYmplY3Rz
KQotICAgICAgICBleHRyYV9hcmdzID0gZXh0LmV4dHJhX2xpbmtfYXJncyBvciBbXQorICAgICAg
ICBleHRyYV9hcmdzID0gZ2V0X2NvbmZpZ192YXJzKCdMRFNIQVJFRCcpWzBdLnNwbGl0KCcgJylb
MTpdICsgKGV4dC5leHRyYV9saW5rX2FyZ3Mgb3IgW10pCiAgICAgICAgIGxpYnJhcmllcyA9IHNl
bGYuZ2V0X2xpYnJhcmllcyhleHQpWzpdCiAgICAgICAgIGxpYnJhcnlfZGlycyA9IGV4dC5saWJy
YXJ5X2RpcnNbOl0KIApkaWZmIC0tZ2l0IGEvbnVtcHkvZGlzdHV0aWxzL2V4ZWNfY29tbWFuZC5w
eSBiL251bXB5L2Rpc3R1dGlscy9leGVjX2NvbW1hbmQucHkKaW5kZXggOGZhZjRiMi4uZDkyOGFk
YSAxMDA2NDQKLS0tIGEvbnVtcHkvZGlzdHV0aWxzL2V4ZWNfY29tbWFuZC5weQorKysgYi9udW1w
eS9kaXN0dXRpbHMvZXhlY19jb21tYW5kLnB5CkBAIC0xMTMsNiArMTEzLDcgQEAgZGVmIGZpbmRf
ZXhlY3V0YWJsZShleGUsIHBhdGg9Tm9uZSwgX2NhY2hlPXt9KToKICAgICAgICAgZm4gPSBvcy5w
YXRoLmpvaW4ocGF0aCwgZXhlKQogICAgICAgICBmb3IgcyBpbiBzdWZmaXhlczoKICAgICAgICAg
ICAgIGZfZXh0ID0gZm4rcworICAgICAgICAgICAgZl9leHQgPSBmX2V4dC5zcGxpdCgnICcpWzBd
CiAgICAgICAgICAgICBpZiBub3Qgb3MucGF0aC5pc2xpbmsoZl9leHQpOgogICAgICAgICAgICAg
ICAgIGZfZXh0ID0gcmVhbHBhdGgoZl9leHQpCiAgICAgICAgICAgICBpZiBvcy5wYXRoLmlzZmls
ZShmX2V4dCkgYW5kIG9zLmFjY2VzcyhmX2V4dCwgb3MuWF9PSyk6CmRpZmYgLS1naXQgYS9udW1w
eS9kaXN0dXRpbHMvZmNvbXBpbGVyL2dudS5weSBiL251bXB5L2Rpc3R1dGlscy9mY29tcGlsZXIv
Z251LnB5CmluZGV4IDQ2NDlmZDcuLjYxY2FmZDYgMTAwNjQ0Ci0tLSBhL251bXB5L2Rpc3R1dGls
cy9mY29tcGlsZXIvZ251LnB5CisrKyBiL251bXB5L2Rpc3R1dGlscy9mY29tcGlsZXIvZ251LnB5
CkBAIC0yNjEsNyArMjYxLDcgQEAgY2xhc3MgR251OTVGQ29tcGlsZXIoR251RkNvbXBpbGVyKToK
ICAgICAgICAgICAgICAgICAgICAgc2VsZi5leGVjdXRhYmxlc1trZXldLmFwcGVuZCgnLW1uby1j
eWd3aW4nKQogICAgICAgICByZXR1cm4gdgogCi0gICAgcG9zc2libGVfZXhlY3V0YWJsZXMgPSBb
J2dmb3J0cmFuJywgJ2Y5NSddCisgICAgcG9zc2libGVfZXhlY3V0YWJsZXMgPSBbb3MuZW52aXJv
bi5nZXQoJ0ZDJywgJ2dmb3J0cmFuJyksICdmOTUnXQogICAgIGV4ZWN1dGFibGVzID0gewogICAg
ICAgICAndmVyc2lvbl9jbWQnICA6IFsiPEY5MD4iLCAiLWR1bXB2ZXJzaW9uIl0sCiAgICAgICAg
ICdjb21waWxlcl9mNzcnIDogW05vbmUsICItV2FsbCIsICItZyIsICItZmZpeGVkLWZvcm0iLApk
aWZmIC0tZ2l0IGEvbnVtcHkvZGlzdHV0aWxzL3N5c3RlbV9pbmZvLnB5IGIvbnVtcHkvZGlzdHV0
aWxzL3N5c3RlbV9pbmZvLnB5CmluZGV4IGMxY2I1ZmIuLjc1YmJmZTIgMTAwNjQ0Ci0tLSBhL251
bXB5L2Rpc3R1dGlscy9zeXN0ZW1faW5mby5weQorKysgYi9udW1weS9kaXN0dXRpbHMvc3lzdGVt
X2luZm8ucHkKQEAgLTYyMCw3ICs2MjAsNyBAQCBjbGFzcyBzeXN0ZW1faW5mbyhvYmplY3QpOgog
ICAgICAgICBwYXRoID0gc2VsZi5nZXRfcGF0aHMoc2VsZi5zZWN0aW9uLCBrZXkpCiAgICAgICAg
IGlmIHBhdGggPT0gWycnXToKICAgICAgICAgICAgIHBhdGggPSBbXQotICAgICAgICByZXR1cm4g
cGF0aAorICAgICAgICByZXR1cm4gW10KIAogICAgIGRlZiBnZXRfaW5jbHVkZV9kaXJzKHNlbGYs
IGtleT0naW5jbHVkZV9kaXJzJyk6CiAgICAgICAgIHJldHVybiBzZWxmLmdldF9wYXRocyhzZWxm
LnNlY3Rpb24sIGtleSkKCgo=

--_005_C44683C49AD51C4AB28DA746E48E35870101C9F0SBSIDENTPROintr_
Content-Type: text/plain; name="python-scipy_1.0.0.bb"
Content-Description: python-scipy_1.0.0.bb
Content-Disposition: attachment; filename="python-scipy_1.0.0.bb"; size=1092;
	creation-date="Fri, 23 Mar 2018 10:07:44 GMT";
	modification-date="Fri, 23 Mar 2018 10:07:44 GMT"
Content-Transfer-Encoding: base64

U1VNTUFSWSA9ICJTY2llbnRpZmljIExpYnJhcnkgZm9yIFB5dGhvbiIKU0VDVElPTiA9ICJkZXZl
bC9weXRob24iCkhPTUVQQUdFID0gImh0dHBzOi8vcHlwaS5weXRob24ub3JnL3B5cGkvc2NpcHki
CgpMSUNFTlNFID0gIkJTRC0zLUNsYXVzZSIKTElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vTElD
RU5TRS50eHQ7bWQ1PWQwZGI4ZjQxNDhhM2Q1NTM0Y2ZiOTNiZTc4ZjkyODdjIgoKU1JDX1VSST0i
aHR0cHM6Ly9naXRodWIuY29tL3NjaXB5L3NjaXB5L3JlbGVhc2VzL2Rvd25sb2FkL3YxLjAuMC9z
Y2lweS0xLjAuMC50YXIuZ3oiCgojUFlQSV9QQUNLQUdFPSJzY2lweSIKClNSQ19VUklbbWQ1c3Vt
XSA9ICI1M2ZhMzRiZDM3MzNhOWE0MjE2ODQyYjYwMDBmNzMxNiIKU1JDX1VSSVtzaGEyNTZzdW1d
ID0gIjg3ZWExZjExYTBlOWVjMDhjMjY0ZGM2NDU1MWQ1MDFmYTMwNzI4OTQ2MDcwNWY2ZmNjZDg0
Y2JmYzc5MjZkMTAiCgppbmhlcml0IHNldHVwdG9vbHMgZGlzdHV0aWxzCgpSREVQRU5EU18ke1BO
fSArPSAicHl0aG9uLWNvcmUgb3BlbmJsYXMgbGliZ2ZvcnRyYW4iCkRFUEVORFMgKz0gInB5dGhv
bi1udW1weSBweXRob24tbnVtcHktbmF0aXZlIHB5dGhvbi1jb3JlIHB5dGhvbi1kaXN0dXRpbHMg
b3BlbmJsYXMgbGliZ2ZvcnRyYW4gIgoKUz0iJHtXT1JLRElSfS9zY2lweS0xLjAuMCIKCmRvX2Nv
bXBpbGVfcHJlcGVuZCgpIHsKCQkgICAgIGV4cG9ydCBQWVRIT05QQVRIPSIke1NUQUdJTkdfTElC
RElSfS9weXRob24yLjcvc2l0ZS1wYWNrYWdlcyIKIwkJICAgICBleHBvcnQgTEFQQUNLPSIke1NU
QUdJTkdfTElCRElSfSIKCQkgICAgIGV4cG9ydCBPUEVOQkxBUz0iJHtTVEFHSU5HX0xJQkRJUn0i
CiMJCSAgICAgZXhwb3J0IE9QVD0iJHtDRkxBR1N9Igp9Cgpkb19pbnN0YWxsKCkgewoJICAgICBl
eHBvcnQgUFlUSE9OUEFUSD0iJHtTVEFHSU5HX0xJQkRJUl9OQVRJVkV9L3B5dGhvbjIuNy9zaXRl
LXBhY2thZ2VzIgojCSAgICAgZXhwb3J0IExBUEFDSz0iJHtTVEFHSU5HX0xJQkRJUn0iCgkgICAg
IGV4cG9ydCBPUEVOQkxBUz0iJHtTVEFHSU5HX0xJQkRJUn0iCgkgICAgIGRpc3R1dGlsc19kb19p
bnN0YWxsOwp9

--_005_C44683C49AD51C4AB28DA746E48E35870101C9F0SBSIDENTPROintr_--
