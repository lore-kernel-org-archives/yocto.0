Return-Path: <nishantpoorswani@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 14FA9E00B6C; Sun, 25 Aug 2019 02:16:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (nishantpoorswani[at]gmail.com)
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.182 listed in list.dnswl.org]
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
	[209.85.167.182])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D1074E00B1B
	for <yocto@yoctoproject.org>; Sun, 25 Aug 2019 02:16:10 -0700 (PDT)
Received: by mail-oi1-f182.google.com with SMTP id q8so9766824oij.5
	for <yocto@yoctoproject.org>; Sun, 25 Aug 2019 02:16:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=sQe9jU6qbs0OVwAApehKsS+uYmwKHn+CYh0wkgTkeTo=;
	b=vFWhmmad0zP2IRnujll+hpVA7IlXNp2lbF0Y68x4OsSWsK0jY2smzP5LL3DqR+aVk9
	8AFSXwXCyYA3w3nAnGE11FH0PcyzQShZbgDWLthLh4lVN/0/cUNmlvB/5rYtJOwUhPid
	NTHXsY5QTGqBH3omnXMEEbce0uLXWEZ68s8CH5KgTTPpxVq1G7JwlCOmLnJOCuU1bjdh
	xB2qV+olFLzvCRZQIZuwknjpRvafjEfTd3KS6bt8MFpwoAhp6NmQ52ZqKsP7ZhVKfAv+
	Ap7BorULJ36OhVqhQVFp1UQ9Ic7qhgGPUTadWnBcMeXSbhjyntXUI2LSUF/3qrSWS/Y5
	Z0mA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=sQe9jU6qbs0OVwAApehKsS+uYmwKHn+CYh0wkgTkeTo=;
	b=dEbrelluDPMqxZtnk4ge/p/2pmEYibLqW2FuiF0CzNBmwXuYW2E2iNlxyxlPtUSOky
	pMZNS0IQKvH1d2nJbcX1IjRMhM2Vw5nqQntFo/BXwf+wnr4SPCVtZttn/4YkPL0HSt9j
	uNbAy40FpET2nYcyzpoxuWcNX5MnpclkiHKpyXtJaYzCUysR430xKMJfGcHfq0Gr3WTp
	vV/2ZtTSDMqzpxdl4vV1QEenQMq2Y7gWWXkirKy0x+qSHM82EteLmkkKnF6JEphGjdYs
	B9wLh+P/50lMwwRSLqmKMRFIhDMIL25U95wc3vsCT8GdvHCemErlTfbG3Cd0VEMQZogP
	glGQ==
X-Gm-Message-State: APjAAAWvxnxUw371fYk0TfA0fBcALswFSCW3iTr625Oy19VQ8piE7Enh
	8FW83mXHUdT1xInr72NHqxDVvcivm5WofXRas+ELwvbTndcQsg==
X-Google-Smtp-Source: APXvYqz6GJv5UDdbif6zCgHNB/dIEwqNCwmR0liFgGcIlrBwmfDV/6dd/A8+QDag6zBIDRjWjIh19fW7iIo6kYbBOrU=
X-Received: by 2002:aca:5652:: with SMTP id k79mr8720053oib.175.1566724569641; 
	Sun, 25 Aug 2019 02:16:09 -0700 (PDT)
MIME-Version: 1.0
From: nishant poorswani <nishantpoorswani@gmail.com>
Date: Sun, 25 Aug 2019 14:45:58 +0530
Message-ID: <CAN70yQVz5NFGR65GjNTMFvwxrpoTtNgdHKUtfRRq2VGsA4k9vg@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: U-boot recipe fails for the master branch(new sbc)
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
X-List-Received-Date: Sun, 25 Aug 2019 09:16:13 -0000
Content-Type: multipart/alternative; boundary="0000000000006f375e0590ed7d13"

--0000000000006f375e0590ed7d13
Content-Type: text/plain; charset="UTF-8"

Hi,

I'm trying to add a new board called rock-pi-s to the yocto project. I've
succesfully done it for the rocko branch. Now I'm moving it to the master
branch. I'm facing issues with u-boot. Here is the log for it:

https://pastebin.com/NAxqsvcB

It seems the libfdt from dtc-1.5.0 is incompatible with the older versions
of u-boot. Can anyone recommend a method to fix it? Any help is
appreciated.

Regards,
Nishant Poorswani

--0000000000006f375e0590ed7d13
Content-Type: text/html; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hi,</div><div><br></div><div>I&#39;m trying to add a =
new board called rock-pi-s to the yocto project. I&#39;ve succesfully done =
it for the rocko branch. Now I&#39;m moving it to the master branch. I&#39;=
m facing issues with u-boot. Here is the log for it:</div><div><br></div><d=
iv><a href=3D"https://pastebin.com/NAxqsvcB">https://pastebin.com/NAxqsvcB<=
/a></div><div><br></div><div>It seems the libfdt from dtc-1.5.0 is incompat=
ible with the older versions of u-boot. Can anyone recommend a method to fi=
x it? Any help is appreciated. <br></div><div><br></div><div>Regards, <br><=
/div><div>Nishant Poorswani<br></div></div>

--0000000000006f375e0590ed7d13--
