Return-Path: <twoerner@gmail.com>
Received: from mail-wi0-f172.google.com (mail-wi0-f172.google.com
	[209.85.212.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7B460E0146B
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:53:58 -0700 (PDT)
Received: by mail-wi0-f172.google.com with SMTP id hq17so2255868wib.5
	for <yocto@yoctoproject.org>; Tue, 16 Apr 2013 12:53:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=mime-version:x-received:in-reply-to:references:date:message-id
	:subject:from:to:cc:content-type;
	bh=8d1nXlCMFIp4I8fCm3ZeU4DRxoPIStShCDaQoVNi1gE=;
	b=a8NAb6/KBHOQFvu5XD/zsfks6AFxm5brcTAvQdiCzlwfC97xXqkGw4l6zIIA1XWZCb
	s2HMnSWkk4xA++LdkAODP6ZlH9BtA79aBquL9pdBfajWy8V8DFJWCXEaCfa7ROn7c6pA
	GqSICVzQy4ioxRQM5/r9sEUU2azh1xlOHuwIZK0Muwegrvlb/JHmed0Uc+AJ8EO7xnQ4
	A3y/mLDFmsMegX0vxaZOgqddHyIBVDj5P41YrZimUkEUqRAexR2F42Sh/e86KQ/YX+IJ
	y+3NmsLic16BxL2YBkQhOj9dVQjR0g2so6Afj/u7lXHxnGYKD1gX4iY7Z5ZAKN8Csmaw
	u1yA==
MIME-Version: 1.0
X-Received: by 10.180.13.34 with SMTP id e2mr21744196wic.29.1366142037072;
	Tue, 16 Apr 2013 12:53:57 -0700 (PDT)
Received: by 10.194.167.73 with HTTP; Tue, 16 Apr 2013 12:53:56 -0700 (PDT)
In-Reply-To: <CANwz6nyiR-dOb2owu_dXV_kQNH4JZRWrgfO3Z0hnkKui_sJ-6g@mail.gmail.com>
References: <CANwz6nwRC9D4KUa8BEJF3siCbu9KCf9khgpmH2kV_Rcp9esZKA@mail.gmail.com>
	<CAHUNapTftvQZHdtfqZ6orYoi2BsVHFVsO-yT-myS+daKxeQjEA@mail.gmail.com>
	<CANwz6nyiR-dOb2owu_dXV_kQNH4JZRWrgfO3Z0hnkKui_sJ-6g@mail.gmail.com>
Date: Tue, 16 Apr 2013 15:53:56 -0400
Message-ID: <CAHUNapTp27q9SnudnSSRKNGyf0HvnCG8f1K4KtSFuE5E-J7_KA@mail.gmail.com>
From: Trevor Woerner <twoerner@gmail.com>
To: Edward Vidal <vidal.develone@gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: Repository to upgrade images
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
X-List-Received-Date: Tue, 16 Apr 2013 19:53:58 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Tue, Apr 16, 2013 at 3:49 PM, Edward Vidal <vidal.develone@gmail.com> wrote:
> With that said how does Angstrom which uses opkg upgrades images that are
> build with Angstrom.

Angstrom is a distribution, so it can make assumptions about how to
build a set of packages that will work on your system.

