Return-Path: <lothar@denx.de>
Received: from mail-out.m-online.net (mail-out.m-online.net [212.18.0.10])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id EC4E6E0073F
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 06:17:32 -0700 (PDT)
Received: from frontend1.mail.m-online.net (frontend1.mail.intern.m-online.net
	[192.168.8.180])
	by mail-out.m-online.net (Postfix) with ESMTP id 3cTBff3Zrtz3hhyN
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 15:17:29 +0200 (CEST)
Received: from localhost (dynscan1.mnet-online.de [192.168.6.68])
	by mail.m-online.net (Postfix) with ESMTP id 3cTBfd6jljzbbjV
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 15:17:29 +0200 (CEST)
X-Virus-Scanned: amavisd-new at mnet-online.de
Received: from mail.mnet-online.de ([192.168.8.180])
	by localhost (dynscan1.mail.m-online.net [192.168.6.68]) (amavisd-new,
	port 10024) with ESMTP id otDzsjc1XD9T for <yocto@yoctoproject.org>;
	Mon,  2 Sep 2013 15:17:28 +0200 (CEST)
X-Auth-Info: IbSOF05mnC0VxDuz321WG7F/mD77HdltXQjLpT3Iyu8=
Received: from webmail.mnet-online.de (webmail1.mnet-online.de
	[62.245.181.162]) by mail.mnet-online.de (Postfix) with ESMTPA
	for <yocto@yoctoproject.org>; Mon,  2 Sep 2013 15:17:28 +0200 (CEST)
Received: from host-82-135-33-74.customer.m-online.net ([82.135.33.74])
	by webmail.mnet-online.de
	with HTTP (HTTP/1.1 POST); Mon, 02 Sep 2013 13:17:28 +0000
MIME-Version: 1.0
Date: Mon, 02 Sep 2013 15:17:28 +0200
From: lothar@denx.de
To: yocto@yoctoproject.org
In-Reply-To: <2462918.0uoppbURnB@helios>
References: <CAFyqS9qRgLBFThnAETs1KXnMingG10U3o+3cooVeR4Zi8o5JVQ@mail.gmail.com>
	<CAP71Wjx3uF=FFGfypOqw9w5HF0N6KEH9KJ6sGE_0zQ2AX3Dk6w@mail.gmail.com>
	<634B5BDC80D342ABA055FCF109BBDE9C@PAULD> <2462918.0uoppbURnB@helios>
Message-ID: <c3cd39f7562ccd925f1d7fd7d9929305@denx.de>
X-Sender: lothar@denx.de
User-Agent: Roundcube Webmail/0.9.3
Subject: Re: confusion about DEPENDS vs RDEPENDS
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
X-List-Received-Date: Mon, 02 Sep 2013 13:17:37 -0000
Content-Type: text/plain; charset=UTF-8;
 format=flowed
Content-Transfer-Encoding: 7bit

Hello Paul,

I followed this very interesting thread, and have a question on the last 
statement, just for understanding:

Are the limitations you are explaining here, the same as mentioned in...
http://www.yoctoproject.org/docs/current/mega-manual/mega-manual.html
...under "Checksums (Signatures)", telling that:
"Consider a case with in-line Python, for example, where BitBake is not 
able to figure out dependencies."   ? So to speak, are those limitations 
the cases, where bitbake is not able to figure out dependencies 
correctly?

Thanks in advance,
Lothar


> Hi Paul / Nicolas,
> 
> On Wednesday 28 August 2013 15:15:27 Paul D. DeRocco wrote:
>> From: Nicolas Dechesne
>> > if the source code changes, the version of the recipe needs
>> > to change too. if you change the source code without bumping
>> > the version, the package might not be rebuilt properly
>> > indeed. and that can explain the behavior you are seeing. if
>> > 'someapp' does not change, it would be rebuilt only if one of
>> > its dependencies was rebuilt.
>> 
>> If you're making lots of changes in the course of debugging, isn't it
>> reasonable just to do a cleansstate on the recipe to force it to be
>> rebuilt?
> 
> Current versions of the build system (denzil/1.2+, although refinements 
> have
> been made since then) are task signature-based. That means as far as 
> the build
> system is able to determine its inputs, if those change it should be 
> able to
> rebuild all of the output to match. Known limitations:
> 
> * Upstream software that doesn't properly rebuild when reconfigured. In 
> most
> cases this should be considered as a bug in the recipe. Separating S 
> from B
> can help here as I mentioned earlier, and you can see in dylan/1.4+ in
> meta/conf/distro/include/seperatebuilddir.inc that we've been enabling
> separate recipe build dirs for a number of recipes to help with this.
> 
> * Editing the unpacked/patched source code in the recipe's work 
> directory
> (i.e. tmp/work/...). Note that this is not something that is 
> discouraged - in
> fact it can be a very useful development aid. However, you do need to 
> be aware
> of the need to force the appropriate tasks to re-execute after you have 
> made
> changes in there i.e. bitbake -c compile -f <recipe> or bitbake -C 
> compile
> <recipe>, since the build system cannot detect these kinds of changes 
> on its
> own.
> 
> * Items remaining in the sysroot when recipes are completely renamed 
> (i.e.
> when PN changes) or when a recipe is removed. We saw this recently with 
> the
> mesa-dri -> mesa rename. Currently there's no way for the system to 
> know what
> replaces what when PN changes or what to do when a recipe completely 
> vanishes,
> you just have to clean out the old recipe's files in the sysroot. This 
> can of
> course happen if you add and remove layers without deleting TMPDIR, so 
> care
> should be taken when doing that. This is an difficult issue to solve
> practically; there is discussion of this issue here for those 
> interested:
> https://bugzilla.yoctoproject.org/show_bug.cgi?id=4102
> 
> * If you use runtime packaging ("package-management" in IMAGE_FEATURES) 
> and
> you're putting the packages into a feed and expect on-target upgrades 
> to work
> consistently from those feeds without manually bumping PR in recipes on 
> every
> material change, you need to enable the PR service as described in the
> development manual so that PR increments automatically.
> 
> * Changes on the host system affecting native recipes - less likely to 
> cause
> issues, but worth being aware of. It can happen that adding or removing
> packages on the host system changes the configuration of native recipes 
> without
> automatically triggering a rebuild - a good example is how we allow 
> qemu-
> native to build on systems with and without X11; if you added SDL and 
> X11 to a
> system on which you'd already built qemu-native beforehand, in the 
> absence of
> other changes you'd have to cleansstate or otherwise force a rebuild of 
> qemu-
> native to have a native QEMU that supported graphical output.
> 
> 
> However, with the caveats above, most of the time you can rely upon the 
> build
> system to determine what to do when things change. Of course, yes, if 
> you want
> to just force a recipe to rebuild you have the option of bitbake -c
> cleansstate <recipe> before building it again, but most of the time 
> that's
> going to be more than is needed.
> 
> Cheers,
> Paul

