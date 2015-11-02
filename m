Return-Path: <cavallini.koan@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 1FA64E00B76; Mon,  2 Nov 2015 07:41:44 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (cavallini.koan[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.217.180 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-lb0-f180.google.com (mail-lb0-f180.google.com
	[209.85.217.180])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id DA678E00B57
	for <yocto@yoctoproject.org>; Mon,  2 Nov 2015 07:41:29 -0800 (PST)
Received: by lbbwb3 with SMTP id wb3so90647241lbb.1
	for <yocto@yoctoproject.org>; Mon, 02 Nov 2015 07:41:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:date:message-id:subject:from:to
	:cc:content-type;
	bh=HecWm0p3Rr1ixjiR63wFXnkmFgY5aREMqZmtsDgXZU8=;
	b=tluS1EaOoa/tKMe4ASIxd80sUqqJIT+PlebXnuYKa2ah2nVw9lvmYnJM8j8SdzbWi7
	P83ko0ZRYBd4+ziFxWvAikd5ushCQ9fisrRDHmWkJKcw2Bh94Ou5LwEEcvMlQlYtbBX8
	BGU+8lk0K5tVQYt28RFTur/4Z0uhodXTCOj7tGzPOSWV0Rkl681VqCOUI0EaJtqDi7eD
	OBggJGprR5dbzetlMJWcfYtPsK+bh199xd7XfcnlBvFcuDRcykkGYAB/oVERY+pvW8Ty
	JHMUTWA8CfjWTjpEzbRcN3l5C40LaFnz57cntfhf6RSQZOXF16fqzm9Bq/W59qrx+seY
	ZQug==
MIME-Version: 1.0
X-Received: by 10.112.181.164 with SMTP id dx4mr10634294lbc.29.1446478887711; 
	Mon, 02 Nov 2015 07:41:27 -0800 (PST)
Received: by 10.25.60.4 with HTTP; Mon, 2 Nov 2015 07:41:27 -0800 (PST)
In-Reply-To: <03d201d1152e$359dada0$a0d908e0$@gmail.com>
References: <03d201d1152e$359dada0$a0d908e0$@gmail.com>
Date: Mon, 2 Nov 2015 16:41:27 +0100
Message-ID: <CAFQ+Diih3FQDyca_zFY5KjuJ9nd4xT+1B5rU56jEmBfz5OKOyg@mail.gmail.com>
From: Marco Cavallini <cavallini.koan@gmail.com>
To: Roberto <ramatekd@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Create uncompressed rootfs
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
X-List-Received-Date: Mon, 02 Nov 2015 15:41:44 -0000
Content-Type: text/plain; charset=UTF-8

You could mount the .ext3 image on a partition using -o loop
or find/customize a different solution using IMAGE_TYPES
(i.e. when IMAGE_FSTYPES contains "live")
http://www.yoctoproject.org/docs/1.8/ref-manual/ref-manual.html
--
Marco Cavallini | KOAN sas | Bergamo - Italia
embedded and real-time software engineering
http://www.KoanSoftware.com

2015-11-02 6:20 GMT+01:00 Roberto <ramatekd@gmail.com>:
> Hi,
>
>
>
> I apologise if this is not the right channel for asking the following
> question. If so, please advise me on a more appropriate support channel.
>
>
>
> I am looking for the quickest workflow for debugging a recipe. I basically
> need to modify a recipe, deploy the entire distribution to the target board
> and test it.
>
>
>
> have come to the conclusion that the quickest way is to boot the target
> board through TFTP for the kernel and then mount the rootfs via NFS.
>
>
>
> In my view, the only issue of this workflow is that when I bitbake the image
> it creates a compressed rootfs that then I have to uncompress in order to
> provide the rootfs to the target board via NFS.
>
>
>
> Is there any way to avoid bitbake compressing the rootfs but rather having
> it uncompressed in some folders under tmp/deploy ?
>
>
>
> Regards,
>
>
>
> Roberto
>
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

