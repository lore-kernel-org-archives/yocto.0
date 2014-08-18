Return-Path: <brunods.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9BEF7E007A2; Mon, 18 Aug 2014 15:38:37 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (brunods.linux[at]gmail.com)
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
	*      [209.85.215.53 listed in list.dnswl.org]
Received: from mail-la0-f53.google.com (mail-la0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 78A3CE006B5
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 15:38:35 -0700 (PDT)
Received: by mail-la0-f53.google.com with SMTP id gl10so5086823lab.26
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 15:38:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=en+styY40DUDI0u/5rrBBcqrjnAsBh/oouIayJU1l7A=;
	b=TjGvaQdEazvyRTWbL0gPUVPknhfCd1xVshYBQR4cT4Wkm6W3OuduNU+TH68aFCaJK+
	mgN6MjSa3genhb2ZIRsDnh1kZANghRIbtVIxxHczz1Je9ZWN0tFFTpqqkmpNbZB8nvpB
	C8HWlk6jQMggUDuqnUbqutULGP+0XC3he1NeVC3yzyPAkdaquAU9zaFN0x/brrvGGNtD
	BfKG2P2sOzdEQR8xxHZk2LOOFWwru/iVHqasZuuItesUtAVS619JHilbzktA1ZXqOlTy
	cHv64Mz5vWbFl7Bp346wd5bzdegW1UT2oHqzU/9QQgh5cN2GsPl+CSBYq3UO3mPTs9Qf
	c3iA==
MIME-Version: 1.0
X-Received: by 10.152.205.100 with SMTP id lf4mr32410119lac.8.1408401514758;
	Mon, 18 Aug 2014 15:38:34 -0700 (PDT)
Received: by 10.114.182.3 with HTTP; Mon, 18 Aug 2014 15:38:34 -0700 (PDT)
Date: Mon, 18 Aug 2014 19:38:34 -0300
Message-ID: <CAFUra0PoGZYVQHAD1YN-Lg_kFijyT2YDFBqLw0eH5=FZ4284Tg@mail.gmail.com>
From: =?UTF-8?Q?Bruno_Dal_B=C3=B3_Silva?= <brunods.linux@gmail.com>
To: yocto@yoctoproject.org
Subject: [vmdk] vmdk image not booting
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
X-List-Received-Date: Mon, 18 Aug 2014 22:38:37 -0000
Content-Type: multipart/alternative; boundary=001a11349d26fd08560500ef075c

--001a11349d26fd08560500ef075c
Content-Type: text/plain; charset=UTF-8

Hello,

I attempted the following configuration, with no luck:
-daisy branch
-core-image-minimal
-machine=genericx86
-IMAGE_FSTYPES += "vmdk"

Then I tried booting the vmdk in vmware and virtualbox players. But the
boot process stops just before hitting sysvinit, although the "live" image
works just fine. Am I missing something?

Thanks
Bruno

--001a11349d26fd08560500ef075c
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><br></div><div><span style=3D"font-family:arial,sans-=
serif;font-size:13px">Hello,</span><div style=3D"font-family:arial,sans-ser=
if;font-size:13px"><br></div><div style=3D"font-family:arial,sans-serif;fon=
t-size:13px">
I attempted the following configuration, with no luck:</div><div style=3D"f=
ont-family:arial,sans-serif;font-size:13px">-daisy branch</div><div style=
=3D"font-family:arial,sans-serif;font-size:13px">-core-image-minimal</div><=
div style=3D"font-family:arial,sans-serif;font-size:13px">
-machine=3Dgenericx86</div><div style=3D"font-family:arial,sans-serif;font-=
size:13px">-IMAGE_FSTYPES +=3D &quot;vmdk&quot;</div><div style=3D"font-fam=
ily:arial,sans-serif;font-size:13px"><br></div><div style=3D"font-family:ar=
ial,sans-serif;font-size:13px">
Then I tried booting the vmdk in vmware and virtualbox players. But the boo=
t process stops just before hitting sysvinit, although the &quot;live&quot;=
 image works just fine. Am I missing something?=C2=A0</div><div style=3D"fo=
nt-family:arial,sans-serif;font-size:13px">
<br></div><div style=3D"font-family:arial,sans-serif;font-size:13px">Thanks=
</div></div><div>Bruno=C2=A0</div>
</div>

--001a11349d26fd08560500ef075c--
