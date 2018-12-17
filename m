Return-Path: <kman.devnull@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id CA0DEE00C10; Mon, 17 Dec 2018 10:37:37 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (kman.devnull[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.166.179 listed in list.dnswl.org]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f179.google.com (mail-it1-f179.google.com
	[209.85.166.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4102CE00B92
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 10:37:37 -0800 (PST)
Received: by mail-it1-f179.google.com with SMTP id m62so366832ith.5
	for <yocto@yoctoproject.org>; Mon, 17 Dec 2018 10:37:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Edh1/xPU+su7PscG9EmXPYOUSsH5moS3KNe2GRdEzUA=;
	b=FKJeqq6E8X9fpQEkX7rcDfHenJFOkbOdJfphVuyAbC9G/G4MCnm21Fi3PUKwTq5cnK
	lw0IGuewbiSlAd79iho81DghLxmViDYuz8+jphdSQCU/wRrN9wlQDGB0h6sMA2AxpP52
	46g+MmLwYffG487wy0B2lSgjspVyBlGJwAQPm8b0K7K0tjQ8V41faCOvJaVM+w7Lb5ww
	OkrvAeyQKE+W+Bs8f4pi+eSeJ6C1x3qxYkKfgyX4SK1z5a/uIfTRhhjV8+A6VI+GMvYl
	Gi2VJaDSuppCeBnAR1uJUNzUi+yY6U/3N1S/wI+rsgo4KeUHyif8b16ubftNftGOyaSR
	Q8kw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Edh1/xPU+su7PscG9EmXPYOUSsH5moS3KNe2GRdEzUA=;
	b=h249G5ykMB65PDxAt2Jz4ukvwQ0V5ZGTc9wyZfnwNh9jQojqpsZYFhtN3OyNoLHh4y
	eJujnGGRVZqplYxifDe3IIoDmCtNhpqZvnEdXfEkxge4nsfwn98USGLSc3fkQ1qsjcpv
	YR3LeuzgMhiWE2VSuP5w/DyUzsSFNgt6SQB6HHANOwPb+k6HVSuV9JVOGkRUCIp1z4n/
	PC8a5s7NtSO4mIaqgfPAGxVqerlMerVoUglKjLqaI1YEb6QgABYCKmr5f63hXIZ6acHJ
	oNrpEnuNV9yeVjMagtHuy80gah4aZzuUmhUpn9c0gTLPsN/FokDM1d1Ueqzt3H1EcbCv
	72+A==
X-Gm-Message-State: AA+aEWZSMHJuRWjCAc6JjIoYUoGiipG75MkLMfeDP9+7x38/RBgbTTtm
	uk3DGeO79E/rMrN94n353DfTYlh3FXMCWbgEj3Tr0Bcg
X-Google-Smtp-Source: AFSGD/WV6iOMhpif144VgNbwu8SWGvaib+U4Y9lfOiz1G9HHb5w/Z0lLJLwsU4EDcKeECvShlqwCkMlmEQ6clKuNRps=
X-Received: by 2002:a24:67c2:: with SMTP id u185mr212787itc.171.1545071856481; 
	Mon, 17 Dec 2018 10:37:36 -0800 (PST)
MIME-Version: 1.0
From: Kman Devnull <kman.devnull@gmail.com>
Date: Mon, 17 Dec 2018 18:37:04 +0000
Message-ID: <CAAgpgm5i8HiLi_mT2aOXUk=1KtscFrHxkYeyaB-4=Hwseaewtg@mail.gmail.com>
To: yocto@yoctoproject.org
X-Mailman-Approved-At: Tue, 18 Dec 2018 08:06:28 -0800
Subject: Yocto - Rpi: u-boot --- hangs on boot?
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
X-List-Received-Date: Mon, 17 Dec 2018 18:37:37 -0000
X-Groupsio-MsgNum: 43568
Content-Type: multipart/mixed; boundary="0000000000002920ba057d3c1302"

--0000000000002920ba057d3c1302
Content-Type: multipart/alternative; boundary="0000000000002920b7057d3c1300"

--0000000000002920b7057d3c1300
Content-Type: text/plain; charset="UTF-8"

Hi,
How do you get the u-boot built with yocto for Raspberry Pi 3?

- I used this link
<https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html> to get
the base build working for q5-image on Raspberry Pi 3.
- I have used the yocto 'thud' release.
- Now in order to get u-boot build I added the below line for local.conf
file.
  RPI_USE_U_BOOT = "1"
- When I boot it just hangs on a rainbow colour screen.

Please find bblayers.conf and local.conf attached.

Kindly advice.

--0000000000002920b7057d3c1300
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div dir=3D"ltr">Hi,<div>How do you get the u-boot built w=
ith yocto for Raspberry Pi 3?</div><div><br></div><div>- I used this <a hre=
f=3D"https://jumpnowtek.com/rpi/Raspberry-Pi-Systems-with-Yocto.html">link<=
/a>=C2=A0to get the base build working for q5-image on Raspberry Pi 3.</div=
><div>- I have used the yocto &#39;thud&#39; release.</div><div>- Now in or=
der to get u-boot build I added the below line for local.conf file.</div><d=
iv>=C2=A0=C2=A0RPI_USE_U_BOOT =3D &quot;1&quot;</div><div>- When I boot it =
just hangs on a rainbow colour screen.</div><div><br><div>Please find bblay=
ers.conf and local.conf attached.</div></div><div><br></div><div>Kindly adv=
ice.</div><div><br></div></div></div>

--0000000000002920b7057d3c1300--

--0000000000002920ba057d3c1302
Content-Type: application/octet-stream; name="local.conf"
Content-Disposition: attachment; filename="local.conf"
Content-Transfer-Encoding: base64
Content-ID: <f_jpsnl7fz1>
X-Attachment-Id: f_jpsnl7fz1

IyBMb2NhbCBjb25maWd1cmF0aW9uIGZvciBtZXRhLXJwaSBpbWFnZXMKIyBZb2N0byBQcm9qZWN0
IDIuNiBQb2t5IGRpc3RyaWJ1dGlvbiBbdGh1ZF0gYnJhbmNoCiMgVGhpcyBpcyBhIHN5c3Zpbml0
IHN5c3RlbQoKTElDRU5TRV9GTEFHU19XSElURUxJU1QgPSAiY29tbWVyY2lhbCIKCkRJU1RST19G
RUFUVVJFUyA9ICJleHQyIG9wZW5nbCB1c2Job3N0ICR7RElTVFJPX0ZFQVRVUkVTX0xJQkN9IgoK
RElTVFJPX0ZFQVRVUkVTX0JBQ0tGSUxMX0NPTlNJREVSRUQgKz0gInB1bHNlYXVkaW8iCgpQUkVG
RVJSRURfUFJPVklERVJfanBlZyA9ICJsaWJqcGVnLXR1cmJvIgpQUkVGRVJSRURfUFJPVklERVJf
anBlZy1uYXRpdmUgPSAibGlianBlZy10dXJiby1uYXRpdmUiCgpQUkVGRVJSRURfUFJPVklERVJf
dWRldiA9ICJldWRldiIKVklSVFVBTC1SVU5USU1FX2luaXRfbWFuYWdlciA9ICJzeXN2aW5pdCIK
Ck1BQ0hJTkVfRkVBVFVSRVNfcmVtb3ZlID0gImFwbSIKCklNQUdFX0ZTVFlQRVMgPSAidGFyLnh6
IHJwaS1zZGltZyIKCiMgQ2hvb3NlIHRoZSBib2FyZCB5b3UgYXJlIGJ1aWxkaW5nIGZvcgojTUFD
SElORT0icmFzcGJlcnJ5cGkiCiNNQUNISU5FPSJyYXNwYmVycnlwaTAiCiNNQUNISU5FPSJyYXNw
YmVycnlwaTAtd2lmaSIKI01BQ0hJTkU9InJhc3BiZXJyeXBpMiIKTUFDSElORSA9ICJyYXNwYmVy
cnlwaTMiCiNNQUNISU5FPSJyYXNwYmVycnlwaS1jbSIKI01BQ0hJTkU9InJhc3BiZXJyeXBpLWNt
MyIKCkJCX05VTUJFUl9USFJFQURTID0gIjgiIApQQVJBTExFTF9NQUtFID0gIi1qIDgiCgojIyMj
IyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIwojIEZvciBSYXNwYmVycnkgUGksIHVuY29tbWVudCB0aGUgZm9sbG93aW5nIGJs
b2NrOgpSUElfVVNFX1VfQk9PVCA9ICIxIgojTUVOREVSX0JPT1RfUEFSVF9TSVpFX01CID0gIjQw
IgojSU1BR0VfSU5TVEFMTF9hcHBlbmQgPSAiIGtlcm5lbC1pbWFnZSBrZXJuZWwtZGV2aWNldHJl
ZSIKIyBJTUFHRV9GU1RZUEVTX3JlbW92ZSArPSAiIHJwaS1zZGltZyIKIwojIFlvY3RvIFN1bW8g
KDIuNSkgb3IgbmV3ZXIKI01FTkRFUl9QQVJUSVRJT05fQUxJR05NRU5UID0gIjQxOTQzMDQiCiMK
IyBZb2N0byBSb2NrbyAoMi40KSBvciBvbGRlcgojIE1FTkRFUl9QQVJUSVRJT05fQUxJR05NRU5U
X0tCID0gIjQwOTYiCiMKIyBMaW5lcyBiZWxvdyBub3QgbmVlZGVkIGZvciBZb2N0byBSb2NrbyAo
Mi40KSBvciBuZXdlci4KI0lNQUdFX0JPT1RfRklMRVNfYXBwZW5kID0gIiBib290LnNjciB1LWJv
b3QuYmluOyR7U0RJTUdfS0VSTkVMSU1BR0V9IgojS0VSTkVMX0lNQUdFVFlQRSA9ICJ1SW1hZ2Ui
CiMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMjIyMj
IyMjIyMjIyMjIyMjCgojIENob2ljZXMgYXJlIEltYWdlIG9yIHpJbWFnZSBpZiBOT1QgdXNpbmcg
dS1ib290IChubyB1LWJvb3QgaXMgdGhlIGRlZmF1bHQpCiMgQ2hvaWNlcyBhcmUgdUltYWdlIG9y
IHpJbWFnZSBpZiB1c2luZyB1LWJvb3QsIHRob3VnaCBpZiB5b3UgY2hvb3NlIHpJbWFnZQojIHdp
dGggdS1ib290IHlvdSB3aWxsIGFsc28gaGF2ZSB0byBjaGFuZ2UgdGhlIGJvb3Qgc2NyaXB0IGJv
b3QgY29tbWFuZAojS0VSTkVMX0lNQUdFVFlQRSA9ICJ6SW1hZ2UiCgpESVNBQkxFX09WRVJTQ0FO
ID0gIjEiCkVOQUJMRV9VQVJUID0gIjEiCkVOQUJMRV9SUEkzX1NFUklBTF9DT05TT0xFID0gIjEi
ClNFUklBTF9DT05TT0xFUyA9ICIxMTUyMDA7dHR5QU1BMCIKIyBTRVJJQUxfQ09OU09MRVNfZm9y
Y2V2YXJpYWJsZSA9ICIiCgojRExfRElSID0gIiR7SE9NRX0vb2Utc291cmNlcyIKI1NTVEFURV9E
SVIgPSAiL29lNC9ycGkvc3N0YXRlLWNhY2hlIgojVE1QRElSID0gIi9vZTQvcnBpL3RtcC10aHVk
IgoKRElTVFJPID0gInBva3kiClBBQ0tBR0VfQ0xBU1NFUyA9ICJwYWNrYWdlX2lwayIKCiMgaTY4
NiBvciB4ODZfNjQKU0RLTUFDSElORSA9ICJ4ODZfNjQiCgojIGZvciBubyByb290IHBhc3N3ZCB1
bmNvbW1lbnQgdGhlIGZvbGxvd2luZyBhbmQgY29tbWVudCB0aGUgdHdvIGV4dHJhIHVzZXIgbGlu
ZXMKRVhUUkFfSU1BR0VfRkVBVFVSRVMgPSAiZGVidWctdHdlYWtzIgoKIyBmb3IgYSByb290IHBh
c3N3ZCwgY2hhbmdlIGp1bXBub3d0ZWsgYmVsb3cgdG8geW91ciBwYXNzd29yZAojSU5IRVJJVCAr
PSAiZXh0cmF1c2VycyIKI0VYVFJBX1VTRVJTX1BBUkFNUyA9ICJ1c2VybW9kIC1QIGp1bXBub3d0
ZWsgcm9vdDsgIgoKIyB0aGlzIHdpbGwgZm9yY2Ugcm9vdCB0byBjaGFuZ2UgcGFzc3dvcmQgb24g
Zmlyc3QgbG9naW4KI0lOSEVSSVQgKz0gImNoYWdldXNlcnMiCiNDSEFHRV9VU0VSU19QQVJBTVMg
PSAiY2hhZ2UgLWQwIHJvb3Q7ICIKClVTRVJfQ0xBU1NFUyA9ICJpbWFnZS1ta2xpYnMgaW1hZ2Ut
cHJlbGluayIKUEFUQ0hSRVNPTFZFID0gIm5vb3AiClJNX09MRF9JTUFHRSA9ICIxIgpJTkhFUklU
ICs9ICJybV93b3JrIgpDT05GX1ZFUlNJT04gPSAiMSIK

--0000000000002920ba057d3c1302
Content-Type: application/octet-stream; name="bblayers.conf"
Content-Disposition: attachment; filename="bblayers.conf"
Content-Transfer-Encoding: base64
Content-ID: <f_jpsnnpjr1>
X-Attachment-Id: f_jpsnnpjr1

IyBQT0tZX0JCTEFZRVJTX0NPTkZfVkVSU0lPTiBpcyBpbmNyZWFzZWQgZWFjaCB0aW1lIGJ1aWxk
L2NvbmYvYmJsYXllcnMuY29uZgojIGNoYW5nZXMgaW5jb21wYXRpYmx5ClBPS1lfQkJMQVlFUlNf
Q09ORl9WRVJTSU9OID0gIjIiCgpCQlBBVEggPSAiJHtUT1BESVJ9IgpCQkZJTEVTID89ICIiCgpC
QkxBWUVSUyA/PSAiIFwKICAgIDw+L3lvY3RvX3RodWQvcG9reS10aHVkL21ldGEgXAogICAgPD4v
eW9jdG9fdGh1ZC9wb2t5LXRodWQvbWV0YS1wb2t5IFwKICAgIDw+L3lvY3RvX3RodWQvcG9reS10
aHVkL21ldGEtb3BlbmVtYmVkZGVkL21ldGEtb2UgXAogICAgPD4veW9jdG9fdGh1ZC9wb2t5LXRo
dWQvbWV0YS1vcGVuZW1iZWRkZWQvbWV0YS1tdWx0aW1lZGlhIFwKICAgIDw+L3lvY3RvX3RodWQv
cG9reS10aHVkL21ldGEtb3BlbmVtYmVkZGVkL21ldGEtbmV0d29ya2luZyBcCiAgICA8Pi95b2N0
b190aHVkL3Bva3ktdGh1ZC9tZXRhLW9wZW5lbWJlZGRlZC9tZXRhLXBlcmwgXAogICAgPD4veW9j
dG9fdGh1ZC9wb2t5LXRodWQvbWV0YS1vcGVuZW1iZWRkZWQvbWV0YS1weXRob24gXAogICAgPD4v
eW9jdG9fdGh1ZC9wb2t5LXRodWQvbWV0YS1xdDUgXAogICAgPD4veW9jdG9fdGh1ZC9wb2t5LXRo
dWQvbWV0YS1yYXNwYmVycnlwaSBcCiAgICA8Pi95b2N0b190aHVkL3Bva3ktdGh1ZC9ycGkvbWV0
YS1ycGkgXAoiCg==

--0000000000002920ba057d3c1302--
