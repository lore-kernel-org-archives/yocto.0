Return-Path: <paul.betafive@gmail.com>
Received: from mail-ve0-f175.google.com (mail-ve0-f175.google.com
	[209.85.128.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 49CECE01405
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 04:07:29 -0700 (PDT)
Received: by mail-ve0-f175.google.com with SMTP id oy10so316276veb.20
	for <yocto@yoctoproject.org>; Fri, 23 Aug 2013 04:07:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:sender:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type;
	bh=m93Qer+h1qJCygdEU0f4YuGgnZMTLk6MmQUZxdcCVjI=;
	b=nyPoAgb5afBDCK1ESj/UWJRhvrYB7U52jFkZ2fX2C/fgeB0+HA6yjQhOsh1BPszv/P
	ypj9dfWyjY9rT0q1RwzHGwKBMUaofZh201kdXE/nI0YQo2uZjQkg8+7lU5IJZ/bVnSUk
	mP1K4S+m1doAZ8ToUbudp4VlIgY+kC9si1hrm+/3SSwyQeedphf/XYS3uHk7Xll8eMxU
	9PGxL91ZX7i/EjHf6Ef0axrcCFwBhYXms+48BtIQ18wq+M39VdEhov/SNG8vektH9xJi
	a5Ceqfnqh2Klxs8YjUdK2e7eLvG+aPJoTC+EyxDY2x6uihv6dl1xgA1+Fb1eXswK+WBc
	3D/w==
X-Received: by 10.58.215.15 with SMTP id oe15mr191286vec.25.1377256048759;
	Fri, 23 Aug 2013 04:07:28 -0700 (PDT)
MIME-Version: 1.0
Sender: paul.betafive@gmail.com
Received: by 10.220.155.17 with HTTP; Fri, 23 Aug 2013 04:06:48 -0700 (PDT)
In-Reply-To: <1377018158-2983-4-git-send-email-andrei@gherzan.ro>
References: <1377018158-2983-1-git-send-email-andrei@gherzan.ro>
	<1377018158-2983-4-git-send-email-andrei@gherzan.ro>
From: Paul Barker <paul@paulbarker.me.uk>
Date: Fri, 23 Aug 2013 12:06:48 +0100
X-Google-Sender-Auth: j9v4fNe8at_IlM1jtd1tiBF1TmE
Message-ID: <CANyK_8etyRxPy6VG6HpCAQ926vMboaM5wjPZr-7QCXBKHR=CmA@mail.gmail.com>
To: Andrei Gherzan <andrei@gherzan.ro>
Cc: Yocto discussion list <yocto@yoctoproject.org>
Subject: Re: [meta-raspberrypi][PATCH 04/11] rpi-config: Update to 2013-08-20 master's snapshot
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
X-List-Received-Date: Fri, 23 Aug 2013 11:07:32 -0000
Content-Type: text/plain; charset=ISO-8859-1

On 20 August 2013 18:02, Andrei Gherzan <andrei@gherzan.ro> wrote:
> Use git as package version. There is no package version for this script.
>
> Signed-off-by: Andrei Gherzan <andrei@gherzan.ro>
> ---
>  recipes-bcm/bootfiles/rpi-config_0.1.bb |   57 -------------------------------
>  recipes-bcm/bootfiles/rpi-config_git.bb |   57 +++++++++++++++++++++++++++++++
>  2 files changed, 57 insertions(+), 57 deletions(-)
>  delete mode 100644 recipes-bcm/bootfiles/rpi-config_0.1.bb
>  create mode 100644 recipes-bcm/bootfiles/rpi-config_git.bb

Sorry to be pedantic, but the diffs are easier to check if you add the
'-M' option to catch renames. I always forget to add it so I did "git
config --global diff.renames copy" to catch all renames and copies
whenever I do format-patch.

-- 
Paul Barker

Email: paul@paulbarker.me.uk
http://www.paulbarker.me.uk

