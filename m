Return-Path: <guzaszymon@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AECA8E00D87; Sat, 10 Sep 2016 02:35:05 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-0.3 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, HTML_MESSAGE,
	RCVD_IN_DNSWL_LOW, 
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (guzaszymon[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [74.125.82.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  2.4 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [74.125.82.50 listed in dnsbl.sorbs.net]
Received: from mail-wm0-f50.google.com (mail-wm0-f50.google.com [74.125.82.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 13041E00D7E
	for <yocto@yoctoproject.org>; Sat, 10 Sep 2016 02:35:04 -0700 (PDT)
Received: by mail-wm0-f50.google.com with SMTP id w12so66795560wmf.0
	for <yocto@yoctoproject.org>; Sat, 10 Sep 2016 02:35:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:from:date:message-id:subject:to;
	bh=hwdHDe8s+y2M5ChzSfXMR9aW6EmucHuaeVn1bq5llCg=;
	b=jsPwfe9xcoq8PFWSXhCk+rhU02nItbvjbk/oH8ytSrS95gChEFe/hNN11E5iCd9VwN
	tS1LliXPzzVY3e0mZPKZOyHWm7fcgvGFLzcj8VDflK+P2XxD0ykd0KKcWRTH0esXcYtn
	z1B51lNKd20dts50HXTuXA9YOLfcFzr2PPDJGfObC6KDTJlGu8op0T1g9nbh7SjlEvhI
	6AHTURxhjPzfp2zah3LLHN94Nb5Lbrxjl3V85XAPgqA0MLI0Eli91rN/Nala3FynP6/c
	MKILaK7Y3I35g8mr5IckFQ+jfRmZIS5Az9H79IfjSYdFs8ZJWcNPLimuFE+5TInUWLF/
	cvkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=hwdHDe8s+y2M5ChzSfXMR9aW6EmucHuaeVn1bq5llCg=;
	b=QWktwMhTgG/sDWJnPXil/9GXHLe0140trgLPv+dBQMKO0lHIVkMIS2uZuPYsEkHkr3
	uy/gpO72z/t/NaNDpG9l+ggVjfZmRYz4avkJhlXC5mSPKtEN/CZe5jOk21ipFkSh2zOf
	RpXlNHxcZLTppy4Tcib8Pn6gch8Fq/XUU2oq+M497hF5motRcKHrj3UYXgNoqMY9WYPJ
	wLbrl3fcc+DmfBnLTE9XtPeh9+uHuzv9uXHM6xqX0FY4btys6YoIBniLzF/fXuDlUfQf
	LguAKtZk0Jenp1Or+0oCuz6Fz+eysh0J+RWA2Pagoa0wZzMSl7puCmPRFb9OUvTRqci0
	BC7Q==
X-Gm-Message-State: AE9vXwPc59AxMXZGY6+fEzHbbSqGMtJJCM0JauYPYxRRsauREAfYaZSJUUNgIByyJAkwRU5CXzO5+Zta7JU3CQ==
X-Received: by 10.28.145.20 with SMTP id t20mr2263357wmd.74.1473500103254;
	Sat, 10 Sep 2016 02:35:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.15.2 with HTTP; Sat, 10 Sep 2016 02:35:02 -0700 (PDT)
From: Szymon Guza <guzaszymon@gmail.com>
Date: Sat, 10 Sep 2016 11:35:02 +0200
Message-ID: <CAO=ipHJmBkH7=h7PKZpm8vZT63-nftLhzm=FYmyUX21Ufb3a_Q@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: Creating a core image with openCV
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
X-List-Received-Date: Sat, 10 Sep 2016 09:35:05 -0000
Content-Type: multipart/alternative; boundary=001a1145bd463b292f053c23fad9

--001a1145bd463b292f053c23fad9
Content-Type: text/plain; charset=UTF-8

Hello,

i want to prepare a yocto distribution with openCV and C++ for Xilinx
zedboard. Do you have any tips for me how to do it? I wanted to take a one
of the core-images with user interfece and add some packages i need.

--001a1145bd463b292f053c23fad9
Content-Type: text/html; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div>Hello,<br><br></div>i want to prepare a yocto distrib=
ution with openCV and C++ for Xilinx zedboard. Do you have any tips for me =
how to do it? I wanted to take a one of the core-images with user interfece=
 and add some packages i need. <br></div>

--001a1145bd463b292f053c23fad9--
