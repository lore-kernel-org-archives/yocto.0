Return-Path: <p_j_r_m@yahoo.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77E94E0086E; Thu,  5 Mar 2015 12:48:59 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (p_j_r_m[at]yahoo.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [98.138.121.118 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from nm48-vm6.bullet.mail.ne1.yahoo.com
	(nm48-vm6.bullet.mail.ne1.yahoo.com [98.138.121.118])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EB076E0083A
	for <yocto@yoctoproject.org>; Thu,  5 Mar 2015 12:48:55 -0800 (PST)
Received: from [127.0.0.1] by nm48.bullet.mail.ne1.yahoo.com with NNFMP;
	05 Mar 2015 20:48:54 -0000
Received: from [98.138.226.180] by nm48.bullet.mail.ne1.yahoo.com with NNFMP;
	05 Mar 2015 20:46:07 -0000
Received: from [98.138.89.162] by tm15.bullet.mail.ne1.yahoo.com with NNFMP;
	05 Mar 2015 20:46:06 -0000
Received: from [127.0.0.1] by omp1018.mail.ne1.yahoo.com with NNFMP;
	05 Mar 2015 20:46:06 -0000
X-Yahoo-Newman-Property: ymail-4
X-Yahoo-Newman-Id: 979126.71322.bm@omp1018.mail.ne1.yahoo.com
Received: (qmail 34557 invoked by uid 60001); 5 Mar 2015 20:46:05 -0000
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=yahoo.com; s=s1024;
	t=1425588365; bh=li8d6SAU/Q/n2Y4hJsszjc6jt45a7QoSyaXnaxdlCHc=;
	h=Message-ID:Date:From:Subject:To:MIME-Version:Content-Type:Content-Transfer-Encoding;
	b=I0/NMq7hXpfairb9KB70hfW3cMGrF64a1trpqhT7SKOHOsHU1FqqLiGDTR27n/eF9Imr10HeND9sh8XRU851HjlUwh7xPgY7nXspJbW1X1dN73a423D+ANmgDmS0fu4DPZJMwJOq5PhnyJ2qihSC4Z29kk3jYnUbUro4Pr45y2U=
X-YMail-OSG: 6xwBhFsVM1mHKs6L.xQvuid4ffEkewj1Rgkhu9jAotAUCqS
	PO2YOwrsXKdTHoAPL2EW8Ed2re2SPK04qoTwu_.keZ3Gf3yHjgYXnmkeFt8f
	kFzrIqYSnXw5ioCd922FR4xJqkp0gVhwuWQDe3zAnpw4zI7OjhRWpWku_8.C
	HEJt7NcL1TO2neuv08EXSnSI1I27ryaJRS6cAbSoSCWRCScV4Hpg77lufLTw
	EqnTUvryGOMsFhrrv_qHR9bMk3TzLfnK0n1mMihD.RuO8eWPNrc.ZR8ahynS
	I9_dW7RrvKuqz0mmUJv_pVNMRFmaXjy4.c2Ig7gy1DSoDovRh4qw_n9fCqMl
	MTaAOdLHl43FmFv9KWqk6yl2DAcFyBFCgUuMSCq1TEX.97FSLtJVa29OfMSk
	MvGNuGfap5Sm8PC88i_PluiN.s.mlPOBLKICdH.R0eeZRfuyfwEK5vmc8VNE
	RMZqBYhIn8Oj1RSXEtPyBaTLLZOWafnvmfeW7TlvhiwW._h8zEAZHJA8g3I2
	rI2H9TVxQSnyQL46vKLqX4R2G6zo_feD5slIoVl_WfZjURc01QmQ7N4415Eh
	1mqk..nrYxRZmpUrNf0m2Od6Ia05T29XjyVIH1vF5mhlETosQJ5LG9WF4tG7
	e5Ipi2mSehHZyeKRgBaDfYm_LQ9bVDkiyWrNO4cou_vizOgRvJTcoG3LhKkh
	pUFfwOgEqJanK5mYqAIoZEp28PUz4pFqi8X6nzqmCVP_9eOVhaa0xUz5iuWz
	bvuWlgANUb0hLdaHFvm3eEwpk8xwUgqbjkNhPinseUuRs_VDSj4o-
Received: from [176.86.187.161] by web172303.mail.ir2.yahoo.com via HTTP;
	Thu, 05 Mar 2015 20:46:05 GMT
X-Rocket-MIMEInfo: 002.001,
	SSBoYXZlIGEgbGF5ZXIgbWV0YS1teWNvbXBhbnkgd2hlcmUgaSB3YW50IHRvIGFwcGVuZCB0byB0aGUgZ3J1Yl8yLjAwIHJlY2lwZSBwbGFjZWQgYXQgb3BlbmVtYmVkZGVkLWNvcmUgbGF5ZXIganVzdCB0byBhZGQgbXkgY3VzdG9tIGdydWIuY2ZnIGZpbGUuDQpBbHNvLCBJIHNlZSB0aGVyZSBpcyBBTFJFQURZIGEgZ3J1Yi0yLjAwLmJiYXBwZW5kIGZpbGUgaW4gbXkgQlNQIGxheWVyIChtZXRhLW1vbnRhdmlzdGEtMS40KS5NeSBsYXllciBoYXMgaGlnaGVzdCBwcmlvcml0eS4NCg0KU28gSSB3cm90ZSBhIHIBMAEBAQE-
X-Mailer: YahooMailClassic/1004 YahooMailWebService/0.8.203.740
Message-ID: <1425588365.20158.YahooMailBasic@web172303.mail.ir2.yahoo.com>
Date: Thu, 5 Mar 2015 20:46:05 +0000
From: p_j_r_m <p_j_r_m@yahoo.com>
To: yocto@yoctoproject.org
MIME-Version: 1.0
Subject: Append recipe LICENCE checksum problem
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
X-List-Received-Date: Thu, 05 Mar 2015 20:48:59 -0000
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: quoted-printable

I have a layer meta-mycompany where i want to append to the grub_2.00 recip=
e placed at openembedded-core layer just to add my custom grub.cfg file.
Also, I see there is ALREADY a grub-2.00.bbappend file in my BSP layer (met=
a-montavista-1.4).My layer has highest priority.

So I wrote a recipe called grub-2.00.bbappend like this in my layer:

FILESEXTRAPATHS_prepend :=3D "${THISDIR}/files:"
SRC_URI =3D "file://grub${MYBOARD}.cfg "
FILES_${PN}_append =3D "${base_prefix}/boot"

do_install_append() {
  if [ ! -d ${D}${base_prefix}/boot/grub ]
  then
     install -m 0755 -d ${S}${base_prefix}/boot/grub ${D}${base_prefix}/boo=
t/grub
  fi
  install -m 0755 ${WORKDIR}/grub${MYBOARD}.cfg ${D}${base_prefix}/boot/gru=
b/grub.cfg
}

$MYBOARD is a custom name just to pick up the proper grub file for each pla=
tform.=20

But when i do a "bitbake grub" I get:

NOTE: Executing RunQueue Tasks
ERROR: Function failed: grub: LIC_FILES_CHKSUM points to an invalid file: /=
opt/work/tmp/work/x86_64-montavista-linux/grub/2.00-r1.2.2/grub-2.00/COPYIN=
G
ERROR: Logfile of failure stored in: /opt/work/tmp/work/x86_64-montavista-l=
inux/grub/2.00-r1.2.2/temp/log.do_configure.628
Log data follows:
| DEBUG: Executing python function sysroot_cleansstate
...
| DEBUG: Python function do_qa_configure finished
| ERROR: Function failed: grub: LIC_FILES_CHKSUM points to an invalid file:=
 /opt/work/tmp/work/x86_64-montavista-linux/grub/2.00-r1.2.2/grub-2.00/COPY=
ING
ERROR: Task 5 (/opt/work/tmp/layers/openembedded-core-1.4-1411101352/openem=
bedded-core-1.4-1411101352/meta/recipes-bsp/grub/grub_2.00.bb, do_configure=
) failed with exit code '1'

If i take my layer out of my conf/extra-layers.conf ,recipe builds ok.

My layer is:

releases
=E2=94=9C=E2=94=80=E2=94=80 meta-mycompany
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 conf
=E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=80=E2=94=80 lay=
er.conf
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 README
=E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 recipes
=E2=94=82=C2=A0=C2=A0  =C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 grub
=E2=94=82=C2=A0=C2=A0  =C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=9C=E2=94=
=80=E2=94=80 files
=E2=94=82=C2=A0=C2=A0  =C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=
=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 grubatca.cfg
=E2=94=82=C2=A0=C2=A0  =C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=82=C2=A0=
=C2=A0 =E2=94=94=E2=94=80=E2=94=80 grubmni.cfg
=E2=94=82=C2=A0=C2=A0  =C2=A0=C2=A0 =E2=94=82=C2=A0=C2=A0 =E2=94=94=E2=94=
=80=E2=94=80 grub_2.00.bbappend
=E2=94=82=C2=A0=C2=A0  =C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=80 images
=E2=94=82=C2=A0=C2=A0 =C2=A0=C2=A0  =C2=A0=C2=A0 =E2=94=9C=E2=94=80=E2=94=
=80 mycompany-atca-image.bb
=E2=94=82=C2=A0=C2=A0  =C2=A0=C2=A0  =C2=A0 =E2=94=94=E2=94=80=E2=94=80 myc=
ompany-atca-image-buildcf.bb
=E2=94=9C=E2=94=80=E2=94=80 meta-mycompany.tar.bz2
=E2=94=9C=E2=94=80=E2=94=80 meta-mycompany.tar.bz2.md5

Do you know what is the problem?=20
Must an .append recipe also provide a LICENCE file? Where?

Thank you

