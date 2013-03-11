Return-Path: <twoerner@gmail.com>
Received: from mail-we0-f179.google.com (mail-we0-f179.google.com
	[74.125.82.179])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 84F30E0070E
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 10:32:51 -0700 (PDT)
Received: by mail-we0-f179.google.com with SMTP id p43so3878206wea.10
	for <yocto@yoctoproject.org>; Mon, 11 Mar 2013 10:32:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=RQHBWDJnFXLJbRAfuIAJgfUFWfLW7h3VaYUzHUvZM8g=;
	b=LO8RNES0exCHmY9RvDtO0H3CUiN5jh3Nf6QzyN8CyEKVX0e6UwMchX/oFihSNPBYZs
	7H4HU0CDpuDWkuDN3N3NZya9h8re5gbPMlO5EILG7A5vH4p9KhMIPQ/vY2F9BJzyOsT5
	30LdIt140orEN1X7djK1TAgYG16UFLWJwNedNNDH9TCv/MXNUJpDlkUHyXqFJlspGh1Y
	ahLk+9nB6MCN2docOuEMvD3Nody39sZtLtQlpn6bD6ZbBvyUB3SDbsLdpdF2Z2CoBua+
	uZtwrr2gpqtZ0hXETmOyFaf5IVJ6uEAIcDh2IGqy0sK0SQm9A0QLkKR4rVbVEpp1tUD7
	jBVQ==
MIME-Version: 1.0
X-Received: by 10.180.97.132 with SMTP id ea4mr14273832wib.23.1363023170349;
	Mon, 11 Mar 2013 10:32:50 -0700 (PDT)
Received: by 10.194.45.100 with HTTP; Mon, 11 Mar 2013 10:32:50 -0700 (PDT)
In-Reply-To: <19F0379280417C4A8FE3BD23AA7298E501347F1C@EXMBX202A.mmeprod.cbeyond>
References: <19F0379280417C4A8FE3BD23AA7298E501347DE7@EXMBX202A.mmeprod.cbeyond>
	<513AAC65.1050002@windriver.com>
	<19F0379280417C4A8FE3BD23AA7298E501347F1C@EXMBX202A.mmeprod.cbeyond>
Date: Mon, 11 Mar 2013 13:32:50 -0400
Message-ID: <CAHUNapTCYUy5GML7N4xaAH=HsV5wHf5k8kJJGGntS+AoMvFq6w@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: David Mulder <dmulder@lasx.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Can I disable RT throttling?
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
X-List-Received-Date: Mon, 11 Mar 2013 17:32:51 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Mon, Mar 11, 2013 at 12:15 PM, David Mulder <dmulder@lasx.com> wrote:
> but how can I make my run my code on that core?

You can call sched_setaffinity() before fork()ing your task, or use
taskset on the cmdline.

(sorry if this has already been answered but I'm not seeing any
responses due to mailing list delays)

