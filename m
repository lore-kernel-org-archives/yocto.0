Return-Path: <erik.boto@pelagicore.com>
Received: from mail-oa0-f53.google.com (mail-oa0-f53.google.com
	[209.85.219.53])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2F789E00BBF
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 23:56:12 -0700 (PDT)
Received: by mail-oa0-f53.google.com with SMTP id j17so3698267oag.26
	for <yocto@yoctoproject.org>; Thu, 24 Apr 2014 23:56:12 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:date
	:message-id:subject:from:to:cc:content-type;
	bh=rvKxT0UB0O8cc0QZoShIBsg0U872+zYvJys1O4OhfmU=;
	b=Xaou2kzkqn0xEIETjChmAB4ErdIxHhav+pAbTkdmkbkl/Pbe+Y+z84oppVfq15bGw1
	3jk/mXLemEEbjDwF09f3uX01AAcPPPbsp5y10IfrzkVjvwjvKqn6kfDowwHaRSXzoi0p
	STcVDbOsdem4LlhEelR55nUYLKRgML6GsIoXJSzieHIfurN5M2jOZiyLepjInJQ0sR8o
	sFym24F5uQiwiesPmd5s5CB61ujyUlOA8cps+EJyCUwATh61fg3q7XNaY+zyPAJBfxs3
	y9vugoJzQ85EAf8C/PerLJ9jHo3Scqu7EfrJvQIZbqtVzico0FxGoBNibMDTLmkiF/QN
	1eFg==
X-Gm-Message-State: ALoCoQnT6zq2gKGMSz/CCmqkSVQ6KUeFdP+F9qekb+0XjBt0rzx4MOsf+N/HcVpb8neRpfoqJFSQ
MIME-Version: 1.0
X-Received: by 10.60.16.103 with SMTP id f7mr5523472oed.8.1398408972219; Thu,
	24 Apr 2014 23:56:12 -0700 (PDT)
Received: by 10.76.12.197 with HTTP; Thu, 24 Apr 2014 23:56:12 -0700 (PDT)
In-Reply-To: <CAOJo16W3sQ2MqvYFCDrNB_vPv_bow7vKysXL69ZutuwevxkWYA@mail.gmail.com>
References: <CAOJo16W3sQ2MqvYFCDrNB_vPv_bow7vKysXL69ZutuwevxkWYA@mail.gmail.com>
Date: Fri, 25 Apr 2014 08:56:12 +0200
Message-ID: <CA+AhUGxYrkBtzpK97y6YFLuYmn_THpRMR+Pkedp3Gx5h1h7f=w@mail.gmail.com>
From: =?ISO-8859-1?Q?Erik_Bot=F6?= <erik.boto@pelagicore.com>
To: Mahyar Yaghmaee <mahyar@boundarydevices.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: ROOTFS_POSTPROCESS_COMMAND warning
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
X-List-Received-Date: Fri, 25 Apr 2014 06:56:14 -0000
Content-Type: text/plain; charset=ISO-8859-1

Hi,

On Fri, Apr 18, 2014 at 1:48 AM, Mahyar Yaghmaee
<mahyar@boundarydevices.com> wrote:
> Hi,
>
> I'm trying to run a post processing shell command using
> ROOTFS_POSTPROCESS_COMMAND by adding ROOTFS_POSTPROCESS_COMMAND +=
> "shell_command;" at the end of an image recipe.
> I get:
> WARNING: Function shell_command doesn't exist
>
> Any ideas what's the problem here?

Nope, but I do see the same issue since a while back. I'm also curious
on how to solve this. I tried moving the commands into a separate
function in the image recipe and to call that from
ROOTFS_POSTPROCESS_COMMAND but still see the issues.

Cheers,
Erik

>
> Regards,
> Mahyar
>
> --
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>

