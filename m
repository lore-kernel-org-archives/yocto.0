Return-Path: <alan.martinovic@senic.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id BBA99E009F8; Fri, 27 Apr 2018 08:39:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID,RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [74.125.82.172 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-ot0-f172.google.com (mail-ot0-f172.google.com
	[74.125.82.172])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 06623E0073D
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 08:39:42 -0700 (PDT)
Received: by mail-ot0-f172.google.com with SMTP id t1-v6so2478751ott.13
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 08:39:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=senic-com.20150623.gappssmtp.com; s=20150623;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=SbRwz8qvH46pAUsfQYu90PwT/dh5e92SMmRuazvaIFc=;
	b=iYLZJg9RY8fclavInALeZTNDZd2bpZire8EMTY9BO0gnPK4ewe2/rH6V31aq0cPhXY
	We4rPlJj149k7M5P05Z/3mlpbh6xCDnrOokPgrWHIdCMP8OHfNuS1E/JmhcL+fii43Go
	K7DPqMdUVD0sBV1/UxsYamDw7+hSl0pouyZ8okfGGWeYvEYbckLLYrTd82te7n+PHZce
	PPTiPqxgKzXw4QS4cHRy7RjkFcXii+B7VbLPoUkQAeEk7FUt69eO2o3zJezmqpD/GGcy
	jEqDiK02qHw7HlvqvL4yCEkk5wH6VTm/8W7RWXPvi748HZded1e9+cOU2wGlupvdC7rq
	8NHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=SbRwz8qvH46pAUsfQYu90PwT/dh5e92SMmRuazvaIFc=;
	b=eqdUCL2KV208g9OCAdkbmbpejkHpnZy0Tar7xaaBEb1uGr61RqrdIkrwabZAnNQFTR
	zE/HcHJMub3h5Rhuv+f63x0CcaDXhIwwCjlDZkx6h6V7DEZKUqxnkgY7kMlKtny5yKJd
	6DHRhdtk3peWCrXVkNH2Rp+3D2RljjdjcyTgv0kjwmEHd+rDcBbD0lxjlSuzdi9vb4PP
	oQ7OjCYvHyClpIJoYk+IDebnE5JsYlDGXFJEzbedNyYxT5nLHELGerhJJWs3DZF70ZTK
	Mgq/k7N5fvtqNvbm/Ps7Jm+3Zd/BWRwrgP90B2jx0V4xESYGgSz2mUSyts5z5CPEnBHd
	LZtg==
X-Gm-Message-State: ALQs6tAtK78fCp9CmxGnrOuPewsHFG74rIr8nluplmo+KQMEoLWp7DKy
	KW0sawCfdKXrWrRT5hwaLOVZDBSZaWjKIGmD4/A44A==
X-Google-Smtp-Source: AB8JxZq/IegTeJ+aCHRxunMlv8T20MYYfiH2C7gUwG3GtJkjRMvq+hFojoVDw0fjLNCD0qeLR83tFxi6kLd8CVJhee8=
X-Received: by 2002:a9d:5320:: with SMTP id
	g32-v6mr1639631oth.293.1524843581826; 
	Fri, 27 Apr 2018 08:39:41 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.201.26.152 with HTTP; Fri, 27 Apr 2018 08:39:41 -0700 (PDT)
In-Reply-To: <CAC+thW09N85OA6Wj_N=H4K5+tNYH8FxqDgpuWoWSRD8go840qQ@mail.gmail.com>
References: <CAOT_U5YEgeYdOJxdncO0vXm4OnNLofd6rj8amNiOMZZ_qbzqvw@mail.gmail.com>
	<CAC+thW09N85OA6Wj_N=H4K5+tNYH8FxqDgpuWoWSRD8go840qQ@mail.gmail.com>
From: Alan Martinovic <alan.martinovic@senic.com>
Date: Fri, 27 Apr 2018 17:39:41 +0200
Message-ID: <CAOT_U5aZMd_actfPGyEvq1xBpg_9+8=+LWLAEARXaH9oJ9189w@mail.gmail.com>
To: Andrea Galbusera <gizero@gmail.com>
Cc: Yocto-mailing-list <yocto@yoctoproject.org>
Subject: Re: Installing a package on the board at runtime
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
X-List-Received-Date: Fri, 27 Apr 2018 15:39:44 -0000
Content-Type: text/plain; charset="UTF-8"

Hey

> A more
controlled way of installing packages would be to have
package-management added to your IMAGE_FEATURES [1] to leverage a
fully fledged package manager on the target (like any mainstream
distro).

Yeah, I admit I have been ignorantly avoiding this, always thinking that
it isn't worth the overhead of setting the server and the additional
aps on the board.
Will check it out.

> This shouldn't be the case. When using 'devtool modify'
workspace/sources/<your-recipe> gets populated with a git repository
which includes a 'devtool' branch which includes any patch the recipe
declare in its SRC_URI.

Cool share about the devtool branch, tnx.

> Those patches are already applied to the
fetched sources in the form of git commits on the 'devtool' branch
[3].

I guess it isn't a patch that is directly applied to the source but a
config file that gets modified.

    ....
    SRC_URI += "file://bluetooth.conf"

    python do_render_templates() {
      render_template('bluetooth.conf')
    }

    addtask render_templates after do_compile before do_install

    do_install_append() {
        install -m 644 ${WORKDIR}/bluetooth.conf
${D}${sysconfdir}/dbus-1/system.d/bluetooth.conf
        install -d ${D}${systemd_unitdir}/system
        install -m 0644 ${WORKDIR}/bluetooth.service
${D}${systemd_unitdir}/system
    }
    do_render_templates[nostamp] = "1"


The render_template changes some entries in bluetooth.conf.
I guess when it's run from devshell it gets confused as where to look
for it.
Works ok with bitbake.

Be Well :)
Alan


