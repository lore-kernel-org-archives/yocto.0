Return-Path: <twoerner@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id E1988E00B72; Tue, 16 May 2017 11:44:26 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.5 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM, RCVD_IN_DNSWL_NONE,
	RCVD_IN_SORBS_SPAM autolearn=no version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (twoerner[at]gmail.com)
	*  0.5 RCVD_IN_SORBS_SPAM RBL: SORBS: sender is a spam source
	*      [209.85.214.67 listed in dnsbl.sorbs.net]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.214.67 listed in list.dnswl.org]
Received: from mail-it0-f67.google.com (mail-it0-f67.google.com
	[209.85.214.67])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id BE5E1E00AE4
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 11:44:25 -0700 (PDT)
Received: by mail-it0-f67.google.com with SMTP id l145so14975894ita.0
	for <yocto@yoctoproject.org>; Tue, 16 May 2017 11:44:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=date:from:to:cc:subject:message-id:references:mime-version
	:content-disposition:in-reply-to:user-agent;
	bh=kFPoyA+u1mqJSgZeVDrPtRe3lFAH8dq8BciGDJ7gqG8=;
	b=i0D02tH8Ju1nkNkoDJIeubkbKef+u2bNfrQ2CaLBM8msbuzH8D8sxNFU+VjfJ1qb5T
	l3/FZnGTQAu95KeeAyoCwiUYCkWm0RUgwc/w7ZIfsW5c7xf0nElaTlYxmZivlw+Lq4sr
	3O2OkK8LuIF1nOmQO8zE2aDYVp8dILQ//Z2olq3tSQ0NBffxwtE0fnlHsB/F3I59BGsr
	loldwuP5aJXUA9CiyFwDxJoDVLOnn5KTCts9uSo/hda4q/Q0/+JJ7X2P3IcSHXZi76Nd
	OAlgZr0jf6jsuSboWQRoy9nRx+2NAxqmVhjamLFSjn3F59p8QIKg5wR7Zw3s364FDPtx
	KnTw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:date:from:to:cc:subject:message-id:references
	:mime-version:content-disposition:in-reply-to:user-agent;
	bh=kFPoyA+u1mqJSgZeVDrPtRe3lFAH8dq8BciGDJ7gqG8=;
	b=c7JZc4EzUgSfqSImyNX+/Moy8EzRu4C/3cj49PpBq4DwUebrAvxxrbfkod9vAGdOEL
	MHOhxJSpVfS+kfT4NZxLo4xHZ+0pEi6A5F+SGlWFXdhaZgfHvlsNQKoeHx8/ILrDM6z7
	/C8zts7Va0OQpyYhmVFwcb0iApWXRdLPRImXhNC9RFwdPVk2W7kZqDtKNDZnSUnJVVPe
	/1xd1jPZBETb5BzKJzXB2cVACtaI9S7Jkwes6QOTPR64axet/et31o2mSHUPRAO4F543
	jZxeFR1/zI7QFx6US/h3jZWhVAl9KpLyC6UzOfrdu+hS31xKabqhl4l1i9yot0nYCTHu
	MgeQ==
X-Gm-Message-State: AODbwcAfBiHgIZz8whZlzBI8Aet2H8qgsYNmzRdm2cFX8yJwipBgPUmP
	K0/FPINwh2Bo0Q==
X-Received: by 10.36.131.137 with SMTP id d131mr95569ite.113.1494960264951;
	Tue, 16 May 2017 11:44:24 -0700 (PDT)
Received: from linux-uys3 ([206.248.190.95])
	by smtp.gmail.com with ESMTPSA id e21sm38562ioj.15.2017.05.16.11.44.24
	(version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
	Tue, 16 May 2017 11:44:24 -0700 (PDT)
Date: Tue, 16 May 2017 14:44:22 -0400
From: Trevor Woerner <twoerner@gmail.com>
To: ayaka <ayaka@soulik.info>
Message-ID: <20170516184422.GA1041@linux-uys3>
References: <20170516141808.26629-1-ayaka@soulik.info>
	<20170516141808.26629-2-ayaka@soulik.info>
MIME-Version: 1.0
In-Reply-To: <20170516141808.26629-2-ayaka@soulik.info>
User-Agent: Mutt/1.6.0 (2016-04-01)
Cc: yocto@yoctoproject.org
Subject: Re: [PATCH v3 1/3] recipes-multimedia: add Rockchip MPP library
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
X-List-Received-Date: Tue, 16 May 2017 18:44:27 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

Randy,

Neither of the issues that were identified in your v2 of this patch were
addressed in this v3. Namely:

1) please use your real name (first, last) in your signed-off-by line
2) please don't create a package from this recipe whose name doesn't include
   the recipe name (i.e. please don't create "rockchip-vpu" from a recipe
   "rockchip-mpp"), suggestions were provided

Aside from the email headers and the version of git used, this patch is
identical to the v2 you submitted.

Best regards,
	Trevor

