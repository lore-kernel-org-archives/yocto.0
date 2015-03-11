Return-Path: <eddy.lai.tw@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8FB25E00779; Tue, 10 Mar 2015 19:58:16 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (eddy.lai.tw[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.218.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-oi0-f54.google.com (mail-oi0-f54.google.com
	[209.85.218.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 61F36E0076F
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 19:58:13 -0700 (PDT)
Received: by oiga141 with SMTP id a141so5396388oig.8
	for <yocto@yoctoproject.org>; Tue, 10 Mar 2015 19:58:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=dj82O8e9H6sNlHokagBqfT1GTdAhRYN6QVr/7KprE3Y=;
	b=E/EXwrIqF5iNd0e/KdwVXOsqpvAbfjSVEEQzuHZ7cKXA4fXdff9oNKMrGv4WE4R5Rl
	fM7OFSLFq16VIosy3Mb9jdoVnUMR3gnYW0kWcNg2TlzglfCOZHMJsT+xdnLUkJogCa0r
	bMRJgU9x/JYUe+GrSjlZ2TusIQF6HimKFpWLPEL6ZR4q0UlXXjb3Eyc+nWDVxdZd0Bg6
	D+YFhAH5mvKrojurglhMfBDCrfzv2lUNFdhczCIsKXhWwNY/AJ5hTqvzqfO0AThD8n2O
	/NiwXi+l3KIEbVRcaiQgLq8T44uf+EM1fhxdy2oDQq3uLoqEnkIzOe68aLQOnXJVeqyc
	n3mA==
MIME-Version: 1.0
X-Received: by 10.202.106.14 with SMTP id f14mr27243733oic.39.1426042692876;
	Tue, 10 Mar 2015 19:58:12 -0700 (PDT)
Received: by 10.76.4.173 with HTTP; Tue, 10 Mar 2015 19:58:12 -0700 (PDT)
Date: Wed, 11 Mar 2015 10:58:12 +0800
Message-ID: <CACrgodeQK4wgdfRSCKxoCoX7hTxO9X=6ZZ5Az6dMczbJ=kx6TQ@mail.gmail.com>
From: Lai Eddy <eddy.lai.tw@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: : open iscsi initiator recipe
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
X-List-Received-Date: Wed, 11 Mar 2015 02:58:16 -0000
Content-Type: multipart/alternative; boundary=001a1140365c24bd170510fa70d9

--001a1140365c24bd170510fa70d9
Content-Type: text/plain; charset=UTF-8

I want to use iscsi initiator on my yocto/mohonpeak target,
so I tried open-iscsi-kernel and iscsi-initiator-utils inside
meta-cloud-servcies
but the iscsid doesnt working on the target,
how to setup a  working iscsi initiator for yocto/ i7m64 target?

--001a1140365c24bd170510fa70d9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div>I want to use iscsi initiator on my yocto/m=
ohonpeak target,<br></div>so I tried open-iscsi-kernel and iscsi-initiator-=
utils inside meta-cloud-servcies<br></div>but the iscsid doesnt working on =
the target,<br></div>how to setup a=C2=A0 working iscsi initiator for yocto=
/ i7m64 target?<br></div>

--001a1140365c24bd170510fa70d9--
