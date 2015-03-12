Return-Path: <priyaiitmandi@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id B59A3E00828; Thu, 12 Mar 2015 05:30:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,HTML_MESSAGE,RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.223.182 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ie0-f182.google.com (mail-ie0-f182.google.com
	[209.85.223.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 114E6E0034E;
	Thu, 12 Mar 2015 05:30:46 -0700 (PDT)
Received: by iecvj10 with SMTP id vj10so35410061iec.0;
	Thu, 12 Mar 2015 05:30:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=JC5NNipV6IPlZId5NrPiXhzbvBm0O+Kw4JnMTux5PYE=;
	b=DEXOibbXYrrrByLrR/uIHmU3eIsB63Fy37lbxuXur/v6n+b3trG/1NqyLKZ+pbgqeI
	d3WKO//6/DJIIDAl1BJkWvpzFTYwKBZyxZD27fTvvZW+v5CK1EF5K4ZvVlwT7nSvecom
	aUREe+ENPnC2vDrvwFxYILknsuQ2sFWBpTlWiWMEwA30TPHjkr8OQZN7JiUzdX/5Ck4E
	x3MUhuu5axfXWDEdzQaQ41L2t5CjmiqDpfKADbrxVVnmL/sO/NncyXEg39wsCLMQzXFz
	kdDhBa0FN2TUwpyB2n625hAZvxy6lMhJSbrwNeNh2onM+choMn0EEDqm1FkP0/4liwiC
	2NFw==
MIME-Version: 1.0
X-Received: by 10.42.101.8 with SMTP id c8mr47351237ico.61.1426163422329; Thu,
	12 Mar 2015 05:30:22 -0700 (PDT)
Sender: priyaiitmandi@gmail.com
Received: by 10.107.16.139 with HTTP; Thu, 12 Mar 2015 05:30:22 -0700 (PDT)
Date: Thu, 12 Mar 2015 18:00:22 +0530
X-Google-Sender-Auth: x5QQj3TXzLtkPN3ibeLqnhtMe7o
Message-ID: <CALTPfpHK3-q9Xdv-ff_vgP7suRXuSzXEQVNq2wnbPj6hrosvdg@mail.gmail.com>
From: Priya Agarwal <priya_agarwal@students.iitmandi.ac.in>
To: "yocto-builds@yoctoproject.org" <yocto-builds@yoctoproject.org>,
	yocto@yoctoproject.org
Subject: Linking of external libraries in the recipe
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
X-List-Received-Date: Thu, 12 Mar 2015 12:30:55 -0000
X-Groupsio-MsgNum: 23989
Content-Type: multipart/mixed; boundary=f46d04374a532e59d10511168c76

--f46d04374a532e59d10511168c76
Content-Type: multipart/alternative; boundary=f46d04374a532e59cc0511168c74

--f46d04374a532e59cc0511168c74
Content-Type: text/plain; charset=UTF-8

Hello,

I have taken a recipe for the package squid from OpenEmbedded.org and have
built it along with the kernel image.

Now I want to edit its recipe so that it will include some external
libraries.
But these libraries are the ones that are generated during the build. So
how do I edit the recipe to include those libraries?

Location of library:  ../yocto/<build-directory>/............/libusdpaa.a

currently the do_compile task is failing as I have used an extra function
whose library I haven't included. Snippet of the error:

| main.cc: In function 'int SquidMainSafe(int, char**)':
| *main.cc:1259:10: error: 'of_init' was not declared in this scope*
| make[3]: *** [main.o] Error 1
| make[3]: *** Waiting for unfinished jobs....
| make[3]: Leaving directory
`/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
| make[2]: *** [all-recursive] Error 1
| make[2]: Leaving directory
`/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
| make[1]: *** [all] Error 2
| make[1]: Leaving directory
`/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src'
| make: *** [all-recursive] Error 1
| ERROR: oe_runmake failed
| ERROR: Function failed: do_compile (see
/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/temp/log.do_compile.28810
for further information)
ERROR: Task 799
(/media/NewVolume/yocto/meta-oe/meta-networking/recipes-daemons/squid/
squid_3.4.7.bb, do_compile) failed with exit code '1'

I have attached my recipe.

--f46d04374a532e59cc0511168c74
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div>Hello,<br><br></div>I have t=
aken a recipe for the package squid from OpenEmbedded.org and have built it=
 along with the kernel image. <br></div><br>Now I want to edit its recipe s=
o that it will include some external libraries.<br>But these libraries are =
the ones that are generated during the build. So how do I edit the recipe t=
o include those libraries?<br><br></div>Location of library:=C2=A0 ../yocto=
/&lt;build-directory&gt;/............/libusdpaa.a<br></div><br></div>curren=
tly the do_compile task is failing as I have used an extra function whose l=
ibrary I haven&#39;t included. Snippet of the error:<br><br>| main.cc: In f=
unction &#39;int SquidMainSafe(int, char**)&#39;:<br>|<i> </i><u>main.cc:12=
59:10: error: &#39;of_init&#39; was not declared in this scope</u><br>| mak=
e[3]: *** [main.o] Error 1<br>| make[3]: *** Waiting for unfinished jobs...=
.<br>| make[3]: Leaving directory `/media/NewVolume/yocto/build_t4240qds_re=
lease/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.4.7/src=
&#39;<br>| make[2]: *** [all-recursive] Error 1<br>| make[2]: Leaving direc=
tory `/media/NewVolume/yocto/build_t4240qds_release/tmp/work/ppce6500-fsl_n=
etworking-linux/squid/3.4.7-r0/squid-3.4.7/src&#39;<br>| make[1]: *** [all]=
 Error 2<br>| make[1]: Leaving directory `/media/NewVolume/yocto/build_t424=
0qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r0/squid-3.=
4.7/src&#39;<br>| make: *** [all-recursive] Error 1<br>| ERROR: oe_runmake =
failed<br>| ERROR: Function failed: do_compile (see /media/NewVolume/yocto/=
build_t4240qds_release/tmp/work/ppce6500-fsl_networking-linux/squid/3.4.7-r=
0/temp/log.do_compile.28810 for further information)<br>ERROR: Task 799 (/m=
edia/NewVolume/yocto/meta-oe/meta-networking/recipes-daemons/squid/<a href=
=3D"http://squid_3.4.7.bb">squid_3.4.7.bb</a>, do_compile) failed with exit=
 code &#39;1&#39;<br><br></div>I have attached my recipe.<br><div><div><br>=
<div style=3D"margin-left:80px"><br></div></div></div></div>

--f46d04374a532e59cc0511168c74--

--f46d04374a532e59d10511168c76
Content-Type: application/octet-stream; name="squid_3.4.7.bb"
Content-Disposition: attachment; filename="squid_3.4.7.bb"
Content-Transfer-Encoding: base64
X-Attachment-Id: f_i764u97y0

U1VNTUFSWSA9ICJBIGZ1bGx5LWZlYXR1cmVkIGh0dHAgcHJveHkgYW5kIHdlYi1jYWNoZSBkYWVt
b24gZm9yIExpbnV4IgpERVNDUklQVElPTiA9ICJBIGZ1bGx5LWZlYXR1cmVkIGh0dHAgcHJveHkg
YW5kIHdlYi1jYWNoZSBkYWVtb24gZm9yIExpbnV4LiBcClNxdWlkIG9mZmVycyBhIHJpY2ggYWNj
ZXNzIGNvbnRyb2wsIGF1dGhvcml6YXRpb24gYW5kIGxvZ2dpbmcgZW52aXJvbm1lbnQgdG8gXApk
ZXZlbG9wIHdlYiBwcm94eSBhbmQgY29udGVudCBzZXJ2aW5nIGFwcGxpY2F0aW9ucy4gXApTcXVp
ZCBvZmZlcnMgYSByaWNoIHNldCBvZiB0cmFmZmljIG9wdGltaXphdGlvbiBvcHRpb25zLCBtb3N0
IG9mIHdoaWNoIGFyZSBcCmVuYWJsZWQgYnkgZGVmYXVsdCBmb3Igc2ltcGxlciBpbnN0YWxsYXRp
b24gYW5kIGhpZ2ggcGVyZm9ybWFuY2UuIFwKIgpIT01FUEFHRSA9ICJodHRwOi8vd3d3LnNxdWlk
LWNhY2hlLm9yZyIKU0VDVElPTiA9ICJuZXR3b3JrIgpMSUNFTlNFID0gIkdQTHYyKyIKCgpTUkNf
VVJJID0gImZpbGU6Ly8vbWVkaWEvTmV3Vm9sdW1lL3NvdXJjZS9zcXVpZC0zLjQuNy50YXIuYnoy
IFwKICAgICAgICAgICBmaWxlOi8vU2V0LXVwLWZvci1jcm9zcy1jb21waWxhdGlvbi5wYXRjaCBc
CiAgICAgICAgICAgZmlsZTovL1NraXAtQUNfUlVOX0lGRUxTRS10ZXN0cy5wYXRjaCBcCiAgICAg
ICAgICAgZmlsZTovL0ZpeC1mbGF3ZWQtZHluYW1pYy1sZGItbGluay10ZXN0LWluLWNvbmZpZ3Vy
ZS5wYXRjaCBcCiAgICAgICAgICAgZmlsZTovL0NoYW5nZS1rc2gtcmVmZXJlbmNlLWluLWtyYi1s
ZGFwLWhlbHBlci10by1iYXNoLnBhdGNoIFwKICAgICAgICAgICBmaWxlOi8vc3F1aWQtdXNlLXNl
cmlhbC10ZXN0cy1jb25maWctbmVlZGVkLWJ5LXB0ZXN0LnBhdGNoIFwKICAgICAgICAgICBmaWxl
Oi8vcnVuLXB0ZXN0IFwKICAgICAgICAgICBmaWxlOi8vdm9sYXRpbGVzLjAzX3NxdWlkIFwKIgoK
TElDX0ZJTEVTX0NIS1NVTSA9ICJmaWxlOi8vQ09QWUlORzttZDU9YzQ5MmUyZDZkMzJlYzVjMWFh
ZDBlMDYwOWExNDFjZTkgXCAKICAgICAgICAgICAgICAgICAgICBmaWxlOi8vQ09QWVJJR0hUO21k
NT0yOTAwZjUwNzg5YzQ5OGJlOGU5ZjFlYjIzYjU1Y2JlOSBcCiAgICAgICAgICAgICAgICAgICAi
ClNSQ19VUklbbWQ1c3VtXSA9ICI5OTUxMDM0YjEwZjdlZTBmNDVhOTVjZmFlNjFjNTdjMiIgClNS
Q19VUklbc2hhMjU2c3VtXSA9ICI3YjQyM2YzZDM0OTVhMzE3NTAzY2E1NTllYTUzNWY4MDQ0NWZk
N2M0ZTNjM2UyNjhjYjdhOGM5N2M2MWFmMmI2IiAKCkRFUEVORFMgPSAibGlidG9vbCBrcmI1IG9w
ZW5sZGFwIGRiIGN5cnVzLXNhc2wiCgppbmhlcml0IGF1dG90b29scyB1c2VyYWRkIHB0ZXN0CgpV
U0VSQUREX1BBQ0tBR0VTID0gIiR7UE59IgpVU0VSQUREX1BBUkFNXyR7UE59ID0gIi0tc3lzdGVt
IC0tbm8tY3JlYXRlLWhvbWUgLS1ob21lLWRpciAvdmFyL3J1bi9zcXVpZCAtLXNoZWxsIC9iaW4v
ZmFsc2UgLS11c2VyLWdyb3VwIHNxdWlkIgoKUEFDS0FHRUNPTkZJRyA/Pz0gIiIKUEFDS0FHRUNP
TkZJR1tsaWJuZXRmaWx0ZXItY29ubnRyYWNrXSA9ICItLXdpdGgtbmV0ZmlsdGVyLWNvbm50cmFj
az0ke2luY2x1ZGVkaXJ9LCAtLXdpdGhvdXQtbmV0ZmlsdGVyLWNvbm50cmFjaywgbGlibmV0Zmls
dGVyLWNvbm50cmFjayIKRVhUUkFfT0VDT05GICs9ICItLXdpdGgtZGVmYXVsdC11c2VyPXNxdWlk
IgoKVEVTVERJUiA9ICJ0ZXN0LXN1aXRlIgpkb19jb21waWxlX3B0ZXN0KCkgewogICAgb2VfcnVu
bWFrZSAtQyAke1RFU1RESVJ9IGJ1aWxkdGVzdC1URVNUUwp9Cgpkb19pbnN0YWxsX3B0ZXN0KCkg
ewogICAgY3AgLXJmICR7Qn0vJHtURVNURElSfSAke0R9JHtQVEVTVF9QQVRIfQogICAgY3AgLXJm
ICR7U30vJHtURVNURElSfSAke0R9JHtQVEVTVF9QQVRIfQoKICAgICMgZG8gTk9UIG5lZWQgdG8g
cmVidWlsZCBNYWtlZmlsZSBpdHNlbGYKICAgIHNlZCAtaSAncy9eTWFrZWZpbGU6LiokL01ha2Vm
aWxlOi8nICR7RH0ke1BURVNUX1BBVEh9LyR7VEVTVERJUn0vTWFrZWZpbGUKfQoKZG9faW5zdGFs
bF9hcHBlbmQoKSB7CglpbnN0YWxsIC1kICR7RH0ke3N5c2NvbmZkaXJ9L2RlZmF1bHQvdm9sYXRp
bGVzCglpbnN0YWxsIC1tIDA2NDQgJHtXT1JLRElSfS92b2xhdGlsZXMuMDNfc3F1aWQgICR7RH0k
e3N5c2NvbmZkaXJ9L2RlZmF1bHQvdm9sYXRpbGVzL3ZvbGF0aWxlcy4wM19zcXVpZAoJcm1kaXIg
IiR7RH0ke2xvY2Fsc3RhdGVkaXJ9L3J1bi8ke0JQTn0iCglybWRpciAtLWlnbm9yZS1mYWlsLW9u
LW5vbi1lbXB0eSAiJHtEfSR7bG9jYWxzdGF0ZWRpcn0vcnVuIgp9CgpGSUxFU18ke1BOfSArPSAi
JHtsaWJkaXJ9ICR7ZGF0YWRpcn0vZXJyb3JzICR7ZGF0YWRpcn0vaWNvbnMiCkZJTEVTXyR7UE59
LWRiZyArPSAiL3Vzci9zcmMvZGVidWciCkZJTEVTXyR7UE59LWRvYyArPSAiJHtkYXRhZGlyfS8q
LnR4dCIKClJERVBFTkRTXyR7UE59LXB0ZXN0ICs9ICJtYWtlIgo=

--f46d04374a532e59d10511168c76--
