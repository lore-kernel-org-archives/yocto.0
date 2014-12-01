Return-Path: <s.stirtzel@googlemail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 7BAB3E0091D; Mon,  1 Dec 2014 00:50:39 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (s.stirtzel[at]googlemail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.54 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wg0-f54.google.com (mail-wg0-f54.google.com [74.125.82.54])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41A7DE0084A
	for <yocto@yoctoproject.org>; Mon,  1 Dec 2014 00:50:27 -0800 (PST)
Received: by mail-wg0-f54.google.com with SMTP id l2so13477050wgh.41
	for <yocto@yoctoproject.org>; Mon, 01 Dec 2014 00:50:27 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=googlemail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding;
	bh=nuTpGILRFjVObjUWtXLAtMNJ4KexB0Oji8zUp1yy69k=;
	b=szX/VRtKyReO0/UKEvbxhwYg++379Aa67nDW+BE6JZpP536qtOl2TdPNbmupkXHU8m
	WPx1Q3e0O8w3wTz6rtWcJn23MVmXEIZnuuTOBG+JPL+7o1AGJAZZNslVzCoM5v2kQUdR
	e5NHKEocgDk3PNKZpFrv6xplT+hSA5Xee5Ye7srxdspudAv6/2SZS5Z5291K4Ek2+hGw
	QtH9WoIYmE74kd3HaQyP1pRleCj9/A9xjpYHcZXKLT/+5Pi+uOzL1eBQy0+kU+N8Xj76
	Hw/bZXWgaiOwFPhK3LBFvjZsQFN/2qdrWW2741mz6lsHtJaQoViHa6yyAvhHrsqbC8qO
	j2Jg==
X-Received: by 10.194.85.137 with SMTP id h9mr48294030wjz.70.1417423827239;
	Mon, 01 Dec 2014 00:50:27 -0800 (PST)
MIME-Version: 1.0
Received: by 10.27.10.11 with HTTP; Mon, 1 Dec 2014 00:50:07 -0800 (PST)
In-Reply-To: <4009F04F5925CD4C95FBD9BE756381FE02848F2A6A@MSSRVS5.atlas.de>
References: <4009F04F5925CD4C95FBD9BE756381FE02848F2A67@MSSRVS5.atlas.de>
	<CAGiJk9eNcBVFPRKG92WdwGC=ysWDX2m2F9qHr2uLxQP6i90WRA@mail.gmail.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A68@MSSRVS5.atlas.de>
	<CAGiJk9c-w9Jwx6McyjkjWq9yo80zU2bNwRiRY=Os9_eJ3KJO8Q@mail.gmail.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A69@MSSRVS5.atlas.de>
	<CAGiJk9efNDb9DurbgV892bwM69tn3jH52UpDj15RZbKT8OZuog@mail.gmail.com>
	<4009F04F5925CD4C95FBD9BE756381FE02848F2A6A@MSSRVS5.atlas.de>
From: Samuel Stirtzel <s.stirtzel@googlemail.com>
Date: Mon, 1 Dec 2014 09:50:07 +0100
Message-ID: <CAGiJk9faSZnP-PbLDYzqCHr-=U+8CCYE9DgU3BbgD_qyn0JRpA@mail.gmail.com>
To: Matthias.Heise@atlas-elektronik.com
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: do_fetch linux hangs after defconfig/conf-fragment change
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
X-List-Received-Date: Mon, 01 Dec 2014 08:50:39 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

2014-12-01 9:35 GMT+01:00  <Matthias.Heise@atlas-elektronik.com>:
>
> I executed "bitbake -c clean linux_wandboard" and retried, then it worked=
 again. But still for me the question is open why the sources are re-fetche=
d only because I enable/disable kernel options (in menuconfig). Shouldn't t=
his be just a matter of re-compiling ?

The task checksum for do_fetch is invalidated by the changed source
file (E.g.: when the defconfig file has been changed).
See http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html#c=
hecksums



--=20
Regards
Samuel

