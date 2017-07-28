Return-Path: <jacobchen110@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F12DEE00D05; Thu, 27 Jul 2017 23:48:14 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (jacobchen110[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.216.178 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.216.178 listed in dnsbl.sorbs.net]
Received: from mail-qt0-f178.google.com (mail-qt0-f178.google.com
	[209.85.216.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5A0FDE00CEF
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:48:13 -0700 (PDT)
Received: by mail-qt0-f178.google.com with SMTP id s6so84418095qtc.1
	for <yocto@yoctoproject.org>; Thu, 27 Jul 2017 23:48:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=yppZScvFPgmi0na9SV00SKWdSMwKUUoKz9xB2zMMHKw=;
	b=mddllnBWcArr6YqmridF4aRS2MJWl2ouQFkNfgM7JwMYl3rSId6Nxvi+eWtMshkh65
	mVL2uKMv1mQZuC+meSiFRuYpJ8iUPdGWRx3tGPRytkcju5p1vluoKK5EA198Afa17CFi
	ylUnEEuZOKR3aFJC9FjxfZZo6InfcfDbJCYV38AKihFSQt+HNKYdu+O9D1ZF7WfyK++n
	80bx+HsB12ccXLveXTsZ6VqczqlRMjuZzJqLn1vc7r54Gc1WPZZbR04SzGqBJ8h4yYQY
	+B9A3FcUrZ0rDtybAPzpVbvOLDeMom6tLpWkzqV0j+YnfAwuaXoAGhmkf2DHXPKScgQo
	9w9A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=yppZScvFPgmi0na9SV00SKWdSMwKUUoKz9xB2zMMHKw=;
	b=Ylg8CRYJf4wOQJqL6kITVcTiKIRNJh2yQP+8HnTHNeSPrjbEdH97BlW6GCXl3ZLpaI
	VpO2uHXbxHcQdAm4fu9hscmLZG9ZEjrEGu78MnBRPNdwxdtYIxfj3Tn+PrIcm+iDMBFV
	uZkFc2Od3cu9XlMBMTw0WF/HxS+YZH60n9YqF767pRT4uv/q6mKvlvC0wFHhX++owcRl
	o/nEb/oHdhRIjypPPkJutA6kCpTo5uhr2P33bkQdtTdk7yR4xbAiPEytnpn0/JeTawBS
	vNTmW0B/tYlL09UrhCkIf4DLkImae6R3UAM697Ds5f2EjRrkAM9mjMIAVgXX0E3EsPD5
	/nHg==
X-Gm-Message-State: AIVw110zQD0feR0WWZE84emAKGxAfRAXzir0tO2xIiGu3Q0IFexHQA4j
	sWU4Z5xEC0RsHFNeyAzi6vaVOC4fatWW
X-Received: by 10.200.37.206 with SMTP id f14mr8703324qtf.271.1501224493444;
	Thu, 27 Jul 2017 23:48:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.86.42 with HTTP; Thu, 27 Jul 2017 23:48:13 -0700 (PDT)
From: Jacob Chen <jacobchen110@gmail.com>
Date: Fri, 28 Jul 2017 14:48:13 +0800
Message-ID: <CAFLEztQDBvr0iDvBhC6xCqvs=0nUrVk8wSrZ8ndebyBOxPjpDg@mail.gmail.com>
To: richard.purdie@linuxfoundation.org, yocto@yoctoproject.org, 
	ed.bartosh@linux.intel.com
Subject: localhost toaster faild after commit 4602408c6
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
X-List-Received-Date: Fri, 28 Jul 2017 06:48:15 -0000
Content-Type: text/plain; charset="UTF-8"

Hi,

I have use a localhost toaster server as the CI server, and recently
it failed to runbuild.

I try to fix it by editing
"bitbake/lib/toaster/bldcontrol/localhostbecontroller.py", but then I
give up, i'm not familiar with it....

Can anyone give it a fix?