On Fri, Apr 27, 2018 at 4:47 PM, Andrea Galbusera <gizero@gmail.com> wrote:
> Hi Alan,
>
> On Fri, Apr 27, 2018 at 1:38 PM, Alan Martinovic
> <alan.martinovic@senic.com> wrote:
>> Hey,
>> I know there is a method in devtool called devtool deploy-target.
>> It's a great thing to install a package on the board at runtime.
>>
>> Is there something like that available without devtool?
>
> The devtool deploy-target way of deploying recipes' artefacts is
> mostly oriented to easing development loops with the eSDK. A more
> controlled way of installing packages would be to have
> package-management added to your IMAGE_FEATURES [1] to leverage a
> fully fledged package manager on the target (like any mainstream
> distro). You can choose among different format by setting the
> PACKAGE_CLASSES configuration variable. Using a package manager on the
> target won't differ from how you install/upgrade your desktop
> distribution. The only extra step you'll need to accomplish is setting
> up a proper package feed to let your targets grab the packages from
> your build/deploy/<package_format> dir. See the manual at [2] for more
> details.
>
> Also, devtool works at a recipe scope, not at package level. You can
> imagine it as a sort of 'make install' that leverages ssh to work
> update the target filesystem. Recipes can provide more than one
> package, then only a proper package manager will let you select any of
> the packages a recipe provides for installation/upgrade.
>
>> A digression:
>> Am asking for a non devtool option because it
>> seems like devtool is ignoring the patch and config files
>> the recipe depends on (can't find any in workspace/sources).
>
> This shouldn't be the case. When using 'devtool modify'
> workspace/sources/<your-recipe> gets populated with a git repository
> which includes a 'devtool' branch which includes any patch the recipe
> declare in its SRC_URI. Those patches are already applied to the
> fetched sources in the form of git commits on the 'devtool' branch
> [3].
>
>> My particular recipe has a custom build step that
>> depends on rendering config file templates (which fails due to missing
>> not finding the config file).
>
> This might be due to errors in setting up the extra task: difficult to
> say without looking at how the custom step is defined. Maybe you can
> share your recipe together with the error logs bitbake is reporting.
>
> [1] https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-features-image
> [2] https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#runtime-package-management-server
> [3] https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#devtool-modifying-a-recipe

