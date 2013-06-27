Return-Path: <nicolas.dechesne@linaro.org>
Received: from mail-ob0-f171.google.com (mail-ob0-f171.google.com
	[209.85.214.171])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEC74E0154E
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 06:30:18 -0700 (PDT)
Received: by mail-ob0-f171.google.com with SMTP id dn14so716081obc.2
	for <yocto@yoctoproject.org>; Thu, 27 Jun 2013 06:30:17 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc:content-type:x-gm-message-state;
	bh=ArRoYxRfhVgtTY7hy3Wf1Ap9Z5DKbALK6gXIPUZWqqw=;
	b=gihwhUaM+4OqGM9DVDWsHHjz9qfyHAEulxU5N/VIKr9atVt13x3mYCZo6GBDZSOTCv
	rjV6Sbyw3HO5CgmtTuCrNCY0GiH2qW2IwzfsdCGAEI0OmP+y17XDbikFWmYkVHAun4PY
	3Nrw84uU6p3yczW4JzDkLqElhrat+wLC9IvNJ4Ib9FCJHJRWU2vwIze4pbasfwtIF7kR
	+pvXsvCCqWEuB+PbO9IwjU7fuKb7Ebw3n09630JC19TEU8JnYQC0mWH5FQyGLbqCJakJ
	G2lrmZOEc0Bc3Lg9HVanPfCATMIKgh1x5xo66g7fJQu21h+LiLBRHHSPPm0Li6ZRq5RO
	V3Qw==
X-Received: by 10.60.133.235 with SMTP id pf11mr2863717oeb.38.1372339817792;
	Thu, 27 Jun 2013 06:30:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.76.25.133 with HTTP; Thu, 27 Jun 2013 06:29:57 -0700 (PDT)
In-Reply-To: <51CC3DDC.9060209@mlbassoc.com>
References: <51CC3174.5020304@mlbassoc.com>
	<CAP71WjxSYZ0gs8bYw8uPsdHZpEbnU8nqCwBf=kpg0Er5efDycg@mail.gmail.com>
	<51CC3DDC.9060209@mlbassoc.com>
From: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Date: Thu, 27 Jun 2013 15:29:57 +0200
Message-ID: <CAP71Wjy=hXAK5FbMZbnKzLhcU62w--7RwAqNfu4tRm9cUR1FcA@mail.gmail.com>
To: Gary Thomas <gary@mlbassoc.com>
X-Gm-Message-State: ALoCoQnuLI7LthhIOnQnf/dz2w3oKSY87BbgyOt9VCZbCYfk3jJ6pNNU6GwNVMfeRt0S/KqHkmyz
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Removing a package from an image
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
X-List-Received-Date: Thu, 27 Jun 2013 13:30:20 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Thu, Jun 27, 2013 at 3:27 PM, Gary Thomas <gary@mlbassoc.com> wrote:
> I am using ipk and this does seem to work, thanks.
>
> I'd still be interested to know if there is a more general mechanism
> I can use for such things in the future.

implementation for deb and rpm is coming, based on
https://wiki.yoctoproject.org/wiki/Yocto_Project_v1.5_Status

https://bugzilla.yoctoproject.org/show_bug.cgi?id=4120
https://bugzilla.yoctoproject.org/show_bug.cgi?id=3916

