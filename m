Return-Path: <joshua.g.lock@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id A1A41E006C6; Tue, 16 Aug 2016 12:53:45 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [192.55.52.88 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 39BC1E0043B
	for <yocto@yoctoproject.org>; Tue, 16 Aug 2016 12:53:42 -0700 (PDT)
Received: from orsmga001.jf.intel.com ([10.7.209.18])
	by fmsmga101.fm.intel.com with ESMTP; 16 Aug 2016 12:53:42 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.28,529,1464678000"; d="scan'208";a="1015493458"
Received: from sudhirk1-mobl1.ger.corp.intel.com ([10.252.10.144])
	by orsmga001.jf.intel.com with ESMTP; 16 Aug 2016 12:53:40 -0700
Message-ID: <1471377128.8414.7.camel@linux.intel.com>
From: Joshua G Lock <joshua.g.lock@linux.intel.com>
To: "Kumar, Shrawan" <Shrawan.Kumar@harman.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
In-Reply-To: <b80a230f7b11491b93bf0dfe9cc93a16@HIBDWSMB05.ad.harman.com>
References: <9eea2233da3d4fbd8722005093c1311d@HIBDWSMB02.ad.harman.com>
	<1471009925.19073.6.camel@linux.intel.com>
	<b80a230f7b11491b93bf0dfe9cc93a16@HIBDWSMB05.ad.harman.com>
Date: Tue, 16 Aug 2016 20:52:08 +0100
Mime-Version: 1.0
X-Mailer: Evolution 3.20.5 (3.20.5-1.fc24) 
Subject: Re: Access Control List (ACL) permissions attributes not getting preserved in rootfs
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
X-List-Received-Date: Tue, 16 Aug 2016 19:53:45 -0000
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: 8bit

On Tue, 2016-08-16 at 11:55 +0000, Kumar, Shrawan wrote:
> Thanks Joshua,
> 
> "postinst"  works!!  I could see the attributes set under
> "poky/build_qemux86/tmp/work/qemux86-poky-linux/core-image-
> minimal/1.0-r0/rootfs/".
> 
>  However, I still could not see the attributes after booting qemu. It
> seems during rootfs.ext4 (mkfs.ext4 command )creation when
> "create_image_ext4.sh" is called , again this is getting   lost.
> 
> Any idea on this ?


I'm not sure why the attribute isn't preserved in the image, it could
be a another missing piece for me to track in the quest to better
support xattr.

There is a way to work around it, though — you can force the postinst
to be run on the target at first boot, as documented in that same
manual section. For example I have a test recipe with:

8<----snip--------

pkg_postinst_${PN}() {
    chown foo:foo $D${datadir}/xattrtest/xattrtest
    # Force setfacl to run on the target, not at image creation
    if [ x"$D" = "x" ]; then
        setfacl -m u:bar:r-- $D${datadir}/xattrtest/xattrtest
    else
        exit 1
    fi
}

USERADD_PACKAGES = "${PN}"
USERADD_PARAM_${PN} = "-m foo;-m bar"
RDEPENDS_${PN} += "acl"

8<----snip--------

which results in:

$ getfacl /usr/share/xattrtest/xattrtest
getfacl: Removing leading '/' from absolute path names
# file /usr/share/xattrtest/xattrtest
# owner: foo
# group: foo
user::rw-
user:bar:r--
group::r--
mask::r--
other::r--

The downside here is that your image has to include postinst support
and the acl package (per the RDEPENDS_${PN} line in the snippet above).

Regards,

Joshua

> 
> Regards
> Shrawan
> 
> 
> 
> 
> 
> -----Original Message-----
> From: Joshua G Lock [mailto:joshua.g.lock@linux.intel.com] 
> Sent: Friday, August 12, 2016 7:22 PM
> To: Kumar, Shrawan; yocto@yoctoproject.org
> Subject: Re: [yocto] Access Control List (ACL) permissions attributes
> not getting preserved in rootfs
> 
> On Fri, 2016-08-12 at 12:33 +0000, Kumar, Shrawan wrote:
> > 
> > Hello All,
> >  
> > I am  using  poky “ jethro”  , and  though  one of my recipe, I
> > have 
> > created user1 & user2 and then trying to set ACL rules  on 
> > “helloworld” bin as below :
> >  
> >  
> > do_install() {
> >                     install -d ${D}${bindir}
> >                     install -m 0700 helloworld ${D}${bindir}
> >                     install -d ${D}/lib/systemd/system
> >                     install -m 0700 hello.service 
> > ${D}/lib/systemd/system/
> >                     chown    user1:group1 ${D}${bindir}/helloworld
> >                    setfacl -m u:user2:r-- ${D}${bindir}/helloworld
> > }
> >  
> >  
> > è When I see   on the devshell ( bitbake HelloWorld –c devshell)  :
> > poky/build_qemux86/tmp/work/qemux86-poky-linux/core-image-
> > minimal/1.0-r0/rootfs/usr/bin# getfacl helloworld    , I could see 
> > that ACL permissions are set correctly as below :
> > -        # file: helloworld
> > -        # owner: user1
> > -        # group: group1
> > -        user::rwx
> > -        user:user2:r--
> > -        group::---
> > -        mask::r--
> > -        other::---
> >  
> > However, It does not seems to be getting preserved in rootfs. :
> > /poky/build_qemux86/tmp/work/qemux86-poky-linux/core-image-
> > minimal/1.0-r0/rootfs/usr/bin# getfacl helloworld # file:
> > helloworld # 
> > owner: user1 # group: group1 user::rwx
> > group::---
> > other::---
> >  
> > quick help  here would be highly appreciated
> 
> This is due to the fact that we don't currently have a mechanism to
> preserve xattr through to image construction[1].
> 
> The largest barrier for doig so is that the package managers
> (certainly dpkg and rpm) don't have any support for xattrs in
> packages (an image is populated via the package manager).
> 
> To the best of my knowledge the only option for adding some xattr/ACL
> is to use a postinst[2] to set the attributes after the package has
> been installed.
> 
> Regards,
> 
> Joshua
> 
> 1. https://bugzilla.yoctoproject.org/show_bug.cgi?id=9858
> 2. http://www.yoctoproject.org/docs/2.1/dev-manual/dev-manual.html#ne
> w-
> recipe-post-installation-scripts
> 

