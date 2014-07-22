Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1CDDCE0054C; Mon, 21 Jul 2014 22:41:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.173 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ig0-f173.google.com (mail-ig0-f173.google.com
	[209.85.213.173])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A5FD1E00524
	for <yocto@yoctoproject.org>; Mon, 21 Jul 2014 22:41:27 -0700 (PDT)
Received: by mail-ig0-f173.google.com with SMTP id h18so3652491igc.0
	for <yocto@yoctoproject.org>; Mon, 21 Jul 2014 22:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uhs7TUgAou2TeBnxjOo5n/w/3C0y4UH6zgBmRLCMgGQ=;
	b=PmdRgAzBjHaU/1JCsbGNzZBXK4Z6akmNU6SC6QV6PPDLKdpA3kxGxqYEvNHiuIwD23
	NHSjhBwFVIUxgt6p4B6Hplp87IrRfUhzRqyIR7lRhHAGvGYzcjh8EgDqUmd7FWnTE+ql
	50VkqDW5oEdbkUdtacgkxIR60tvYWan4SnuUqlK/RsPxBeYn3Lxx+QAyj7gZM/tjXIP7
	LikaeQexNw22ePWrWeevf8wfwLXF9x/qukhO1JOIByyf+l3M0h+mLmb8A22CnbBdvcrM
	0Ir6sJoWpo8CGK4xfGMdGgGd66iSvDJfmscC2FdQVvRpmvXd9PihQ9kHo22DQfFV97u8
	9+yQ==
MIME-Version: 1.0
X-Received: by 10.50.137.71 with SMTP id qg7mr12400457igb.24.1406007687222;
	Mon, 21 Jul 2014 22:41:27 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Mon, 21 Jul 2014 22:41:27 -0700 (PDT)
Received: by 10.64.86.225 with HTTP; Mon, 21 Jul 2014 22:41:27 -0700 (PDT)
Date: Tue, 22 Jul 2014 11:11:27 +0530
Message-ID: <CAH21_vGpo+3xD8OR4Z4_oXNZYdMYF-SnKsc-L8NicTDizPEAyw@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Compliance testing fot toolchain
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
X-List-Received-Date: Tue, 22 Jul 2014 05:41:31 -0000
Content-Type: multipart/alternative; boundary=001a11c3c196bf9bec04fec1ac34

--001a11c3c196bf9bec04fec1ac34
Content-Type: text/plain; charset=UTF-8

Hi all,

We are building the toolchain for different architecture.
And we have successfully build the same.
Also as a testing plan we are planning for compliance testing(LTP, LSB).
But when we tried to compile the test suite with our toolchain for LTP
case, it's getting failed.
Will post the error log soon.
Please help me with your suggestion if i am missing something.

Thanks and regards,
Atul

--001a11c3c196bf9bec04fec1ac34
Content-Type: text/html; charset=UTF-8

<p>Hi all,</p>
<p>We are building the toolchain for different architecture.<br>
And we have successfully build the same.<br>
Also as a testing plan we are planning for compliance testing(LTP, LSB).<br>
But when we tried to compile the test suite with our toolchain for LTP case, it&#39;s getting failed.<br>
Will post the error log soon.<br>
Please help me with your suggestion if i am missing something.</p>
<p>Thanks and regards,<br>
Atul</p>

--001a11c3c196bf9bec04fec1ac34--
