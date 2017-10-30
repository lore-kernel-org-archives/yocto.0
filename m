Return-Path: <yclai017@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 8082CE00B67; Mon, 30 Oct 2017 13:36:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (yclai017[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.215.53 listed in dnsbl.sorbs.net]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.215.53 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lf0-f53.google.com (mail-lf0-f53.google.com
	[209.85.215.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D932CE009B4
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 13:36:30 -0700 (PDT)
Received: by mail-lf0-f53.google.com with SMTP id w21so16508876lfc.6
	for <yocto@yoctoproject.org>; Mon, 30 Oct 2017 13:36:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=6qExKCrUTo3VSY9em1V0Xoa4HwdtyN/qsRbMP87ibLw=;
	b=gLUfRV1aIMhE1dCp8+eGTsPl7TigbW5bygref1A9jbBgXsRfE8OCJQkP9v9cPiDeGj
	VL298cWcs8abotLdRkxtzKL+RPFXg7SfZqRZhvsp0ZFa1aNOzfcq/KFk2qTUmS8BPqyI
	cIqyV2Nb2HK34pkD6XAEzxgBGdlzFRSI70KGhWgdFJCCZOIL1YRMkzPbLsoF0AQKMBIL
	cTK6O+NAU/Jej2XbJwjaAjVzrn0XJuMMBQQF94uYhkcnYiOiPVdT7+4JljQZe8LuCR2B
	RTy89SF+lx1Y9DA1NFDiJdWkuioELk2jaSgNByatZgua2NAoUp3sYyTwYnZSB7ygUeal
	WsAw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=6qExKCrUTo3VSY9em1V0Xoa4HwdtyN/qsRbMP87ibLw=;
	b=UatkCzGQepnXTbMGLb9zTABPQCfuPPWrkyQIpmoodzFFuqt1S4nT9X04K8HeK+YRxb
	IBmQ/296LJ1E8/igPVm4ttN8E/4yUjd2MTj3LIrtXf6QRAzBcxPzbFjKfstHF4gy13xj
	4Ol6VAa1L6bQ/goSDKKWqJHSoH/nHuileR8R9Hm7/voPzKINlr1tOxPYHQ/xABiaWxrs
	9ok3WsCVTDGpRjbdWxFJewXA0F6CTGn5iZlYJAO7qf+9eZNMo+Ns9luO9nTpq16CB7KD
	8kpFUKbD7IUBC+P3IgywkIb3LFyrQbTs6193OU6PmGnN4UsuXOVyft3lGM/Jhx4gGSsT
	NABA==
X-Gm-Message-State: AMCzsaXl6CfQMzjjgJvEF6rYCdBpcL+VdtMeeOYJwQe9XNN7fQhpSM0D
	3ySuQELb3t2/GftxzIBwlS2k/RR/LZ0TMPJzJso=
X-Google-Smtp-Source: ABhQp+TSsb/I9Gg6Hpei6ALZ0T2IhB2gmZBLxMyFKkAOk3Smyz8Pt1vsjaoo5hWUEbBM2ss3XftVTMhkhkgEs7SboiQ=
X-Received: by 10.25.221.196 with SMTP id w65mr2805920lfi.89.1509395789452;
	Mon, 30 Oct 2017 13:36:29 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.81.155 with HTTP; Mon, 30 Oct 2017 13:36:29 -0700 (PDT)
From: "Lai Y.C." <yclai017@gmail.com>
Date: Mon, 30 Oct 2017 21:36:29 +0100
Message-ID: <CAJWo1FLeiwm2pm4sfQf5g78bx-PXuuk1fm8N4obY+0BwyvOrng@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: about add python3 modules
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
X-List-Received-Date: Mon, 30 Oct 2017 20:36:31 -0000
Content-Type: multipart/alternative; boundary="94eb2c0c884adb1b48055cc99728"

--94eb2c0c884adb1b48055cc99728
Content-Type: text/plain; charset="UTF-8"

Hi,

I need to include python3 and some modules on my board. We are using yocto
1.7.1 .
I have included python3 and python3-modules into the image.
Python3 is able to run but there are problems with the modules.

1. when I import "subprocess" module,  it gives errors that the module
"_posixsubprocess" is not found. How should I include _posixsubprocess ?
2. There are couple of modules that are installed but they are found when I
used it. i.e. I have the argparse.py in /usr/lib/python3.3. However, the
module is not found when I try to import it. (tested with python3 -c
"import argparse"). Any clue what hasn't be set-up properly?

Thanks

//Ying

--94eb2c0c884adb1b48055cc99728
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div><div><div><div><div><div><div>Hi, <br><br></div>I nee=
d to include python3 and some modules on my board. We are using yocto 1.7.1=
 . <br></div>I have included python3 and python3-modules into the image. <b=
r></div><div>Python3 is able to run but there are problems with the modules=
. <br></div><div><br></div>1. when I import &quot;subprocess&quot; module,=
=C2=A0 it gives errors that the module &quot;_posixsubprocess&quot; is not =
found. How should I include _posixsubprocess ?<br></div>2. There are couple=
 of modules that are installed but they are found when I used it. i.e. I ha=
ve the argparse.py in /usr/lib/python3.3. However, the module is not found =
when I try to import it. (tested with python3 -c &quot;import argparse&quot=
;). Any clue what hasn&#39;t be set-up properly?<br></div><br></div>Thanks<=
br><br></div><div><div><div><div>//Ying<br></div><div><br></div></div></div=
></div></div>

--94eb2c0c884adb1b48055cc99728--
