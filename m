Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 5CEE5E00C43; Tue, 13 Nov 2018 05:43:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [62.142.5.116 listed in list.dnswl.org]
Received: from emh06.mail.saunalahti.fi (emh06.mail.saunalahti.fi
	[62.142.5.116])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 561B4E00C3C
	for <yocto@yoctoproject.org>; Tue, 13 Nov 2018 05:43:33 -0800 (PST)
Received: from uwe1 (unknown [193.65.204.42])
	by emh06.mail.saunalahti.fi (Postfix) with ESMTP id 2086730065;
	Tue, 13 Nov 2018 15:43:32 +0200 (EET)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <CAFd=ociPq2njZqnx_ruRK_Pe5ECDMMo+kP5SE82iVBauqaEF-w@mail.gmail.com>
References: <CAFd=ochAjUo7FfHQJFcQHYE7Y2jRD8UHUhRBpGvvTRLLgfwK=Q@mail.gmail.com>
	<CAFd=ocj4eHG89wt7yM0_w3YqrM9788+CZp=gDXgQfQsE6+9v2Q@mail.gmail.com>
	<3658853.D14kAIKcfP@stinger>
	<CAFd=ocgV2baea-PsHJ9N9OiTS-rTQ-mux=7qwxmCU=Y8JBJ+Aw@mail.gmail.com>
	<87zhuiz5cx.fsf@snkmail.com>
	<CAFd=ociPq2njZqnx_ruRK_Pe5ECDMMo+kP5SE82iVBauqaEF-w@mail.gmail.com>
	<0cbd0504-0890-64d8-c074-3857bb7cbd10@topic.nl>
Date: Tue, 13 Nov 2018 15:43:31 +0200
Message-ID: <871s7pozy4.fsf@snkmail.com>
MIME-Version: 1.0
Subject: Re: Set linux capabilities on binary on a recipe in meta-oe layer
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
X-List-Received-Date: Tue, 13 Nov 2018 13:43:35 -0000
Content-Type: text/plain

On Mon, Nov 12, 2018 at 3:09 PM Markus W markus4dev-at-gmail.com wrote:
>
> Thanks Uwe!
>
> I tried the global approach by adding the following to my local.conf file:
>
> ROOTFS_POSTPROCESS_COMMAND += "my_setcap_function"
>
> my_setcap_function() {
>     setcap cap_net_raw+eip ${IMAGE_ROOTFS}/usr/bin/node
> }
>
> But got the following warning:
> WARNING: core-image-full-cmdline-1.0-r0 do_rootfs: Function my_setcap_function doesn't exist
>
> I have tried to add the function into a recipe but this doesn't work either. Where should the function be defined?
>

As I wrote

>> This is done in your image recipe.

At least this is where I do it and it works for me.

My use of "global" was probably not so lucky, I did not mean bitbake
configuration.  I just meant that it is done in the image recipe and not
in the node recipe.

You can always use "bitbake -e" to check variable and recipe function
definitions if you are wondering what is really going on. I often
understand problems when looking at the listing produced by this
command. In your case "bitbake -e core-image-full-cmdline"

There are also other functions in the value of ROOTFS_POSTPROCESS_COMMAND so as


On Tue, Nov 13, 2018 at 4:09 AM Mike Looijmans mike.looijmans-at-topic.nl wrote:
>
> Also, there's a semicolon missing:
> ROOTFS_POSTPROCESS_COMMAND += "my_setcap_function;"
>

The final value of ROOTFS_POSTPROCESS_COMMAND as shown by "bitbake -e"
should be list of function names separated by semicolons.

My previous link was broken, hopefully this time it survives intact...

https://www.yoctoproject.org/docs/2.5.1/mega-manual/mega-manual.html#var-ROOTFS_POSTPROCESS_COMMAND

> Sometimes the problem is that parts of the underscored function name are seen
> as overrides, so you should try using "mysetcapfunction" instead as a name.
>

That has never happened to me and I use underscores in my function
names. But I could imagine that it's possible in some case. I would
strongly expect to see such issue in the output of "bitbake -e", too.


Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)

