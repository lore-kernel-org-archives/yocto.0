Return-Path: <vincent.prince.fr@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 15246E00E0F; Fri,  1 Nov 2019 06:02:49 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (vincent.prince.fr[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.176 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-il1-f176.google.com (mail-il1-f176.google.com
	[209.85.166.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F12D4E0097D
	for <yocto@yoctoproject.org>; Fri,  1 Nov 2019 06:02:47 -0700 (PDT)
Received: by mail-il1-f176.google.com with SMTP id s75so8629946ilc.3
	for <yocto@yoctoproject.org>; Fri, 01 Nov 2019 06:02:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:from:date:message-id:subject:to:cc;
	bh=P4oy2c+ym9tjxMkEZMIKB+DQqcpSkh8aodxx4Zp72Oc=;
	b=Wq29LYWcDaQO0KHvwpnnTlNHWtVgE7h2/JM6tvRYzTE6aDYm/7QZbEV8PA77/CgcsB
	kHEVC+pQeZx4sd1qeC/xoFGutXjVB12fcA7Qc5E5PdKoE0annO7bi1X/leH/2yLKx0b4
	QV5j+OJfiByUB3zlbTBB9WgV9K60vsxm7ktKTXsI7Imp3XGJ6Vd6eV+hJu95JIkYKa5E
	e6jl7cisk6OdzEnpbKsO3VedE8OU7b0lt19HnQ8dQpA0OvO7+U5b53/hqHuRcfYiLjxA
	k7Mk7ovMeHq10OilG4HOCCfd9f6NcOZkfuF7DWE6KnCc9nChELKN3J1MfRS0YWTjT7kq
	gvjw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:from:date:message-id:subject:to:cc;
	bh=P4oy2c+ym9tjxMkEZMIKB+DQqcpSkh8aodxx4Zp72Oc=;
	b=aJRs4quYsJ52txtZI6/7D58Wyk7C0qc0ioubj8htgJWwfBHNyphX1e2iZHZ0m0H/tB
	VRb9YRkoPC+Xjzg1LOUoWi17qCAHwNwFy6OwsyN6xZ5LLyritfQzMkRDOlF+Ef4iMz+H
	1Ef89nUNVXrBxTHQ48hEuIASvu7hUBHDzC4xE4m6CxqkXWlOfkK34senwjW/z6E3lTR5
	y3QZ5Q5MepIWZU+cvYC2JHd7BnINMk2tmT+fQAY+s4Yfs59+P0Dp/Jm/+vkckOi19KvK
	ekkVObBV8fwUCzgZcu+NQvC1PFxlfVBGByBYZBa1OafAeB5gvaCWYpK8wIZekJBImvQQ
	2AHg==
X-Gm-Message-State: APjAAAXUeZujQyZnYsIkDobqSFFGafSj6jEtOkE6zP3hqaHciTpWlz8L
	v0HQEQnQqjT4lM5PwTVxZGprNryaIhU7vs8RtCC69QUh
X-Google-Smtp-Source: APXvYqz5KWvdFtPRVq+D1oIgAn9i2gV6Lw2fPMfccldjZYB7t5VQ/nqkgUpOR5qpdmNNKJl3zwlanU0pHhrTnCAjUaA=
X-Received: by 2002:a92:700f:: with SMTP id l15mr12264395ilc.121.1572613365713;
	Fri, 01 Nov 2019 06:02:45 -0700 (PDT)
MIME-Version: 1.0
From: Vincent Prince <vincent.prince.fr@gmail.com>
Date: Fri, 1 Nov 2019 14:02:08 +0100
Message-ID: <CAB2nKc--FGmKF4SACSOFZxFob=NYSVU=g8g-+qJGGyYzAmHSgg@mail.gmail.com>
To: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: [meta-selinux] zeus branch creation
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
X-List-Received-Date: Fri, 01 Nov 2019 13:02:49 -0000
Content-Type: text/plain; charset="UTF-8"

Hi team,

Would it be possible to create zeus branch for meta-selinux layer?

Kind regards,
Vincent

