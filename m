Return-Path: <atul.singh008@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id C7572E00803; Mon, 25 Aug 2014 05:24:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (atul.singh008[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.213.181 listed in list.dnswl.org]
Received: from mail-ig0-f181.google.com (mail-ig0-f181.google.com
	[209.85.213.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 95B85E0076C
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 05:24:53 -0700 (PDT)
Received: by mail-ig0-f181.google.com with SMTP id h3so2663000igd.14
	for <yocto@yoctoproject.org>; Mon, 25 Aug 2014 05:24:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:content-type; bh=jDijo2HOXMxe7UYSYosupksSw04U/Qj4zDnOzhF368A=;
	b=Y64aEGcEbHcG3p5dZPzp687KrC95qBWV00vQLCbWUpwaaj+0Ue8lg3Vzuz2Lc0MKoz
	2s5U75zaElP4tKProNxll1RnwyuWTuABazsm9bZKnJInCPDaru+H+Vaf2lJAwylTkxph
	/NxHFEDxZVjINtmuAPZvaSmTsAEjCGnvCqiN2r3YaXy0rlb42b2SyX/toZZ0ns9nBqEs
	MoPKI3vUBqvBOm7v6ItrrocaeM3cQbUFHMWkab8zFvYkXNRGZSoCMLXnS6JxjJKMqOhd
	fH7Rut1PX3lVdkQyWxygpVFLaEukFcLJCbpc0Ahl7yHmB4pigX226nWCtUZ8UOkHMvyM
	f5RQ==
MIME-Version: 1.0
X-Received: by 10.50.80.76 with SMTP id p12mr15255294igx.34.1408969492384;
	Mon, 25 Aug 2014 05:24:52 -0700 (PDT)
Received: by 10.64.232.36 with HTTP; Mon, 25 Aug 2014 05:24:52 -0700 (PDT)
Received: by 10.64.232.36 with HTTP; Mon, 25 Aug 2014 05:24:52 -0700 (PDT)
In-Reply-To: <CAH21_vEC+tXuZ6dqBmHss4xFSF0nxiCL1kvdw8rFRbRWPqUCWA@mail.gmail.com>
References: <CAH21_vEC+tXuZ6dqBmHss4xFSF0nxiCL1kvdw8rFRbRWPqUCWA@mail.gmail.com>
Date: Mon, 25 Aug 2014 17:54:52 +0530
Message-ID: <CAH21_vEjcBD8O71mqxsD5Fqb3zjRnCwQ_eGDrF8mZ2u+v4P6QA@mail.gmail.com>
From: atulkumar singh <atul.singh008@gmail.com>
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Error:MinGW based toolchain for 64bit windows
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
X-List-Received-Date: Mon, 25 Aug 2014 12:24:55 -0000
Content-Type: multipart/alternative; boundary=089e01536fe817d3710501734618

--089e01536fe817d3710501734618
Content-Type: text/plain; charset=UTF-8

Hi All,

Have anyone worked on mingw based toolchain for 64bit windows.
I have build the MinGW toolchain for 64 bit windows.
But while executing a program, i am getting error as "as.exe cannot start
or run due to incompatibility with 64-bit version of windows"
Please help me on the same.

Thanks and regards,
Atul kumar singh

--089e01536fe817d3710501734618
Content-Type: text/html; charset=UTF-8

<p>Hi All, </p>
<p>Have anyone worked on mingw based toolchain for 64bit windows.<br>
I have build the MinGW toolchain for 64 bit windows.<br>
But while executing a program, i am getting error as &quot;as.exe cannot start or run due to incompatibility with 64-bit version of windows&quot;<br>
Please help me on the same.<br></p>
<p>Thanks and regards,<br>
Atul kumar singh</p>

--089e01536fe817d3710501734618--
