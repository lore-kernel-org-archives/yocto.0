Return-Path: <bill.randle@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 523F8E00CEC; Wed, 12 Oct 2016 07:28:38 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.2 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_LOW,
	RCVD_IN_SORBS_SPAM autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (bill.randle[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.196 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.220.196 listed in dnsbl.sorbs.net]
Received: from mail-qk0-f196.google.com (mail-qk0-f196.google.com
	[209.85.220.196])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 08AB5E00CBB
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 07:28:34 -0700 (PDT)
Received: by mail-qk0-f196.google.com with SMTP id z190so3715862qkc.3
	for <yocto@yoctoproject.org>; Wed, 12 Oct 2016 07:28:34 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=bDm5sofMhC8qvqAlqDgBTw5rXg0BczrV4kmPPJGQU7w=;
	b=I4hARBn5oKksFcJCV+crxra95inHtLWKP4YTZK9M5ZmkirlskrhejuUV7KwQYNbqJK
	4gZXjKs/541um0NLfmqisCmuhXLMWS/sR9IzrVcsPGIynBR1nnELNd+OnU9ry7wQ1yCS
	7Brd0GLJyaW5JWN1oPp2e5lv64A7oiZpeRUxUcRi8jMYUEj5wqKOhUJSed9DVBtjsQhb
	FvNZ5iIBO9thMrjk84zNE85fhxR+eSXJ7pku4F+0voNZ7kIBNFjMzQTpxnrdbog+iTrn
	8TgPPOqnuEIp/G1i3FGI7MZqSFIg1rm1fdVtRQS5xzm/nbhbY25fOFNh2h3HU8nCQeFA
	u9Kg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=bDm5sofMhC8qvqAlqDgBTw5rXg0BczrV4kmPPJGQU7w=;
	b=nDB/KiZ8YgX/cszkWQWreAWvItjejGTkqfL+I6tuwi9i/EwcFiOmV8cWOZ1J3+PmdM
	KhemiiAAt7hK9G8TdTiTUnfWA/bXoj1n4uz3atwEevsEcUVmDatoD3v7uXGd7dHLRU1E
	GdgGyD2g7vt0xf78UC9ITx81uzn0LWRgj7Moflsm5BVKL/N9s20EAC8cbUttjw/PjWGo
	P0YoPtLMbsefdA9dGfUA+Wco4eQ6MPQ74yprCSX8ZZlzPyMhKZuTnCbHb6EkVtyZMhk2
	MCh8bwZcnIe3/EDPGrhYheI/g/E3gV70J3dFt+xxmXYB3FSpKUb9IoLaNwIv7c6LVhuz
	94iA==
X-Gm-Message-State: AA6/9RlpvxFubsB503Ei7zUK6ScshIW1AqtXkrO1KKLI4kl/n4v4aE4CkSZ9CINAcQUQ/ElsSzJaAtBKh6bJUw==
X-Received: by 10.194.84.144 with SMTP id z16mr1907243wjy.210.1476282513928;
	Wed, 12 Oct 2016 07:28:33 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.28.135.212 with HTTP; Wed, 12 Oct 2016 07:28:33 -0700 (PDT)
In-Reply-To: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
References: <35ab47fa82f7707f84e445919ddbbef5@reliableembeddedsystems.com>
From: Bill Randle <bill.randle@gmail.com>
Date: Wed, 12 Oct 2016 07:28:33 -0700
Message-ID: <CA+n--H93EbhOgt5++CAuWqpdDncQwB-rifjKztRYcmNLqTzp+g@mail.gmail.com>
To: gmane@reliableembeddedsystems.com
Cc: joshua.g.lock@intel.com, yocto@yoctoproject.org,
	robert.berger@reliableembeddedsystems.com
Subject: Re: [yocto-autobuilder][PATCH] PublishArtifacts.py: deal only with built toolchains, cp also md5 and manifests
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
X-List-Received-Date: Wed, 12 Oct 2016 14:28:38 -0000
Content-Type: text/plain; charset=UTF-8

Hi Robert,

Then "normal" method to send patches is via direct insertion into the
email, rather than an attachment (see git-send-email). Also, it is
missing a commit comment as the first text in the patch file.
Otherwise, it looks good to me now.

    -Bill

2016-10-09 23:44 GMT-07:00  <gmane@reliableembeddedsystems.com>:
>

