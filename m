Return-Path: <jkridner@beagleboard.org>
Received: from mail-yw0-f48.google.com (mail-yw0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7FFD2E011D3
	for <yocto@yoctoproject.org>; Sat,  3 Sep 2011 13:48:32 -0700 (PDT)
Received: by ywb26 with SMTP id 26so3734121ywb.35
	for <yocto@yoctoproject.org>; Sat, 03 Sep 2011 13:48:31 -0700 (PDT)
Received: by 10.150.47.15 with SMTP id u15mr1889940ybu.374.1315082910274;
	Sat, 03 Sep 2011 13:48:30 -0700 (PDT)
Received: from mail-gx0-f176.google.com (mail-gx0-f176.google.com
	[209.85.161.176])
	by mx.google.com with ESMTPS id h12sm3723125anl.5.2011.09.03.13.48.29
	(version=SSLv3 cipher=OTHER); Sat, 03 Sep 2011 13:48:29 -0700 (PDT)
Received: by gxk7 with SMTP id 7so3695728gxk.35
	for <yocto@yoctoproject.org>; Sat, 03 Sep 2011 13:48:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.150.147.17 with SMTP id u17mr1235658ybd.164.1315082908597;
	Sat, 03 Sep 2011 13:48:28 -0700 (PDT)
Received: by 10.151.112.21 with HTTP; Sat, 3 Sep 2011 13:48:28 -0700 (PDT)
In-Reply-To: <CAHrDPkp-=NLeqi-3MbM7EffJDGX=mHy0_Rkw4faz-Jgi8ro4rw@mail.gmail.com>
References: <CAHrDPkp-=NLeqi-3MbM7EffJDGX=mHy0_Rkw4faz-Jgi8ro4rw@mail.gmail.com>
Date: Sat, 3 Sep 2011 16:48:28 -0400
Message-ID: <CA+T6QPmL2ybO0wxRDPkj7d2AcDz66xfFMtk90w4KwgvXB=kqHQ@mail.gmail.com>
From: Jason Kridner <jkridner@beagleboard.org>
To: Brian Duffy <brduffy@gmail.com>
Cc: yocto@yoctoproject.org
Subject: Re: Yocto 1.1 Beta Questions
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
X-List-Received-Date: Sat, 03 Sep 2011 20:48:33 -0000
Content-Type: text/plain; charset=ISO-8859-1

On Sat, Sep 3, 2011 at 2:43 PM, Brian Duffy <brduffy@gmail.com> wrote:
> Hi Yocto group. I am new to Yocto. I followed the starters guide and When
> running bitbake I get some errors. first it complains that pseudo is not
> available but required, and then it complains that bbpath is not set. What
> is pseudo?

Google should have helped you with this question:
http://www.yoctoproject.org/projects/pseudo.

I believe the primary purpose is to be able to create files with root
ownership without root access.  This is critical for building your
file system.

> I have sudo installed and setup to work for me, but I don't know
> what pseudo is. Also, bitbake was not installed on my fresh install of
> Fedora 15 so I installed it through the package manager.

I doubt you want to do that, but I don't see anything in the
instructions provided to tell you where to get it either.

> I guess that was
> not included in the packages from the getting started guide. Where do I set
> the bbpath?

Did you edit conf/local.conf?

> I followed the getting started guide and replaced the
> appropriate commands with the ones from Davids blog post for the latest
> release.
>
> thnx
> Brian
> --
> Duff
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>

