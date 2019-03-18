Return-Path: <alex.kanavin@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 76136E00CDD; Mon, 18 Mar 2019 01:54:20 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (alex.kanavin[at]gmail.com)
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.167.181 listed in list.dnswl.org]
Received: from mail-oi1-f181.google.com (mail-oi1-f181.google.com
	[209.85.167.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 5925DE00C93
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2019 01:54:19 -0700 (PDT)
Received: by mail-oi1-f181.google.com with SMTP id t206so12365542oib.3
	for <yocto@yoctoproject.org>; Mon, 18 Mar 2019 01:54:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=k/fzOPTKqzlP3fVVHTLdOHJ8u8yF7tIDXbItpopnAio=;
	b=XE8GRqmkWhEd8ZoUJF2Z1FrNysMZtxAZuDbyrywRSe3FGEbOdYEjDYgOyyvszh8O27
	8FVOX+VRwAPmDSKVOiBuwibGXvYyAiT1yV2KzpPbSBEJ7zGM/KX7I4131jbqsRIHQb3I
	sPUJfPnLQKshaAnHFoa5F52Su4sO/kh5tClDiLoe7z2ImVZpO4j8LFiXQnRb1kKllg6j
	9fO10hutsK/Quvyd7puBc1T4gwxFsBwGMMVK/XqyXTdaYcNSpukvm1+sMuEKK0cmGuEX
	NyQuFCZoH/Y08Hbc8YIXOKCkA7g5pVZQRfjgtymYSMpLhCQYmrj1+un7dg/TnumIFyNO
	VcoQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=k/fzOPTKqzlP3fVVHTLdOHJ8u8yF7tIDXbItpopnAio=;
	b=SYTRszphGOBVgRSXIE60KpOmT0od9qWEJRPQ6Ld91xtQmR2Ysm7SWHfkOfihGyXAtA
	QFAWCqeuD3GdDuF3EKnm9U7C6YjtCvDvaZTLFZHxyKbKoa7VvVBpiFdEd5O4wIWSsYOS
	YcTw8J2UkXNDGaSP8HwLrZqJAtZQTN9XgjF1Yuc494LZ+NteDZNHcHQGIkE1LRfyX+yI
	nVj3k3TNLc908K2M57/cY5e8h01RnP2T6KEC9xUPBcaM+YQZN24b25uQCsv8o3UYskhX
	arj6+7qqoYNNVnM08YhyCdQ6OQ7D5F/LB7TfL+1CZXOE/L9oP7jQ9JexgyfYA8FveoFP
	WPnw==
X-Gm-Message-State: APjAAAW4JAIouPA8ywvhYU4ghhjN4AHHs4UlxIjCOIR9tizJuccMdyYN
	CjV2vn5AqWtiK8vBDobSDtxv8fl9Zyhx+7BBplhKbP8t
X-Google-Smtp-Source: APXvYqy1CCykpLYgsAINd6WU9FluVuWnLqm5JUd3a1/plNanbuVQZ8c9hromDyQIjpQ2B+UbskhCgg7VF0U0VMGSRP0=
X-Received: by 2002:aca:5dc6:: with SMTP id r189mr9517388oib.132.1552899258702;
	Mon, 18 Mar 2019 01:54:18 -0700 (PDT)
MIME-Version: 1.0
References: <a742a786-22c4-2eab-0d10-71291249d4fc@faresoftware.it>
In-Reply-To: <a742a786-22c4-2eab-0d10-71291249d4fc@faresoftware.it>
From: Alexander Kanavin <alex.kanavin@gmail.com>
Date: Mon, 18 Mar 2019 09:54:07 +0100
Message-ID: <CANNYZj_S6vbVvuKriC7fx3bHUNUGv8ZNqNVbeBx5xDuuWPS7Kg@mail.gmail.com>
To: Mauro Ziliani <mauro@faresoftware.it>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: How to produce Release.gpg
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
X-List-Received-Date: Mon, 18 Mar 2019 08:54:20 -0000
Content-Type: text/plain; charset="UTF-8"

On Mon, 18 Mar 2019 at 08:14, Mauro Ziliani <mauro@faresoftware.it> wrote:
> Is it possible to sign Release automatically from bitbake?

At the moment signing deb repositories is not supported (but it is
supported for rpm and opkg).
You are welcome to add the missing support,
meta/lib/oe/package_manager.py is where it happens.

Alex

