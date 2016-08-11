Return-Path: <r10kindsofpeople@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E6C02E011BD; Thu, 11 Aug 2016 07:37:56 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (r10kindsofpeople[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.214.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-it0-f50.google.com (mail-it0-f50.google.com
	[209.85.214.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5CB9BE011B1
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 07:37:54 -0700 (PDT)
Received: by mail-it0-f50.google.com with SMTP id f6so7968240ith.0
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2016 07:37:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=ifzDBBu7SqWSsREzgkXykzodJmS2lHRfnxibnS4jBrI=;
	b=mfkYxu+0hCBh4AudpnDSLBohFJQ1xM9nUfxauM8Ol4rcRGynP9hJbZSr5DlvK50rOY
	rrN+8W4uY3/hifjMZ9thiHBpMye6Ia2S0ovVO76KkEYQYRheEBtsxq0mKdoSvW48KsYh
	O9+c2lSNd175bEbuRHSNGfvWTn+u635yoqRenQKJOtvI8pm/Bbon3UrL4uwpz0wjCwSc
	tRnAMQuwHTLJcRmxrHhn48DZW3leQ1pS2Bo5CpKN13A26KNQVv2+TEQLNnS+ySVacYv8
	d/jX2voZkK/uRV5CKEBytvxHBFDDqcyh2k1aBLuOgCvX6azWWbw0o6wBmAqNqoaPn1Zu
	Eqrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ifzDBBu7SqWSsREzgkXykzodJmS2lHRfnxibnS4jBrI=;
	b=Aje2E5SfAKI12MF5fHCZPAaV2uvqypJxzx/uLFjEWrPxfqMs0m36wIg8BeRXb4aeYC
	2CbT8Cb7hDWOJVsdvkNgAvInvk5h7I1lF4sm/mQkKugCUX1TQC1c28ewvIo3o1TlT8kS
	xfrxh0LdM0MxCRk01FU4h+NHlqDziggflVYjkFQoBo02I1w6tbHc8iMdM88ZuD2wPtpn
	/n05ggUoGA2GnD7G6NMNkiSnLfAVp8LTh7cGCXSCZzDmpoRGTxhr3Bg4a+S/3Vfai3f+
	StGp0YSohYTSri/Q33WJYRiiprI2ZSnZG5Jcq5qmkXCrNqShGobu1/vv7YDJL7YbnmG+
	DJRg==
X-Gm-Message-State: AEkoouuJ9wtq4FyF88iHp2LuLNKYmk8T8S/d3DVldZ+JkH3Cx9QIVeiDZbGyiuTMwxsPnAHwbtz6QWiLCaNg/Q==
X-Received: by 10.36.103.210 with SMTP id u201mr10504832itc.45.1470926273283; 
	Thu, 11 Aug 2016 07:37:53 -0700 (PDT)
MIME-Version: 1.0
From: r10kindsofpeople <r10kindsofpeople@gmail.com>
Date: Thu, 11 Aug 2016 14:37:42 +0000
Message-ID: <CAE8H0+VnpdcRb4WD5TDrVPSO6CZ0NqV5TDRptQW6tw0uVABJ9g@mail.gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Krogoth, Beaglebone Black, LCD...seeking direction
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
X-List-Received-Date: Thu, 11 Aug 2016 14:37:57 -0000
Content-Type: multipart/alternative; boundary=001a114ac808028f1b0539ccb6aa

--001a114ac808028f1b0539ccb6aa
Content-Type: text/plain; charset=UTF-8

My overall goal is to get the 4D 4.3" LCD cape working on the BBB, with
Yocto and Qt5 linuxfb.

I've got Krogoth/core-image-sato booting on the BBB using the standard
Yocto BSP, but there's no sign of activity on the LCD.  I'm more than a bit
confused about the direction in which I should proceed; it seems like there
are several options but all/some are obsolete or losing favor.

Recognizing that much of this is a matter of opinion, I'm looking for the
path of least resistance to accomplish my goal and have something that's
maintainable.

Are the "cape manager" and "device trees" opposing solutions to enabling
the operating system to recognize and access the LCD ?  Which should I
pursue on the Krogoth 4.4 kernel?  Any good reference links available to
configure either?

I like the idea of a minimal build and adding in only what's necessary, but
am I shooting myself in the foot by going with the reference BSP instead of
something like the TI SDK?  or Angstrom?

John

--001a114ac808028f1b0539ccb6aa
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">My overall goal is to get the 4D 4.3&quot; LCD cape workin=
g on the BBB, with Yocto and Qt5 linuxfb. =C2=A0<div><br></div><div>I&#39;v=
e got Krogoth/core-image-sato booting on the BBB using the standard Yocto B=
SP, but there&#39;s no sign of activity on the LCD.=C2=A0 I&#39;m more than=
 a bit confused about the direction in which I should proceed; it seems lik=
e there are several options but all/some are obsolete or losing favor.</div=
><div><br></div><div>Recognizing that much of this is a matter of opinion, =
I&#39;m looking for the path of least resistance to accomplish my goal and =
have something that&#39;s maintainable. =C2=A0</div><div><br></div><div>Are=
 the &quot;cape manager&quot; and &quot;device trees&quot; opposing solutio=
ns to enabling the operating system to recognize and access the LCD ?=C2=A0=
 Which should I pursue on the Krogoth 4.4 kernel?=C2=A0 Any good reference =
links available to configure either? =C2=A0</div><div><br></div><div>I like=
 the idea of a minimal build and adding in only what&#39;s necessary, but a=
m I shooting myself in the foot by going with the reference BSP instead of =
something like the TI SDK? =C2=A0or Angstrom?</div><div><br></div><div>John=
</div></div>

--001a114ac808028f1b0539ccb6aa--
