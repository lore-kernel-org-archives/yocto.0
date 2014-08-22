Return-Path: <seth.boll@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BD394E004F2; Thu, 21 Aug 2014 17:08:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (seth.boll[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0003]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.41 listed in list.dnswl.org]
Received: from mail-wg0-f41.google.com (mail-wg0-f41.google.com [74.125.82.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 651E1E0044A
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 17:08:31 -0700 (PDT)
Received: by mail-wg0-f41.google.com with SMTP id z12so9725018wgg.0
	for <yocto@yoctoproject.org>; Thu, 21 Aug 2014 17:08:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=tQAJefkAeEQAsSGcEhet2aCumTCm9gK6FencExropRg=;
	b=djAD7x1O+iGqJe+XWVSdhdrBnE+67VMRljkKSJaRVMy56XQB0QbyhA0SrFXjzvqYIB
	v47yX8qJJUJ1d3ZTof/ZYfmJtc0mhetcTf+5NZviQsa42E7kYKUtRfpNnAjcbTR9Qigm
	TaQLo9uVQ1AnrRarExJFguMAkHWmTymrU/BeE4y+Vwef6sV432WgwlYdmpyr0nwj92jm
	+At8/WQCPRDJVe5JwbuTsysYVSed0S6eAl6OOGGn0wFlsdCgj/K59PcGs2CZxKYfWxsI
	m2vh7sM/yDYSnK7dAmvJPH3SvvjwdoHjfqE+BgBL7tN42aitU7h3NlaNAhfUZ3aw/RGA
	FIrQ==
MIME-Version: 1.0
X-Received: by 10.180.95.68 with SMTP id di4mr25946502wib.60.1408666110633;
	Thu, 21 Aug 2014 17:08:30 -0700 (PDT)
Received: by 10.216.208.73 with HTTP; Thu, 21 Aug 2014 17:08:30 -0700 (PDT)
Date: Thu, 21 Aug 2014 19:08:30 -0500
Message-ID: <CA+JN8xNsPD_Fi2e7nyTfq6Vje0ssz_eSdxjicussA94B0pSU3g@mail.gmail.com>
From: Seth Bollinger <seth.boll@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Image that depends on another image
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
X-List-Received-Date: Fri, 22 Aug 2014 00:08:35 -0000
Content-Type: multipart/alternative; boundary=f46d04138dbf21afea05012ca3b9

--f46d04138dbf21afea05012ca3b9
Content-Type: text/plain; charset=UTF-8

Hello All,

Our device requires two images to be built.  Is there any way to have the
first image depend on the second image?

Thanks,

Seth

--f46d04138dbf21afea05012ca3b9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello All,<div><br></div><div>Our device requires two imag=
es to be built. =C2=A0Is there any way to have the first image depend on th=
e second image?</div><div><br></div><div>Thanks,</div><div><br></div><div>S=
eth</div>
</div>

--f46d04138dbf21afea05012ca3b9--
