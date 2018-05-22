Return-Path: <ptsneves@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D176DE00903; Tue, 22 May 2018 02:13:06 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (ptsneves[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [74.125.82.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-wm0-f46.google.com (mail-wm0-f46.google.com [74.125.82.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27D08E0086B
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 02:13:05 -0700 (PDT)
Received: by mail-wm0-f46.google.com with SMTP id f6-v6so29842167wmc.4
	for <yocto@yoctoproject.org>; Tue, 22 May 2018 02:13:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=ocuTblsouzw8BoPZHO+L9S805MptQVGEvGPqvj6rmR4=;
	b=hg1diQwijopRJXHZdMfmDuvuDMxrV5fe8cBkbj4CrQuvREX25QmQYrWKXml1QHw+EI
	fYAOjU5t0aQixjOlBBO0rffE5JxPPU/+VhLcPGba5y6pc02A7357ge41Nrm06TkLkhoI
	cR/T9KbNbUuG2TnOlR52B9H3EG/kcYMen4yIA7WwbwNg4R0rQOT0k2mVEVMDg+iYxBTZ
	iObqkwr5bBpXrAeHTFEvqdfulqlvrLjPB3u+gGG/3Bn8JcbYPN5TQUUCq+1KgOTXnuSM
	Fvliym0OeVGZh6OM4SrOGd0kL3ZSDZwdpUQ/C3ARgHsjjWqIKTVfdQ+dfZLAwngufMS9
	iJxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=ocuTblsouzw8BoPZHO+L9S805MptQVGEvGPqvj6rmR4=;
	b=ZZo8Nwz2zRoHqKC909sUJKkkkb6Vokx8Dsyrb/kysSeNaBJ49IytWZ071oL5kbEG4e
	spfd7Zl5GhIaaCqU1b8ppZAJyuj/4RJH7NkcYQiff21EfjT3/Atq9/h4lw2Nlx64KhXe
	6OQusOqtLkwNqf8wjx3aw9umxncgX2p+xKdbkb1eOl5Spe+tGpQ6JK07MdaEQZkmJnOK
	AjbhZdrZJiKbv8MCIOTTl8n/DrmG/WuCfVZn0KnmQBYmNDb7jZGCj0MdoM8ERoGGIkCV
	a8d5X8GOxxfbzpaueLXzCRPNHzaXfDt/WBZ9QLoQdWDSykemw44GzJ9+Tq+TxFFuDyrA
	OMuw==
X-Gm-Message-State: ALKqPweUqKUCp0SQh9fvTkbkdmAaFcAwCMwZ8cSZEUlwPoUWPp4gAUZY
	7ko4BinfTB7i2Ixr3cOIppR1KvoSkSvht71GZVK9pzU=
X-Google-Smtp-Source: AB8JxZpZbGY2lhXiWFmM6/B4Lak3HuYMzV8tXBYfPJoxw5CAT4ROxXwTxSL6RHjOyTYKtcvrO8s656GNXELJEP+O3BQ=
X-Received: by 2002:a1c:6ce:: with SMTP id 197-v6mr492726wmg.159.1526980384796;
	Tue, 22 May 2018 02:13:04 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.39.68 with HTTP; Tue, 22 May 2018 02:13:04 -0700 (PDT)
From: Paulo Neves <ptsneves@gmail.com>
Date: Tue, 22 May 2018 11:13:04 +0200
Message-ID: <CAJO0J4jYwPcwDef=D20=Sjsts4NEKdPez9_bt=KNr0-2TYKp+g@mail.gmail.com>
To: Yocto list discussion <yocto@yoctoproject.org>
Subject: populate_sdk in image class
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
X-List-Received-Date: Tue, 22 May 2018 09:13:06 -0000
Content-Type: text/plain; charset="UTF-8"

A long time ago the image class got an inherit to the populate_sdk*
class which brings a lot of dependencies on python modules.

Is it strictly necessary that to build an image, i need to satisfy
nativesdk-libgcc among others? Is there not a performance and
complexity impact?

I never needed to use the nativesdk separately as "the primary way of
running builds within the extensible SDK is to use the 'devtool'
command" (quote from SHA1 545673). Should not this class inheritance
be moved into devtool or at least make the dependencies be triggered
with the do_populate_sdk* task?

