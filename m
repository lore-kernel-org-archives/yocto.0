Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 46173E00B8B; Tue, 27 Mar 2018 11:00:55 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.53 listed in list.dnswl.org]
Received: from mail-pl0-f53.google.com (mail-pl0-f53.google.com
	[209.85.160.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5263DE007F2
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 11:00:52 -0700 (PDT)
Received: by mail-pl0-f53.google.com with SMTP id 91-v6so6777081pld.3
	for <yocto@yoctoproject.org>; Tue, 27 Mar 2018 11:00:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=90a1wfhATKRMEs30+3//kR0QUZzDVnNxpNHx7I0/gLU=;
	b=kn/mBO1I7ZcGV1k1elC7YKBhhjFgKZCDVM8BBY20OwmRLGj7xJTrjCE+RUJIod++RO
	rMnBUzp6TYD109w04haq0q/4+TIFvYlJFaO0F+0pforRmMlN5fOvgMSdLaDL756Kxm9/
	DOBeB7A+jnbcPOiApRokpRzNf3bBTEsCrDMLgsxa9i9LkjK/N6txkRzyyVw/9K6tA72r
	cRkMy5S3zElDWP7s9jyF08ANFI86aRGF6qde3JLd9RarmtRjfGt73HJSidvyxaalMpMl
	PwxKYJdFCDTUV86eyJfUkPjBAtUNJ9vD+vINeYBnk8iZ6/WG6rG8rUiVAQ5QQHkJgcKY
	QpHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=90a1wfhATKRMEs30+3//kR0QUZzDVnNxpNHx7I0/gLU=;
	b=EdI0dDT3D62njOlv/1Cp8BXQRgBCDxeliaLFH+sJJ2G2F6JrhreZQJx0NfGz2jZ/3+
	Bgq3jsH1lSXlQtb/nk+YNeuO+okHvmkSPWGFZ+8mKQVJDUtODlHXq2RralfA0hKJ+rT0
	cSuBiPk37uKPhEAojHle9M5Wvu+i9XKS1CLEW5RwmkQWocBgj6L3yG7NYaE3M4KvtKVD
	IeGPbx1XgkF6a4F2cSmcWK/imcbF9PovElMsKLNfI7lSmfvRI3GSJ3yx1EglxshWQr1C
	lu/Yl9VZpE/PdPsU++iQYtkmWWFW52t+J2QLsq+6ZKVybNaaRiTdDAOrP05TXVbjD6v6
	4ZBg==
X-Gm-Message-State: AElRT7GT/FDF6EkqsgeKbb1Z5WEGPOEwz6erTVAhWXYOEE6xojKpg/eU
	yONHpV8MKbg+JUr9MmCvqeClzp3WMxGILslhI14=
X-Google-Smtp-Source: AIpwx49/ytn3baVCU9fQpTu/TGLozXsnl8ZBbTThuHuOpHOBiPW6tOOIms1kBe+BYZrlwcOGCcOa8qL1CIHyUSkDF74=
X-Received: by 2002:a17:902:158b:: with SMTP id
	m11-v6mr309048pla.300.1522173652342; 
	Tue, 27 Mar 2018 11:00:52 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.100.227.8 with HTTP; Tue, 27 Mar 2018 11:00:21 -0700 (PDT)
In-Reply-To: <CAFzUWGkcThCWgeEFxYtPzo=DfZB+5QOvOFxnOwZfqrVs6zUkZQ@mail.gmail.com>
References: <CAFzUWGkcThCWgeEFxYtPzo=DfZB+5QOvOFxnOwZfqrVs6zUkZQ@mail.gmail.com>
From: Khem Raj <raj.khem@gmail.com>
Date: Tue, 27 Mar 2018 11:00:21 -0700
Message-ID: <CAMKF1sqS4WKDQBO408H5XSZBiuAJx5tkMydJALy6D+cySvMOvQ@mail.gmail.com>
To: Giordon Stark <kratsg@gmail.com>
Cc: "N:" <yocto@yoctoproject.org>
Subject: Re: python-fcntl missing in rocko?
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
X-List-Received-Date: Tue, 27 Mar 2018 18:00:55 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Mar 27, 2018 at 9:50 AM, Giordon Stark <kratsg@gmail.com> wrote:
> Hi all,
>
> When I switched from pyro to rocko, using `python-core` -- I'm noticing that
> the fcntl module in python2 is missing. Is there a recipe to add to get it
> back?
>

do you see a separate output package python-fcntl ?
if not it might be failing configure checks during build and disabling
the build.

> Thanks,
>
> Giordon
> --
> Giordon Stark
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

