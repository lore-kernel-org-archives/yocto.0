Return-Path: <qian.hao.developer@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id EB6C3E00DFB; Thu,  8 Aug 2019 23:20:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (qian.hao.developer[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.210.46 listed in list.dnswl.org]
Received: from mail-ot1-f46.google.com (mail-ot1-f46.google.com
	[209.85.210.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id D9737E00DE4
	for <yocto@yoctoproject.org>; Thu,  8 Aug 2019 23:20:22 -0700 (PDT)
Received: by mail-ot1-f46.google.com with SMTP id q20so128430154otl.0
	for <yocto@yoctoproject.org>; Thu, 08 Aug 2019 23:20:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=9mcgNzQVMi6YNgKARpLnnm9SY32yGAt3Rh+UT5jfG1I=;
	b=QL+5rX5DxysRn+Ine2UVRjb37eg9vXQy6HaeqFKEHOPOWPLxuvrbT7eEi1gWWOAMYJ
	A0kQX6U+XeQxKPIh+MjKahH6W5qDG6t5QlQUtuaIMXOvM0G+nqlkfUtT2RERhe8/j3gv
	8XT22acvBe9NGAkZzs9Esr9SrNCAM0LYyYrKcskaKDWp4DKqN2d33w8XbaNc6b7J4yD1
	cemNeWOFMmj43loV+9zSzymq9YQ4pMjJrGXPmNBb4SO/XsJSdCNtkpTp9h9lxfrSdr1f
	aaKy7Ns5hgI0ks7sZAYK0sR6zIyG9lVYdx51sHQ8zJr8yzYUAm18nGY+sJlCxn5Dqv47
	HrIw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=9mcgNzQVMi6YNgKARpLnnm9SY32yGAt3Rh+UT5jfG1I=;
	b=RKgaS5A+1Aj2NAUcxkOztrufFlY1nLjhuQAEIZt5B+WW99ui4G6ueI8DxEEViPvwhF
	iH/riAUWc2kYDhm33xrmrCCCgcoasWvD20PR91JJb50XHO3ys8MSLooPLY3NiwHcVSjS
	e1H9JcC/2KGhu34bgAlOq/IMQEg1w9HUhfQjyUBKSCPhssItt4zSTexFdpbElhgSXZaZ
	hUu7lCbFf3Kz87XZGZb7hg522gW/IaFvdxsRBWUPVJpPu3saLHaPzH7tpoCk9t0h2gGM
	rXKdu/8FaujmGxTH2/8NjjKN5WXZk2do2ulGnzrAzLG2KsI/xv+2oXChyZzHXF/fbce+
	oRmQ==
X-Gm-Message-State: APjAAAUSOuG+vbiugx8++GFpfzeHSC8gJdu9n1hNDb3qX6/pHy4hPoNN
	WSzD2H/MuF458YLYeDKlQXPWAGhbOBz0PqpsZxE=
X-Google-Smtp-Source: APXvYqzbIDqXHu0DRteJG6aDKgwfav/OGpUBvSRrRTx3i5uS1OR3gj53k5J70xAKdDN+pIWISjqYwgsq/HrLKT+Nzoc=
X-Received: by 2002:a54:4f1b:: with SMTP id e27mr5102580oiy.171.1565331622266; 
	Thu, 08 Aug 2019 23:20:22 -0700 (PDT)
MIME-Version: 1.0
References: <CACxpVWczf1PThsuUkLzJZD7j+p4EMk-fBnKuwQeUsiemqH9mhQ@mail.gmail.com>
	<09b388f2-7f3a-75d2-4399-84c99b09c0e4@windriver.com>
In-Reply-To: <09b388f2-7f3a-75d2-4399-84c99b09c0e4@windriver.com>
From: Hao Qian <qian.hao.developer@gmail.com>
Date: Fri, 9 Aug 2019 15:20:12 +0900
Message-ID: <CACxpVWeDXBrXd=m1JVB5=P93dutVW=hxFyxWKPEwtFsDOQQBjg@mail.gmail.com>
To: ChenQi <Qi.Chen@windriver.com>
Cc: yocto@yoctoproject.org
Subject: Re: Build error after changing $TMPDIR
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
X-List-Received-Date: Fri, 09 Aug 2019 06:20:30 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Aug 9, 2019 at 12:15 PM ChenQi <Qi.Chen@windriver.com> wrote:
>
> No, it's not a stupid question.
>
> For now, setting TMPDIR like this does cause build error. More sanity check might be needed to error out directly in such case.
> You can just source the build directory to be some location you want.
> . oe-init-build-env /path/to/your/build/dir
>
> Or maybe you have some other specific needs?
>
> Regards,
> Chen Qi

OK, I see.
I will take your advice.

Thanks a lot, appreciate it.

Qian

