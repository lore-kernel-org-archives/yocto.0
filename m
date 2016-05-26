Return-Path: <Jonathan.Haws@sdl.usu.edu>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 191D0E00DC6; Thu, 26 May 2016 09:02:47 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.1 required=5.0 tests=BAYES_00,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.8 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 61 seconds by postgrey-1.32 at yocto-www;
	Thu, 26 May 2016 09:02:44 PDT
Received: from Perses.usurf.usu.edu (unknown [129.123.197.145])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6A54FE009AC
	for <yocto@yoctoproject.org>; Thu, 26 May 2016 09:02:44 -0700 (PDT)
Received: from EK.usurf.usu.edu (172.31.35.73) by Perses.usurf.usu.edu
	(172.31.35.68) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Thu, 26 May 2016 10:01:41 -0600
Received: from EK.usurf.usu.edu (172.31.35.73) by Ek.usurf.usu.edu
	(172.31.35.73) with Microsoft SMTP Server (TLS) id 15.0.1104.5;
	Thu, 26 May 2016 10:01:40 -0600
Received: from EK.usurf.usu.edu ([172.31.191.13]) by Ek.usurf.usu.edu
	([172.31.191.13]) with mapi id 15.00.1104.000; Thu, 26 May 2016 10:01:40
	-0600
From: Jonathan Haws <Jonathan.Haws@sdl.usu.edu>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Thread-Topic: DEPENDS problem with core-image-full-cmdline
Thread-Index: AQHRt2fjPGIqNwxbtk+i7DSj2Ouu6w==
Date: Thu, 26 May 2016 16:01:40 +0000
Message-ID: <5fd08a77744a4c39943de4111eadd535@Ek.usurf.usu.edu>
Accept-Language: en-US
X-MS-Has-Attach: yes
X-MS-TNEF-Correlator: 
x-ms-exchange-transport-fromentityheader: Hosted
x-originating-ip: [172.31.22.119]
MIME-Version: 1.0
Subject: DEPENDS problem with core-image-full-cmdline
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
X-List-Received-Date: Thu, 26 May 2016 16:02:47 -0000
X-Groupsio-MsgNum: 30191
Content-Language: en-US
Content-Type: multipart/mixed;
	boundary="_002_5fd08a77744a4c39943de4111eadd535Ekusurfusuedu_"

--_002_5fd08a77744a4c39943de4111eadd535Ekusurfusuedu_
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

I'm working on a recipe for batman-adv, which depends on libnl at build =0A=
time.=0A=
=0A=
I've attached my recipe for batman-adv.  It's pretty straightforward, =0A=
but the DEPENDS variable doesn't seem to work when I build =0A=
core-image-full-cmdline.  If I clean both libnl and batman-adv, then =0A=
bitbake batman-adv, it works as expected - libnl is built first, =0A=
followed by batman-adv.=0A=
=0A=
However, when building core-image-full-cmdline, I get the following errors.=
=0A=
=0A=
Thoughts?=0A=
=0A=
Thanks!=0A=
Jon=0A=
=0A=
=0A=
ERROR: oe_runmake failed=0A=
ERROR: Function failed: do_configure (log file is located at =0A=
/opt/yocto/poky/build-vbox/tmp/work/corei7-64-sigma-linux/batctl/2016.1_git=
7a3d563466f368b9b50191f441b775bae46a77ca-r0/temp/log.do_configure.98063)=0A=
ERROR: Logfile of failure stored in: =0A=
/opt/yocto/poky/build-vbox/tmp/work/corei7-64-sigma-linux/batctl/2016.1_git=
7a3d563466f368b9b50191f441b775bae46a77ca-r0/temp/log.do_configure.98063=0A=
Log data follows:=0A=
| DEBUG: Executing python function sysroot_cleansstate=0A=
| DEBUG: Python function sysroot_cleansstate finished=0A=
| DEBUG: Executing shell function do_configure=0A=
| NOTE: make -e MAKEFLAGS=3D clean=0A=
| Makefile:56: *** No libnl-3.0 development libraries found!.  Stop.=0A=
| ERROR: oe_runmake failed=0A=
| ERROR: Function failed: do_configure (log file is located at =0A=
/opt/yocto/poky/build-vbox/tmp/work/corei7-64-sigma-linux/batctl/2016.1_git=
7a3d563466f368b9b50191f441b775bae46a77ca-r0/temp/log.do_configure.98063)=0A=
ERROR: Task 580 =0A=
(/opt/yocto/poky/meta-sdl/meta-sigma/recipes-batman/batman/batctl_2016.1.bb=
, =0A=
do_configure) failed with exit code '1'=0A=
NOTE: Tasks Summary: Attempted 2290 tasks of which 2282 didn't need to =0A=
be rerun and 1 failed.=0A=
=0A=
=0A=
=0A=
-- =0A=
Jonathan R. Haws=0A=
Embedded Engineer=0A=
Space Dynamics Laboratory=0A=
jhaws@sdl.usu.edu=0A=

