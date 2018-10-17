Return-Path: <zoran.stojsavljevic@gmail.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 890C9E00BC8; Wed, 17 Oct 2018 01:37:51 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.0 required=5.0 tests=BAYES_00,DKIM_SIGNED,
	DKIM_VALID, DKIM_VALID_AU, FREEMAIL_FROM,
	RCVD_IN_DNSWL_NONE autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 FREEMAIL_FROM Sender email is commonly abused enduser mail
	provider *      (zoran.stojsavljevic[at]gmail.com)
	* -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at http://www.dnswl.org/,
	no *      trust
	*      [209.85.160.175 listed in list.dnswl.org]
	* -0.1 DKIM_VALID_AU Message has a valid DKIM or DK signature from
	author's *       domain
	* -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
	*  0.1 DKIM_SIGNED Message has a DKIM or DK signature, not necessarily
	*      valid
Received: from mail-qt1-f175.google.com (mail-qt1-f175.google.com
	[209.85.160.175])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 4FE28E00BBF
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 01:37:50 -0700 (PDT)
Received: by mail-qt1-f175.google.com with SMTP id l9-v6so29037125qtf.5
	for <yocto@yoctoproject.org>; Wed, 17 Oct 2018 01:37:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
	h=mime-version:references:in-reply-to:from:date:message-id:subject:to; 
	bh=ajs8r7uFpUYBRB6EtKeGgxQg28eDSMCj+FLn+6q3Dzk=;
	b=rN3wajb1ttO/sapByD7QBsF4JsD694hueW0kX0nkxujh4XRvWY29BgB87qz1GwtfLz
	SXyxBpw2FdsfD8fgkbe9u6WMBvkl2Ir6nGSJ8xKlnjoBn+7dM8n9tCIOUdHzd7++qdM1
	D6RVB9EajBQA5aoXnOMwvMbR5aKeq8oa+3xkga75HWBxYKcDf5wuuetg3G4adgB61XWb
	Vu7kqbogqclqUVhRl2yqnvhCXwsCZs9BBogwC3Xvvtb7i2TFbrsA8VeVz0NEGIzoDc4j
	E53tk2TL0Z/zaln2Yj4wAODo9+0DCJKs4LVkw4L3emRi3o+1JaOOxs1Jsnxf9qf/yWyr
	AM7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20161025;
	h=x-gm-message-state:mime-version:references:in-reply-to:from:date
	:message-id:subject:to;
	bh=ajs8r7uFpUYBRB6EtKeGgxQg28eDSMCj+FLn+6q3Dzk=;
	b=hK54PgkN7Prvt5jJ8jeJhPyepqV9ogXK9TgFtULlg0PiY/nLSmf9K8z9TB8IQO9+Lh
	MFgOjkQSH5tDLpcbTXjqYpeo1V7c/5orm6HgYZtPTBwI7f40uH+O4wrSrh1F3k08fwLI
	6Kk/Dsv4WAXyghSAeI0FBlDYFWezSJxBuILGucc1u8wmIyFpSnwtqVdFjYK1oiP89M8Q
	A1WVa6d05B7dIs/OAOWBcvOLkWaezORCJUHDCJmyMfLUUWrlwlBEPw0rWX2K7iwAqWCF
	/XnsikLMJN8z7yIr2FO3FNRxikN2kIZpclkZZs8UzaIalXma+QwY0calz5x9vcRb/wyP
	x1eQ==
X-Gm-Message-State: ABuFfohQp3D+i7Tn8xuXL49ocVgdFQhEVGYLQp+gd3SWraxGtzVhBU4e
	5ZUnj0huzWPwOfZamm73xPK4BAr1AFwtZfkkE7IBP+qPETY=
X-Google-Smtp-Source: ACcGV62A92EzqdKGRhZGkmISdg7CqeS8wg76tgclLbbOPQEoRrRge3jF32Q0asXJue05PzGdbiAyhJpFQPF3XAnz8o0=
X-Received: by 2002:a0c:c901:: with SMTP id r1mr24984255qvj.170.1539765469578; 
	Wed, 17 Oct 2018 01:37:49 -0700 (PDT)
MIME-Version: 1.0
References: <CAGAf8Ly_txg3AQNqOM+Rg0Oy-RdS_96y328GwXw7Qu=iDx1yfg@mail.gmail.com>
	<14f3ead713e649f48582d18ddd477d3c@advaoptical.com>
	<CAGAf8LwAQsBHNNCp8uL4pU5tPGGKVKvnVDF6dcdv-VtMHDGRVg@mail.gmail.com>
In-Reply-To: <CAGAf8LwAQsBHNNCp8uL4pU5tPGGKVKvnVDF6dcdv-VtMHDGRVg@mail.gmail.com>
From: Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
Date: Wed, 17 Oct 2018 10:37:38 +0200
Message-ID: <CAGAf8LwzrRh6j0n9yqpvv6x1Y7AKhDX7FcREdSzpauYga2QDkw@mail.gmail.com>
To: KZertsekel@advaoptical.com, Yocto Project <yocto@yoctoproject.org>
Subject: Re: Sumo distro problem with dhcp packet?
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
X-List-Received-Date: Wed, 17 Oct 2018 08:37:51 -0000
Content-Type: text/plain; charset="UTF-8"

