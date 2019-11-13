Return-Path: <bunk@stusta.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id DCE55E00E16; Wed, 13 Nov 2019 00:33:22 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.7 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, RCVD_IN_DNSWL_LOW autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at https://www.dnswl.org/,
	low *      trust
	*      [141.84.69.5 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail.stusta.mhn.de (mail.stusta.mhn.de [141.84.69.5])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 27D8AE0078F
	for <yocto@yoctoproject.org>; Wed, 13 Nov 2019 00:33:21 -0800 (PST)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	by mail.stusta.mhn.de (Postfix) with ESMTPSA id 47CdDH4j2vz7x;
	Wed, 13 Nov 2019 09:33:19 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=stusta.de;
	s=default; t=1573634000;
	bh=H4VPwznmyLp46J6q+MUYWshchlCCDl6c7wTZ4IFgz7g=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=baGT5VqlrZoMVEI8wQUZ163/6EwaOo6LyM8mIZIl/43J1cvSU0JlZnXrv35FevIRp
	8cx6zyw6kLIVn8VJttDRUwhsTXiTm17wIDKQN6pByINGLPzZycrC3SyoCD61HMlAP2
	zm+sMlq8yM59Q14d7OBA7z1CHOkT4bgOt29HgXqk5NqXUmWnhoxh0Mbbr/sQK4Brlv
	N+85tqGkPkOId8cpoO4Yx5VxVTfxq1hn2ZUUw4AEHNo2GdwCCV/NlQdBCzXEMGB6H5
	EabfvloGP7lnPp4fI6Cn2zQ9HcG12kkXXSK4nkTHgP8WyXilYDBfiJ9T4ZO0XeLjDn
	aD/6u7BsYcPTVv78kFFwhJVZNvKlWYknXDzRCoF1Le9u73nSF4Tl8qwpFUqUxx7Ofr
	dI/i3xRURsTd4prdipYgbfoQlC3BXVzMqN2qKaoViO6EcKZnKxIsxsbBja2+xc0v85
	HJZiMdyn+CJ+oZLnYcGNejHGSBC8FRWWW1lB8fDdag2yIj07B5xOYaqz37qYZCmifc
	f4E9uiU29hmmoN3eKWD7LWiRCcj5ftkfigdp/f9rksdS3vjeyP379Zm9vjk+2DWmMD
	yRBeMrEPYXDitzgMGiB2xFjwOMqv+iFE9iIdP6YTw5vRZakE57q2Y25lr3y2FVNDeK
	C8OorLWuPpwlxjCPQH71MeGc=
Date: Wed, 13 Nov 2019 10:33:17 +0200
From: Adrian Bunk <bunk@stusta.de>
To: Wayne Li <waynli329@gmail.com>
Message-ID: <20191113083317.GA7340@localhost>
References: <CAM2K0nqA0QGCcaN8z=qvtVu-U_aHswjqKTbZJ0YoCXE6OsvzQw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAM2K0nqA0QGCcaN8z=qvtVu-U_aHswjqKTbZJ0YoCXE6OsvzQw@mail.gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
Cc: Yocto Project Discussion <yocto@yoctoproject.org>,
	bitbake-devel <bitbake-devel@lists.openembedded.org>
Subject: Re: No Package Provides /bin/awk
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
X-List-Received-Date: Wed, 13 Nov 2019 08:33:22 -0000
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline

On Tue, Nov 12, 2019 at 04:08:48PM -0600, Wayne Li wrote:
> Dear Yocto Developers,
> 
> I'm trying to to build a Yocto kernel for a T4240 RDB.  When I run "bitbake
> fsl-image-full" to build the entire linux image, I get an error that says
> "Can't install kernel-devsrc-1.0-r0@t4240rdb_64b: no package provides
> /bin/awk".  Here's the entire error print that I see:
> 
> https://gist.github.com/WayneZhenLi/e35f65081092cf1f24df29ec369c701c
> 
> Anyway I'm confused about this error because /bin/awk does exist.  Like if
> I run "/bin/awk" in the console I see help info come up describing how to
> use a program called "gawk".  Why can't bitbake find /bin/awk then?  Or am
> I misunderstanding what this error is trying to say?  I mean I'm assuming
> it's just not able to find /bin/awk but maybe the error means something
> else?  Or maybe /bin/awk is actually relative to some path?  Let me know
> your thoughts.

/bin/awk is missing on your target image that will run on the T4240 RDB.

The smallest implementation is to enable CONFIG_AWK in your busybox config.

> -Thanks!, Wayne Li

cu
Adrian

-- 

       "Is there not promise of rain?" Ling Tan asked suddenly out
        of the darkness. There had been need of rain for many days.
       "Only a promise," Lao Er said.
                                       Pearl S. Buck - Dragon Seed


