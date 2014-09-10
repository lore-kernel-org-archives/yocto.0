Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 6FC4EE00563; Wed, 10 Sep 2014 03:22:42 -0700 (PDT)
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
	*      [209.85.223.175 listed in list.dnswl.org]
Received: from mail-ie0-f175.google.com (mail-ie0-f175.google.com
	[209.85.223.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id E07C8E0049D
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 03:22:36 -0700 (PDT)
Received: by mail-ie0-f175.google.com with SMTP id at20so1758753iec.6
	for <yocto@yoctoproject.org>; Wed, 10 Sep 2014 03:22:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=Xbop5UhHA0cVuz0YIdwEI4FWZlS7gWn48hYMX2K0VSM=;
	b=N5qHMxQgE2Etu2UN6Po6ugMGQXuKTyMLoDcni6FzfzyqYRcqqSCnyEH9LIHsRwAiav
	JwWNIHL+ZuLg3jpvov4nNZo1NtZVWUFWc58md36WEO/dTa2cfAUzDtVLwWx9Pqj1OMP/
	L8KO+2OeMVAmLI4fcVX6xKdugikYm5SNbPauGkx08fD5/xmWtZMywx07y9ImJfLQHu4t
	B8zE+K/XP8In2XvbDJj+QaiV/FMjFSt+nftslgqKmQzJ6jKSDAcMD5DZfi9U9kBJ2s61
	69cgEwEvbh2BPvB/278GOyw0GLlgduEU+5vAnnx1Y6NM3mGpExYzwzkbJFzYACdfj+aE
	BqLg==
MIME-Version: 1.0
X-Received: by 10.42.100.6 with SMTP id y6mr10142280icn.28.1410344555476; Wed,
	10 Sep 2014 03:22:35 -0700 (PDT)
Received: by 10.64.232.36 with HTTP; Wed, 10 Sep 2014 03:22:35 -0700 (PDT)
Received: by 10.64.232.36 with HTTP; Wed, 10 Sep 2014 03:22:35 -0700 (PDT)
In-Reply-To: <8e6393ef571845f49cc0db4a6b87dca5@HKNPR03MB354.apcprd03.prod.outlook.com>
References: <8e6393ef571845f49cc0db4a6b87dca5@HKNPR03MB354.apcprd03.prod.outlook.com>
Date: Wed, 10 Sep 2014 15:52:35 +0530
Message-ID: <CAH21_vF89yZJ+q3V1WXFx3Nf+VXTN-=y4c0svJj-moZxA-oPdA@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Needed info regarding toolchain testing
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
X-List-Received-Date: Wed, 10 Sep 2014 10:22:42 -0000
Content-Type: multipart/alternative; boundary=20cf30223ca53d7de40502b36ee1

--20cf30223ca53d7de40502b36ee1
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

Hi All,

As per the Yocto Project Technical Team Meeting this Tuesday,  there is one
key features for 1.7 M3.

=C2=B7         New automated sdk/toolchain testing.



Please let me know about the same if possible.



Thanks and regards,

Atul

--20cf30223ca53d7de40502b36ee1
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<p>Hi All,<br></p>
<p>As per the Yocto Project Technical Team Meeting this Tuesday,=C2=A0 ther=
e is one key features for 1.7 M3.</p>
<p>=C2=B7=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 New automated sdk=
/toolchain testing.</p>
<p>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0</p>
<p>Please let me know about the same if possible.</p>
<p>=C2=A0</p>
<p>Thanks and regards,</p>
<p>Atul</p>

--20cf30223ca53d7de40502b36ee1--
