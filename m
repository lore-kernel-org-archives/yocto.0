Return-Path: <ross.burton@intel.com>
Received: from mail-ve0-f174.google.com (mail-ve0-f174.google.com
	[209.85.128.174])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 38B06E0148F
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 03:19:00 -0700 (PDT)
Received: by mail-ve0-f174.google.com with SMTP id pb11so1203785veb.19
	for <yocto@yoctoproject.org>; Wed, 20 Mar 2013 03:18:59 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=google.com; s=20120113;
	h=x-received:mime-version:in-reply-to:references:from:date:message-id
	:subject:to:cc:content-type:x-gm-message-state;
	bh=h7FITPiMHz+TKrpCKSbUjsR1929W5ORipdk6JJfYXA0=;
	b=CztXYoA9vP9TnKQCsHHRIpMiNrPmTFWpwPUOvBkIpeBd6pipWu0N8KlOtwmbQvQKXK
	2BfkXy8CedtWJzwsDvm9VqLE+wd8qdbwOxfORl+iKP8OQOTwVPUq3qH8AYYAylPDkVSX
	ZHA/sE6dUBbfgYzlTY+iwrQ7zL/Xg03um5sU7n4clhjqxf9uSHYAJkuD3/1jx2zJZ87N
	D23/JYOFNijzkC/GvYaWkWVvzZR+JgX6LqgbsvgCNAtCMMIJzvgBfySqTijtzzjUeak1
	JuqajHyMEkdeHnn3Kk9BBUv0Ll76b9IxjcbcoOXYv23FvWivDlw9HlwMBlEZbU54jigN
	dAPA==
X-Received: by 10.52.27.17 with SMTP id p17mr6173507vdg.0.1363774739432; Wed,
	20 Mar 2013 03:18:59 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.58.125.102 with HTTP; Wed, 20 Mar 2013 03:18:39 -0700 (PDT)
In-Reply-To: <56C806C0B65D44ADA7D6314F4051E91E@PAULD>
References: <F1069DB4DED5494AA1DC65CB388B29EA@PAULD>
	<CAJTo0LYzZvQZ1CvXGtO2Sj8nLrzPgtb8M61gRwz+Y_p_HhPuYw@mail.gmail.com>
	<3C8645632D634EAC903E8930B57F4777@PAULD>
	<CAJTo0La0yxkJ4bJsBbji1rCg6ea9fwGiR_q0vH+f032BHNYTTA@mail.gmail.com>
	<56C806C0B65D44ADA7D6314F4051E91E@PAULD>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Wed, 20 Mar 2013 10:18:39 +0000
Message-ID: <CAJTo0LY3edhzsbOrPzw6FEDUW58Rc_RjQdamGTPdjCar6gBN1g@mail.gmail.com>
To: "Paul D. DeRocco" <pderocco@ix.netcom.com>
X-Gm-Message-State: ALoCoQmyLFyJwKjWenr7GAYwso2wj2Ea+KCYqxkvViZQqhQfFmp5DNS3uWwzdnlrNEqJYR951GBA
Cc: yocto@yoctoproject.org
Subject: Re: Can't find guile-2.0
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
X-List-Received-Date: Wed, 20 Mar 2013 10:19:00 -0000
Content-Type: text/plain; charset=UTF-8

On 13 March 2013 06:53, Paul D. DeRocco <pderocco@ix.netcom.com> wrote:
> One thing that I notice is that in my build/tmp/work/i686-linux, I have two
> directories, autogen-native-5.12-r2 and autogen-native-5.12-r3. The first is
> from my successful out-of-the-box build of a week ago; the second is from my
> current failed build. What I did in between was to add the
> openembedded-core/meta and meta-openembedded/meta-oe layers in order to
> include Samba. The two logs deviate at line 275 where the old successful one
> says "checking whether with-libguile was specified... no" and the new failed
> one says "checking for i686-linux-pkg-config... no". I suspect something in
> the OE stuff appended to a recipe, which is leading to the problem.

The old sucessful one worked more through luck than anything else, -r3
was introduced to fix this.

Using current master I just confirmed this works for me.

checking for x86_64-linux-pkg-config... no
checking for pkg-config...
/data/poky-master/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for LIBGUILE... yes
checking for x86_64-linux-pkg-config...
/data/poky-master/tmp/sysroots/x86_64-linux/usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking the guile version... 2.0.7

In your log the pkgconfig checks are succeeding, it's the guile check
that fails:

checking for pkg-config...
/home/pauld/yocto-atom/build/tmp/sysroots/i686-linux/usr/bin/pkg-config
checking pkg-config is at least version 0.9.0... yes
checking for LIBGUILE... no
configure: error: Package requirements (guile-2.0) were not met:

No package 'guile-2.0' found

autogen-native depends on guile-native so that should have worked -
try doing "bitbake -ccleansstate guile-native ; bitbake guile-native"
to force that to be rebuilt.

Ross

