Return-Path: <jatedev@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D0465E003D2; Tue,  1 Jul 2014 20:41:30 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jatedev[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0001]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.192.49 listed in list.dnswl.org]
Received: from mail-qg0-f49.google.com (mail-qg0-f49.google.com
	[209.85.192.49])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 3AA2BE00289
	for <yocto@yoctoproject.org>; Tue,  1 Jul 2014 20:41:28 -0700 (PDT)
Received: by mail-qg0-f49.google.com with SMTP id f51so4166946qge.8
	for <yocto@yoctoproject.org>; Tue, 01 Jul 2014 20:41:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=YXCPiuODS4LdYjnEqESMbLt6wJSGMYyoJO4AJ2ICkkg=;
	b=zBadVAmAQIWMJXjDJLkVQdStNMrngrL4ZeBIW3EzQK3NbkbcaF+sDTcV6YyhUWprgM
	nBvp0/Zf+zDvNiRis1jpIXa9BUjmBBawEeCJZ3DXM3v1AN/WxF/ET+WW4SQL7l7G8xXd
	d7XUiSyr8R7Y3I4gXrO7uL69LZC0vvimj/NPPKXc3IH/gueeP/iCrf+mnrQtxb9Qq4bM
	4g/GCSAbtpNfSlA5LXkePBihYvF7saT1pOVeFk/7StCfLdAsG8ckwmhSh/nkJSKHInDS
	eoHLIo0kQ8+IX4VPEw+bpGarBTZn1CJogt5wKzwGg4Ta+7FOXAnhO/zbMdtuFAB1b1l7
	ky1Q==
MIME-Version: 1.0
X-Received: by 10.140.101.86 with SMTP id t80mr49132504qge.108.1404272487450; 
	Tue, 01 Jul 2014 20:41:27 -0700 (PDT)
Received: by 10.140.101.6 with HTTP; Tue, 1 Jul 2014 20:41:27 -0700 (PDT)
Date: Tue, 1 Jul 2014 23:41:27 -0400
Message-ID: <CAPphmgZ+ivQYXuYHLWfzQF9QySVnd=YtbM=fEjfA_7hp3iFq1A@mail.gmail.com>
From: Jate S <jatedev@gmail.com>
To: Yocto Project <yocto@yoctoproject.org>, jenslucius@freenet.de
Subject: python tkinter dependencies
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
X-List-Received-Date: Wed, 02 Jul 2014 03:41:30 -0000
Content-Type: text/plain; charset=UTF-8

The python-tkinter module requires _tkinter. A result from a websearch
suggested that I needed to make sure tk (from meta-oe/meta-oe) and tcl
were installed before compiling python.

I added a DEPENDS on the tk and tcl recipes to both python and
python-tkinter in a python_2.7.3.bbappend. It did not work and was
never built.

I'm looking for tips to figure out what is going on. Thanks.


- Jate S.

