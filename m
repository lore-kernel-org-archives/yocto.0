Return-Path: <markus.fuchs@br-automation.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6452AE00BD5; Mon,  8 Jul 2019 08:13:10 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [213.33.116.61 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
X-Greylist: delayed 901 seconds by postgrey-1.32 at yocto-www;
	Mon, 08 Jul 2019 08:13:08 PDT
Received: from mail2.br-automation.com (mail2.br-automation.com
	[213.33.116.61])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E4964E00BA1
	for <yocto@yoctoproject.org>; Mon,  8 Jul 2019 08:13:08 -0700 (PDT)
X-AuditID: c0a80110-f57ff7000000432e-0c-5d2359fdd8bc
Received: from brsmtp01.br-automation.com (Unknown_Domain [192.168.1.60])
	by mail2.br-automation.com () with SMTP id E3.6C.17198.DF9532D5;
	Mon,  8 Jul 2019 16:58:06 +0200 (CEST)
In-Reply-To: 
From: "Markus Fuchs" <markus.fuchs@br-automation.com>
To: yocto@yoctoproject.org
Message-ID: <OF0537878C.D248825F-ONC1258431.00518B2A-C1258431.00523912@LocalDomain>
Date: Mon, 8 Jul 2019 16:58:05 +0200
MIME-Version: 1.0
Sensitivity: 
Importance: Normal
X-Priority: 3 (Normal)
References: 
X-Mailer: Lotus Domino Web Server Release 9.0.1FP10 HF197 April 16, 2018
X-MIMETrack: Serialize by HTTP Server on ATEGGE09/Eggelsberg/AT/B&R(Release
	9.0.1FP10 HF197|April 16, 2018) at 08.07.2019 16:58:05,
	Serialize complete at 08.07.2019 16:58:05
X-Disclaimed: 61735
X-Brightmail-Tracker: H4sIAAAAAAAAA+NgFtrHLMWRmVeSWpSXmKPExsVyYAWjje6/SOVYgxu3OS0mvVzD5sDo0X6i
	jy2AMYrLJiU1J7MstUjfLoEr4+q+7+wFTcIVH1e/Y2pgvCHQxcjJISFgIrHtyl/2LkYuDiGB
	zYwSJ9d9Y+5i5ODgFOCVmPDPGsQUFjCX+NuVAlLOJmAq8eXKb3YQW0RASuLA3KnMIDaTAKtE
	6/5DYDavQLDEgv+tjCA2i4CKxLfV98DqmQW0JZYtfA02nVlAXWL9PCGIckGJkzOfsIDYwkBL
	N72dDdbKKSAk0XG1kxXiSjGJCet+gY0XEuCReLVhPyNE3ENi/dQj7BD2OkaJm6sFIWxhiQmP
	LzFNYBSehWTzLITNs5BsXsDIvIpRPDcxM8dIL6lIN7G0JD83sSQzP08vOT93EyMkjAV2MO5+
	o32IkYmD8RCjBAezkgjvPnflWCHelMTKqtSi/Pii0pzU4kOM0hwsSuK8K1dwxAoJpCeWpGan
	phakFsFkmTg4pRoYO/uEtu6bOc3olNH8+YE+VhOnJ+jtlv0U8uTq/s5t93YFb+ZerbxdyYf7
	6qR/sxvnvlZTy9pW+XPZx7qAjECFYvHUDRZS3saatxaoVX3KmiX60P49M+eFu8/Fc+Vqzlv1
	M0w9evv+BeWFOndjl94IUHH6tnzbB4PDsp2fWrS25Lde2RHi9rxMRImlOCPRUIu5qDgRAL8i
	ysNRAgAA
Subject: Incorporating closed source components
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
X-List-Received-Date: Mon, 08 Jul 2019 15:13:10 -0000
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain; charset=UTF-8

Hello,

I am trying to follow the steps from https://wiki.yoctoproject.org/wiki/Tip=
sAndTricks/Incorporating=5Fclosed=5Fsource=5Fcomponents
and created two recipes. A "source recipe" and a "binary recipe".

hello-world.bb
#########################################################################
SUMMARY =3D "proprietary hello world - source recipe"
LICENSE =3D "CLOSED"
LIC=5FFILES=5FCHKSUM =3D "file://LICENSE;md5=3De34ec694bef2a551fa384c1d1e67=
48c1"

inherit cmake

PV =3D "1.0.0"

SRC=5FURI =3D "https://<src-server>/hello-world-src.tar.gz;subdir=3D${PN}"

S =3D "${WORKDIR}/${PN}"
#########################################################################
This recipe creates the following packages with their content
hello-world-1.0.0-r0.cortexa9hf=5Fneon.rpm     -> /usr/bin/helloworld
hello-world-dbg-1.0.0-r0.cortexa9hf=5Fneon.rpm -> /usr/bin/.debug/helloworl=
d && /usr/src/debug/hello-world/1.0.0-r0/hello-world.c
hello-world-dev-1.0.0-r0.cortexa9hf=5Fneon.rpm -> nothing (correct in this =
example)
hello-world-lic-1.0.0-r0.cortexa9hf=5Fneon.rpm -> /usr/share/licences/hello=
-world/LICENSE


hello-world-bin.bb
#########################################################################
SUMMARY =3D "proprietary hello world - binary recipe"
LICENSE =3D CLOSED

PV =3D "1.0.0"

SRC=5FURI =3D "https://<artefact-server>/hello-world-1.0.0-r0.cortexa9hf=5F=
neon.rpm;subdir=3D${PN}"

S =3D "${WORKDIR}/${PN}"

INSANE=5FSKIP=5F${PN} =3D "already-stripped"
#########################################################################
This recipe creates the following packages with their content
hello-world-bin-1.0.0-r0.cortexa9hf=5Fneon.rpm     -> /usr/bin/helloworld
hello-world-bin-dbg-1.0.0-r0.cortexa9hf=5Fneon.rpm -> nothing
hello-world-bin-dev-1.0.0-r0.cortexa9hf=5Fneon.rpm -> nothing
hello-world-bin-lic-1.0.0-r0.cortexa9hf=5Fneon.rpm -> nothing


So far so good, but I wonder how the lic and dev packages also could be ins=
talled in the binary recipe, so that=20
hello-world-bin-lic* package includes the license file from hello-world-lic=
* package, etc.
Or at least that hello-world-bin-1.0.0-r0.cortexa9hf=5Fneon.rpm includes al=
l three of them (binary, lic and dev),
if someone wants to provide everything except the source files.

I guess there is a proper way to do this.

Thank you for your help

-- Markus Fuchs <markus.fuchs@br-automation.com>