Hello Kosta and others,

I am a bit behind on a schedule on this one. Albeit I followed the
advise, This does work for compiling and adding all these packages to
the ROOTFS. I see that after I added all them, I see the
initramfs.tar.xz expanded in
...poky/build/tmp/deploy/image/beagleboneblack/ directory.

But after I do the testing with initramfs, with all these packages
added. I do not find anything in the ROOTFS even what it should be
lookalike DHCP.

After trying # which dhclient, or # which dhcp-client, or # which
dhcp... It finds nothing!

Then, the next step was to find /etc/dhcp/ or similar. There is
nothing lookalike dhcp/ or dhcp* in /etc, which shows that these lines
in dhcp.inc recipe are not executed:

do_install_append () {
       install -d ${D}${sysconfdir}/init.d
       install -d ${D}${sysconfdir}/default
       install -d ${D}${sysconfdir}/dhcp
       install -m 0755 ${WORKDIR}/init-relay ${D}${sysconfdir}/init.d/dhcp-relay
       install -m 0644 ${WORKDIR}/default-relay
${D}${sysconfdir}/default/dhcp-relay
       install -m 0755 ${WORKDIR}/init-server
${D}${sysconfdir}/init.d/dhcp-server
       install -m 0644 ${WORKDIR}/default-server
${D}${sysconfdir}/default/dhcp-server

       rm -f ${D}${sysconfdir}/dhclient.conf*
       rm -f ${D}${sysconfdir}/dhcpd.conf*

In addition, when I execute: $ bitbake -c cleanall dhcp, it says that
it executes thee tasks, and none of them are actually executed (0
executed).

I also recompiled form scratch the whole sumo BBB build, but this did
NOT solve the problem.

Any hint how I should proceed?

Thank you,
Zoran
_______

On Thu, Oct 11, 2018 at 1:40 PM Zoran Stojsavljevic
<zoran.stojsavljevic@gmail.com> wrote:
>
> Hello Kosta,
>
> > For example, you can do the below:
> > CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp-client dhcp-server cmake... "
>
> I added to this example dhcp-relay, just to test the whole build, and
> it does work. Actually, I need only dhcp-client for the target (since
> I have dhcp-server on the ETH interface on the opposite (VM) side).
>
> Thank you for the help!
> Zoran
> _______
> On Wed, Oct 10, 2018 at 5:57 PM Kosta Zertsekel
> <KZertsekel@advaoptical.com> wrote:
> >
> > You need to take a look at the available dhcp packages
> > for dhcp recipe here:
> > https://git.yoctoproject.org/clean/cgit.cgi/poky/tree/meta/recipes-connectivity/dhcp/dhcp.inc#n100
> >
> > PACKAGES += "dhcp-libs dhcp-server dhcp-server-config dhcp-client dhcp-relay dhcp-omshell"
> >
> > For example, you can do the below:
> > CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp-client dhcp-server cmake... "
> >
> > Thanks,
> > --- Kosta Z
> > ________________________________
> > From: yocto-bounces@yoctoproject.org <yocto-bounces@yoctoproject.org> on behalf of Zoran Stojsavljevic <zoran.stojsavljevic@gmail.com>
> > Sent: Wednesday, 10 October 2018 16:29:05
> > To: Yocto Project
> > Subject: [yocto] Sumo distro problem with dhcp packet?
> >
> > Hello.
> >
> > I need on my test initramfs YOCTO image to add dhcp package (both dhcp server and client).
> >
> > For the beginning, I traced it, where it is:
> > .../poky/meta/recipes-connectivity/dchp
> >
> > and decided to test it adding it to ...poky/build/conf/local.conf for the starters:
> > CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcp cmake... "
> >
> > But it produced the following error:
> > [user@fedora28-ssd conf]$ bitbake -k core-image-base
> >
> >    [snap]
> >
> > ERROR: Nothing RPROVIDES 'dhcp' (but /home/user/projects2/beaglebone-black/sumo/poky/meta/recipes-core/images/core-image-base.bb RDEPENDS on or otherwise requires it)
> > NOTE: Runtime target 'dhcp' is unbuildable, removing...
> > Missing or unbuildable dependency chain was: ['dhcp']
> > ERROR: Nothing RPROVIDES 'core-image-base'
> > No eligible RPROVIDERs exist for 'core-image-base'
> > NOTE: Runtime target 'core-image-base' is unbuildable, removing...
> > Missing or unbuildable dependency chain was: ['core-image-base']
> >
> > I added another package, dhcpcd, which is located in the another layer:
> > CORE_IMAGE_EXTRA_INSTALL_append = "openssh dhcpcd cmake... "
> >
> > so this one worked/was integrated seamlessly.
> >
> > What is the catch 22 here?
> >
> > Thank you,
> > Zoran
> >

