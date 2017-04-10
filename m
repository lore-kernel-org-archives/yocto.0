Return-Path: <Joe_MacDonald@mentor.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id D6CFDE00A71; Mon, 10 Apr 2017 06:05:15 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_NONE
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 RCVD_IN_DNSWL_NONE RBL: Sender listed at
	http://www.dnswl.org/, no *      trust
	*      [192.94.38.131 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from relay1.mentorg.com (relay1.mentorg.com [192.94.38.131])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 973DAE009AA;
	Mon, 10 Apr 2017 06:05:14 -0700 (PDT)
Received: from svr-orw-fem-06.mgc.mentorg.com ([147.34.97.120])
	by relay1.mentorg.com with esmtp 
	id 1cxZ0K-0004P9-7z from Joe_MacDonald@mentor.com ;
	Mon, 10 Apr 2017 06:05:12 -0700
Received: from burninator (147.34.91.1) by SVR-ORW-FEM-06.mgc.mentorg.com
	(147.34.97.120) with Microsoft SMTP Server id 14.3.224.2;
	Mon, 10 Apr 2017 06:05:11 -0700
Received: by burninator (Postfix, from userid 1000)	id 538B158046B; Mon, 10
	Apr 2017 09:05:06 -0400 (EDT)
Date: Mon, 10 Apr 2017 09:05:06 -0400
From: Joe MacDonald <Joe_MacDonald@mentor.com>
To: Pello Heriz <pello.heriz@alumni.mondragon.edu>
Message-ID: <20170410130505.GA11174@mentor.com>
References: <CAFL6qn4COY_d-uRBe-ausjbW+7MOUkU6gU8kkqkHj_gokxxmEw@mail.gmail.com>
MIME-Version: 1.0
In-Reply-To: <CAFL6qn4COY_d-uRBe-ausjbW+7MOUkU6gU8kkqkHj_gokxxmEw@mail.gmail.com>
X-URL: http://github.com/joeythesaint/joe-s-common-environment/tree/master
X-Configuration: git://github.com/joeythesaint/joe-s-common-environment.git
X-Editor: Vim-704 http://www.vim.org
User-Agent: Mutt/1.5.23 (2014-03-12)
Cc: yocto@yoctoproject.org, meta-virtualization@yoctoproject.org
Subject: Re: No recipes available for meta-selinux and meta-virtualization layers
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
X-List-Received-Date: Mon, 10 Apr 2017 13:05:15 -0000
Content-Type: text/plain; charset="us-ascii"
Content-Disposition: inline
Content-Transfer-Encoding: quoted-printable

Hi Pello,

[No recipes available for meta-selinux and meta-virtualization layers] On 1=
7.04.10 (Mon 09:59) Pello Heriz wrote:

> Hi,
>=20
> I have tried to build a core-image-minimal image with master branch of
> Yocto and I have added the meta-virtualization layer and it's
> dependency layers in order to have virtualization functionalities
> enabled when creating the image.
>=20
> The problem is that the bitbake execution fails due to there are
> missing some recipes for meta-selinux and meta-virtualization layers.
> This is the message that I can see in the terminal when it fails the
> execution:

Yeah, Mark and I have discussed a few times that we're sorely out of
date in meta-selinux right now.  At different times we've each said we
were going to do an update to the layer, but frankly we're both pretty
swamped and there's a couple of infrastructural issues too that we've
both been hoping to resolve "pretty soon".

That said, as a stop-gap, you could try checking out the updated
master-next branch in meta-selinux.  Just a few minutes ago I pushed
some changes that may resolve some of those issues for you.

Also, just FYI, I don't typically test anything in meta-selinux outside
of the combination with DISTRO=3Dpoky-selinux or oe-selinux and a
core-image-selinux, so you may encounter issues I haven't seen when
building something else.  But we're happy to take patches for those
additional cases, just know that you may be blazing your own trail.

-J.

>=20
> pello@pello-VirtualBox:/opt/yocto_GE/yocto_master_xen/poky/build$ bitbake
> core-image-minimal
> Parsing recipes: 100% |##################################################=
######
> ##########################| Time: 0:09:00
> Parsing of 1981 .bb files complete (0 cached, 1981 parsed). 2752 targets,=
 204
> skipped, 0 masked, 0 errors.
> ERROR: No recipes available for:
>   /opt/yocto_GE/yocto_master_xen/poky/meta-selinux/recipes-devtools/rpm/
> rpm_5.4.16.bbappend
>   /opt/yocto_GE/yocto_master_xen/poky/meta-selinux/recipes-extended/findu=
tils/
> findutils_4.2.31.bbappend
>   /opt/yocto_GE/yocto_master_xen/poky/meta-virtualization/recipes-kernel/=
linux/
> linux-yocto_4.8.bbappend
>=20
> Summary: There was 1 ERROR message shown, returning a non-zero exit code.
>=20
>=20
> How can be solved this error? Are you planned to update some patch for so=
lving
> this issue?
>=20
> Looking forward to your answer,
> Best regards,
> Pello

--=20
-Joe MacDonald.
:wq

