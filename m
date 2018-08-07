Return-Path: <fabien.lahoudere@collabora.co.uk>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 963CDE006D8; Tue,  7 Aug 2018 04:07:31 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00, RCVD_IN_DNSWL_NONE, 
	SPF_HELO_PASS,UNPARSEABLE_RELAY autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [46.235.227.227 listed in list.dnswl.org]
	* -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
	* 0.0 UNPARSEABLE_RELAY Informational: message has unparseable relay
	lines
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk [46.235.227.227])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2A5D2E0043F
	for <yocto@yoctoproject.org>; Tue,  7 Aug 2018 04:07:30 -0700 (PDT)
Received: from [127.0.0.1] (localhost [127.0.0.1])
	(Authenticated sender: aragua) with ESMTPSA id 03ACC27341B
Message-ID: <1533640045.8352.6.camel@collabora.co.uk>
From: Fabien Lahoudere <fabien.lahoudere@collabora.co.uk>
To: "Burton, Ross" <ross.burton@intel.com>
Date: Tue, 07 Aug 2018 13:07:25 +0200
In-Reply-To: <CAJTo0LZeNUVt5asvd63=UswR9z3RisPTTrq7D+R-ZFJzsBAhtw@mail.gmail.com>
References: <1533630587.8352.1.camel@collabora.co.uk>
	<CAJTo0La6RFY0VKfbsUoPGcV1MB_Z0DuhHKQSAs=a74q0+qRERA@mail.gmail.com>
	<1533636928.8352.5.camel@collabora.co.uk>
	<CAJTo0LZeNUVt5asvd63=UswR9z3RisPTTrq7D+R-ZFJzsBAhtw@mail.gmail.com>
X-Mailer: Evolution 3.22.6-1+deb9u1 
Mime-Version: 1.0
Cc: Yocto-mailing-list <yocto@yoctoproject.org>,
	OE-core <openembedded-core@lists.openembedded.org>
Subject: Re: Extract GPL sources
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
X-List-Received-Date: Tue, 07 Aug 2018 11:07:31 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

Thanks Ross it works fine now.

On Tue, 2018-08-07 at 11:38 +0100, Burton, Ross wrote:
> I believe this is fixed in Pyro 2.3.4.
> 
> Ross
> 
> 
> On 7 August 2018 at 11:15, Fabien Lahoudere
> <fabien.lahoudere@collabora.co.uk> wrote:
> > Thanks Ross,
> > 
> > I have an issue when using the archiver:
> > 
> > local.conf:
> > 
> > INHERIT += "archiver"
> > ARCHIVER_MODE[src] = "patched"
> > COPYLEFT_LICENSE_INCLUDE = 'GPL* LGPL*'
> > 
> > ERROR: gmp-native-6.1.2-r0 do_unpack_and_patch: Command Error: 'quilt --quiltrc
> > /home/aragua/src/poky/build2/tmp/work/x86_64-linux/gmp-native/6.1.2-r0/archiver-work//recipe-
> > sysroot-native/etc/quiltrc push' exited with 0  Output:
> > /bin/sh: quilt: command not found
> > ERROR: gmp-native-6.1.2-r0 do_unpack_and_patch: Function failed: patch_do_patch
> > ERROR: Logfile of failure stored in: /home/aragua/src/poky/build2/tmp/work/x86_64-linux/gmp-
> > native/6.1.2-r0/temp/log.do_unpack_and_patch.8027
> > ERROR: Task (virtual:native:/home/aragua/src/poky/meta/recipes-
> > support/gmp/gmp_6.1.2.bb:do_unpack_and_patch) failed with exit code '1'
> > 
> > I tried to drop native from COPYLEFT_RECIPE_TYPES without effect.
> > 
> > Where can I add quilt-native dependency?
> > 
> > For information I use pyro release. Is there any known bug for that release?
> > 
> > Thanks
> > 
> > On Tue, 2018-08-07 at 10:10 +0100, Burton, Ross wrote:
> > > Have a look at the archiver class.
> > > 
> > > Ross
> > > 
> > > On 7 August 2018 at 09:29, Fabien Lahoudere
> > > <fabien.lahoudere@collabora.co.uk> wrote:
> > > > Hello
> > > > 
> > > > I need to extract all *GPL* sources patched related to an image in order to publish them.
> > > > I want to do it automatically, ie 'bitbake myimage -c extract-gpl-sources'
> > > > Is there a mechanism to do that?
> > > > If not do you have any idea how I can implement it?
> > > > 
> > > > Thanks
> > > > 
> > > > --
> > > > Fabien
> > > > --
> > > > _______________________________________________
> > > > yocto mailing list
> > > > yocto@yoctoproject.org
> > > > https://lists.yoctoproject.org/listinfo/yocto
> > 
> > --
> > Fabien
-- 
Fabien

