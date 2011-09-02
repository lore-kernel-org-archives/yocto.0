Return-Path: <mark.hatle@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 1C5BDE00320
	for <yocto@yoctoproject.org>; Fri,  2 Sep 2011 11:56:08 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca [147.11.189.40])
	by mail.windriver.com (8.14.3/8.14.3) with ESMTP id p82Iu6Fu021382
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL);
	Fri, 2 Sep 2011 11:56:06 -0700 (PDT)
Received: from Macintosh-5.local (172.25.36.227) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server id 14.1.255.0;
	Fri, 2 Sep 2011 11:56:05 -0700
Message-ID: <4E6126C4.5020303@windriver.com>
Date: Fri, 2 Sep 2011 13:56:04 -0500
From: Mark Hatle <mark.hatle@windriver.com>
Organization: Wind River Systems
User-Agent: Mozilla/5.0 (Macintosh; Intel Mac OS X 10.6;
	rv:6.0.1) Gecko/20110830 Thunderbird/6.0.1
MIME-Version: 1.0
To: McClintock Matthew-B29882 <B29882@freescale.com>
References: <D5AB6E638E5A3E4B8F4406B113A5A19A12D73C60DC@shsmsx501.ccr.corp.intel.com>
	<4E60F024.4030000@windriver.com>
	<CAEsOVNcKFXTJ9WhvVsoO4q-T6zFLhN96_wLnMySW2oyo6ZCcNw@mail.gmail.com>
	<4E60FAC3.5030100@windriver.com>
	<CAEsOVNfiWqV18ZaFJC5ZnzRx3fkrnLHXoJYOdbR0Cuud8tWEXw@mail.gmail.com>
	<4E610DDA.9040701@windriver.com>
	<CAEsOVNczt5gLjp_FoF_voMbwSJ1ft8TNz5hdQvheQ20Lo3Sq0Q@mail.gmail.com>
In-Reply-To: <CAEsOVNczt5gLjp_FoF_voMbwSJ1ft8TNz5hdQvheQ20Lo3Sq0Q@mail.gmail.com>
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: RPM multilib package installation issue
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
List-Id: Discussion of all things Yocto <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 02 Sep 2011 18:56:08 -0000
Content-Type: text/plain; charset="ISO-8859-1"
Content-Transfer-Encoding: 7bit

On 9/2/11 1:36 PM, McClintock Matthew-B29882 wrote:
> On Fri, Sep 2, 2011 at 12:09 PM, Mark Hatle <mark.hatle@windriver.com> wrote:
>> For everything I see, that should work.
>>
>> In classes/image.bbclass, RDEPENDS is augmented by the contents of
>> IMAGE_INSTALL, LINGUAS_INSTALL, MULTILIB_IMAGE_INSTALL, and NORMAL_FEATURE_INSTALL.
> 
> The bitbake side is fine, It's getting put into RDEPENDS and all the
> packages are beinh built properly. RPMs are built as well.
> 
>> The place to start looking for this is within the log.do_rootfs in the rootfs
>> directory you are working on.  You should see something that indicates it's
>> trying to install the "lib64-perl".  (in the case of RPM, it should eventually
>> rename it to "perl" -- but choose the 64-bit version.)
> 
> However, I don't see code that invokes package_rpm.bbclass properly.
> It looks like it could work, but no where is MLPREFIX set for image.
> There is some override or something missing on my end or in the code
> to properly export these vars for the ML rpm install scenario.
> 
> Further more, from what I see no where in rootfs_rpm.bbclass do we
> pass MULTILIB_PACKAGE_INSTALL into the list of packages to be
> installed... thus they fall off. ipk looks like it might have this
> stuff done.

This looks like a typo of some sorts:

image.bbclass:RDEPENDS += "${IMAGE_INSTALL} ${LINGUAS_INSTALL}
${MULTILIB_IMAGE_INSTALL} ${NORMAL_FEATURE_INSTALL}"

image.bbclass:export MULTILIB_PACKAGE_INSTALL ?= "${MULTILIB_IMAGE_INSTALL}"

So you should be setting MULTILIB_IMAGE_INSTALL, this should feed into the
RDEPENDS and that should in turn seed the roofs stuff..  So there looks to be a
disconnect of some sort between the implementation of the image.bbclass and the
individual package_*.bbclasses.

(The only place I see MULTILIB_PACKAGE_INSTALL is in rootfs_ipk.bbclass.)

The way the rootfs_rpm (which uses package_rpm) gets the list of things to
install is via:

package_linguas=INSTALL_PACKAGES_LINGUAS_RPM=LINGUAS_INSTALL

package_to_install=INSTALL_PACKAGES_NORMAL_RPM=PACKAGE_INSTALL="${IMAGE_INSTALL}
 ${FEATURE_INSTALL}"

package_attemptonly=INSTALL_PACKAGES_ATTEMPTONLY_RPM=PACKAGE_INSTALL_ATTEMPTONLY=FEATURE_INSTALL_OPTIONAL

Where you see RPM above, replace with ipk and deb and the same ordering should
be used.  So based on that, RDEPENDS is being populated from the
"image.bbclass", but nothing is populating the MULTILIB_IMAGE_INSTALL like it
should be.  Either it needs to be added to the 'PACKAGE_INSTALL' or something
similar needs to be invented and added to each of the rootfs_* types.  (Note,
there needs to be a translation step between the definition of
MULTILIB_IMAGE_INSTALL and where it's used.. since things like "zlib" can become
"libz1" via name translation.  (translation happens in runtime_mapping_rename if
I remember correctly.. in image.bbclass)

I'd suggest you file a bug about this in the yocto system.  We'll get someone to
work on it...  (I agree it's broken BTW..)  The ipk usage may turn out to be an
example for the deb and rpm usage... but the three should continue to be in sync
for most of it.

--Mark

> -M
> 
> -M


