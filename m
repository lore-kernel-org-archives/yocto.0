Return-Path: <develone@sbcglobal.net>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B495DE009B8; Mon, 27 Jul 2015 07:53:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham
	version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [98.138.91.246 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm24-vm5.bullet.mail.ne1.yahoo.com
	(nm24-vm5.bullet.mail.ne1.yahoo.com [98.138.91.246])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2E76E0094D
	for <yocto@yoctoproject.org>; Mon, 27 Jul 2015 07:53:55 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sbcglobal.net; s=s2048;
	t=1438008835; bh=2DjalXgxZrV0GcAhzG0mgkoFEb4JM59DnAf96LeyFHg=;
	h=Date:From:Reply-To:To:Subject:From:Subject;
	b=K5CcY/lJ0OpQc3JEFgXcnWmn32UglZPjJmNEf+mDq28lApeOYpqB4UE3CG0EqAmFk6+CWXDutYTS85K/g3fH35GBn357ZLTUPvYKRwl/LTsUUwW/nUMYl8f1kCTIamIoWpkIVlMZyRDfXM28VQ4mZFi2c/pf4fOJ8vwq1WLal6guopLVtNQpdLeCvg8BCdveL7JHvvq58E7McbnzauVQ21CcE4BinLL7CJ0p4gkrLt6sw1U00uGQV161okFZWa8a5AkQOa0Vpvv+EMUotUgMfnbIMmGQbUGm0/yCwsYMO7FFy6i0KhA0tGegq+CYU9Ot735k8Zfq9g1tKb50cMPfsA==
Received: from [98.138.100.103] by nm24.bullet.mail.ne1.yahoo.com with NNFMP;
	27 Jul 2015 14:53:55 -0000
Received: from [98.138.89.160] by tm102.bullet.mail.ne1.yahoo.com with NNFMP;
	27 Jul 2015 14:53:55 -0000
Received: from [127.0.0.1] by omp1016.mail.ne1.yahoo.com with NNFMP;
	27 Jul 2015 14:53:55 -0000
X-Yahoo-Newman-Property: ymail-3
X-Yahoo-Newman-Id: 295031.52329.bm@omp1016.mail.ne1.yahoo.com
X-YMail-OSG: PonDkQgVM1li6J8hYa9X94lvWacDgo.SPC1NvopSXS1Vpz_ka6MPnn2jXYqjwYv
	BjGBtx6mD_LnBJRKIHvM26T9QNBawHJOmP8rN6Z1qgUPVv5KdhiDyY587ZZTI3IsERU.9KwgVwpW
	zFyTuiUlA3D9ie3mMGrft5_f9qgX2nuyxp6noHaLv2jxymf5r.0xzX2wg1ItXcTQC7YeGVDBjpaC
	AWDu7bwuJRCQgPXmNa2iUGNlF6Mz_gdwovCdUkwtzujw65jkyhzWx6FYdBLZyzgpA6mnwaTdDoVc
	bfYjIHMbhLHvQmeBl24xPf4Ql1CKPwGWtio5I1NfiysusXt9E0H_RTWBfsYXDENMQo50hJkT2e_G
	BZ3qwXwqQN6NdV6H2Q49FoCTSBVxVHRgtqRjR7d8e4ZhiSX1yc.jipVV5GIMhCVOIzYdOGXQUAUN
	KVuwktAWpk4310IqbwXk9vmDVcfx6YCXI5tsPIpSft5QmB7tiO7T3fmBZDd8LFYyWNTx5Wq0i2E5
	dLx0dH2hF0jc7KI5YxYxnb44tWucQH8Y-
Received: by 98.138.105.206; Mon, 27 Jul 2015 14:53:54 +0000 
Date: Mon, 27 Jul 2015 14:53:54 +0000 (UTC)
From: Edward Vidal <develone@sbcglobal.net>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Message-ID: <436727677.3049712.1438008834374.JavaMail.yahoo@mail.yahoo.com>
MIME-Version: 1.0
Subject: ADT python build
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Edward Vidal <develone@sbcglobal.net>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Mon, 27 Jul 2015 14:53:58 -0000
X-Groupsio-MsgNum: 25707
Content-Type: multipart/mixed; 
	boundary="----=_Part_3049711_739374277.1438008834374"

------=_Part_3049711_739374277.1438008834374
Content-Type: multipart/alternative; 
	boundary="----=_Part_3049710_1127949728.1438008834371"

------=_Part_3049710_1127949728.1438008834371
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello All,
On Raspberry Pi target and earlier version of myhdl was getting a=20
ImportError: No module named py_compile (see py_compile error attached)
Trying to install a python module using the ADT enviornment.
=C2=A0=C2=A0=C2=A0 name=3D"myhdl",
=C2=A0=C2=A0=C2=A0 version=3Dversion,
=C2=A0=C2=A0=C2=A0 description=3D"Python as a Hardware Description Language=
",
=C2=A0=C2=A0=C2=A0 long_description=3D"See home page.",
=C2=A0=C2=A0=C2=A0 author=3D"Jan Decaluwe",
=C2=A0=C2=A0=C2=A0 author_email=3D"jan@jandecaluwe.com",
=C2=A0=C2=A0=C2=A0 url=3D"http://www.myhdl.org"
The following are the steps that result in an error using the ADT and Raspb=
erry Pi target.

mkdir build_myhdl
cd build_myhdl/
git clone https://github.com/jandecaluwe/myhdl.git
cd myhdl/
source /opt/poky/1.8+snapshot/environment-setup-cortexa7hf-vfp-vfpv4-neon-p=
oky-linux-gnueabi=20
python setup.py install
which python
/opt/poky/1.8+snapshot/sysroots/x86_64-pokysdk-linux/usr/bin/python

python setup.py install
Traceback (most recent call last):
=C2=A0 File "setup.py", line 3, in <module>
=C2=A0=C2=A0=C2=A0 import ast
ImportError: No module named ast

Thanks in advance.=C2=A0Edward Vidal Jr.
e-mail develone@sbcglobal.net
915-595-1613

------=_Part_3049710_1127949728.1438008834371
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<html><body><div style=3D"color:#000; background-color:#fff; font-family:He=
lveticaNeue, Helvetica Neue, Helvetica, Arial, Lucida Grande, sans-serif;fo=
nt-size:16px"><div dir=3D"ltr" id=3D"yui_3_16_0_1_1438008622166_2608"><span=
>Hello All,<br class=3D"">On Raspberry Pi target and earlier version of myh=
dl was getting a <br class=3D"">ImportError: No module named py_compile (se=
e py_compile error attached)<br class=3D"">Trying to install a python modul=
e using the ADT enviornment.<br class=3D"">&nbsp;&nbsp;&nbsp; name=3D"myhdl=
",<br class=3D"">&nbsp;&nbsp;&nbsp; version=3Dversion,<br class=3D"">&nbsp;=
&nbsp;&nbsp; description=3D"Python as a Hardware Description Language",<br =
class=3D"">&nbsp;&nbsp;&nbsp; long_description=3D"See home page.",<br class=
=3D"">&nbsp;&nbsp;&nbsp; author=3D"Jan Decaluwe",<br class=3D"">&nbsp;&nbsp=
;&nbsp; author_email=3D"jan@jandecaluwe.com",<br class=3D"">&nbsp;&nbsp;&nb=
sp; url=3D"http://www.myhdl.org"<br class=3D"">The following are the steps =
that result in an error using the ADT and Raspberry Pi target.<br class=3D"=
"><br class=3D"">mkdir build_myhdl<br class=3D"">cd build_myhdl/<br class=
=3D"">git clone https://github.com/jandecaluwe/myhdl.git<br class=3D"">cd m=
yhdl/<br class=3D"">source /opt/poky/1.8+snapshot/environment-setup-cortexa=
7hf-vfp-vfpv4-neon-poky-linux-gnueabi <br class=3D"">python setup.py instal=
l<br class=3D"">which python<br class=3D"">/opt/poky/1.8+snapshot/sysroots/=
x86_64-pokysdk-linux/usr/bin/python<br class=3D""><br class=3D"">python set=
up.py install<br class=3D"">Traceback (most recent call last):<br class=3D"=
">&nbsp; File "setup.py", line 3, in &lt;module&gt;<br class=3D"">&nbsp;&nb=
sp;&nbsp; import ast<br class=3D"">ImportError: No module named ast<br clas=
s=3D""><br class=3D"">Thanks in advance.</span></div><div dir=3D"ltr"><span=
></span></div><div>&nbsp;</div><div><div>Edward Vidal Jr.<br>e-mail develon=
e@sbcglobal.net<br>915-595-1613</div></div></div></body></html>

------=_Part_3049710_1127949728.1438008834371--

------=_Part_3049711_739374277.1438008834374
Content-Type: text/plain
Content-Transfer-Encoding: base64
Content-Disposition: attachment; filename=attached.txt
Content-ID: <dc804f7e-29ef-1a14-ee47-3d7bdbd15a37@yahoo.com>

cHl0aG9uIHNldHVwLnB5IGluc3RhbGwKc3RhcnRzIG91dCBva2F5LgoKd3JpdGluZyBtYW5pZmVz
dCBmaWxlICdteWhkbC5lZ2ctaW5mby9TT1VSQ0VTLnR4dCcKaW5zdGFsbGluZyBsaWJyYXJ5IGNv
ZGUgdG8gYnVpbGQvYmRpc3QubGludXgtYXJtdjdsL2VnZwpydW5uaW5nIGluc3RhbGxfbGliCnJ1
bm5pbmcgYnVpbGRfcHkKY3JlYXRpbmcgYnVpbGQvbGliCmNyZWF0aW5nIGJ1aWxkL2xpYi9teWhk
bApjb3B5aW5nIG15aGRsL19TaWduYWwucHkgLT4gYnVpbGQvbGliL215aGRsCmNvcHlpbmcgbXlo
ZGwvX3V0aWwucHkgLT4gYnVpbGQvbGliL215aGRsCmNvcHlpbmcgbXloZGwvX0Nvc2ltdWxhdGlv
bi5weSAtPiBidWlsZC9saWIvbXloZGwKY29weWluZyBteWhkbC9fY29tcGF0LnB5IC0+IGJ1aWxk
L2xpYi9teWhkbApjb3B5aW5nIG15aGRsL19XYWl0ZXIucHkgLT4gYnVpbGQvbGliL215aGRsCmNv
cHlpbmcgbXloZGwvX19pbml0X18ucHkgLT4gYnVpbGQvbGliL215aGRsCmNvcHlpbmcgbXloZGwv
X3RyaXN0YXRlLnB5IC0+IGJ1aWxkL2xpYi9teWhkbApjb3B5aW5nIG15aGRsL19iaW4ucHkgLT4g
YnVpbGQvbGliL215aGRsCiAgICAuCiAgICAgICAgIC4KICAgIC4KbWFueSBtb3JlIGxpbmVzCiAg
ICAuCiAgICAuCiAgICAuCmNvcHlpbmcgYnVpbGQvbGliL215aGRsL19yZXNvbHZlcmVmcy5weSAt
PiBidWlsZC9iZGlzdC5saW51eC1hcm12N2wvZWdnL215aGRsCmNvcHlpbmcgYnVpbGQvbGliL215
aGRsL19yZXNpemUucHkgLT4gYnVpbGQvYmRpc3QubGludXgtYXJtdjdsL2VnZy9teWhkbApjb3B5
aW5nIGJ1aWxkL2xpYi9teWhkbC9fU2hhZG93U2lnbmFsLnB5IC0+IGJ1aWxkL2JkaXN0LmxpbnV4
LWFybXY3bC9lZ2cvbXloZGwKY29weWluZyBidWlsZC9saWIvbXloZGwvX3NpbXVsYXRvci5weSAt
PiBidWlsZC9iZGlzdC5saW51eC1hcm12N2wvZWdnL215aGRsClRyYWNlYmFjayAobW9zdCByZWNl
bnQgY2FsbCBsYXN0KToKICBGaWxlICJzZXR1cC5weSIsIGxpbmUgNjAsIGluIDxtb2R1bGU+CiAg
ICAnUHJvZ3JhbW1pbmcgTGFuZ3VhZ2UgOjogUHl0aG9uIDo6IDMuNCcsCiAgRmlsZSAiL3Vzci9s
aWIvcHl0aG9uMi43L2Rpc3R1dGlscy9jb3JlLnB5IiwgbGluZSAxNTEsIGluIHNldHVwCiAgICBk
aXN0LnJ1bl9jb21tYW5kcygpCiAgRmlsZSAiL3Vzci9saWIvcHl0aG9uMi43L2Rpc3R1dGlscy9k
aXN0LnB5IiwgbGluZSA5NTMsIGluIHJ1bl9jb21tYW5kcwogICAgc2VsZi5ydW5fY29tbWFuZChj
bWQpCiAgRmlsZSAiL3Vzci9saWIvcHl0aG9uMi43L2Rpc3R1dGlscy9kaXN0LnB5IiwgbGluZSA5
NzIsIGluIHJ1bl9jb21tYW5kCiAgICBjbWRfb2JqLnJ1bigpCiAgRmlsZSAiL3Vzci9saWIvcHl0
aG9uMi43L3NpdGUtcGFja2FnZXMvZGlzdHJpYnV0ZS0wLjYuMzItcHkyLjcuZWdnL3NldHVwdG9v
bHMvY29tbWFuZC9pbnN0YWxsLnB5IiwgbGluZSA3MywgaW4gcnVuCiAgICBzZWxmLmRvX2VnZ19p
bnN0YWxsKCkKICBGaWxlICIvdXNyL2xpYi9weXRob24yLjcvc2l0ZS1wYWNrYWdlcy9kaXN0cmli
dXRlLTAuNi4zMi1weTIuNy5lZ2cvc2V0dXB0b29scy9jb21tYW5kL2luc3RhbGwucHkiLCBsaW5l
IDkzLCBpbiBkb19lZ2dfaW5zdGFsbAogICAgc2VsZi5ydW5fY29tbWFuZCgnYmRpc3RfZWdnJykK
ICBGaWxlICIvdXNyL2xpYi9weXRob24yLjcvZGlzdHV0aWxzL2NtZC5weSIsIGxpbmUgMzI2LCBp
biBydW5fY29tbWFuZAogICAgc2VsZi5kaXN0cmlidXRpb24ucnVuX2NvbW1hbmQoY29tbWFuZCkK
ICBGaWxlICIvdXNyL2xpYi9weXRob24yLjcvZGlzdHV0aWxzL2Rpc3QucHkiLCBsaW5lIDk3Miwg
aW4gcnVuX2NvbW1hbmQKICAgIGNtZF9vYmoucnVuKCkKICBGaWxlICIvdXNyL2xpYi9weXRob24y
Ljcvc2l0ZS1wYWNrYWdlcy9kaXN0cmlidXRlLTAuNi4zMi1weTIuNy5lZ2cvc2V0dXB0b29scy9j
b21tYW5kL2JkaXN0X2VnZy5weSIsIGxpbmUgMTc5LCBpbiBydW4KICAgIGNtZCA9IHNlbGYuY2Fs
bF9jb21tYW5kKCdpbnN0YWxsX2xpYicsIHdhcm5fZGlyPTApCiAgRmlsZSAiL3Vzci9saWIvcHl0
aG9uMi43L3NpdGUtcGFja2FnZXMvZGlzdHJpYnV0ZS0wLjYuMzItcHkyLjcuZWdnL3NldHVwdG9v
bHMvY29tbWFuZC9iZGlzdF9lZ2cucHkiLCBsaW5lIDE2NiwgaW4gY2FsbF9jb21tYW5kCiAgICBz
ZWxmLnJ1bl9jb21tYW5kKGNtZG5hbWUpCiAgRmlsZSAiL3Vzci9saWIvcHl0aG9uMi43L2Rpc3R1
dGlscy9jbWQucHkiLCBsaW5lIDMyNiwgaW4gcnVuX2NvbW1hbmQKICAgIHNlbGYuZGlzdHJpYnV0
aW9uLnJ1bl9jb21tYW5kKGNvbW1hbmQpCiAgRmlsZSAiL3Vzci9saWIvcHl0aG9uMi43L2Rpc3R1
dGlscy9kaXN0LnB5IiwgbGluZSA5NzIsIGluIHJ1bl9jb21tYW5kCiAgICBjbWRfb2JqLnJ1bigp
CiAgRmlsZSAiL3Vzci9saWIvcHl0aG9uMi43L3NpdGUtcGFja2FnZXMvZGlzdHJpYnV0ZS0wLjYu
MzItcHkyLjcuZWdnL3NldHVwdG9vbHMvY29tbWFuZC9pbnN0YWxsX2xpYi5weSIsIGxpbmUgMjQs
IGluIHJ1bgogICAgc2VsZi5ieXRlX2NvbXBpbGUob3V0ZmlsZXMpCiAgRmlsZSAiL3Vzci9saWIv
cHl0aG9uMi43L2Rpc3R1dGlscy9jb21tYW5kL2luc3RhbGxfbGliLnB5IiwgbGluZSAxMzgsIGlu
IGJ5dGVfY29tcGlsZQogICAgZHJ5X3J1bj1zZWxmLmRyeV9ydW4pCiAgRmlsZSAiL3Vzci9saWIv
cHl0aG9uMi43L2Rpc3R1dGlscy91dGlsLnB5IiwgbGluZSA0MzcsIGluIGJ5dGVfY29tcGlsZQog
ICAgZnJvbSBweV9jb21waWxlIGltcG9ydCBjb21waWxlCg==

------=_Part_3049711_739374277.1438008834374--
