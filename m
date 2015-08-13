Return-Path: <ryansvb91@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4BA7EE0095C; Thu, 13 Aug 2015 13:25:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (todd.efflam[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.223.169 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-io0-f169.google.com (mail-io0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BFA9CE00767
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 13:25:44 -0700 (PDT)
Received: by iods203 with SMTP id s203so64639265iod.0
	for <yocto@yoctoproject.org>; Thu, 13 Aug 2015 13:25:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:date:message-id:subject:from:to:content-type;
	bh=UQOsQFcrK2cIWd9QJloH1/6e9z7xA8JV7sPmqYojFSo=;
	b=PSFoTOOURICeRrx4BYrbT86ZqYjBANg0cHBg4I9GjBTLnjm6e6EuO5sR3S4CPe3kyq
	EXym/p6JVb2Tb20LEYz1B3nBRo994Kexvuwap0TaBmYOPv/TDSZYTB0CncFwOizJRbAP
	MGSHpu22Y9wiVUVQcjrEB3q8qGNjE//u1DuVNHgwUrUQYqKTq2c2ZXDIe1/PO22+tJdf
	AXC8m6KqnA4lJoHQ7Wf6ta9kxyaVW3Rca8i9WXSn9nt9uE91EmoIKwsXoMqcmZjJk6bH
	T+DN2pJBpi/rEjQCkesIAX2AX7fF5PtLhn3gQvXOdjNxK3m3vJk29ZcumJ6uW9ATd8fE
	8aMg==
MIME-Version: 1.0
X-Received: by 10.107.9.11 with SMTP id j11mr27819135ioi.191.1439497543722;
	Thu, 13 Aug 2015 13:25:43 -0700 (PDT)
Sender: ryansvb91@gmail.com
Received: by 10.79.29.76 with HTTP; Thu, 13 Aug 2015 13:25:43 -0700 (PDT)
Date: Thu, 13 Aug 2015 13:25:43 -0700
X-Google-Sender-Auth: jwCugrBnZgRWmkZZsXRvRc7-CJw
Message-ID: <CAMeZNHRGp89W8p9w9AGGoW9JeFLiNPV2ys_S66Qt5zd4g7YtHA@mail.gmail.com>
From: Todd Efflam <todd.efflam@gmail.com>
To: yocto@yoctoproject.org
Subject: Problem creating debug build with inlined functions
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
X-List-Received-Date: Thu, 13 Aug 2015 20:25:45 -0000
Content-Type: multipart/alternative; boundary=001a113f905abfae69051d372383

--001a113f905abfae69051d372383
Content-Type: text/plain; charset=UTF-8

Hello,
We're trying to create a debug build so we can use our image with gdb,
however we're unable to get it to compile.  We've added the lines
"DEBUG_BUILD = "1"" and "EXTRA_IMAGE_FEATURES += "tools-sdk dbg-pkgs
tools-debug debug-tweaks"" to the local.conf file, but it seems to be
failing on glibc.  The errors we get have to do with inlined functions
(./tlsdeschtab.h:28:1: error: inlining failed in call to 'hash_tlsdesc':
indirect function call with a yet undetermined callee [-Werror=inline]
|  hash_tlsdesc (void *p)).  Are we missing a compile flag?  We tried
adding -gdwarf-2 to the CFLAGS option in local.conf but still got the same
error.  Any help would be appreciated!

Thanks,
Todd

--001a113f905abfae69051d372383
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div>Hello,<br></div>We&#39;re trying to create a deb=
ug build so we can use our image with gdb, however we&#39;re unable to get =
it to compile.=C2=A0 We&#39;ve added the lines &quot;DEBUG_BUILD =3D &quot;=
1&quot;&quot; and &quot;EXTRA_IMAGE_FEATURES +=3D &quot;tools-sdk dbg-pkgs =
tools-debug debug-tweaks&quot;&quot; to the local.conf file, but it seems t=
o be failing on glibc.=C2=A0 The errors we get have to do with inlined func=
tions (./tlsdeschtab.h:28:1: error: inlining failed in call to &#39;hash_tl=
sdesc&#39;: indirect function call with a yet undetermined callee [-Werror=
=3Dinline]<br>|=C2=A0 hash_tlsdesc (void *p)).=C2=A0 Are we missing a compi=
le flag?=C2=A0 We tried adding -gdwarf-2 to the CFLAGS option in local.conf=
 but still got the same error.=C2=A0 Any help would be appreciated!<br><br>=
Thanks, <br>Todd</div></div>

--001a113f905abfae69051d372383--
