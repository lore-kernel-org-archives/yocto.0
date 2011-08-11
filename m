Return-Path: <sgw@linux.intel.com>
Received: from mga01.intel.com (mga01.intel.com [192.55.52.88])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 2DDA7E011BC
	for <yocto@yoctoproject.org>; Thu, 11 Aug 2011 08:29:31 -0700 (PDT)
Received: from fmsmga002.fm.intel.com ([10.253.24.26])
	by fmsmga101.fm.intel.com with ESMTP; 11 Aug 2011 08:29:40 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="4.67,356,1309762800"; d="scan'208";a="38258114"
Received: from unknown (HELO [10.255.14.248]) ([10.255.14.248])
	by fmsmga002.fm.intel.com with ESMTP; 11 Aug 2011 08:29:40 -0700
Message-ID: <4E43F564.8090305@linux.intel.com>
Date: Thu, 11 Aug 2011 08:29:40 -0700
From: Saul Wold <sgw@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; U; Linux x86_64; en-US;
	rv:1.9.2.17) Gecko/20110428 Fedora/3.1.10-1.fc13 Thunderbird/3.1.10
MIME-Version: 1.0
To: jani.uusi-rantala@nokia.com
References: <B497E783C723AE4386DDEA96AF1D2B989EB3D4@008-AM1MPN1-011.mgdnok.nokia.com>
In-Reply-To: <B497E783C723AE4386DDEA96AF1D2B989EB3D4@008-AM1MPN1-011.mgdnok.nokia.com>
Cc: yocto@yoctoproject.org
Subject: Re: Magic/File problems
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
X-List-Received-Date: Thu, 11 Aug 2011 15:29:31 -0000
Content-Type: text/plain; charset=ISO-8859-1; format=flowed
Content-Transfer-Encoding: 7bit


Jani,

This patch looks good, can you please do a proper git patch with a 
Signed-off-by: line.

For details please refer to

http://wiki.openembedded.org/index.php/Commit_Patch_Message_Guidelines

The patch should be sent to: openembedded-core@lists.openembedded.org

Thanks for this fix, it will fix a Yocto bug

http://bugzilla.pokylinux.org/show_bug.cgi?id=1358

So please include [YOCTO #1358] in your git commit message.

Thanks again

	Sau!


On 08/09/2011 08:57 AM, jani.uusi-rantala@nokia.com wrote:
> I was experiencing same issue today with latest Yocto master
> ca394457c5d7b2cb4544de7ce2d29008ec6173ae (in Fedora R15):
>
> | error: magic_load(ms, /usr/share/misc/magic) failed: File 5.4 supports
> only version 7 magic files. `/usr/share/misc/magic.mgc' is version 8
> | rpmbuild.real: rpmfc.c:1154: rpmfcClassify: Assertion `mg != ((void
> *)0)' failed.
>
>
> This seems to be a problem with rpmbuild using the wrong magic file from
> rpmfcClassify. This kind of simple fix in package_rpm.class appears to work:
>
> Defines _rpmfc_magic_path variable:
>
> diff --git a/meta/classes/package_rpm.bbclass
> b/meta/classes/package_rpm.bbclass
> index ddbfc09..3f00857 100644
> --- a/meta/classes/package_rpm.bbclass
> +++ b/meta/classes/package_rpm.bbclass
> @@ -822,6 +822,8 @@ python do_package_rpm () {
> targetvendor = bb.data.getVar('TARGET_VENDOR', d, True)
> pkgwritedir = bb.data.expand('${PKGWRITEDIRRPM}/${PACKAGE_ARCH}', d)
> pkgarch = bb.data.expand('${PACKAGE_ARCH}', d)
> + magicfile =
> bb.data.expand('${STAGING_DIR_NATIVE}/usr/share/misc/magic.mgc', d)
> +
> bb.mkdirhier(pkgwritedir)
> os.chmod(pkgwritedir, 0755)
>
> @@ -834,7 +836,7 @@ python do_package_rpm () {
> cmd = cmd + " --define '__find_provides " + outprovides + "'"
> cmd = cmd + " --define '_unpackaged_files_terminate_build 0'"
> cmd = cmd + " --define 'debug_package %{nil}'"
> + cmd = cmd + " --define '_rpmfc_magic_path " + magicfile + "'"
> cmd = cmd + " -bb " + outspecfile
>
>
> - Jani
>
>
>
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto

