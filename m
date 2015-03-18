Return-Path: <danielhilst@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1652AE00828; Wed, 18 Mar 2015 12:48:03 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (danielhilst[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.181 listed in list.dnswl.org]
Received: from mail-vc0-f181.google.com (mail-vc0-f181.google.com
	[209.85.220.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 367BFE0034E
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2015 12:47:59 -0700 (PDT)
Received: by mail-vc0-f181.google.com with SMTP id hy10so3158261vcb.12
	for <yocto@yoctoproject.org>; Wed, 18 Mar 2015 12:47:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=NFXo4StPO27P4WgbrcRwprYyPZAnnGew8G3y/pq4pys=;
	b=XIIVjdF1t+6qSQPqv58ITlSG7a5jbFX9B7HgS+PhPKRatWcMjNuH42iKX1d+P3MSWe
	6Qa5yQ5SebsZxFKzp8n054tRcjNDvfPoQwSDtkV5EQwJlwGniRhUjYrU8KsmNb/zfm2n
	S8yn7jwlZlwJ6iOr6lyyTMt/I5280cGUxoRT/OmUM6QY7QYV2utjVXNbCCF2+M2fsQ6N
	dTHBctPwjO9s9FocbbAVBsYsr7BPh/x1A3MviXSGCb93fv39XpOGjKjPnp8Pwqw89EBG
	xZ2gOYAxndTgNcxs6ZAgg/bcefN+F0KPJXpfkB4uTN0Ivg3xGAbqNo3Q7vNCn1JtdUug
	Wp9Q==
MIME-Version: 1.0
X-Received: by 10.52.171.110 with SMTP id at14mr8245017vdc.97.1426708078528;
	Wed, 18 Mar 2015 12:47:58 -0700 (PDT)
Received: by 10.52.229.67 with HTTP; Wed, 18 Mar 2015 12:47:58 -0700 (PDT)
Date: Wed, 18 Mar 2015 16:47:58 -0300
Message-ID: <CAF3SDA6jaYBacf3-bQWeqXSM1nWaX6DLZ=zcFOLTXRmM4AHyxw@mail.gmail.com>
From: "Daniel." <danielhilst@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: .rpm not being generated (or empty)
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
X-List-Received-Date: Wed, 18 Mar 2015 19:48:03 -0000
Content-Type: multipart/alternative; boundary=047d7b86f5c2380e240511955c89

--047d7b86f5c2380e240511955c89
Content-Type: text/plain; charset=UTF-8

Hi all,

I write a recipe to build an JNI layer for my C library, the JNI library
gets compiled right, but no .rpm is generated besides -dev and -dbg. I
suspect that the rpm is getting empty.

Here is the recipe: http://pastebin.com/vqtaM1Fv

Looking on package directory I got the compiled .so's
[root@arch 1.0-r0]# find package
package
package/usr
package/usr/lib
package/usr/lib/libDigitalInputJni.so
package/usr/lib/libDigitalOutputJni.so
package/usr/lib/.debug
package/usr/lib/.debug/libDigitalOutputJni.so
package/usr/lib/.debug/libDigitalInputJni.so

But on packages-split I got nothing:

[root@arch 1.0-r0]# ls packages-split/libdigitalio-jni
total 0


Any idea what I'm missing?


Regards,
Hilst

-- 
*"Do or do not. There is no try"*
  *Yoda Master*

--047d7b86f5c2380e240511955c89
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div>Hi all, <br><br></div>I write a recipe=
 to build an JNI layer for my C library, the JNI library gets compiled righ=
t, but no .rpm is generated besides -dev and -dbg. I suspect that the rpm i=
s getting empty. <br><br></div>Here is the recipe: <a href=3D"http://pasteb=
in.com/vqtaM1Fv">http://pastebin.com/vqtaM1Fv</a><br><br></div>Looking on p=
ackage directory I got the compiled .so&#39;s <br>[root@arch 1.0-r0]# find =
package<br>package<br>package/usr<br>package/usr/lib<br>package/usr/lib/lib=
DigitalInputJni.so<br>package/usr/lib/libDigitalOutputJni.so<br>package/usr=
/lib/.debug<br>package/usr/lib/.debug/libDigitalOutputJni.so<br>package/usr=
/lib/.debug/libDigitalInputJni.so<br><br></div>But on packages-split I got =
nothing:<br><br><div>[root@arch 1.0-r0]# ls packages-split/libdigitalio-jni=
<br>total 0<br><br><br></div><div>Any idea what I&#39;m missing?<br><br><br=
></div><div>Regards,<br></div><div>Hilst<br></div><div><div><div><div><div>=
<div><div><div><br>-- <br><div class=3D"gmail_signature"><div style=3D"text=
-align:right"><i>&quot;Do or do not. There is no try&quot;</i><br><i>=C2=A0=
 </i><i><b>Yoda Master</b></i><br></div></div>
</div></div></div></div></div></div></div></div></div>

--047d7b86f5c2380e240511955c89--
