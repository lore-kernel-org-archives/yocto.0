Return-Path: <josh.deweese@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id F3FDAE00BD5; Mon, 28 Jan 2019 07:32:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (josh.deweese[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.210.53 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-ot1-f53.google.com (mail-ot1-f53.google.com
	[209.85.210.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 85ABFE006F1
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 07:32:44 -0800 (PST)
Received: by mail-ot1-f53.google.com with SMTP id g16so10933415otg.11
	for <yocto@yoctoproject.org>; Mon, 28 Jan 2019 07:32:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to;
	bh=Cs/oOjJYCbxBUO2mCUD9oMngCawXuLzMip1B8pSiiRc=;
	b=E8qj7rEw5FhX8WdeNW1nAmZEaOJuROP67qAfXvWSnz/LK8KIGV4RwE13A5TY1aOcJw
	cOcFGhazowmxwWSAQap2YHL3ZZ6+p4O2KIaNjzsj7NhRXfX36g4tl/Ao1t5q6Pjwdae5
	9Z/Gp/8onbdK1/mr6/jgSnLjpbH85IDABrxstrDD9B1BpzJt4vduvNqP4LL2/5s8qx8+
	VrHOfSxhuM/H9UAaNHNjvEqin/6roj7Thxj4KJSjzeYdVtPNDyQBgg0U0BHalMNFw1aB
	4QA57ozreXOYDozgXxk0/Xqx/f9+VFcmsBDT40sjFdq0ev2S5hARa1qNoYXmDeIGcQcy
	tcJA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to;
	bh=Cs/oOjJYCbxBUO2mCUD9oMngCawXuLzMip1B8pSiiRc=;
	b=N2KwreevNuFdK+wXFAvsGQwxpWRuOZG/43QbZwpQH4ISquQ2eQ9W1rGcXmtq1CZ15v
	R865LrhIsiksunTvP2ZTMILqqyUzMPrlFIICQlHk6a7CflMV9GY0vov+4SNTQcGXoEFw
	HoTxCtx595YeWGSOKCbJoym/4irqqybA9PxFU+BoesuGHNciKsQO0nS/djgm2JLD/J6Y
	EJBhi8niXgkTYfVppVsvKXirO6soGw1bAMSVO1H6GYfvELGNDfqKQ21Vt7rGr2jr+r3q
	ibssRL38t9eLNU9s+v2ibd33IS7WlVgPz04Htx1wcvlHkOosnj1d01AOGK1NsPQyR+0G
	D62Q==
X-Gm-Message-State: AJcUukfi7nU+k4VSBIENSD4e3kFhCGSDGKa8MSRDqtwl/xJZd/bthZAe
	fQG1+kpYv5dIU3/R75h5r9xRXtQD275LpRD8Gc0IZw==
X-Google-Smtp-Source: ALg8bN4Ab3jOVEjemSSiYbYnyxwxm8Sq5cFu3tgaF5QDkU3cLUwBVT0ZJYHMj6B/cszdH3T0unuKsPysIiE3NrZeQDs=
X-Received: by 2002:a9d:6552:: with SMTP id q18mr16867149otl.128.1548689563603;
	Mon, 28 Jan 2019 07:32:43 -0800 (PST)
MIME-Version: 1.0
From: Joshua DeWeese <josh.deweese@gmail.com>
Date: Mon, 28 Jan 2019 10:32:32 -0500
Message-ID: <CAB8xaQ60NtpxDBcjcSJAnoXHaQwx_S=wA6t+XatyhrwCu3x=FQ@mail.gmail.com>
To: yocto@yoctoproject.org
Subject: setting arch of a single package of a recipe
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
X-List-Received-Date: Mon, 28 Jan 2019 15:32:45 -0000
Content-Type: text/plain; charset="UTF-8"

Is it possible, when splitting a recipe into multiple packages, to
change the arch of only one package? (example: setting foopackage-doc
arch to "all") I can't seem to find a way to set PACKAGE_ARCH for a
single package.

I've tried PACKAGE_ARCH_${PN}-doc which didn't work. Grepping for
"PACKAGE_ARCH_" seems to indicate overriding is possible for machine
names at least.

-Josh

