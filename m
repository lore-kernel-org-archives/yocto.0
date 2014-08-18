Return-Path: <brunods.linux@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 842F7E006B5; Mon, 18 Aug 2014 15:36:23 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bruno.dalbosilva[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f177.google.com (mail-lb0-f177.google.com
	[209.85.217.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CAE32E00563
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 15:36:14 -0700 (PDT)
Received: by mail-lb0-f177.google.com with SMTP id s7so4723519lbd.22
	for <yocto@yoctoproject.org>; Mon, 18 Aug 2014 15:36:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=JdxP30GvdWLWKOzRQ7/KFGq5ghZHzsT8wDZn7CVP9o4=;
	b=J1URVtoGFcAmmeAveQnPrPRVBKWRs2lFlqHmkjnZSJJkE6wE4ec78qWNKwRz2BCuw/
	+6rD+kv+JYfAENwNinPFJLCIMcz9fObZRg8HJ7LqZ9t93N61Mr7TOGavhp/LkBRjQEPN
	svlxrZGWxll4UOGldkNKXuvYnNWBpOyB7Wjh0RDunDrwYqou4CmhITWQnF6pCY/VUm+F
	muPZcfrtpsW0HZUjKKHRFeakZAZk9D5EaFUiKxh0WPhW5QLqH0O+wh9La2i0JYiaHzJs
	jo09+ScC6NbXQf7HXTJuUfaZLNploahaWFX2fhdXb9DIJBXlju8JaEDTGOUBWhVdks47
	JTzg==
MIME-Version: 1.0
X-Received: by 10.112.98.140 with SMTP id ei12mr30689273lbb.6.1408401373199;
	Mon, 18 Aug 2014 15:36:13 -0700 (PDT)
Sender: brunods.linux@gmail.com
Received: by 10.114.182.3 with HTTP; Mon, 18 Aug 2014 15:36:13 -0700 (PDT)
Date: Mon, 18 Aug 2014 19:36:13 -0300
X-Google-Sender-Auth: 4NNebX9FA-HFdCBZ_EU_Wj9yi6E
Message-ID: <CAFUra0Mw_ToxBmOfektb29+qpx7PGJL29BYWqtAqPEcZZk03eQ@mail.gmail.com>
From: =?UTF-8?Q?Bruno_Dal_B=C3=B3_Silva?= <bruno.dalbosilva@gmail.com>
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
X-List-Received-Date: Mon, 18 Aug 2014 22:36:23 -0000
Content-Type: multipart/alternative; boundary=001a1134604a8d050d0500eeff89

--001a1134604a8d050d0500eeff89
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hello,

I attempted the following configuration, with no luck:
-daisy branch
-core-image-minimal
-machine=3Dgenericx86
-IMAGE_FSTYPES +=3D "vmdk"

Then I tried booting the vmdk in vmware and virtualbox players. But the
boot process stops just before hitting sysvinit, although the "live" image
works just fine. Am I missing something?

Thanks

----
Bruno Dal B=C3=B3 Silva

--001a1134604a8d050d0500eeff89
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello,<div><br></div><div>I attempted the following config=
uration, with no luck:</div><div>-daisy branch</div><div>-core-image-minima=
l</div><div>-machine=3Dgenericx86</div><div>-IMAGE_FSTYPES +=3D &quot;vmdk&=
quot;</div>
<div><br></div><div>Then I tried booting the vmdk in vmware and virtualbox =
players. But the boot process stops just before hitting sysvinit, although =
the &quot;live&quot; image works just fine. Am I missing something?=C2=A0</=
div>
<div><br></div><div>Thanks</div><div><br clear=3D"all"><div><font color=3D"=
#666666">----<br>Bruno Dal B=C3=B3 Silva</font><div><font color=3D"#666666"=
><br></font></div></div>
</div></div>

--001a1134604a8d050d0500eeff89--
