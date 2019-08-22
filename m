Return-Path: <jupiter.hce@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id AF8BAE00D77; Thu, 22 Aug 2019 14:32:35 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (jupiter.hce[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.44 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-io1-f44.google.com (mail-io1-f44.google.com
	[209.85.166.44])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4F4AFE00D38
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 14:32:35 -0700 (PDT)
Received: by mail-io1-f44.google.com with SMTP id t3so15092389ioj.12
	for <yocto@yoctoproject.org>; Thu, 22 Aug 2019 14:32:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to; 
	bh=E/Bf5XRf+eI1KLstg7O/H8NgQCuuRabqEA+gZgUoEyM=;
	b=mAllOSU2GdFg0pRC3fH7I+lzaEVW5MpPe1Qql8S0ab+v6DXM2v6FPgU62XS+xQjgV2
	aYPjAHCmikcoOWSMUrIn/M4fcQJesRUHPm5k+5oZHOAVyTXFjZBf/CMJxMsxvJ49seUE
	Jxudd8GvIu+hFQZpcP+CuNrw8hECIs0MWIejh+ct2482UrY+mEeUCbPluwhRTjK2TO+h
	trUTDydtAsSquPKjCt4oZ41CI4NlQgcg9gb+7Fl7Z5wUOB2M6mm2/ZJ7QRWQFgSje4tB
	LmsD6795G1SlHYp+cnPRX5+x7otlY7AKEM7E1J6hAi5nu7VR4EmNnPH1e0IqUzL/dim8
	j8Eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to;
	bh=E/Bf5XRf+eI1KLstg7O/H8NgQCuuRabqEA+gZgUoEyM=;
	b=qDKatLO6G+pJn7YDSFCf7XR/T2iaMp+GVWt7K56+iEhlxh/VFwZs0BWXkjK84sXAiG
	iG03mJFqXruO3c2o4nHkplS9TBbvpq97ZmXrUSEFft19k8g4wCOAbzwkmsaQRGGKMpBQ
	JIXAPOh9omYXWwTJ2uh9GxqysUiFwuISyrOcYSVgiQTp2hWwTCJFy9QmuBPNGI5mhZQE
	23t2BmB2shJOIdUNLCSjE1DGz6POAAblGJKK/SZYAZrqCf2ickrAdZl2qNMVY2gaMsmK
	MloKYlZAoDY2Huj/BaIYRBNlv6xsK5p24dS1eCDbB0fNC0e7Qk0MxMXUPQf7ef/LNwYW
	Jk5A==
X-Gm-Message-State: APjAAAVCw1lVuHinCuXWuAh/IPvMUsfyDNnZzYZdoPCa2MryfOy1K88c
	JqCqD4l8s50xPd2SaBgrVaWDDDHPfKKuhtvn49hYJsbT
X-Google-Smtp-Source: APXvYqz6+BGlKDG5bhh3KEV8iDFwaaSqOh+2JbQSQQ7wfHvZD1ad8ATYx8LbxiLY4K/dkzYA9m+5V+pwxnMiDb6xqdM=
X-Received: by 2002:a5d:8f02:: with SMTP id f2mr2489370iof.192.1566509554443; 
	Thu, 22 Aug 2019 14:32:34 -0700 (PDT)
MIME-Version: 1.0
Received: by 2002:ac0:a3c1:0:0:0:0:0 with HTTP; Thu, 22 Aug 2019 14:32:33
	-0700 (PDT)
In-Reply-To: <CAA=hcWQ3N8VevOFcsL+595HZp4UqcgdQgQrQJFpMttDFLZPVdA@mail.gmail.com>
References: <CAA=hcWQ3N8VevOFcsL+595HZp4UqcgdQgQrQJFpMttDFLZPVdA@mail.gmail.com>
From: JH <jupiter.hce@gmail.com>
Date: Fri, 23 Aug 2019 07:32:33 +1000
Message-ID: <CAA=hcWQ9fMMFw65h4M8LWM_Mqx-MDN2sUDy+pzLSMgFV1bak1Q@mail.gmail.com>
To: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Can Yocto build to set up process running priority in service?
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
X-List-Received-Date: Thu, 22 Aug 2019 21:32:35 -0000
Content-Type: text/plain; charset="UTF-8"

I have two processes launched from a service unit, how can the Yocto
customer distro to set up high_priority_process?

ExecStartPre=low_priority_priority
ExecStart=high_priroty_process

Thank you.

Kind regards,

- jh

On 8/22/19, JH <jupiter.hce@gmail.com> wrote:
> Hi,
>
> How to set up process running priority for services in Yocto build
> using renice or some method?
>
> Thank you.
>
> Kind regards,
>
> - jupiter
>

