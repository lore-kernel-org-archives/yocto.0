Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EABC9E00849; Wed, 24 Sep 2014 06:50:59 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
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
	*      [209.85.223.173 listed in list.dnswl.org]
Received: from mail-ie0-f173.google.com (mail-ie0-f173.google.com
	[209.85.223.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9366DE00842
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 06:50:53 -0700 (PDT)
Received: by mail-ie0-f173.google.com with SMTP id tr6so11746169ieb.32
	for <yocto@yoctoproject.org>; Wed, 24 Sep 2014 06:50:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=9vWuNywLu3PHuNp67a60OS9WVtxln+x2CVNGLki5mic=;
	b=iiiC7unZTb4Qq/LiUhgabiBnRQuE6SdEuhEJq0U+tvANmxjXQIAK92V+Xft0qyVjiU
	65CPGKR9PCRY1c2NleT0jobnNWpbwe+3O8025qqBxF49rWAjCJX1EYdWw/s146BcgAlR
	0aYh6w5ECx2onoX1Q2LK3gw91/7Vr9+L3E9F+1hP8b4KMXHF4jOYpIfYk62d7pL562oL
	9sl01sxfeWjIKT4ltC1E3iaVbnWIMGQFeb5+EoXgzWc2hmDl1xZpnagQsMi2tOOyqlx4
	vdJaYjXfJfWy1C5ZCCtLPKwrGVjfpiPOKeZKZBKAIgWuTRDzZ6CseS0vtjMJp4s8TU37
	ZH3Q==
MIME-Version: 1.0
X-Received: by 10.43.63.134 with SMTP id xe6mr3462972icb.97.1411566652717;
	Wed, 24 Sep 2014 06:50:52 -0700 (PDT)
Received: by 10.64.72.132 with HTTP; Wed, 24 Sep 2014 06:50:52 -0700 (PDT)
Received: by 10.64.72.132 with HTTP; Wed, 24 Sep 2014 06:50:52 -0700 (PDT)
In-Reply-To: <9da1f854e6334a388820b4c09a6071ce@HKNPR03MB354.apcprd03.prod.outlook.com>
References: <9da1f854e6334a388820b4c09a6071ce@HKNPR03MB354.apcprd03.prod.outlook.com>
Date: Wed, 24 Sep 2014 19:20:52 +0530
Message-ID: <CAH21_vGJ0EMGhvdbNXGNULSUkPwhzYyQXagBHKyGpsU6hoLF9Q@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Release Candidate Build for yocto-1.7.rc1 now available.
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
X-List-Received-Date: Wed, 24 Sep 2014 13:51:00 -0000
Content-Type: multipart/alternative; boundary=bcaec517aefee9a6530503cff8c7

--bcaec517aefee9a6530503cff8c7
Content-Type: text/plain; charset=UTF-8

Hi All,



Please let me know whether the release candidate mentioned below with
commit is for 1.7M4?



Regards,

Atul



************************************************************************

A release candidate build for yocto-1.7.rc1 is now available at:



 http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7.rc1





Please begin QA on this build as soon as possible.





Build hash information:

meta-intel : a369fa8f2d76528cb296ef9314e613e26585d54d

meta-fsl-arm : 2680f54d02fa6efe4cd2aaef7bda9e46cf3e9672

meta-minnow : 238a45e9da8bbfff7a6af220b48c11cabd31e01c

meta-qt3 : 3016129d90b7ac8517a5227d819f10ad417b5b45

meta-fsl-ppc : 478f29c3e97760f2ff443227950ce21d9510a280

poky : 8ac8eca2e3bd8c78e2b31ea974930ed0243258a3





This is an automated message from

The Yocto Project Autobuilder

Git: git://git.yoctoproject.org/yocto-autobuilder

Email: elizabeth.flanagan at intel.com

--bcaec517aefee9a6530503cff8c7
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi All,</p>
<p>=C2=A0</p>
<p>Please let me know whether the release candidate mentioned below with co=
mmit is for 1.7M4?</p>
<p>=C2=A0</p>
<p>Regards,</p>
<p>Atul</p>
<p>=C2=A0</p>
<p>************************************************************************=
</p>
<p>A release candidate build for yocto-1.7.rc1 is now available at:</p>
<p>=C2=A0</p>
<p> </p>
<p><a href=3D"http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7.rc=
1">http://autobuilder.yoctoproject.org/pub/releases/yocto-1.7.rc1</a></p>
<p>=C2=A0</p>
<p>=C2=A0</p>
<p>Please begin QA on this build as soon as possible.</p>
<p>=C2=A0</p>
<p>=C2=A0</p>
<p>Build hash information: </p>
<p>meta-intel : a369fa8f2d76528cb296ef9314e613e26585d54d </p>
<p>meta-fsl-arm : 2680f54d02fa6efe4cd2aaef7bda9e46cf3e9672 </p>
<p>meta-minnow : 238a45e9da8bbfff7a6af220b48c11cabd31e01c </p>
<p>meta-qt3 : 3016129d90b7ac8517a5227d819f10ad417b5b45 </p>
<p>meta-fsl-ppc : 478f29c3e97760f2ff443227950ce21d9510a280 </p>
<p>poky : 8ac8eca2e3bd8c78e2b31ea974930ed0243258a3 </p>
<p>=C2=A0</p>
<p>=C2=A0</p>
<p>This is an automated message from</p>
<p>The Yocto Project Autobuilder</p>
<p>Git: git://<a href=3D"http://git.yoctoproject.org/yocto-autobuilder">git=
.yoctoproject.org/yocto-autobuilder</a></p>
<p>Email: elizabeth.flanagan at <a href=3D"http://intel.com">intel.com</a> =
</p>

--bcaec517aefee9a6530503cff8c7--
