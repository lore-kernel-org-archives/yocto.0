Return-Path: <gangadhar.ubuntu@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9654EE00957; Tue, 25 Nov 2014 22:47:11 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,DKIM_VALID_AU,FREEMAIL_FROM,HTML_MESSAGE,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gangadhar.ubuntu[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.192.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.0 HTML_MESSAGE BODY: HTML included in message
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qg0-f48.google.com (mail-qg0-f48.google.com
	[209.85.192.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C5C2CE00942
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 22:47:02 -0800 (PST)
Received: by mail-qg0-f48.google.com with SMTP id q107so1618700qgd.35
	for <yocto@yoctoproject.org>; Tue, 25 Nov 2014 22:47:01 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=uw6HX3aiEzMbhqHtJtpvOOziX6iHZ8cDGDOn4QbXgqc=;
	b=xrFZzyO6Pzu8fs2qGBwY+6cTqL94+9D4EwP0oMgZjSkgVX05tFy/LQNbf675m1B/L+
	tpLQt9v4BnoZNGv1VqdtctaLY1um7BRc87V1i+ST265zOrIRCDcfe/itIs1jQ85QcwzL
	X/do/7D3lti9AfRIjv8YQdECDyGi3ZxJrAsVxGgHItUaTIsK6U8YIOc/07IrxVMmJaiR
	qBNvzw0+dBxs7LktPBBikJdEhCHRMXHByO6SjtFmKad7ChfIlUPd1zA0NZAEYU6SGb9X
	JMRq7F9rLCvzfpTsHU0JpGLvkWhAgX/AjaLI2oRTltjwLVd8pterTu6N1tieou3Nsw0o
	GwNw==
MIME-Version: 1.0
X-Received: by 10.224.63.198 with SMTP id c6mr43134111qai.103.1416984421788;
	Tue, 25 Nov 2014 22:47:01 -0800 (PST)
Received: by 10.140.19.199 with HTTP; Tue, 25 Nov 2014 22:47:01 -0800 (PST)
Date: Wed, 26 Nov 2014 12:17:01 +0530
Message-ID: <CAKxnL=hSs5NNCQY9ZTZi0XWXGJOOn0i_0f-X7k7JksCZZrGo9w@mail.gmail.com>
From: Gangadhar N <gangadhar.ubuntu@gmail.com>
To: yocto@yoctoproject.org
Subject: how to separate packages in downloads folder into those that run on target and those that do not run on target?
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
X-List-Received-Date: Wed, 26 Nov 2014 06:47:11 -0000
Content-Type: multipart/alternative; boundary=001a11c218fc1cf3240508bd651e

--001a11c218fc1cf3240508bd651e
Content-Type: text/plain; charset=UTF-8

Hi All,
I want to separate the packages in downloads folder. I want to separate the
packages into those that run on target and those that do not run on the
target. The idea is to feed the packages that go into target to fossology
tool to get licence of each and every file. I know that the Yocto Project
generates a license manifest during image creation that is located in
${DEPLOY_DIR}/licenses/*image_name-datestamp* to assist with any audits.
But we need to use fossology. Please suggest a method/command and guide me.

Thanks & Regards,
Gangadhar

--001a11c218fc1cf3240508bd651e
Content-Type: text/html; charset=UTF-8

<div dir="ltr">Hi All,<br>
    I want to separate the packages in downloads folder. I want to
    separate the packages into those that run on target and those that
    do not run on the target. The idea is to feed the packages that go
    into target to fossology tool to get licence of each and every file.
    I know that the Yocto Project generates a license manifest during
    image creation that is located in <code class="">${DEPLOY_DIR}/licenses/<em class=""><code>image_name-datestamp</code></em></code>
    to assist with any audits. But we need to use fossology. Please
    suggest a method/command and guide me.<br>
    <br>
    Thanks &amp; Regards,<br>
    Gangadhar </div>

--001a11c218fc1cf3240508bd651e--
