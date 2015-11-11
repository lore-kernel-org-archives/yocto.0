Return-Path: <Virgi200@gmx.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 0192EE00B0B; Wed, 11 Nov 2015 00:46:45 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,FREEMAIL_FROM,
	HTML_MESSAGE, MIME_HTML_ONLY,
	RCVD_IN_DNSWL_LOW autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (virgi200[at]gmx.de)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [212.227.17.21 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	*  0.7 MIME_HTML_ONLY BODY: Message only has text/html MIME parts
Received: from mout.gmx.net (mout.gmx.net [212.227.17.21])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1389E00AF2
	for <yocto@yoctoproject.org>; Wed, 11 Nov 2015 00:46:41 -0800 (PST)
Received: from [217.5.143.100] by 3capp-gmx-bs64.server.lan (via HTTP); Wed,
	11 Nov 2015 09:46:40 +0100
MIME-Version: 1.0
Message-ID: <trinity-9b9a7186-a9d1-4ea3-a628-7a1e1e41e541-1447231599946@3capp-gmx-bs64>
From: "Virgilia  Eigner" <Virgi200@gmx.de>
To: yocto@yoctoproject.org
Date: Wed, 11 Nov 2015 09:46:40 +0100
Importance: normal
Sensitivity: Normal
X-Priority: 3
X-Provags-ID: V03:K0:FOwLV4I7fa9cVz2jsfTT0C1FlYnP5Ni6exSyqGc9whT
	4o/nnFNAKQrlfe5h9OPMh6reEE99LghUnCWYed+RWRY8sxFJWO
	xHEc+TdxfJRv3wtYiVn1DnWeacxsgefOF9s/9YhyCM08PTy3V6
	mqfcM2LmDzxiF4srF4xzaHCZHjHKRc8xrITkPdHszEIN18aa5J
	hCt/HPYnMHRaX6UzmgPyAAPK1GkHgx886qlXyfaGLwBB9I8lwM
	5h5vy+OBiy9QNLo9gyh9rW3yK5t/yZCc3HyWlH0L3VTkLdtKa7 O2yes8=
X-UI-Out-Filterresults: notjunk:1;V01:K0:GLTihLyygro=:blBPGAxcuXuUAinhk2caqt
	ASAzIvSiLz6RPX7fwuQPUeG+urcQycXWFU8dxx8UEvjB9dAqT5QcPWMj3YipgxW8T38yLqxm5
	ITj/MTOethVgKLC1wNu0530zH26a5FRJVKLV+6OIg6ozTZnjq9fPsVHXujLDZD7zqlcHkGz+U
	06nHHxL3Vd9682nOmD0JLPBl+DHwFjpEhKjQg4uLeKk/k+HIkXdsdMKy6fYP3oiKqRmNrKgXS
	zrHSzIprZmvTFbtxFR0WhnnRlgGfgLNdXAPZgD6VOx2KBzuvt5P8hoLzMS/Mm/MXZyMv4AhlM
	PGSc9KP4ac8yv2kwIQxtzMfk0CazSCl8UTRb/mNtUpcVTULziaYK5K2K/oRA9xb429djZ6rbb
	3yiRXyVuJxkh1TDAl8namJitvd6kRXKyX+MFCcqz0D5Ejlg61DsN/c6H8/o9xJq3QqiAOHK/W
	Vd0DwTgbBA==
Subject: external-toolchain
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
X-List-Received-Date: Wed, 11 Nov 2015 08:46:46 -0000
Content-Type: text/html; charset=UTF-8

<html><head></head><body><div style="font-family: Verdana;font-size: 12.0px;"><div>Hi,</div>

<div>to start with yoctoproject for my new developed hardware, i would like to use my own crosstool-NG.<br/>
Instead of this, i use YP Core - Dizzy 1.7.3 build-system and<br/>
to simplify i am using the sourcery-toolchain layer(meta-sourcery-master).<br/>
But now i had to recognize that the versions are not compatible.</div>

<div>Please have a look at the output if I build the project:<br/>
&nbsp;<br/>
&nbsp;&nbsp; &nbsp;Extern_Toolchain gcc path &#39; /home/x-tools/powerpc-e500v2-linux-gnuspe/bin/powerpc-poky-linux-gcc&#39; does not exist<br/>
&nbsp;<br/>
The section after bin/ is wrong,&nbsp; for the TARGET_SYS i need: powerpc-e500v2-linux-gnuspe<br/>
My question now, is it possible to chance the distro version temporary for the external-toolchain.<br/>
&nbsp;<br/>
thanks,</div>

<div>Virgilia</div>

<div>&nbsp;</div></div></body></html>

