Return-Path: <raj.khem@gmail.com>
Received: from mail-ie0-f169.google.com (mail-ie0-f169.google.com
	[209.85.223.169])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4131DE00853
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 11:01:20 -0800 (PST)
Received: by mail-ie0-f169.google.com with SMTP id at1so1645541iec.14
	for <yocto@yoctoproject.org>; Fri, 21 Feb 2014 11:01:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type;
	bh=TLmktc/IU7pcnecukD+9WwuZRtMC3vbHQOQe3BH7wKw=;
	b=QSk9U7wPvkAvYCkuMIXrCmJt3YDTVzXyj0JFlmb0jkiuA/frsKqZ8S0xkmP+JR3AKD
	9uTF/qZdEE5vcbPxDxX45QWCeMeV6f9tEuvGj8aLvttMFkrAt6AsQS32LTPKHATys2e3
	ns5wsbUvDHMMzWoqiXafoRzdRhQiUNgQwwKRpay9POtRbZW+AVsoy322qYXwN6JkX9TT
	r3cs6LNWcSDtEFSGGS9TXnMuKMhL74iej4CqK2s+arP0NQFULR64P36mJevTl8b9Lej7
	8HpW6JAHxfY+Lnx0gp3N7U/08xaHX0kKnk7RypBtvlYUgdPnYB8kxwL0zYhny2rkdhfy
	VXRw==
X-Received: by 10.43.182.74 with SMTP id pl10mr3868754icc.70.1393009280228;
	Fri, 21 Feb 2014 11:01:20 -0800 (PST)
MIME-Version: 1.0
Received: by 10.50.224.137 with HTTP; Fri, 21 Feb 2014 11:00:50 -0800 (PST)
In-Reply-To: <1392978548-31880-7-git-send-email-andrei@gherzan.ro>
References: <1392978548-31880-1-git-send-email-andrei@gherzan.ro>
	<1392978548-31880-7-git-send-email-andrei@gherzan.ro>
From: Khem Raj <raj.khem@gmail.com>
Date: Fri, 21 Feb 2014 11:00:50 -0800
Message-ID: <CAMKF1spWN_GULSy=czevqncft0w4GE72rR_DSNMrC_XiwGLH1Q@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 7/7] omxplayer: Update to current remote HEAD
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
X-List-Received-Date: Fri, 21 Feb 2014 19:01:21 -0000
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 21, 2014 at 2:29 AM, Andrei Gherzan <andrei@gherzan.ro> wrote:
> -PR = "r3"
> +PR = "r4"

Do you still need this ?

