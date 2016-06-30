Return-Path: <raj.khem@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 48A01E00EC6; Thu, 30 Jun 2016 16:12:29 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (raj.khem[at]gmail.com)
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [209.85.220.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-qk0-f172.google.com (mail-qk0-f172.google.com
	[209.85.220.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CF733E00A7B
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 16:12:27 -0700 (PDT)
Received: by mail-qk0-f172.google.com with SMTP id a125so175076537qkc.2
	for <yocto@yoctoproject.org>; Thu, 30 Jun 2016 16:12:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=YR52VGp7NMfDkZ8txxBXfGhCmyaZ8qr3zE1S5dM83IA=;
	b=PTrfxDlWDVYP0upSEehC53N0QmPOpM0OsPY1WgCH/5lbbjjSXEiRo5m5w5mgiAGj5T
	lydH9L4/4ZUeXYEyNf0a+pSSUiEb53haA1Rp+LJQl++q81mbwhwpVS7r0Or6wX9BHZFj
	W4N5zwbpWXnp17hcQtSBcPqYxYSew57eRiSvHbkB2BoP+v8UOE9CywHe0QxMTVeWeOX2
	ceI7ucamwSngJ5q0yN7AHN8ypzKxFjRCTwINYfUumx/T8K8KoqGDPfraXLb2KWBWZHh1
	3wtmZmJkLEOKFFulvk7Hxf+zBea2xN0+H4N+khV1HUKY7qUo9c+1VeI+ixqKBul2QPdS
	zqzw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=YR52VGp7NMfDkZ8txxBXfGhCmyaZ8qr3zE1S5dM83IA=;
	b=Satn3AA3n68x7xxCXzyQ0YenE2wRdmfcqYkhGPvHJS4+cXOCx4oL1BepuAtfLgG1uN
	B6zeTQFOHj3+mDUmnJbkane+tLx9HjCR00w3kdMS0Gp1/VQA3t6nNC540Ig0w/1uLrf7
	sw6pagLVqfP0AB3e+zL24nWNChr8e6J7znjKWzkjm73d21x583xRw48wNWAvstC1GHQI
	06T3rdOecwYxoXVUQFx0hC5Q8Z+DL/Vg2ZB8OYAoCnrwHUnKur3gZE4zAJzPDQd6bYGN
	MhlC9cll4A/PzFYCGlwzEG/TF6dLkl0RGSuo6DhffWa3frbsMhj/+cPesxnLKleMq28R
	Ce6A==
X-Gm-Message-State: ALyK8tKn7vhZcH4CIfPNhcFxcddKWS9FDSIt3qi1kARnxNpsRj9oA4R1L86ojKrujLNRQr+hCLEPBmy1Cl9bog==
X-Received: by 10.55.141.134 with SMTP id p128mr21524784qkd.102.1467328346866; 
	Thu, 30 Jun 2016 16:12:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.55.214.83 with HTTP; Thu, 30 Jun 2016 16:11:57 -0700 (PDT)
In-Reply-To: <ae4e2654-ca20-85d1-d53b-b0b05ab25a26@linuxfoundation.org>
References: <ae4e2654-ca20-85d1-d53b-b0b05ab25a26@linuxfoundation.org>
From: Khem Raj <raj.khem@gmail.com>
Date: Thu, 30 Jun 2016 16:11:57 -0700
Message-ID: <CAMKF1srZ=NCMop1BWgZ9PACGJEjVguDngZT4tcAt0jqnBZt_rA@mail.gmail.com>
To: openembeded-devel <openembedded-devel@lists.openembedded.org>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>,
	bitbake-devel <bitbake-devel@lists.openembedded.org>,
	Patches and discussions about the oe-core layer
	<Openembedded-core@lists.openembedded.org>
Subject: Re: [oe] Patchwork upgrade tonight
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
X-List-Received-Date: Thu, 30 Jun 2016 23:12:29 -0000
Content-Type: text/plain; charset=UTF-8

On Thu, Jun 30, 2016 at 4:03 PM, Michael Halstead
<mhalstead@linuxfoundation.org> wrote:
> Please reach out if you have concerns.

Hi Mike

I have been playing with the new instance no issues so far. Send a
note when you bring down the system and again another when its all up.

