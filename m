Return-Path: <ricardo.ribalda@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 458A0E00D5C; Tue, 19 Mar 2019 01:24:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (ricardo.ribalda[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.208.177 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-lj1-f177.google.com (mail-lj1-f177.google.com
	[209.85.208.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 9DD1FE00D84
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 01:24:23 -0700 (PDT)
Received: by mail-lj1-f177.google.com with SMTP id j89so5062558ljb.1
	for <yocto@yoctoproject.org>; Tue, 19 Mar 2019 01:24:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=F81ovrLxAxmBnBxLi8mLsNN2sYwkuUrA0VeI1VLg/UY=;
	b=vAvcpTj4RneVx4XgC2f9mqVGTX+SXaywfSpPuhEwCNQrcgJqHWzzRNaeUw1926urhW
	uU5yR22s68KXedr50MwlNP7kXsYYdwor/IV4jU/VmesqgSYPzcU31FP2WXB/eCEJgspM
	FJPsCAWKytynWBvq/6TdO0KQoudooSQU+ERrPZddooUiS3LI+mFmV+5stbfxQQJDMiA2
	g5InusgkNtQZ4SsRxGmfC3nrDbKaXJd5VyAhRFuTU8Fr/200XJ5Q86grPaLpIXo4ABPt
	r0M5cMV3+M7xQrMPLjrrKaK/dlzwR4zR9lLGV3fS/Zy3VVpOp8h81hqkwKYQ4qlY2gS0
	RRnA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=F81ovrLxAxmBnBxLi8mLsNN2sYwkuUrA0VeI1VLg/UY=;
	b=apSYoWrbEsOnxzJykFxe7pgwbSyLZOtt4M1UwGUGkWYBcjgds0ZiBpRAftFsPRDCZM
	WfY59TuTcUQOFk4cFlyZ0CPCxcM6Embefg5A2G9/O82GzParrpEmSmtrNPkxcI+i5izr
	QRniW0cc8n8xSWvxxjta5Vm4yNcNw646klG+txHD16hagN4HT1ca+nx1awbcLlhvbzm6
	+cqVJlD6X23ZLcBI4WI7ZewbGT7OcSj4ZeG33WlFzdz1EWY7+FeDPO4R16Pqnm1n6hx7
	QjBDb0Fr5WRgoK+B9q4Hr4IW0ILxDAOATcCHQtzmRDS1cUCBBZKvaeP/D0+VbQ/1ejQs
	pHiw==
X-Gm-Message-State: APjAAAVHVmh/rBRNVoMBObFUF/XcQ0/kzXUetIlVK5Iwvm10/2x9g3xU
	lcJU4+qu7cPzErVDH5ur+Jdxy4stEoWQ5kK27/8=
X-Google-Smtp-Source: APXvYqzT8qGOs7kPfoZYZVIY4uXKIS583WbLkWF9gEyCAvnYJ+HIK+tRfe1oxv14pFDpSV/3K90V00lKbT+Wb3kt5MY=
X-Received: by 2002:a2e:731a:: with SMTP id o26mr2913583ljc.69.1552983862682; 
	Tue, 19 Mar 2019 01:24:22 -0700 (PDT)
MIME-Version: 1.0
References: <CAGk+JegHkafvb7NnPs8V5=fWMM_9GKj3Rk1NHSa3kNDpJi70sw@mail.gmail.com>
	<CAFNP8OuuixdStE_LrRLhXbAtW-XuhE_2ehqzPucFL5iETvQCNA@mail.gmail.com>
In-Reply-To: <CAFNP8OuuixdStE_LrRLhXbAtW-XuhE_2ehqzPucFL5iETvQCNA@mail.gmail.com>
From: Ricardo Ribalda Delgado <ricardo.ribalda@gmail.com>
Date: Tue, 19 Mar 2019 09:24:06 +0100
Message-ID: <CAPybu_2G3zKZexmUfym49J=ea-41PnT5QnsiuKkSxwDJUnZX9A@mail.gmail.com>
To: Scott Rifenbark <srifenbark@gmail.com>
Cc: rahul chauhan <rahulchauhankitps@gmail.com>,
	Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: Guidance to start yocto project.
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
X-List-Received-Date: Tue, 19 Mar 2019 08:24:29 -0000
Content-Type: text/plain; charset="UTF-8"

With no doubt: yocto developer day.

Excellent value for the money!

On Mon, Mar 11, 2019 at 4:47 PM Scott Rifenbark <srifenbark@gmail.com> wrote:
>
> H Rahul,
>
> I would start with the https://www.yoctoproject.org/docs/2.6.1/brief-yoctoprojectqs/brief-yoctoprojectqs.html manual.  Gets you up and running.
>
> Scott
>
> On Mon, Mar 11, 2019 at 9:32 AM rahul chauhan <rahulchauhankitps@gmail.com> wrote:
>>
>> Hello,
>>
>> I am beginner with yocto project and i want to learn the yocto project and start working on it.
>> can you please guide how can i proceed step by step and  what are the prerequisites?
>>
>> Thanks and Regards
>> Rahul Chauhan
>> --
>> _______________________________________________
>> yocto mailing list
>> yocto@yoctoproject.org
>> https://lists.yoctoproject.org/listinfo/yocto
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto



-- 
Ricardo Ribalda

