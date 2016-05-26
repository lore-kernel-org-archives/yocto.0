Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AE93DE00DC6; Thu, 26 May 2016 09:36:25 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
Received: from Perses.usurf.usu.edu (unknown [129.123.197.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2BE28E009AC
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 09:36:23 -0700 (PDT)
Received: from EK.usurf.usu.edu (172.31.35.73) by Perses.usurf.usu.edu
	(172.31.35.68) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Thu, 26 May 2016 10:36:23 -0600
Received: from EK.usurf.usu.edu (172.31.35.73) by Ek.usurf.usu.edu
	(172.31.35.73) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Thu, 26 May 2016 10:36:22 -0600
Received: from EK.usurf.usu.edu ([172.31.191.13]) by Ek.usurf.usu.edu
	([172.31.191.13]) with mapi id 15.00.1104.000; Thu, 26 May 2016 10:36:22
	-0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: "Burton, Ross" <ross.burton@intel.com>
Thread-Topic: [yocto] DEPENDS problem with core-image-full-cmdline
Thread-Index: AQHRt2fjPGIqNwxbtk+i7DSj2Ouu6w==
Date: Thu, 26 May 2016 16:36:22 +0000
Message-ID: <35cb4951b7994fd1a323e3da04d7978b@Ek.usurf.usu.edu>
References: <5fd08a77744a4c39943de4111eadd535@Ek.usurf.usu.edu>
	<CAJTo0LY-0iaFzY=fQSagQWHikUiMYo2P8wWvpetW1H23BTqKcA@mail.gmail.com>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.31.22.119]
MIME-Version: 1.0
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: DEPENDS problem with core-image-full-cmdline
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
X-List-Received-Date: Thu, 26 May 2016 16:36:25 -0000
X-Groupsio-MsgNum: 30193
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_35cb4951b7994fd1a323e3da04d7978bEkusurfusuedu_"

--_002_35cb4951b7994fd1a323e3da04d7978bEkusurfusuedu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

>     However, when building core-image-full-cmdline, I get the following=
=0A=
>     errors.=0A=
>=0A=
>=0A=
> The error is in the batctl recipe, does that also have a DEPENDS=3Dlibnl?=
=0A=
>=0A=
=0A=
Oh geez...I feel sheepish!=0A=
=0A=
Attached is my updated batctl recipe - still giving the same errors.=0A=
=0A=
ERROR: oe_runmake failed=0A=
ERROR: Function failed: do_compile (log file is located at =0A=
/opt/yocto/poky/build-vbox/tmp/work/corei7-64-sigma-linux/batctl/2016.1_git=
7a3d563466f368b9b50191f441b775bae46a77ca-r0/temp/log.do_compile.68518)=0A=
ERROR: Logfile of failure stored in: =0A=
/opt/yocto/poky/build-vbox/tmp/work/corei7-64-sigma-linux/batctl/2016.1_git=
7a3d563466f368b9b50191f441b775bae46a77ca-r0/temp/log.do_compile.68518=0A=
Log data follows:=0A=
| DEBUG: Executing shell function do_compile=0A=
| NOTE: make -j 32 -e MAKEFLAGS=3D=0A=
| Makefile:56: *** No libnl-3.0 development libraries found!.  Stop.=0A=
| ERROR: oe_runmake failed=0A=
| ERROR: Function failed: do_compile (log file is located at =0A=
/opt/yocto/poky/build-vbox/tmp/work/corei7-64-sigma-linux/batctl/2016.1_git=
7a3d563466f368b9b50191f441b775bae46a77ca-r0/temp/log.do_compile.68518)=0A=
ERROR: Task 581 =0A=
(/opt/yocto/poky/meta-sdl/meta-sigma/recipes-batman/batman/batctl_2016.1.bb=
, =0A=
do_compile) failed with exit code '1'=0A=
NOTE: Tasks Summary: Attempted 3480 tasks of which 3473 didn't need to =0A=
be rerun and 1 failed.=0A=
=0A=
=0A=
I did find that if I do:=0A=
=0A=
DEPENDS +=3D " batman-adv libnl"=0A=
=0A=
instead of=0A=
=0A=
DEPENDS_${PN} +=3D " batman-adv libnl"=0A=
=0A=
the problem goes away.  Can someone explain the difference?  As I =0A=
understood it, _${PN} basically created a DEPENDS variable for this =0A=
specific package and avoided touching others.  Is that not the case? =0A=
Can someone point me to the right section in the docs that would =0A=
enlighten me?=0A=
=0A=
Thanks!=0A=
=0A=
As an aside, with this DEPENDS fix I have a set of fully functional =0A=
recipes for batman-adv, batctl, and alfred if anyone is interested.  I =0A=
wasn't able to find any online that were up to date with the latest =0A=
Yocto releases and latest batman-adv.=0A=
=0A=
=0A=

--_002_35cb4951b7994fd1a323e3da04d7978bEkusurfusuedu_
Content-Type: text/plain; name="batctl_2016.1.bb"
Content-Description: batctl_2016.1.bb
Content-Disposition: attachment; filename="batctl_2016.1.bb"; size=739;
	creation-date="Thu, 26 May 2016 16:36:22 GMT";
	modification-date="Thu, 26 May 2016 16:36:22 GMT"
Content-Transfer-Encoding: base64

REVTQ1JJUFRJT04gPSAiQ29udHJvbCBhcHBsaWNhdGlvbiBmb3IgQi5BLlQuTS5BLk4uIHJvdXRp
bmcgcHJvdG9jb2wga2VybmVsIG1vZHVsZSBmb3IgbXVsdGktaG9wIGFkLWhvYyBtZXNoIG5ldHdv
cmtzLiIKSE9NRVBBR0UgPSAiaHR0cDovL3d3dy5vcGVuLW1lc2gubmV0LyIKU0VDVElPTiA9ICJj
b25zb2xlL25ldHdvcmsiClBSSU9SSVRZID0gIm9wdGlvbmFsIgpMSUNFTlNFID0gIkdQTHYzIgpM
SUNfRklMRVNfQ0hLU1VNID0gImZpbGU6Ly8uLi9DT1BZSU5HO21kNT1kMzIyMzliY2I2NzM0NjNh
Yjg3NGU4MGQ0N2ZhZTUwNCIKCkRFUEVORFMgKz0gIiBiYXRtYW4tYWR2IGxpYm5sIgpSREVQRU5E
U18ke1BOfSArPSAiIGtlcm5lbC1tb2R1bGUtYmF0bWFuLWFkdiIKUyA9ICIke1dPUktESVJ9L2dp
dCIKClNSQ1JFViA9ICI3YTNkNTYzNDY2ZjM2OGI5YjUwMTkxZjQ0MWI3NzViYWU0NmE3N2NhIgpT
UkNfVVJJID0gImdpdDovL2dpdC5vcGVuLW1lc2gub3JnL2JhdGN0bC5naXQgXAogICAgICAgICAg
IGZpbGU6Ly9DT1BZSU5HIFwKICAgICAgICAgICBmaWxlOi8vMDAwMF9iYXRjdGxfbWFrZWZpbGUt
ZmxhZ3MucGF0Y2ggXAogICAgICAgICAgIgoKUFYgPSAiMjAxNi4xX2dpdCR7U1JDUkVWfSIKCmRv
X2NvbXBpbGUoKSB7CiAgb2VfcnVubWFrZQp9Cgpkb19pbnN0YWxsKCkgewogIGluc3RhbGwgLWQg
JHtEfSR7YmluZGlyfQogIGluc3RhbGwgLW0gMDc1NSBiYXRjdGwgJHtEfSR7YmluZGlyfQp9Cg==

--_002_35cb4951b7994fd1a323e3da04d7978bEkusurfusuedu_--
