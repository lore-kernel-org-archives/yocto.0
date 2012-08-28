Return-Path: <ross.burton@intel.com>
Received: from mga09.intel.com (mga09.intel.com [134.134.136.24])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 407F1E0141D
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2012 03:07:28 -0700 (PDT)
Received: from mail-ob0-f180.google.com ([209.85.214.180])
	by mga09.intel.com with ESMTP/TLS/RC4-SHA; 28 Aug 2012 03:07:26 -0700
Received: by obceq6 with SMTP id eq6so8532990obc.25
	for <yocto@yoctoproject.org>; Tue, 28 Aug 2012 03:07:26 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:content-transfer-encoding:x-gm-message-state;
	bh=aEffuskn2eY08t4rJW7UpAAWMTr5Isal6FcXcWp7crA=;
	b=N/hpOS5f+zoUD3CZfuSFKS8I7EWGMS7Fw1gCe7Yz1dIw+HmoJ2YBifUWQSN/RBL/Pp
	eIO/j8jehzydgVg2T28IwSYkRj95L8dsUnpX33wDl+QsLrKzwQejZyFxkA3/Y06jN4OU
	6/X1VXCBaDDBv8sHyz4qAU+8+58urojSWiXsUHmaUkhMsBKY1NXYdOlyKCTsh3xhq+M+
	mpRiVWBtXfY4c5sszsw07mXPVNJ5qHegpLQUeP7gk3Yf0Oqzl6h6Bh8Y17FUSudB18zc
	7OHGkcIig60KzlBteFx9aZUK9R8VtDGQsG8dwodjDCuEG0wXRQPbub9R7PxlM5o1+Ayz
	zjKQ==
Received: by 10.182.154.70 with SMTP id vm6mr9418986obb.50.1346148446505; Tue,
	28 Aug 2012 03:07:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.182.79.105 with HTTP; Tue, 28 Aug 2012 03:07:06 -0700 (PDT)
In-Reply-To: <E5621C20-71E4-4AB7-BBAD-EE5CD0B9483E@keylevel.com>
References: <E5621C20-71E4-4AB7-BBAD-EE5CD0B9483E@keylevel.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 28 Aug 2012 11:07:06 +0100
Message-ID: <CAJTo0LboBhu+NM6WTTsV+vmj73OoUtcf_-z07EKZMNMRhQ1F4w@mail.gmail.com>
To: Chris Tapp <opensource@keylevel.com>
X-Gm-Message-State: ALoCoQkj2xmPopTumox8INkzqIj4YeKruIZFUysiZ7Ab//WmifqdA94bu6OH69PS1RRtubU/s3du
Cc: "yocto@yoctoproject.org Project" <yocto@yoctoproject.org>
Subject: Re: Xorg keyboard not working
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Tue, 28 Aug 2012 10:07:32 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 27 August 2012 21:41, Chris Tapp <opensource@keylevel.com> wrote:
> I've got a system that has a working console and four virtual terminals.
>
> I can start X and run an application using
>
> /usr/bin/xinit /usr/sbin/xinitrc -- /usr/bin/Xorg
>
> The application runs fine and is expected to run with no user interaction=
. Keyboard input is sometimes needed to either kill the application or swit=
ch to another virtual terminal to make some configuration changes.
>
> However, I can't seem to get the keyboard to work - I can't switch virtua=
l terminal or force the application to exit and the caps-lock light doesn't=
 toggle. This is the same keyboard that was used to kick the application of=
f. xf86-input-keyboard and xf86-input-evdev are both listed in 'XSERVER' wh=
en the system is baked.
>
> Where should I be looking to work out why the keyboard isn't working?

Does the keyboard work from a VT before X starts?  What user does X
run as -- my hunch is that it doesn't have permission to access the
input devices.  Check the Xorg log to see if there are any relevant
errors.

Ross

