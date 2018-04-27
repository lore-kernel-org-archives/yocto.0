Return-Path: <gizero@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9A207E009DC; Fri, 27 Apr 2018 09:43:44 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * 0.0 FREEMAIL_FROM Sender email is commonly abused enduser
	mail provider *      (gizero[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.213.48 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
Received: from mail-vk0-f48.google.com (mail-vk0-f48.google.com
	[209.85.213.48])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 41B2BE0073D
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 09:43:41 -0700 (PDT)
Received: by mail-vk0-f48.google.com with SMTP id 203-v6so1454351vka.12
	for <yocto@yoctoproject.org>; Fri, 27 Apr 2018 09:43:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:in-reply-to:references:from:date:message-id:subject:to
	:cc; bh=Xa/K+Kgahn8yDWy+ypY7hGltKt96y/meJo5lAOETvU8=;
	b=uwQGYT1oVIWDCPKJNPFuiH8xV+vHaBlpm5UibAYmNF622MMaS/Mq7GCbRVeaSLiB1D
	dZQULxLKmtBhA5MkLREHmPX4tZYW6jrGCKKpFP19Y9mJjYXa/eJaFqXd8zkQ59YrfOrr
	hfSgUwyeweN4mEEF3RiRODi5/OUB7tKG8Fi/qhZS5vWyUvp2cEb2tRuw/VUGVDFU7c/Q
	W90JJ8XnAqewO9LtWlOFxyuQqiHiUB00H8BSXoojfvagullfEY6lNsTTjkzwJV34msHB
	wwXFXZXgti+sVsPLK7KcI6MsOEDDFlip5c+rU8iFfLQmXlFUZovJiRVQ/g42jocOiOzm
	Ap9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc;
	bh=Xa/K+Kgahn8yDWy+ypY7hGltKt96y/meJo5lAOETvU8=;
	b=GTHsz4Y9Aoh7w00FAPIM0EEvrKwbTqkmjZf2feIrEoVj3Zv48gnalAIbC/3AzuBr64
	x3F0+TWoIEVPDAZVLWcCWpXch+l1Z+otMyYxeHrFFDxiJLZJ2GGB72oK0FUcTBk/GEai
	v0yFYZnmsgYuxJOsDoYyyOTBX2OZbrCWPEbYZ9KrcvI6xT6xTrPI7xcLkYVnCBmDdCct
	E/yEaOKWKRjLex6N/ue0BdWSJk2GZsCgKiv1VzgbkzigQWTlzwh50DuB174xSuALDK+g
	dfFQmMsV4c+Eo5pd6094tv4SXOyRFyxFMK7EmIRp0SIUHO1g5SRl44GXDrwYDxEr/mLo
	SVtg==
X-Gm-Message-State: ALQs6tD9Bs8Yq4E+g5FxVo/XyYbI3JepQ7z5Sm2XyzlPoaKLLySGE+Uv
	rHVmI369wFe7ymybDUTVSmVGUjPCUtjjamg6QZM=
X-Google-Smtp-Source: AB8JxZrGGYOp7mJQnKTIuFsdecqxUkkHXh/ATnmdVJqh9grUYqPrkP6mB/HwLzSPiieXX4crXkMV2HbR6P73ZiQRqlU=
X-Received: by 2002:a1f:ae11:: with SMTP id
	x17-v6mr1988880vke.52.1524847420347; 
	Fri, 27 Apr 2018 09:43:40 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.70.130 with HTTP; Fri, 27 Apr 2018 09:43:19 -0700 (PDT)
In-Reply-To: <CAOT_U5aZMd_actfPGyEvq1xBpg_9+8=+LWLAEARXaH9oJ9189w@mail.gmail.com>
References: <CAOT_U5YEgeYdOJxdncO0vXm4OnNLofd6rj8amNiOMZZ_qbzqvw@mail.gmail.com>
	<CAC+thW09N85OA6Wj_N=H4K5+tNYH8FxqDgpuWoWSRD8go840qQ@mail.gmail.com>
	<CAOT_U5aZMd_actfPGyEvq1xBpg_9+8=+LWLAEARXaH9oJ9189w@mail.gmail.com>
From: Andrea Galbusera <gizero@gmail.com>
Date: Fri, 27 Apr 2018 18:43:19 +0200
Message-ID: <CAC+thW05+S-Kr35icg3Bd6Z-NuQKyYk-66WXdCoPLsR81ayo9w@mail.gmail.com>
To: Alan Martinovic <alan.martinovic@senic.com>
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
X-List-Received-Date: Fri, 27 Apr 2018 16:43:44 -0000
Content-Type: text/plain; charset="UTF-8"

On Fri, Apr 27, 2018 at 5:39 PM, Alan Martinovic
<alan.martinovic@senic.com> wrote:
> Hey
>
>> A more
> controlled way of installing packages would be to have
> package-management added to your IMAGE_FEATURES [1] to leverage a
> fully fledged package manager on the target (like any mainstream
> distro).
>
> Yeah, I admit I have been ignorantly avoiding this, always thinking that
> it isn't worth the overhead of setting the server and the additional
> aps on the board.
> Will check it out.
>
>> This shouldn't be the case. When using 'devtool modify'
> workspace/sources/<your-recipe> gets populated with a git repository
> which includes a 'devtool' branch which includes any patch the recipe
> declare in its SRC_URI.
>
> Cool share about the devtool branch, tnx.
>
>> Those patches are already applied to the
> fetched sources in the form of git commits on the 'devtool' branch
> [3].
>
> I guess it isn't a patch that is directly applied to the source but a
> config file that gets modified.
>
>     ....
>     SRC_URI += "file://bluetooth.conf"
>
>     python do_render_templates() {
>       render_template('bluetooth.conf')
>     }

Can't see the render_template() implementation here, but my guess is
that, unless you are prepending any extra path to 'bluetooth.conf' you
are relying on the current working directory for the task, which
should be S.
While outside the devtool context S defaults to ${WORKDIR} (again,
unless you are setting it elsewhere), likely allowing
render_template() to find the file, when using devtool, S gets a
different value which comes from the externalsrc class and points to
the workspace.

My suggestion is trying to rework your render logic in a way that it
looks for source template in ${WORKDIR} and deploys the rendered
configuration file in ${D}, even better without overwriting the
template itself in ${WORKDIR}. You can find a similar pattern,
implemented as a shell snippet instead of a python function, i.e. in
meta/recipes-support/nspr/nspr_4.13.1.bb or
meta/recipes-support/nss/nss_3.28.1.bb from the poky repo, which do
both render their pkg-config templates that way and work seamlessly
either inside or outside devtool.

>     addtask render_templates after do_compile before do_install
>
>     do_install_append() {
>         install -m 644 ${WORKDIR}/bluetooth.conf
> ${D}${sysconfdir}/dbus-1/system.d/bluetooth.conf
>         install -d ${D}${systemd_unitdir}/system
>         install -m 0644 ${WORKDIR}/bluetooth.service
> ${D}${systemd_unitdir}/system
>     }
>     do_render_templates[nostamp] = "1"
>
>
> The render_template changes some entries in bluetooth.conf.
> I guess when it's run from devshell it gets confused as where to look
> for it.
> Works ok with bitbake.
>
> Be Well :)
> Alan
>
>
> On Fri, Apr 27, 2018 at 4:47 PM, Andrea Galbusera <gizero@gmail.com> wrote:
>> Hi Alan,
>>
>> On Fri, Apr 27, 2018 at 1:38 PM, Alan Martinovic
>> <alan.martinovic@senic.com> wrote:
>>> Hey,
>>> I know there is a method in devtool called devtool deploy-target.
>>> It's a great thing to install a package on the board at runtime.
>>>
>>> Is there something like that available without devtool?
>>
>> The devtool deploy-target way of deploying recipes' artefacts is
>> mostly oriented to easing development loops with the eSDK. A more
>> controlled way of installing packages would be to have
>> package-management added to your IMAGE_FEATURES [1] to leverage a
>> fully fledged package manager on the target (like any mainstream
>> distro). You can choose among different format by setting the
>> PACKAGE_CLASSES configuration variable. Using a package manager on the
>> target won't differ from how you install/upgrade your desktop
>> distribution. The only extra step you'll need to accomplish is setting
>> up a proper package feed to let your targets grab the packages from
>> your build/deploy/<package_format> dir. See the manual at [2] for more
>> details.
>>
>> Also, devtool works at a recipe scope, not at package level. You can
>> imagine it as a sort of 'make install' that leverages ssh to work
>> update the target filesystem. Recipes can provide more than one
>> package, then only a proper package manager will let you select any of
>> the packages a recipe provides for installation/upgrade.
>>
>>> A digression:
>>> Am asking for a non devtool option because it
>>> seems like devtool is ignoring the patch and config files
>>> the recipe depends on (can't find any in workspace/sources).
>>
>> This shouldn't be the case. When using 'devtool modify'
>> workspace/sources/<your-recipe> gets populated with a git repository
>> which includes a 'devtool' branch which includes any patch the recipe
>> declare in its SRC_URI. Those patches are already applied to the
>> fetched sources in the form of git commits on the 'devtool' branch
>> [3].
>>
>>> My particular recipe has a custom build step that
>>> depends on rendering config file templates (which fails due to missing
>>> not finding the config file).
>>
>> This might be due to errors in setting up the extra task: difficult to
>> say without looking at how the custom step is defined. Maybe you can
>> share your recipe together with the error logs bitbake is reporting.
>>
>> [1] https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#ref-features-image
>> [2] https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#runtime-package-management-server
>> [3] https://www.yoctoproject.org/docs/latest/mega-manual/mega-manual.html#devtool-modifying-a-recipe

