Return-Path: <alberk@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 678B9E009AE; Tue, 16 Jun 2015 20:52:06 -0700 (PDT)
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
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.178 listed in list.dnswl.org]
Received: from mail-ig0-f178.google.com (mail-ig0-f178.google.com
	[209.85.213.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 66450E00939
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 20:52:03 -0700 (PDT)
Received: by igbos3 with SMTP id os3so59351200igb.0
	for <yocto@yoctoproject.org>; Tue, 16 Jun 2015 20:52:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=ZN1CtEidOQZH2AVxtKsW7JzSkkdpypNeCxzqita5Hhg=;
	b=QI1bYcRkgDYOczH/e33TL4YcnHDrEs98Gp2vqFpH7mGpnhI8b/YuC8tk75p44DOq34
	eOlX91hCFFek8YOvvY0M6XEJHQrxwZOvLmjT7dJTOsEYJQCtX1vvrGkyVAUYRlvbLRup
	AyJEsosqeZ4ivvJf8JHLfO7MeQTLl8gG7AIJuDj00f8GRJF9uPPGp7Vgim3ZFea0uc06
	P/upevwJ5NXSg8mRzSWvTCFQLREeKPKf9InDd8CAPs4BOPxnYHMsw0WQX8noAaCol5Bf
	L7VfMAwD37e1G4Ab9RlVqZjymWy3pN0kuDUQsz+GzfA6dh8BJTbIAmLGPA+ZbDJDJqRk
	gwTg==
MIME-Version: 1.0
X-Received: by 10.42.43.199 with SMTP id y7mr6503061ice.12.1434513122779; Tue,
	16 Jun 2015 20:52:02 -0700 (PDT)
Received: by 10.64.235.202 with HTTP; Tue, 16 Jun 2015 20:52:02 -0700 (PDT)
Date: Wed, 17 Jun 2015 11:52:02 +0800
Message-ID: <CACjDgAMQqkF==04mMtyXbPQw+47hQU=2w3HNs8+JSbZWFFrJgw@mail.gmail.com>
From: Albert K <alberk@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Recipe for ipset 6.x
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
X-List-Received-Date: Wed, 17 Jun 2015 03:52:06 -0000
Content-Type: multipart/alternative; boundary=bcaec51969411c05460518ae9d2f

--bcaec51969411c05460518ae9d2f
Content-Type: text/plain; charset=UTF-8

Hi,

Does anyone know where can I get the ipset recipe for yocto 1.7.1?  Thank
you.

--bcaec51969411c05460518ae9d2f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>Does anyone know where can I get th=
e ipset recipe for yocto 1.7.1?=C2=A0 Thank you.</div></div>

--bcaec51969411c05460518ae9d2f--
