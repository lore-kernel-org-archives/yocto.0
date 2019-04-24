Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 60DA7E00C93; Wed, 24 Apr 2019 01:45:58 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.175 listed in list.dnswl.org]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-it1-f175.google.com (mail-it1-f175.google.com
	[209.85.166.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CC468E00C93
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 01:45:56 -0700 (PDT)
Received: by mail-it1-f175.google.com with SMTP id q14so4966779itk.0
	for <yocto@yoctoproject.org>; Wed, 24 Apr 2019 01:45:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=gNyK6cUtWdlz80wXn7IPCvdHK/0p/H1NesZNhgO3Y60=;
	b=CtQynaL8M/ZO0jLVvDlZsVzo7TCllghQ6G52D7Omy2GGkgn2q6Shkv7BDTI7twOa4i
	eUsu3qymp7QpgEMpAXqGAwhz45E2wvofWnpK41Vi2X5lxaT205urvwQYxjpnHWCwV6FL
	co64fiK38DDD/cqzr/Pu9wr2W1J+wIK8yU+NfsNZ8juBRcTZ9mTVxPKdeWoDYcXdkLk9
	PQpIIJGaKuRkEGFuUoBsyZClI+lbVMC+TCR6E3QjndNKTkwdOKSDgq3KmHuUYyi8GRCB
	5XqVndVgrSDfhhVBx/q475IhLjpnI4WcFKRNPv9DbkljsNImFjj7GKtc67lvF7/mFeX2
	UB8Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=gNyK6cUtWdlz80wXn7IPCvdHK/0p/H1NesZNhgO3Y60=;
	b=pi/ZKBo0ofSfOVz15JNfypBYtXd1ZNotaQTa182CEVNhqxJdOtDBufw2V47fVQhglM
	4udJCqC8QmjBeAJ1eiyMmtfUKvcYP4JERgkTMcSi65LxByL6NpEO4jtFEmb/lnKTnR+1
	zMYrEXgWcOncpYRwVh+tHc1137wsIwCNy9Tj2eK7KvWLXjMwwUZH7zPG1O6tbs00ew66
	G03YncOU1zHtxlqfcvj25c7yADWcOq/tZjXrnEQqLsDVeVa/OAveWbTQlilaCZsb0JIF
	vJhltPavjAWfUZ1RY2gnI6QmYTikOHScTU/S+qDf9Y1nL0Q9svfohwAzb4lO+KYilLJU
	ubNA==
X-Gm-Message-State: APjAAAW60coLeuT2Pem/yEz+czYN3290HZSKLrz1zGJgAK7GaHCzQiYc
	A+bIVrIp7CPPOvYrd0hXOhyBcjOKU5EkxP4Ytp0=
X-Google-Smtp-Source: APXvYqwDJvZLTZhY7Hp75iW7ly7kU2jKLVUSw6b+4sqq1yFRjy+7WIVEVqBCupUSag2COTvTFRRWzjlrC7mkR/bOjp8=
X-Received: by 2002:a24:fd8c:: with SMTP id m134mr3918478ith.130.1556095555489;
	Wed, 24 Apr 2019 01:45:55 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:9c06:0:0:0:0:0 with HTTP; Wed, 24 Apr 2019 01:45:54
	-0700 (PDT)
In-Reply-To: <VI1PR0701MB252796A4D460A59941E82F2F95230@VI1PR0701MB2527.eurprd07.prod.outlook.com>
References: <CAA=hcWQk+gOfOU6LsHWFcLtZJ9V9VfTfGRXDMfLD_0gAA1QqBQ@mail.gmail.com>
	<CAA=hcWRfFKhQzqS8yKRyth14dWN=VPQqhXejbew01EnOtUtAJg@mail.gmail.com>
	<VI1PR0701MB2527360E293EACEB7ABC707D95230@VI1PR0701MB2527.eurprd07.prod.outlook.com>
	<CAA=hcWQJ+cJQpy6zZ3wQQaH2eutk=cdnikspBiyyL0K+-Q9gjQ@mail.gmail.com>
	<VI1PR0701MB252796A4D460A59941E82F2F95230@VI1PR0701MB2527.eurprd07.prod.outlook.com>
From: JH <jupiter.hce@gmail.com>
Date: Wed, 24 Apr 2019 18:45:54 +1000
Message-ID: <CAA=hcWQ91K146Xb-KAwiLZDo7e9C_FdnPyiYKPYdMvKf8hwpEA@mail.gmail.com>
To: Erik Hoogeveen <erik.hoogeveen@outlook.com>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: What is the right SRC_URI syntax for git@bitbucket.org?
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
X-List-Received-Date: Wed, 24 Apr 2019 08:45:59 -0000
Content-Type: text/plain; charset="UTF-8"

Thanks Erik, that did the trick.

Kind regards,

- jupiter

