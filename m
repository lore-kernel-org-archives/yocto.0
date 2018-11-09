Return-Path: <jrswdnan22@snkmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A822EE00C1E; Fri,  9 Nov 2018 06:35:14 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at http://www.dnswl.org/,
	low *      trust
	*      [62.142.5.110 listed in list.dnswl.org]
Received: from emh04.mail.saunalahti.fi (emh04.mail.saunalahti.fi
	[62.142.5.110])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 6DDEAE00C46
	for <yocto@yoctoproject.org>; Fri,  9 Nov 2018 06:35:12 -0800 (PST)
Received: from uwe1 (unknown [193.65.204.42])
	by emh04.mail.saunalahti.fi (Postfix) with ESMTP id 30B0330149;
	Fri,  9 Nov 2018 16:35:10 +0200 (EET)
From: Uwe Geuder <jrswdnan22@snkmail.com>
To: yocto@yoctoproject.org
In-Reply-To: <CAFd=ocgV2baea-PsHJ9N9OiTS-rTQ-mux=7qwxmCU=Y8JBJ+Aw@mail.gmail.com>
References: <CAFd=ochAjUo7FfHQJFcQHYE7Y2jRD8UHUhRBpGvvTRLLgfwK=Q@mail.gmail.com>
	<CAFd=ocj4eHG89wt7yM0_w3YqrM9788+CZp=gDXgQfQsE6+9v2Q@mail.gmail.com>
	<3658853.D14kAIKcfP@stinger>
	<CAFd=ocgV2baea-PsHJ9N9OiTS-rTQ-mux=7qwxmCU=Y8JBJ+Aw@mail.gmail.com>
Date: Fri, 09 Nov 2018 16:35:10 +0200
Message-ID: <87zhuiz5cx.fsf@snkmail.com>
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
X-List-Received-Date: Fri, 09 Nov 2018 14:35:14 -0000
Content-Type: text/plain

Hi!


On Fri, Nov 9, 2018 at 12:16 PM Markus W markus4dev-at-gmail.com wrote:

> On Thu, 8 Nov 2018 at 22:53, Piotr Tworek <tworaz666@gmail.com> wrote:
...
>> pkg_postinst_ontarget_${PN} () {
>>    setcap cap_net_raw+eip $D${bindir}/node
>> }
...
> How can this be achieved when the rootfs is created and not on first
> boot? I would like not to ship libcap binaries with the target in
> production.

Ideally I would do it "locally" in do_install of the node recipe (you can
append extra statements to the task in your own .bbappend in your own
layer, don't edit existing recipes)

That of course requires that the package manager preserves the
capabilites. I have no experience which package manager would do
or not do that.

"Globally" you can do it by appending a new function to ROOTFS_POSTPROCESS_COMMAND

https://www.yoctoproject.org/docs/2.5.1/mega-manual/mega-manual.html#var-
ROOTFS_POSTPROCESS_COMMAND

This is done in your image recipe.

Regards,

Uwe Geuder
Neuro Event Labs Oy
Tampere, Finland
uwe.gexder@neuroeventlabs.com (Bot check: fix one obvious typo)

