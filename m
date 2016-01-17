Return-Path: <truthset@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1ABAAE00AA5; Sat, 16 Jan 2016 19:04:26 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (truthset[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.160.177 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-yk0-f177.google.com (mail-yk0-f177.google.com
	[209.85.160.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 225F8E00908
	for <yocto@yoctoproject.org>; Sat, 16 Jan 2016 19:04:24 -0800 (PST)
Received: by mail-yk0-f177.google.com with SMTP id k129so559446255yke.0
	for <yocto@yoctoproject.org>; Sat, 16 Jan 2016 19:04:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=from:content-type:subject:message-id:date:to:mime-version;
	bh=f+fnYyIrWyNn88d6fwJbUrHa3rGSvS26+IyKGEAz8T0=;
	b=Iv4aWDM41YS50Ac33W2mZfm8pUogarf2ME/8HJVW5hQAgkEE+/BKE7lNvvecrHdlOq
	a6KFIuyeXfDwTNN8UNpUCgEyEwVdp4+jy2BUByzWfDN7zVumPgCj8G6P5pvGJ1Wx5dpd
	ig/s3eAMyJruEkxISxjoCUgGcaanQLqKWtr5rMUeaVwm03+aTDDlErXwEf3d6zPjBFn5
	7yAGCfpDMr30oHVZT+R02aXCtk9QvtUFiqohWsZcHb1g7rPIXURSaubr2RP1PJNXZV6x
	SlnWcYdn7wj0421FTk1HXA2iHOhCLmK2PjKWwks3lAQGNlhriFc8qGL/Jpf30lByAnWW
	Lc+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:from:content-type:subject:message-id:date:to
	:mime-version;
	bh=f+fnYyIrWyNn88d6fwJbUrHa3rGSvS26+IyKGEAz8T0=;
	b=RdJADVnVykHjO6aq6D7K6IbAWadcjPLiBSywOfDqyDAAzZ9xpYoHLJATxwlRySnlRE
	AeOMSu0TEqnGbWgXuTxcDjOWjTlqow6Jq2kxmCgQhyvmKA26tw3jh3/anX3ZJkKDsf6u
	7UU9vWn7ATj19ainZaHt3fsft8WGno9Jew33j8vebCC3k69EEssqUJO6yzqYcMRchDSP
	AgxFT0c/9YkSfwgPKMcPql7eAWKrR1PPfOA0ZqUlTZr/rkY+5dbnf83pniE/SLR7aqnK
	XxTlfqHtsDttVbiXFXVv44Kawf6l6etZBA7dQXLKHyDTjNxw39skzzss1lCfINGGX6oF
	7wZQ==
X-Gm-Message-State: ALoCoQmCUjXOZhhXOX0W7H/QGB5OiWtDIra024btpcDg3AJhwOSeLu53/Gh0QmLyaMkMWm8b7mTfhdzcZcVRhnVruywBCv897w==
X-Received: by 10.129.116.213 with SMTP id p204mr12781650ywc.322.1452999863808;
	Sat, 16 Jan 2016 19:04:23 -0800 (PST)
Received: from [192.168.211.116] (cpe-65-190-63-66.nc.res.rr.com.
	[65.190.63.66]) by smtp.gmail.com with ESMTPSA id
	h129sm13757587ywf.56.2016.01.16.19.04.23 for <yocto@yoctoproject.org>
	(version=TLSv1/SSLv3 cipher=OTHER);
	Sat, 16 Jan 2016 19:04:23 -0800 (PST)
From: Jeff Waller <truthset@gmail.com>
Message-Id: <22CE57EA-BDDA-4500-B81C-B627E038BF75@gmail.com>
Date: Sat, 16 Jan 2016 22:04:21 -0500
To: yocto@yoctoproject.org
Mime-Version: 1.0 (Mac OS X Mail 9.2 \(3112\))
X-Mailer: Apple Mail (2.3112)
Subject: Is python distutils set to used the cross compiler by default somehow?
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
X-List-Received-Date: Sun, 17 Jan 2016 03:04:26 -0000
Content-Type: multipart/alternative;
	boundary="Apple-Mail=_AA9CD903-5BF7-4310-87E5-769C275DC97E"

--Apple-Mail=_AA9CD903-5BF7-4310-87E5-769C275DC97E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/plain;
	charset=utf-8

I=E2=80=99m attempting to do the following

pip install dronekit=20

which is failing with=20

unable to execute arm-oe-linux-gnueabi-gcc: No such file or directory

I just want it to use gcc, and in fact this helps

CC=3Dgcc pip install dronekit

but it fails later on during the link step which is helped by setting =
LDSHARED, but
that again doesn=E2=80=99t help completely because the linker options =
are different for=20
gcc executing on the drone (needs -lpthread perhaps=E2=80=A6)

But I=E2=80=99m trying to understate where arm-oe-linux-gnueabi-gcc  is =
coming form in the first
place.  Is there some config file to set to have it not do this?

This is my first stop, it seems strange that such a specific (Open =
Embedded) compiler would
be used by default on a target system.

-Jeff=

--Apple-Mail=_AA9CD903-5BF7-4310-87E5-769C275DC97E
Content-Transfer-Encoding: quoted-printable
Content-Type: text/html;
	charset=utf-8

<html><head><meta http-equiv=3D"Content-Type" content=3D"text/html =
charset=3Dutf-8"></head><body style=3D"word-wrap: break-word; =
-webkit-nbsp-mode: space; -webkit-line-break: after-white-space;" =
class=3D"">I=E2=80=99m attempting to do the following<div class=3D""><br =
class=3D""><div class=3D"">pip install dronekit&nbsp;</div></div><div =
class=3D""><br class=3D""></div><div class=3D"">which is failing =
with&nbsp;</div><div class=3D""><br class=3D""></div><div class=3D""><div =
style=3D"margin: 0px; font-size: 11px; line-height: normal; font-family: =
Menlo;" class=3D"">unable to execute arm-oe-linux-gnueabi-gcc: No such =
file or directory</div></div><div style=3D"margin: 0px; font-size: 11px; =
line-height: normal; font-family: Menlo;" class=3D""><br =
class=3D""></div><div style=3D"margin: 0px; font-size: 11px; =
line-height: normal; font-family: Menlo;" class=3D"">I just want it to =
use gcc, and in fact this helps</div><div style=3D"margin: 0px; =
font-size: 11px; line-height: normal; font-family: Menlo;" class=3D""><br =
class=3D""></div><div style=3D"margin: 0px; font-size: 11px; =
line-height: normal; font-family: Menlo;" class=3D"">CC=3Dgcc pip =
install dronekit</div><div style=3D"margin: 0px; font-size: 11px; =
line-height: normal; font-family: Menlo;" class=3D""><br =
class=3D""></div><div class=3D"">but it fails later on during the link =
step which is helped by setting LDSHARED, but</div><div class=3D"">that =
again doesn=E2=80=99t help completely because the linker options are =
different for&nbsp;</div><div class=3D"">gcc executing on the drone =
(needs -lpthread perhaps=E2=80=A6)</div><div class=3D""><br =
class=3D""></div><div class=3D"">But I=E2=80=99m trying to understate =
where&nbsp;<span style=3D"font-family: Menlo; font-size: 11px;" =
class=3D"">arm-oe-linux-gnueabi-gcc&nbsp;</span>&nbsp;is coming form in =
the first</div><div class=3D"">place. &nbsp;Is there some config file to =
set to have it not do this?</div><div class=3D""><br class=3D""></div><div=
 class=3D"">This is my first stop, it seems strange that such a specific =
(Open Embedded) compiler would</div><div class=3D"">be used by default =
on a target system.</div><div class=3D""><br class=3D""></div><div =
class=3D"">-Jeff</div></body></html>=

--Apple-Mail=_AA9CD903-5BF7-4310-87E5-769C275DC97E--
