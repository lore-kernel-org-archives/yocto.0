Return-Path: <ross.burton@intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 63BADE00CEA; Tue, 23 Apr 2019 02:52:13 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at https://www.dnswl.org/,
	no *      trust
	*      [209.85.166.181 listed in list.dnswl.org]
Received: from mail-it1-f181.google.com (mail-it1-f181.google.com
	[209.85.166.181])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EED42E00D13
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 02:52:04 -0700 (PDT)
Received: by mail-it1-f181.google.com with SMTP id y134so22395139itc.5
	for <yocto@yoctoproject.org>; Tue, 23 Apr 2019 02:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=intel-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to
	:cc; bh=OVNSuuKorrAFuuX/ZPLKnhHAayzDz3ZHrIISYDg2snE=;
	b=1quiE28675iWwRBqkIfoYxUO4B8+pzx1B2JiflQ119sqZ+7QdlVV4S7cVaRqaVDtqV
	8gn7xVsofh5LYchGoL+CWjvLqFo43HY6K7FWVf4dsOwAJ09aYEC6XYs6fumGSoZoARxh
	I9v0/3JcYKhgNN6MpG6MJbZhIZjNQfWHE3dQWjIVzUao7f7Y/xsYarozbV3Af2DqMxix
	cQkQJWxL94DLszf5boVncVzBNyS7a/ga3m7S/0Ca1quIpQZjTdoiz8nnvxCFbBz9uMgN
	nVmyTRVoizgoqEpmHU3N/DQCT9A2xhhcp2BshVhF4MQWgEmiJS1tOtT8nPlPmw2lzRka
	Meyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to:cc;
	bh=OVNSuuKorrAFuuX/ZPLKnhHAayzDz3ZHrIISYDg2snE=;
	b=ZdOhG8844LrHXEY4fLyo2cOGDs4t+cgtQC+TCaDBzvC4p09dgrOidNwBwnp5rQ5i/R
	I1Y+y5vQqmAL18K4BUIsChjq/EbOFthasg1OfzeL5xcfWzbbwL48+RjV+Xfif3JRFNad
	eQcd0MB9g0FBGWmfqHaojloam+gLu9RIZBHdUiUihy4gxYghHyk374i9um4xxkM2H/Ga
	d92wZQ+vrw1p/GlHAQcfZthKywqeyVivBCcGpJS8ZBdengGMyY6N3DomIhhPyXShlm9b
	Qs806X17eGJagub2KVUq2hnle1TM5wAy4ek69y6Qczi0/YKGWvVLTq4E4gejQlHy9qeh
	0pvA==
X-Gm-Message-State: APjAAAXVUB7BDJXgVojo+ygPlXLCZW7NWaUyqXD6iaFqlbVH8OwpEuX7
	bIGQGyDgOEEAGvHsakL4gnxh42ycHMoeGVq1onbxr3yU
X-Google-Smtp-Source: APXvYqytnWa748WOkPgMsy0foEVmwazFqnFYxvos4++8lru2nVW4Dq1WfzDP4MKUF8N08l75k5KIXte4yQ3jk6dkOZs=
X-Received: by 2002:a24:ad2:: with SMTP id 201mr1244383itw.26.1556013124409;
	Tue, 23 Apr 2019 02:52:04 -0700 (PDT)
MIME-Version: 1.0
References: <1555933846.5224.23.camel@toshiba-tsip.com>
In-Reply-To: <1555933846.5224.23.camel@toshiba-tsip.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 23 Apr 2019 10:51:52 +0100
Message-ID: <CAJTo0LYzO4NfWtDpSShBDiouUke7nRMMP7WwWSsCrFPHtz4BjQ@mail.gmail.com>
To: Archana Polampalli <Archana.c727@toshiba-tsip.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: .pc files are not avilable at build time
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
X-List-Received-Date: Tue, 23 Apr 2019 09:52:13 -0000
Content-Type: text/plain; charset="UTF-8"

Works for me.  What is the actual error you're seeing?

On Tue, 23 Apr 2019 at 10:17, Archana Polampalli
<Archana.c727@toshiba-tsip.com> wrote:
>
> Hi all,
>
> I am trying to build btrfs-tools recipes.it needs the ex2fs.pc
> pkgconfig file.i have alredy installed e2fsprogs recipe it created the
> ex2fs.pc in image directory.but btrfstools unable to take the pkgconfig
> file.
>
> plese any help me how to provide ex2fs.pc file for build btrfs-tools
>
> Regards
> Archana
> The information contained in this e-mail message and in any
> attachments/annexure/appendices is confidential to the
> recipient and may contain privileged information.
> If you are not the intended recipient, please notify the
> sender and delete the message along with any
> attachments/annexure/appendices. You should not disclose,
> copy or otherwise use the information contained in the
> message or any annexure. Any views expressed in this e-mail
> are those of the individual sender except where the sender
> specifically states them to be the views of
> Toshiba Software India Pvt. Ltd. (TSIP),Bangalore.
>
> Although this transmission and any attachments are believed to be
> free of any virus or other defect that might affect any computer
> system into which it is received and opened, it is the responsibility
> of the recipient to ensure that it is virus free and no responsibility
> is accepted by Toshiba Embedded Software India Pvt. Ltd, for any loss or
> damage arising in any way from its use.
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

