Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 2C72EE00524; Wed, 25 Jun 2014 20:22:18 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alberk[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.173 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qc0-f173.google.com (mail-qc0-f173.google.com
	[209.85.216.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id AA647E003FA
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 20:22:16 -0700 (PDT)
Received: by mail-qc0-f173.google.com with SMTP id l6so2599593qcy.32
	for <yocto@yoctoproject.org>; Wed, 25 Jun 2014 20:22:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=jYX2sXw5gK2XilX9/Fr/9oGVHr5BfBGRXvF0MR3Ci1Q=;
	b=P7qZyRkEn6sb2f73y+BIdknQfel0oND6dPtXqFR4KbFrAzioTPff8U5nysUd4KKnKb
	Hcy1MOKOkwRFR4LRKMtLaqhn6xQFGb4cAw0jJwbScBVIDxoWVgyS8dQ1b14XZnSaPQAg
	LqadtReUy97VNvbqOzX/PmEa7nlshx4K4AwSxtbUChSzSCb47Gijt855won/YQfjh8rc
	PnGrtzS/Qq67+F17chUf0TRza6No8ydmpCns7GhclYxKI+3R0nghBxcNPiEJaBnlboBw
	EY4B91zfejc6qarzU0PXDgFGmOOURsmqUkiB84Lqn7pNVTDh3YEpN8PDJ85TpBVwhsk/
	p/aw==
MIME-Version: 1.0
X-Received: by 10.140.94.103 with SMTP id f94mr17730125qge.64.1403752936188;
	Wed, 25 Jun 2014 20:22:16 -0700 (PDT)
Received: by 10.224.32.12 with HTTP; Wed, 25 Jun 2014 20:22:16 -0700 (PDT)
Date: Thu, 26 Jun 2014 11:22:16 +0800
Message-ID: <CACjDgAMwz1_OgND8VSLcze78Mb9oKVieP=uUAS3S0AmjT+SSLA@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: yocto@yoctoproject.org
Subject: Yocto on X86 Question
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
X-List-Received-Date: Thu, 26 Jun 2014 03:22:18 -0000
Content-Type: multipart/alternative; boundary=001a113acfb21d324104fcb4b330

--001a113acfb21d324104fcb4b330
Content-Type: text/plain; charset=UTF-8

Hi,

I am a newbie and would like help to point me the right direction with
regards to yocto project on X86 system with CF card as boot disk with AMI
or Phoenix Bios.   I have a few questions listed below

1) How do i build a project with read-only filesystem with an overylay
filesystem ?
   something similar to squashfs and jffs2 or something else.
2) How to i update the firmware after the initial burn to CF?  A web
interface update would be appreciated.
3) Is there a recipe or build-in function to reset the firmware to factory
setting via serial console or SSH, etc?

Thank you for helping.

Regards.

--001a113acfb21d324104fcb4b330
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I am a newbie and would like help t=
o point me the right direction with regards to yocto project on X86 system =
with CF card as boot disk with AMI or Phoenix Bios. =C2=A0 I have a few que=
stions listed below</div>
<div><br></div><div>1) How do i build a project with read-only filesystem w=
ith an overylay filesystem ?</div><div>=C2=A0 =C2=A0something similar to sq=
uashfs and jffs2 or something else.=C2=A0</div><div>2) How to i update the =
firmware after the initial burn to CF? =C2=A0A web interface update would b=
e appreciated.</div>
<div>3) Is there a recipe or build-in function to reset the firmware to fac=
tory setting via serial console or SSH, etc?</div><div><br></div><div>Thank=
 you for helping.</div><div><br></div><div>Regards.</div><div><br></div>
<div><br></div></div>

--001a113acfb21d324104fcb4b330--