--_002_5fd08a77744a4c39943de4111eadd535Ekusurfusuedu_
Content-Type: text/plain; name="batman-adv_2016.1.bb"
Content-Description: batman-adv_2016.1.bb
Content-Disposition: attachment; filename="batman-adv_2016.1.bb"; size=806;
	creation-date="Thu, 26 May 2016 16:01:40 GMT";
	modification-date="Thu, 26 May 2016 16:01:40 GMT"
Content-Transfer-Encoding: base64

U1VNTUFSWSA9ICJCLkEuVC5NLkEuTi4gQWR2YW5jZWQgS2VybmVsIE1vZHVsZSIKREVTQ1JJUFRJ
T04gPSAiS2VybmVsIG1vZHVsZSBwcm92aWRpbmcgYmF0bWFuLWFkdiBtZXNoIG5ldHdvcmtpbmcg
Y2FwYWJpbGl0aWVzIgpMSUNFTlNFID0gIkdQTHYzIgpMSUNfRklMRVNfQ0hLU1VNID0gImZpbGU6
Ly8uLi9DT1BZSU5HO21kNT1kMzIyMzliY2I2NzM0NjNhYjg3NGU4MGQ0N2ZhZTUwNCIKCmluaGVy
aXQgbW9kdWxlCgpERVBFTkRTID0gIiBsaWJubCIKUkRFUEVORFNfJHtQTn0gPSAiIGtlcm5lbC1t
b2R1bGUtbGliY3JjMzJjIGtlcm5lbC1tb2R1bGUtYnJpZGdlIgpTID0gIiR7V09SS0RJUn0vZ2l0
IgoKU1JDUkVWID0gIjAxYTNhYTQzOTZlM2RhY2RlZTI5YTFjZTk2MDU3ZjUxZDAyZDRkZDAiClNS
Q19VUkkgPSAiZ2l0Oi8vZ2l0Lm9wZW4tbWVzaC5vcmcvYmF0bWFuLWFkdi5naXQgXAogICAgICAg
ICAgIGZpbGU6Ly9DT1BZSU5HIFwKICAgICAgICAgICBmaWxlOi8vMDAwMF9iYXRtYXYtYWR2X21h
a2VmaWxlLUtFUk5FTFBBVEgucGF0Y2g7cGF0Y2hkaXI9JHtTfTtzdHJpcGxldmVsPTAgXAogICAg
ICAgICAgIgoKUFYgPSAiMjAxNi4xX2dpdCR7U1JDUkVWfSIKCiMgVGhlIGluaGVyaXQgb2YgbW9k
dWxlLmJiY2xhc3Mgd2lsbCBhdXRvbWF0aWNhbGx5IG5hbWUgbW9kdWxlIHBhY2thZ2VzIHdpdGgK
IyAia2VybmVsLW1vZHVsZS0iIHByZWZpeCBhcyByZXF1aXJlZCBieSB0aGUgb2UtY29yZSBidWls
ZCBlbnZpcm9ubWVudC4KS0VSTkVMX01PRFVMRV9BVVRPTE9BRCArPSAiIGxpYmNyYzMyYyBiYXRt
YW4tYWR2Igo=

--_002_5fd08a77744a4c39943de4111eadd535Ekusurfusuedu_--
