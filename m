Return-Path: <mar.krzeminski@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4E0A9E0099B; Mon, 20 Apr 2015 23:54:52 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (mar.krzeminski[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.45 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f45.google.com (mail-wg0-f45.google.com [74.125.82.45])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5782FE00952
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 23:54:50 -0700 (PDT)
Received: by wgso17 with SMTP id o17so202998991wgs.1
	for <yocto@yoctoproject.org>; Mon, 20 Apr 2015 23:54:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=xVxw2JS71ZsneyWihmbNMKYJVCPgV9ny3FRsZeSauKc=;
	b=P1q2cvkxcRkWfLnAHDEHmXyAQtqjxdQvQ8CFKJF+PP7Wuh+cnszjxbrj3eIohWfmJd
	rAYSWYzPO3sPxOKy6pjWn6JlxGD5nAOQGw8RVhvOl4GMZYO8acjcxqz+me9S4OvGQB5Q
	x6dvzF16t02SgcvLlNeUMLBPUqavnhTBzVaVx+iu5hL2bOFsAuqwgpUomUCTMjq0LguN
	EqE7WyVxHKbALOZYFLrEvIkfWDZW1Pc7TVOXUziwCp5bok9Z721rfnfCo/pMJBpnw5S4
	V+bUmiUvP361PlVeJfgjeJU6mIbfNNKnyUKjjto4e2jJvkwrNOA6FBGnm6xGi/Wk4PM+
	bUVQ==
MIME-Version: 1.0
X-Received: by 10.195.12.138 with SMTP id eq10mr36832010wjd.65.1429599289479; 
	Mon, 20 Apr 2015 23:54:49 -0700 (PDT)
Received: by 10.194.187.116 with HTTP; Mon, 20 Apr 2015 23:54:49 -0700 (PDT)
Date: Tue, 21 Apr 2015 08:54:49 +0200
Message-ID: <CABc_YGBZjNwcPoSwBnPKqoVqoq3iZuf-WVeDLnHL2bEVkjjpRQ@mail.gmail.com>
From: =?UTF-8?Q?Marcin_Krzemi=C5=84ski?= <mar.krzeminski@gmail.com>
To: yocto@yoctoproject.org
Subject: Initramfs image name (INITRAMFS_IMAGE)
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
X-List-Received-Date: Tue, 21 Apr 2015 06:54:52 -0000
Content-Type: multipart/alternative; boundary=047d7bb04b26d2167a051436854f

--047d7bb04b26d2167a051436854f
Content-Type: text/plain; charset=UTF-8

Hi,

I want to set my initramfs image name in my image recipe.
In local.conf I've set:

INITRAMFS_IMAGE_BUNDLE="1"

In my image recipe I am setting image name:

INITRAMFS_IMAGE = "myimage-image-minimal"

Unfortunately when kernel recipe is parsed INITRAMFS_IMAGE variable i empty.
running bitbake -e tells that this variable is properly set.
I think because image recipe is parsed at the very end kernel recipe can
not see it.
I tried to use export INITRAMFS_IMAGE (like in example) but this also not
working.
Is the any way that I can do this?

Bitbake 1.22.0, yocto 1.6
My kernel and image recipe is in my custom layer.

Regards,
Marcin

--047d7bb04b26d2167a051436854f
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hi,<div><br></div><div>I want to set my initramfs image na=
me in my image recipe.</div><div>In local.conf I&#39;ve set:</div><div><br>=
</div><div>INITRAMFS_IMAGE_BUNDLE=3D&quot;1&quot;<br></div><div><br></div><=
div>In my image recipe I am setting image name:</div><div>=C2=A0</div><div>=
INITRAMFS_IMAGE =3D &quot;myimage-image-minimal&quot;<br></div><div><br></d=
iv><div>Unfortunately when kernel recipe is parsed INITRAMFS_IMAGE variable=
 i empty.</div><div>running bitbake -e tells that this variable is properly=
 set.</div><div>I think because image recipe is parsed at the very end kern=
el recipe can not see it.</div><div>I tried to use export=C2=A0INITRAMFS_IM=
AGE (like in example) but this also not working.</div><div>Is the any way t=
hat I can do this?</div><div><br></div><div>Bitbake 1.22.0, yocto 1.6</div>=
<div>My kernel and image recipe is in my custom layer.</div><div><br></div>=
<div>Regards,</div><div>Marcin</div></div>

--047d7bb04b26d2167a051436854f--
