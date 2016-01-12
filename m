Return-Path: <christrobridge@hotmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2788EE00A7D; Tue, 12 Jan 2016 05:07:29 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (christrobridge[at]hotmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [157.55.2.20 listed in list.dnswl.org]
Received: from DUB004-OMC3S11.hotmail.com (dub004-omc3s11.hotmail.com
	[157.55.2.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 8E62CE008A5
	for <yocto@yoctoproject.org>; Tue, 12 Jan 2016 05:07:27 -0800 (PST)
Received: from DUB130-W85 ([157.55.2.8]) by DUB004-OMC3S11.hotmail.com over
	TLS secured channel with Microsoft SMTPSVC(7.5.7601.23008); 
	Tue, 12 Jan 2016 05:07:26 -0800
X-TMN: [SekyZZr5FdcmuSZ6js07t4Wlet+RS2DB]
X-Originating-Email: [christrobridge@hotmail.com]
Message-ID: <DUB130-W85538824CF7E877027527ADACA0@phx.gbl>
From: Chris Trobridge <christrobridge@hotmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Date: Tue, 12 Jan 2016 13:07:25 +0000
Importance: Normal
MIME-Version: 1.0
X-OriginalArrivalTime: 12 Jan 2016 13:07:26.0741 (UTC)
	FILETIME=[2F4C0C50:01D14D3A]
Subject: Handling Duplicate Files
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
X-List-Received-Date: Tue, 12 Jan 2016 13:07:29 -0000
Content-Type: text/plain; charset="iso-8859-1"
Content-Transfer-Encoding: quoted-printable

(I posted this to openembedded-core but it appears to have got lost in the =
noise!)=0A=
=0A=
Hi=2C=0A=
=0A=
I have been looking into producing a 'python3-dbus' recipe=2C based on the=
=A0python-dbus recipe.=0A=
=0A=
This recipe outputs a couple of files that are version independent but end =
up overlapping and causing the build to fail:=0A=
/usr/lib/pkgconfig/dbus-python.pc=0A=
/usr/include/dbus-1.0/dbus/dbus-python.h=0A=
=0A=
These files are currently marked as python-version independent - the header=
 file has #ifdefs for python3.=0A=
=0A=
The immediate 'fix' was to follow the advice in the error text to add the f=
ile paths to=A0SSTATE_DUPWHITELIST.=0A=
=0A=
SSTATE_DUPWHITELIST is not mentioned much elsewhere and does not seem like =
a scalable solution. =A0Is there a preferred method to resolve the situatio=
n where two recipes install the same files?=0A=
=0A=
Thanks=2C=0A=
Chris=0A=
=0A=
 		 	   		  =

