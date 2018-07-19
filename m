Return-Path: <simon.chamlian@mpbc.ca>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 3DBA6E0147D; Thu, 19 Jul 2018 14:01:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, HTML_MESSAGE, RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [209.85.216.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qt0-f169.google.com (mail-qt0-f169.google.com
	[209.85.216.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7DF84E00E9B
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 14:01:41 -0700 (PDT)
Received: by mail-qt0-f169.google.com with SMTP id c15-v6so8515941qtp.0
	for <yocto@yoctoproject.org>; Thu, 19 Jul 2018 14:01:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=mpbc-ca.20150623.gappssmtp.com; s=20150623;
	h=mime-version:from:date:message-id:subject:to;
	bh=2LHIs8ormPEnBX0jtTEwcg0nJxMn/Q29XDh5LsSzmJk=;
	b=GT6BVqtGE2IIcQku1I+rj6iF1ctM6MlkM/gqXLelCJPgVbtt1ZrXzrxQbH5aBVa+8o
	CIMKUu6yVs3AfBCV5mCiEXLolVwsMt5SRqMpowRx+Lb6vGTo28smW+5xh3/OFW7oRXV2
	07DUrC6UQLv0+MnjwlKpW/h8Je36QYzRyW/ETQxda/bpQTsFcc32BTNc605mYtEUju+9
	ju36TQw6Q6vRB+pNMsLiTItruEDzXc5kM4oMdHsCjeXHpB9lUa8KPun3eN2QCwn4FvKC
	DbNvxvMkhtEeId4k806H1dP1J/iM7bqDDfai3UGsymOi4nuU/W3euCZFOKQ+rW7/YoFf
	b86w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=2LHIs8ormPEnBX0jtTEwcg0nJxMn/Q29XDh5LsSzmJk=;
	b=YT+BhfQ2ri7IfgFmKGRK73rpCJbIn7+mXG8U1bxqMnPVjDxNqApN5WsUs87EeHiOr1
	43RVhT9pm77RxmxBJtCe2JjeHz5WqLV3lYqVitHRTU10MK1wE2sX99UCjQWfXXwJVbrp
	kwL7UN1+nH2cuwL38cOll60U/sPaUYj9ymX2BV3c+xk0MOuUY4OybwGzczREITLVQp0v
	sqzRpHI0CzaoISSjrJTZSWKzevZQ1a8OEM52j0kuf53KwqJ5eqfS0o/IqdbfkBP5hY6k
	Xl1VUal8UfEG1BTlTXLtiGNF/AG1TWcj21aqmHA7Og0VeXSKeLWvlDrfXGvAKHVwkpSg
	N/Ew==
X-Gm-Message-State: AOUpUlGoXM7PJtKIQBgYphulUfGtDUPuQF8aAezoMes41ZM3uwzU+gQg
	qJetyLbRwFZ7Y5HAmuvPphSZVcuycc7qw1ffJOMAnCGETSpH0Q==
X-Google-Smtp-Source: AAOMgpfNL2jmCK9KK3DjrgaDeP+eDKK5SGT72wknPDH2OLoeR0ZYa8IYRqVzXH7MfeDqiaH0tIHGW9dfombHsSYfmK0=
X-Received: by 2002:a0c:c70d:: with SMTP id
	w13-v6mr12368113qvi.205.1532034100595; 
	Thu, 19 Jul 2018 14:01:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:aed:2907:0:0:0:0:0 with HTTP; Thu, 19 Jul 2018 14:01:39
	-0700 (PDT)
From: Simon Chamlian <simon.chamlian@mpbc.ca>
Date: Thu, 19 Jul 2018 17:01:39 -0400
Message-ID: <CANmTPBY6Qk1xFU=ZTJe-f6WTULi6tiioft2WxSL4Xqt9fN2HLw@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: net-snmp 5.8 recipe
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
X-List-Received-Date: Thu, 19 Jul 2018 21:01:42 -0000
X-Groupsio-MsgNum: 41875
Content-Type: multipart/mixed; boundary="00000000000059bc840571607c9e"

--00000000000059bc840571607c9e
Content-Type: multipart/alternative; boundary="00000000000059bc810571607c9c"

--00000000000059bc810571607c9c
Content-Type: text/plain; charset="UTF-8"

Hi,

Is there any recipe for the new snmp release 5.8 ?

I took the net-snmp_5.7.3.bb file and renamed it net-snmp_5.8.bb
removed the patches and re-entered the checksum but it still giving me
errors.

ERROR: net-snmp-5.8-r0 do_configure: This autoconf log indicates errors, it
looked at host include and/or library paths while determining system
capabilities.
Rerun configure task after fixing this.
ERROR: net-snmp-5.8-r0 do_configure: Function failed: do_qa_configure
ERROR: Logfile of failure stored in:
/opt/PHYTEC_BSPs/yocto_imx7/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/net-snmp/5.8-r0/temp/log.do_configure.394
ERROR: Task
(/opt/PHYTEC_BSPs/yocto_imx7/sources/meta-openembedded/meta-networking/recipes-protocols/net-snmp/net-snmp_5.8.bb:do_configure)
failed with exit code '1'

See attached for the recipe.

Thanks,
S

--00000000000059bc810571607c9c
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>Is there any recipe for =
the new snmp release 5.8 ?</div><div><br></div><div>I took the <span style=
=3D"font-family:monospace,monospace"><a href=3D"http://net-snmp_5.7.3.bb">n=
et-snmp_5.7.3.bb</a></span> file and renamed it <span style=3D"font-family:=
monospace,monospace"><a href=3D"http://net-snmp_5.8.bb">net-snmp_5.8.bb</a>=
</span> <br></div><div>removed the patches and re-entered the checksum but =
it still giving me errors.</div><div><br></div><div>ERROR: net-snmp-5.8-r0 =
do_configure: This autoconf log indicates errors, it looked at host include=
 and/or library paths while determining system capabilities.<br>Rerun confi=
gure task after fixing this.<br>ERROR: net-snmp-5.8-r0 do_configure: Functi=
on failed: do_qa_configure<br>ERROR: Logfile of failure stored in: /opt/PHY=
TEC_BSPs/yocto_imx7/build/tmp/work/cortexa7hf-neon-poky-linux-gnueabi/net-s=
nmp/5.8-r0/temp/log.do_configure.394<br>ERROR: Task (/opt/PHYTEC_BSPs/yocto=
_imx7/sources/meta-openembedded/meta-networking/recipes-protocols/net-snmp/=
net-snmp_5.8.bb:do_configure) failed with exit code &#39;1&#39;<br></div><d=
iv><br></div><div>See attached for the recipe.</div><div><br></div><div>Tha=
nks,</div><div>S</div><div><br></div><div><br></div><div class=3D"gmail_ext=
ra"><br></div></div>

--00000000000059bc810571607c9c--

--00000000000059bc840571607c9e
Content-Type: application/octet-stream; name="net-snmp_5.8.bb"
Content-Disposition: attachment; filename="net-snmp_5.8.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_jjt1hxwu0

U1VNTUFSWSA9ICJWYXJpb3VzIHRvb2xzIHJlbGF0aW5nIHRvIHRoZSBTaW1wbGUgTmV0d29yayBN
YW5hZ2VtZW50IFByb3RvY29sIgpIT01FUEFHRSA9ICJodHRwOi8vd3d3Lm5ldC1zbm1wLm9yZy8i
ClNFQ1RJT04gPSAibmV0IgpMSUNFTlNFID0gIkJTRCIKCkxJQ19GSUxFU19DSEtTVU0gPSAiZmls
ZTovL1JFQURNRTtiZWdpbmxpbmU9MztlbmRsaW5lPTg7bWQ1PTdmN2YwMGJhNjM5YWM4ZThkZWI1
YTYyMmVhMjQ2MzRlIgoKREVQRU5EUyA9ICJvcGVuc3NsIGxpYm5sIHBjaXV0aWxzIgoKU1JDX1VS
SSA9ICIke1NPVVJDRUZPUkdFX01JUlJPUn0vbmV0LXNubXAvbmV0LXNubXAtJHtQVn0uemlwIFwK
ICAgICAgICAgICBmaWxlOi8vaW5pdCBcCiAgICAgICAgICAgZmlsZTovL3NubXBkLmNvbmYgXAog
ICAgICAgICAgIGZpbGU6Ly9zbm1wdHJhcGQuY29uZiBcCiAgICAgICAgICAgZmlsZTovL3NubXBk
LnNlcnZpY2UgXAogICAgICAgICAgIGZpbGU6Ly9zbm1wdHJhcGQuc2VydmljZSBcCiAgICAgICAg
ICAgZmlsZTovL3J1bi1wdGVzdCBcCiAgICAgICAgICAgIgpTUkNfVVJJW21kNXN1bV0gPSAiNmFh
ZTU5NDhkZjdlZmRlNjI2NjEzZDZhNGIzY2Q5ZDQiClNSQ19VUklbc2hhMjU2c3VtXSA9ICJjNjI5
MTM4NWI4ZWQ4NGYwNTg5MGZlNDE5NzAwNWRhZjdlN2VlN2IwODJjMmUzOTBmYTExNGE5NDc3YTU2
MDQyIgoKaW5oZXJpdCBhdXRvdG9vbHMgdXBkYXRlLXJjLmQgc2l0ZWluZm8gc3lzdGVtZCBwa2dj
b25maWcKCkVYVFJBX09FTUFLRSA9ICJJTlNUQUxMX1BSRUZJWD0ke0R9IE9USEVSTERGTEFHUz0n
JHtMREZMQUdTfScgSE9TVF9DUFBGTEFHUz0nJHtCVUlMRF9DUFBGTEFHU30nIgoKUEFSQUxMRUxf
TUFLRSA9ICIiCkNDQUNIRSA9ICIiCgpUQVJHRVRfQ0NfQVJDSCArPSAiJHtMREZMQUdTfSIKClBB
Q0tBR0VDT05GSUcgPz89ICIiClBBQ0tBR0VDT05GSUdbZWxmdXRpbHNdID0gIi0td2l0aC1lbGYs
IC0td2l0aG91dC1lbGYsIGVsZnV0aWxzIgpQQUNLQUdFQ09ORklHW2xpYm5sXSA9ICItLXdpdGgt
bmwsIC0td2l0aG91dC1ubCwgbGlibmwiCgpQQUNLQUdFQ09ORklHID8/PSAiJHtAYmIudXRpbHMu
Y29udGFpbnMoJ0RJU1RST19GRUFUVVJFUycsICdpcHY2JywgJ2lwdjYnLCAnJywgZCl9IgpQQUNL
QUdFQ09ORklHW2lwdjZdID0gIi0tZW5hYmxlLWlwdjYsLS1kaXNhYmxlLWlwdjYsLCIKCkVYVFJB
X09FQ09ORiA9ICItLWRpc2FibGUtZW1iZWRkZWQtcGVybCBcCiAgICAgICAgICAgICAgICAtLXdp
dGgtcGVybC1tb2R1bGVzPW5vIFwKICAgICAgICAgICAgICAgIC0tZGlzYWJsZS1tYW51YWxzIFwK
ICAgICAgICAgICAgICAgIC0td2l0aC1kZWZhdWx0cyBcCiAgICAgICAgICAgICAgICAtLXdpdGgt
aW5zdGFsbC1wcmVmaXg9JHtEfSBcCiAgICAgICAgICAgICAgICAtLXdpdGgtcGVyc2lzdGVudC1k
aXJlY3Rvcnk9JHtsb2NhbHN0YXRlZGlyfS9saWIvbmV0LXNubXAgXAogICAgICAgICAgICAgICAg
JHtAYmFzZV9jb25kaXRpb25hbCgnU0lURUlORk9fRU5ESUFOTkVTUycsICdsZScsICctLXdpdGgt
ZW5kaWFubmVzcz1saXR0bGUnLCAnLS13aXRoLWVuZGlhbm5lc3M9YmlnJywgZCl9IgoKIyBuZXQt
c25tcCBuZWVkcyB0byBoYXZlIG1pYi1tb2R1bGVzPXNtdXggZW5hYmxlZCB0byBlbmFibGUgcXVh
Z2dhIHRvIHN1cHBvcnQgc25tcApFWFRSQV9PRUNPTkYgKz0gIi0td2l0aC1taWItbW9kdWxlcz1z
bXV4IgoKQ0FDSEVEX0NPTkZJR1VSRVZBUlMgPSAiIFwKICAgIGFjX2N2X2hlYWRlcl92YWxncmlu
ZF92YWxncmluZF9oPW5vIFwKICAgIGFjX2N2X2hlYWRlcl92YWxncmluZF9tZW1jaGVja19oPW5v
IFwKICAgIGFjX2N2X0VUQ19NTlRUQUI9L2V0Yy9tdGFiIFwKICAgIGx0X2N2X3NobGlicGF0aF9v
dmVycmlkZXNfcnVucGF0aD15ZXMgXAoiCgpkb19jb25maWd1cmVfcHJlcGVuZCgpIHsKICAgIGV4
cG9ydCBQRVJMUFJPRz0iJHtiaW5kaXJ9L2VudiBwZXJsIgogICAgc2VkIC1pIC1lICJzfEkvdXNy
L2luY2x1ZGV8SSR7U1RBR0lOR19JTkNESVJ9fGciIFwKICAgICAgICAiJHtTfSIvY29uZmlndXJl
IFwKICAgICAgICAiJHtTfSIvY29uZmlndXJlLmQvY29uZmlnX29zX2xpYnMyCn0KCmRvX2luc3Rh
bGxfYXBwZW5kKCkgewogICAgaW5zdGFsbCAtZCAke0R9JHtzeXNjb25mZGlyfS9zbm1wCiAgICBp
bnN0YWxsIC1kICR7RH0ke3N5c2NvbmZkaXJ9L2luaXQuZAogICAgaW5zdGFsbCAtbSA3NTUgJHtX
T1JLRElSfS9pbml0ICR7RH0ke3N5c2NvbmZkaXJ9L2luaXQuZC9zbm1wZAogICAgaW5zdGFsbCAt
bSA2NDQgJHtXT1JLRElSfS9zbm1wZC5jb25mICR7RH0ke3N5c2NvbmZkaXJ9L3NubXAvCiAgICBp
bnN0YWxsIC1tIDY0NCAke1dPUktESVJ9L3NubXB0cmFwZC5jb25mICR7RH0ke3N5c2NvbmZkaXJ9
L3NubXAvCiAgICBpbnN0YWxsIC1kICR7RH0ke3N5c3RlbWRfdW5pdGRpcn0vc3lzdGVtCiAgICBp
bnN0YWxsIC1tIDA2NDQgJHtXT1JLRElSfS9zbm1wZC5zZXJ2aWNlICR7RH0ke3N5c3RlbWRfdW5p
dGRpcn0vc3lzdGVtCiAgICBpbnN0YWxsIC1tIDA2NDQgJHtXT1JLRElSfS9zbm1wdHJhcGQuc2Vy
dmljZSAke0R9JHtzeXN0ZW1kX3VuaXRkaXJ9L3N5c3RlbQogICAgc2VkICAgIC1lICJzQF5OU0Nf
U1JDRElSPS4qQE5TQ19TUkNESVI9LkBnIiBcCiAgICAgICAgLWkgJHtEfSR7YmluZGlyfS9uZXQt
c25tcC1jcmVhdGUtdjMtdXNlcgogICAgc2VkICAgIC1lICJzQF5OU0NfU1JDRElSPS4qQE5TQ19T
UkNESVI9LkBnIiBcCiAgICAgICAgLWkgJHtEfSR7YmluZGlyfS9uZXQtc25tcC1jb25maWcKfQoK
ZG9faW5zdGFsbF9wdGVzdCgpIHsKICAgIGluc3RhbGwgLWQgJHtEfSR7UFRFU1RfUEFUSH0KICAg
IGZvciBpIGluICR7U30vZGlzdCAke1N9L2luY2x1ZGUgJHtCfS9pbmNsdWRlICR7U30vbWlicyAk
e1N9L2NvbmZpZ3VyZSBcCiAgICAgICAgJHtCfS9uZXQtc25tcC1jb25maWcgJHtTfS90ZXN0aW5n
OyBkbwogICAgICAgIGlmIFsgLWUgIiRpIiBdOyB0aGVuCiAgICAgICAgICAgIGNwIC1SIC0tbm8t
ZGVyZWZlcmVuY2UgLS1wcmVzZXJ2ZT1tb2RlLGxpbmtzIC12ICIkaSIgJHtEfSR7UFRFU1RfUEFU
SH0KICAgICAgICBmaQogICAgZG9uZQogICAgZWNobyBgYXV0b2NvbmYgLVZ8YXdrICcvYXV0b2Nv
bmYve3ByaW50ICRORn0nYCA+ICR7RH0ke1BURVNUX1BBVEh9L2Rpc3QvYXV0b2NvbmYtdmVyc2lv
bgoKICAgIHJtZGxpc3Q9IiR7RH0ke1BURVNUX1BBVEh9L2Rpc3QvbmV0LXNubXAtc29sYXJpcy1i
dWlsZCIKICAgIGZvciBpIGluICRybWRsaXN0OyBkbwogICAgICAgIGlmIFsgLWQgIiRpIiBdOyB0
aGVuCiAgICAgICAgICAgIHJtIC1yZiAiJGkiCiAgICAgICAgZmkKICAgIGRvbmUKfQoKU1lTUk9P
VF9QUkVQUk9DRVNTX0ZVTkNTICs9ICJuZXRfc25tcF9zeXNyb290X3ByZXByb2Nlc3MiCgpuZXRf
c25tcF9zeXNyb290X3ByZXByb2Nlc3MgKCkgewogICAgaWYgWyAtZSAke0R9JHtiaW5kaXJ9L25l
dC1zbm1wLWNvbmZpZyBdOyB0aGVuCiAgICAgICAgaW5zdGFsbCAtZCAke1NZU1JPT1RfREVTVERJ
Un0ke2JpbmRpcl9jcm9zc3NjcmlwdHN9LwogICAgICAgIGluc3RhbGwgLW0gNzU1ICR7RH0ke2Jp
bmRpcn0vbmV0LXNubXAtY29uZmlnICR7U1lTUk9PVF9ERVNURElSfSR7YmluZGlyX2Nyb3Nzc2Ny
aXB0c30vCiAgICAgICAgc2VkIC1lICJzQC1JL3Vzci9pbmNsdWRlQC1JJHtTVEFHSU5HX0lOQ0RJ
Un1AZyIgXAogICAgICAgICAgICAtZSAic0BecHJlZml4PS4qQHByZWZpeD0ke1NUQUdJTkdfRElS
X0hPU1R9JHtwcmVmaXh9QGciIFwKICAgICAgICAgICAgLWUgInNAXmV4ZWNfcHJlZml4PS4qQGV4
ZWNfcHJlZml4PSR7U1RBR0lOR19FWEVDUFJFRklYRElSfUBnIiBcCiAgICAgICAgICAgIC1lICJz
QF5pbmNsdWRlZGlyPS4qQGluY2x1ZGVkaXI9JHtTVEFHSU5HX0lOQ0RJUn1AZyIgXAogICAgICAg
ICAgICAtZSAic0BebGliZGlyPS4qQGxpYmRpcj0ke1NUQUdJTkdfTElCRElSfUBnIiBcCiAgICAg
ICAgICAgIC1lICJzQF5OU0NfU1JDRElSPS4qQE5TQ19TUkNESVI9JHtTfUBnIiBcCiAgICAgICAg
ICAtaSAgJHtTWVNST09UX0RFU1RESVJ9JHtiaW5kaXJfY3Jvc3NzY3JpcHRzfS9uZXQtc25tcC1j
b25maWcKICAgIGZpCn0KClBBQ0tBR0VTICs9ICIke1BOfS1saWJzICR7UE59LW1pYnMgJHtQTn0t
c2VydmVyICR7UE59LWNsaWVudCAke1BOfS1zZXJ2ZXItc25tcGQgJHtQTn0tc2VydmVyLXNubXB0
cmFwZCIKCkFMTE9XX0VNUFRZXyR7UE59ID0gIjEiCkFMTE9XX0VNUFRZXyR7UE59LXNlcnZlciA9
ICIxIgoKRklMRVNfJHtQTn0tbGlicyA9ICIke2xpYmRpcn0vbGliKiR7U09MSUJTfSIKRklMRVNf
JHtQTn0tbWlicyA9ICIke2RhdGFkaXJ9L3NubXAvbWlicyIKRklMRVNfJHtQTn0tc2VydmVyLXNu
bXBkID0gIiR7c2JpbmRpcn0vc25tcGQgXAogICAgICAgICAgICAgICAgICAgICAgICAgICAgJHtz
eXNjb25mZGlyfS9zbm1wL3NubXBkLmNvbmYgXAogICAgICAgICAgICAgICAgICAgICAgICAgICAg
JHtzeXNjb25mZGlyfS9pbml0LmQgXAogICAgICAgICAgICAgICAgICAgICAgICAgICAgJHtzeXN0
ZW1kX3VuaXRkaXJ9L3N5c3RlbS9zbm1wZC5zZXJ2aWNlIFwKIgoKRklMRVNfJHtQTn0tc2VydmVy
LXNubXB0cmFwZCA9ICIke3NiaW5kaXJ9L3NubXB0cmFwZCBcCiAgICAgICAgICAgICAgICAgICAg
ICAgICAgICAgICAgJHtzeXNjb25mZGlyfS9zbm1wL3NubXB0cmFwZC5jb25mIFwKICAgICAgICAg
ICAgICAgICAgICAgICAgICAgICAgICAke3N5c3RlbWRfdW5pdGRpcn0vc3lzdGVtL3NubXB0cmFw
ZC5zZXJ2aWNlIFwKIgoKRklMRVNfJHtQTn0gPSAiIgpGSUxFU18ke1BOfS1jbGllbnQgPSAiJHti
aW5kaXJ9LyogJHtkYXRhZGlyfS9zbm1wLyIKRklMRVNfJHtQTn0tZGJnICs9ICIke2xpYmRpcn0v
LmRlYnVnLyAke3NiaW5kaXJ9Ly5kZWJ1Zy8gJHtiaW5kaXJ9Ly5kZWJ1Zy8iCkZJTEVTXyR7UE59
LWRldiArPSAiJHtiaW5kaXJ9L21pYjJjICR7YmluZGlyfS9taWIyYy11cGRhdGUiCgpDT05GRklM
RVNfJHtQTn0tc2VydmVyLXNubXBkID0gIiR7c3lzY29uZmRpcn0vc25tcC9zbm1wZC5jb25mIgpD
T05GRklMRVNfJHtQTn0tc2VydmVyLXNubXB0cmFwZCA9ICIke3N5c2NvbmZkaXJ9L3NubXAvc25t
cHRyYXBkLmNvbmYiCgpJTklUU0NSSVBUX1BBQ0tBR0VTID0gIiR7UE59LXNlcnZlci1zbm1wZCIK
SU5JVFNDUklQVF9OQU1FXyR7UE59LXNlcnZlci1zbm1wZCA9ICJzbm1wZCIKSU5JVFNDUklQVF9Q
QVJBTVNfJHtQTn0tc2VydmVyLXNubXBkID0gInN0YXJ0IDkwIDIgMyA0IDUgLiBzdG9wIDYwIDAg
MSA2IC4iCgpFWFRSQV9PRUNPTkYgKz0gIiR7QGJiLnV0aWxzLmNvbnRhaW5zKCdESVNUUk9fRkVB
VFVSRVMnLCAnc3lzdGVtZCcsICctLXdpdGgtc3lzdGVtZCcsICctLXdpdGhvdXQtc3lzdGVtZCcs
IGQpfSIKClNZU1RFTURfUEFDS0FHRVMgPSAiJHtQTn0tc2VydmVyLXNubXBkIFwKICAgICAgICAg
ICAgICAgICAgICAke1BOfS1zZXJ2ZXItc25tcHRyYXBkIgoKU1lTVEVNRF9TRVJWSUNFXyR7UE59
LXNlcnZlci1zbm1wZCA9ICJzbm1wZC5zZXJ2aWNlIgpTWVNURU1EX1NFUlZJQ0VfJHtQTn0tc2Vy
dmVyLXNubXB0cmFwZCA9ICAic25tcHRyYXBkLnNlcnZpY2UiCgpSREVQRU5EU18ke1BOfSArPSAi
bmV0LXNubXAtY2xpZW50IgpSREVQRU5EU18ke1BOfS1zZXJ2ZXItc25tcGQgKz0gIm5ldC1zbm1w
LW1pYnMiClJERVBFTkRTXyR7UE59LXNlcnZlci1zbm1wdHJhcGQgKz0gIm5ldC1zbm1wLXNlcnZl
ci1zbm1wZCIKUkRFUEVORFNfJHtQTn0tc2VydmVyICs9ICJuZXQtc25tcC1zZXJ2ZXItc25tcGQg
bmV0LXNubXAtc2VydmVyLXNubXB0cmFwZCIKUkRFUEVORFNfJHtQTn0tY2xpZW50ICs9ICJuZXQt
c25tcC1taWJzIgpSREVQRU5EU18ke1BOfS1wdGVzdCArPSAicGVybCBcCiAgICAgICAgICAgICAg
ICAgICAgICAgICBwZXJsLW1vZHVsZS10ZXN0IFwKICAgICAgICAgICAgICAgICAgICAgICAgIHBl
cmwtbW9kdWxlLWZpbGUtYmFzZW5hbWUgXAogICAgICAgICAgICAgICAgICAgICAgICAgcGVybC1t
b2R1bGUtZ2V0b3B0LWxvbmcgXAogICAgICAgICAgICAgICAgICAgICAgICAgcGVybC1tb2R1bGUt
ZmlsZS10ZW1wIFwKICAgICAgICAgICAgICAgICAgICAgICAgIHBlcmwtbW9kdWxlLWRhdGEtZHVt
cGVyIFwKIgpSREVQRU5EU18ke1BOfS1kZXYgPSAibmV0LXNubXAtY2xpZW50ICg9ICR7RVhURU5E
UEtHVn0pIG5ldC1zbm1wLXNlcnZlciAoPSAke0VYVEVORFBLR1Z9KSIKUlJFQ09NTUVORFNfJHtQ
Tn0tZGJnID0gIm5ldC1zbm1wLWNsaWVudCAoPSAke0VYVEVORFBLR1Z9KSBuZXQtc25tcC1zZXJ2
ZXIgKD0gJHtFWFRFTkRQS0dWfSkiCgpSUFJPVklERVNfJHtQTn0tc2VydmVyLXNubXBkICs9ICIk
e1BOfS1zZXJ2ZXItc25tcGQtc3lzdGVtZCIKUlJFUExBQ0VTXyR7UE59LXNlcnZlci1zbm1wZCAr
PSAiJHtQTn0tc2VydmVyLXNubXBkLXN5c3RlbWQiClJDT05GTElDVFNfJHtQTn0tc2VydmVyLXNu
bXBkICs9ICIke1BOfS1zZXJ2ZXItc25tcGQtc3lzdGVtZCIKClJQUk9WSURFU18ke1BOfS1zZXJ2
ZXItc25tcHRyYXBkICs9ICIke1BOfS1zZXJ2ZXItc25tcHRyYXBkLXN5c3RlbWQiClJSRVBMQUNF
U18ke1BOfS1zZXJ2ZXItc25tcHRyYXBkICs9ICIke1BOfS1zZXJ2ZXItc25tcHRyYXBkLXN5c3Rl
bWQiClJDT05GTElDVFNfJHtQTn0tc2VydmVyLXNubXB0cmFwZCArPSAiJHtQTn0tc2VydmVyLXNu
bXB0cmFwZC1zeXN0ZW1kIgoKTEVBRF9TT05BTUUgPSAibGlibmV0c25tcC5zbyIK

--00000000000059bc840571607c9e--
