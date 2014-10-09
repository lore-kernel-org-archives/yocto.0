Return-Path: <nicolas.dechesne@linaro.org>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 992E3E00857; Thu,  9 Oct 2014 00:10:57 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [209.85.218.46 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mail-oi0-f46.google.com (mail-oi0-f46.google.com
	[209.85.218.46])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id A7B7EE00786
	for <yocto@yoctoproject.org>; Thu,  9 Oct 2014 00:10:48 -0700 (PDT)
Received: by mail-oi0-f46.google.com with SMTP id h136so1405189oig.33
	for <yocto@yoctoproject.org>; Thu, 09 Oct 2014 00:10:47 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type;
	bh=AM+8KZKmwXkKI8yh427CiPdLgro9TEnChnih4MGygks=;
	b=LakNxDhYlUdo8B73HX8Fqk1NAf8ZMa0vHYXfHkYhODYgXDgwW/S1hqKeGOzE1HjTMM
	55+OL8l6QWo7nMo+f8gEqrO7LeFtAsDn6WDqP0d06B0797t8BgT81kR2+3yEWd1wLJMD
	kAfkTUd0hXtkj0ua4QIYJ4g5cLYp6ZxytWSYgp+6PVZYdk+j6SVDWJo7mGPG9JfDQCj8
	anl8iNFJGg0hHkIpQy5LVBDDjEdEPqjXqpAKGxXC51OunXzX9xxtjcbo7ypqmnXSVqI7
	uOGcAaSZ7IbbJ445pcXEn1DDLo8HrS/zPJu8r1GCt7B59nGYV0fB1VQCaLVY1ZGbmggq
	QPoA==
X-Gm-Message-State: ALoCoQmwEF/bKlypfIVo2r2Vfc1AzGrOea5T4bJM2nlv/xmMeS/fs/dnFbXQkwjFadse7oOF2Sch
X-Received: by 10.182.33.66 with SMTP id p2mr18920713obi.51.1412838647008;
	Thu, 09 Oct 2014 00:10:47 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.187.8 with HTTP; Thu, 9 Oct 2014 00:10:26 -0700 (PDT)
In-Reply-To: <CAG6mzOMzmmeafkG3UFhWd=OtQ-CjDpU4nRGG86+WqPp6aMVDjw@mail.gmail.com>
References: <CAG6mzOMePPK-DkfwFfyftCojc17R2Qx6=yNvZbkXk8Mmg6gk6A@mail.gmail.com>
	<CAP71Wjw5hZa753z828dz9HeOMuTDscQQiCkFe0_EjF6zhvGixA@mail.gmail.com>
	<CAG6mzOOZ0bCAWu7iv=yDfMpCfyq94WEO0j27NzZUU=q2s0THrA@mail.gmail.com>
	<CAG6mzOPEMuMs3BWZsZK1AJG=4ucBHm19m6sir10g3t87NTQDJg@mail.gmail.com>
	<20141008204308.GM25997@denix.org>
	<CAG6mzOMzmmeafkG3UFhWd=OtQ-CjDpU4nRGG86+WqPp6aMVDjw@mail.gmail.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 9 Oct 2014 09:10:26 +0200
Message-ID: <CAP71WjwDxDEsS1C-_-MEs1tmkXQaMzgwmXRDjGfZi8uUR2zJJg@mail.gmail.com>
To: Wy kevinthesun <kevinthesunwy@gmail.com>
Cc: Yocto list discussion <yocto@yoctoproject.org>
Subject: Re: Cannot run simple binary executable file
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
X-List-Received-Date: Thu, 09 Oct 2014 07:10:57 -0000
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 8, 2014 at 11:34 PM, Wy kevinthesun <kevinthesunwy@gmail.com> wrote:
> Hi Denys, I have tried 1.5.1 and 1.3. All of them use ld-linux.so.3.
> Actually in the /lib directory of these toolchains I only find
> ld-linux.so.3.

it's not really about the toolchain version, but the compiler options
you are using. a given toolchain will by default use wither soft-flat
or hard-float, but you can specify different ABI on the gcc command
line.

