Return-Path: <k4230r6@gmail.com>
Received: from mail-ie0-f178.google.com (mail-ie0-f178.google.com
	[209.85.223.178])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 21B08E007E2
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 12:01:00 -0800 (PST)
Received: by mail-ie0-f178.google.com with SMTP id x13so2629234ief.23
	for <yocto@yoctoproject.org>; Wed, 15 Jan 2014 12:01:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:date:message-id:subject:from:to:content-type;
	bh=T5rGO8bIEQkVw7t6IuDAAQEaQzNbY8VKYphIMwinstI=;
	b=LURRfI0wjavFF5tg3A4gIvRT8gC6r+PL4aN8aeWkhaowp2et/WjXA340/fczyDaMCa
	qmXRhKZKjd9zj4c5AUKQ2hKLfRc6HyOi2++erO82rKLmQD6LvQnRt6ElucAsXMHCirad
	FfqRkVTvEXVmjF61nAgp6NT8F8qm9a+1LERZHtHW6sdZWwrQ3j1tMdJDvutEEySVksM2
	qTbDL6zix/pRcIcD6OTNvJobhU6kHXBrLJncFQauCsQsHASdAsKBFyEGj79i7wFqLYGb
	AqJdg4erB4hmD3VyD6XQI3jfcDb1aPTuHGaTZA5UUVYitN6hrE3WYqD8oiNs7nH/qecn
	2Imw==
MIME-Version: 1.0
X-Received: by 10.43.0.202 with SMTP id nn10mr4329629icb.54.1389816060163;
	Wed, 15 Jan 2014 12:01:00 -0800 (PST)
Received: by 10.64.143.164 with HTTP; Wed, 15 Jan 2014 12:01:00 -0800 (PST)
Date: Wed, 15 Jan 2014 21:01:00 +0100
Message-ID: <CAALGJZbw4x+oDKLcjjKFwJRbvc8phORu02ejtccSzXu6e8TD6A@mail.gmail.com>
From: Christian Ege <k4230r6@gmail.com>
To: yocto@yoctoproject.org
Subject: eglibc-locale issue in dora for populate_sdk
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
X-List-Received-Date: Wed, 15 Jan 2014 20:01:09 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

may I ask to have an minor patch backportet to dora? The patch I am
talking about is the following:
http://git.yoctoproject.org/cgit/cgit.cgi/poky/commit/meta/recipes-core/eglibc/eglibc-locale.inc?id=ef942e3abdfa822271efd7c0f629829a80132fe5

Without this patch It is not possible to build an SDK image for my SH4
port based on dora.

With kind regards,
Christian Ege

---
http://project-magpie.github.io/

