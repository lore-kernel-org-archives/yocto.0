Return-Path: <r10kindsofpeople@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AC14AE0073D; Thu,  8 May 2014 08:31:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=0.5 required=5.0 tests=DKIM_SIGNED,DKIM_VALID,
	DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW,RDNS_NONE
	autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (r10kindsofpeople[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.219.45 listed in list.dnswl.org]
	*  1.3 RDNS_NONE Delivered to internal network by a host with no rDNS
X-Greylist: delayed 390 seconds by postgrey-1.32 at yocto-www;
	Thu, 08 May 2014 08:31:50 PDT
Received: from mail-oa0-f45.google.com (unknown [209.85.219.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 191AEE00478
	for <yocto@yoctoproject.org>; Thu,  8 May 2014 08:31:50 -0700 (PDT)
Received: by mail-oa0-f45.google.com with SMTP id l6so3249133oag.4
	for <yocto@yoctoproject.org>; Thu, 08 May 2014 08:31:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=MlGM8E7ofziVI2Xoha4f0Jo7sdinFpmgvtOjXPwbuBc=;
	b=UxGaySvheyDYp1o7LhmKVlP+2k4nXoPcr6blttm4McfPj6syhSi1xqwbYHhYhWI3k6
	59t/JjEKmJ2E3T4LziV8kckiYHaD/cjYsmZ5wqfkUzNIqtMQgaMSlVbNhn9Vec/lGLbM
	RSc2Y1xWvPqq/EXju5GtNVRsIFXmdbIxgETpL8h4xGkyDr6KFdfH4nVnM23IncmE9gOd
	6TeqqDF+lu1sdApFkEof6JHnY3ofxeMV4+ELBtikCjQKBZ6Pb80g1j2RmwY7dN8C43pv
	2mLSchlDWUm+RAMQ1ZcfTtCJlRygKSfOdVltxg3z4a+Y1mBLZ96vuM+9i7qV92aKLgGK
	87MA==
MIME-Version: 1.0
X-Received: by 10.60.96.165 with SMTP id dt5mr4484204oeb.72.1399562720110;
	Thu, 08 May 2014 08:25:20 -0700 (PDT)
Received: by 10.76.87.163 with HTTP; Thu, 8 May 2014 08:25:20 -0700 (PDT)
Date: Thu, 8 May 2014 11:25:20 -0400
Message-ID: <CAE8H0+VttZYHVgAPtfTtEWS9TEJX1jC_jWRtH=gicSLkJuODWg@mail.gmail.com>
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: SATO on Intel DN2800MT
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
X-List-Received-Date: Thu, 08 May 2014 15:31:51 -0000
Content-Type: multipart/alternative; boundary=089e01184a72c6367a04f8e5161b

--089e01184a72c6367a04f8e5161b
Content-Type: text/plain; charset=UTF-8

I'm trying to experiment with the SATO build on a DN2800MT with a VGA
monitor, but can't seem to get going.  The binaries from Daisy and
genericX86 get as far as the Yocto progress bar complete, and then go
black.  Any quick hints?

I note also that genericX86 looks like a complete Yocto tree rather than
just BSP layers.  Am I right, and are there hints on how to combine this
with a generic Daisy tree for other processors/projects?

Yocto_11_0_0/genericx86-daisy-11.0.0/meta-yocto-bsp/recipes-graphics/xorg-xserver/xserver-xf86-config/genericx86/xorg.conf
is a zero length file.   ?

John

--089e01184a72c6367a04f8e5161b
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">I&#39;m trying to experiment with the SATO build on a DN28=
00MT with a VGA monitor, but can&#39;t seem to get going. =C2=A0The binarie=
s from Daisy and genericX86 get as far as the Yocto progress bar complete, =
and then go black. =C2=A0Any quick hints?<div>
<br></div><div>I note also that genericX86 looks like a complete Yocto tree=
 rather than just BSP layers. =C2=A0Am I right, and are there hints on how =
to combine this with a generic Daisy tree for other processors/projects?</d=
iv>
<div><br></div><div>Yocto_11_0_0/genericx86-daisy-11.0.0/meta-yocto-bsp/rec=
ipes-graphics/xorg-xserver/xserver-xf86-config/genericx86/xorg.conf is a ze=
ro length file. =C2=A0 ?</div><div><br></div><div>John</div></div>

--089e01184a72c6367a04f8e5161b--
