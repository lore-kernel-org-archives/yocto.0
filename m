Return-Path: <balazovic.peter@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 81088E00935; Mon, 13 Mar 2017 07:26:39 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (balazovic.peter[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.223.180 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.223.180 listed in list.dnswl.org]
Received: from mail-io0-f180.google.com (mail-io0-f180.google.com
	[209.85.223.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA423E00867
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 07:26:38 -0700 (PDT)
Received: by mail-io0-f180.google.com with SMTP id g6so84797362ioj.1
	for <yocto@yoctoproject.org>; Mon, 13 Mar 2017 07:26:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=p988IAJp9/tNj2bm2iFNSlUDkBa6xjjE82jt+GeLJX8=;
	b=CcEE19RidLgT+bia6C4asBOWUC3AQoSQ+VKD2NwEQU0QSYd7kjENFpBTfANdgf583O
	+EW2XzDROlVaQcfWWDAnDEq5S4k7B76pr9Cjbb5Y3ZXLD4NWkcmu7wpQ0QxMckN+f3tn
	lAPMCQ6Y9DuzgrOrOWH1JpEif5OVIqxYI+6WwP22uUgC34SkV589arcyb83hs6SdBpEI
	GYI2GDoYod4VBao7+r3MmxNR+yShPUgUOdW7LrTo0tEYXNfBeq52E7PjsMTIYJajYnCA
	YdWeDMdLrAdwsn/+dVz5Zx/9ZQG21Q+dun6YYxvku4U9scKsM5JRMiJAqZoHD8P0SLih
	8Rkg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=p988IAJp9/tNj2bm2iFNSlUDkBa6xjjE82jt+GeLJX8=;
	b=TRHzArwZwK2HM9/SWduR5vXXNNwVZsqqEgarERO5xSP4DICS4UGWmZT9/16TIrd+6C
	0V2u4HI0Mtek9Zak9brjgsDoBdzAB/D9so0fcYndWjeBUSG+k2AohYgoHCL6qGA438mj
	r0GvF/79K4VLHA2xQ4mUkHM+VbH+gnZaAmvxmRu/Lkh8YagrY267IHEnN0CAu79AaGTa
	y4lj2twNpwQx6wSpbOC5dCohxQgeiXmz9qVYIYuNjKIkJEV5I+SveVfWn6oIKSxJbjHN
	dm5b2QuBqNXScLud4Jk2itKEWBUnns4xLy+B5srODallOyNh28f7rP0p81iaR3orAxWq
	WVwQ==
X-Gm-Message-State: AMke39moH12oBJcbBxpockY3Cnef7UxmAkd44X5HlcLnOvwkrim+LzHKGIB9pF78VDTAHp60D5DWuyintx83iQ==
X-Received: by 10.107.138.14 with SMTP id m14mr30968027iod.235.1489415197857; 
	Mon, 13 Mar 2017 07:26:37 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.79.158.69 with HTTP; Mon, 13 Mar 2017 07:26:37 -0700 (PDT)
From: Peter Balazovic <balazovic.peter@gmail.com>
Date: Mon, 13 Mar 2017 15:26:37 +0100
Message-ID: <CAFq4t4iRvriBaEQDcChfLKwCmEdk9zXMLQAoej9_xbgpvLnVwg@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: heterogeneous processor
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
X-List-Received-Date: Mon, 13 Mar 2017 14:26:39 -0000
Content-Type: multipart/alternative; boundary=001a113fe8aecaa1a2054a9d7f52

--001a113fe8aecaa1a2054a9d7f52
Content-Type: text/plain; charset=UTF-8

Hello all,



I have some curious question on how to use heterogeneous processor when you
have multi-core heterogeneous processor, How you do Yocto build for
particular architecture ARM architecture? Actually how you distinguish what
architecture you are build for?





Thanks.



Regards,

Peter

--001a113fe8aecaa1a2054a9d7f52
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><p class=3D"MsoNormal">Hello all,<span></span></p>

<p class=3D"MsoNormal"><span>=C2=A0</span></p>

<p class=3D"MsoNormal">I have some curious question on how to use heterogen=
eous
processor when you have multi-core heterogeneous processor, How you do Yoct=
o
build for particular architecture ARM architecture? Actually how you distin=
guish
what architecture you are build for?<span></span></p>

<p class=3D"MsoNormal"><span>=C2=A0</span></p>

<p class=3D"MsoNormal"><span>=C2=A0</span></p>

<p class=3D"MsoNormal">Thanks.<span></span></p>

<p class=3D"MsoNormal"><span>=C2=A0</span></p>

<p class=3D"MsoNormal">Regards,<span></span></p>

<p class=3D"MsoNormal">Peter<span></span></p><div><br></div></div>

--001a113fe8aecaa1a2054a9d7f52--
