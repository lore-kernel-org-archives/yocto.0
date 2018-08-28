Return-Path: <alex.kiernan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 4FA95E00519; Tue, 28 Aug 2018 09:05:42 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (alex.kiernan[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.222.50 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ua1-f50.google.com (mail-ua1-f50.google.com
	[209.85.222.50])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DAE67E003D9
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 09:05:41 -0700 (PDT)
Received: by mail-ua1-f50.google.com with SMTP id r15-v6so1346172uao.1
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2018 09:05:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=w58vkaRuvwC4lPzi0q+ZApdeObTX+MIMbKTHxY2SfIg=;
	b=HKnxjc7crlZE3UqXK1RpQpACAfQu0kSwksZ0INnlsYF4yfnWGy2mz6tfXp7svQL6Ta
	Cra4lp/fxWSWaTl1eJcCM8jiTo9y5GjcEhXlq38rRPc8vdX2P1HzTboxUPMsoH0ev9hp
	F38GdbAHt2iXzFYvkALtBa/2lzdpDWqtE+M5DB2ot9gdY0xpxAB3+7bkEDBWeaTzrf60
	r5kqH24yRtlYcAW0X4qJTZlhIf0bLjJnKZlE+E10ysPZhNVngmpu0QynWhWY/XeLvFXV
	lFkyRDN7Z/c9ExGTYk5cCJf4gzrInH8eSfHJA2m67rVhc10QIQYhUxDtCzXEs4MoVB+3
	XmUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=w58vkaRuvwC4lPzi0q+ZApdeObTX+MIMbKTHxY2SfIg=;
	b=M1c5Skp4ocAmtli4hIsUOVRmbTtP2TGUKXEyvg4ijR6IM19yzL8rgc3ny5ANhcRKnC
	bgxtZtPMvQyEET81pXpA7hl3Qhc4A6TYkf08QOIw70CjvXsGgdHH8H0uxEuhw+S2Upi4
	8YpUMDDe+xyZwV5E++UPiGudV8T2Xf7NtAezWj4kq1ltR+mYGVwppTQjsmgJo3ka8P2g
	RKmwXzBUFIARWV3bW+iaHMJHOgKkgl3zT3LGM/bNtMwFy+Y62ofjxtf2reoMM6L6pSEg
	Evpe0CCyoSilVdW7c/BFLZaKaBgGUiIJTi2h32elsjRmYdjbsCzAN8ClglslvyfVB1Yx
	1DrA==
X-Gm-Message-State: APzg51Bq9EvL7TaCHh2akEBbvIGmTKYY7jSp+YSpGWVnjruYUAipIvfu
	mfdNl0kWgr++OUG3LAq7Co4MR3KRUyzYXWrrFmc=
X-Google-Smtp-Source: ANB0VdbXaaskSmy5yWSUHq9/lGL59QfFCRli21Foyfbh+TxqhAJYjppTEJ1XcF2+r5VQcr1tbVG/dE4fWjvDpB1OaYs=
X-Received: by 2002:a9f:24ae:: with SMTP id
	43-v6mr1468198uar.181.1535472340880; 
	Tue, 28 Aug 2018 09:05:40 -0700 (PDT)
MIME-Version: 1.0
References: <CAPC-RG=00RS7hogJpNeMkPqZhUbDBN7O0=SAakbiUfQVW4P1_w@mail.gmail.com>
In-Reply-To: <CAPC-RG=00RS7hogJpNeMkPqZhUbDBN7O0=SAakbiUfQVW4P1_w@mail.gmail.com>
From: Alex Kiernan <alex.kiernan@gmail.com>
Date: Tue, 28 Aug 2018 17:05:29 +0100
Message-ID: <CAO5Uq5S++1Nn9=yux2231agKFnvJGY=q7LhcXu+yEmaM_E-8Jw@mail.gmail.com>
To: bryan.fishell@gmail.com
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Production vs Debug Images
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
X-List-Received-Date: Tue, 28 Aug 2018 16:05:42 -0000
Content-Type: text/plain; charset="UTF-8"

On Tue, Aug 28, 2018 at 4:31 PM Bryan Fishell <bryan.fishell@gmail.com> wrote:
>
> Hi,
>
> Given a target machine, is there a traditional way to produce either a debug image vs a production image? If so, can you give some advice on generally how to do this?
>
> I have read about conditionally including a package (or bitbake variable) based on another variable, but that seems error prone. It seems like this is a problem that already has a solution, I just don't know what it is.
>

This is what we're using:

https://github.com/intel/intel-iot-refkit/blob/master/meta-refkit-core/classes/image-mode-variants.bbclass

-- 
Alex Kiernan

