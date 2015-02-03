Return-Path: <Thomas.Moore2@atk.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 77EB3E00828; Tue,  3 Feb 2015 14:26:06 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-1.9 required=5.0 tests=BAYES_00,SPF_HELO_PASS
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.0 SPF_HELO_PASS SPF: HELO matches SPF record
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-ut.atk.com (mx-ut.atk.com [192.107.250.84])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id F2F09E00757
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 14:25:58 -0800 (PST)
Received: from unknown (HELO UT40SVEH3.atk.com) ([146.168.70.140])
	by mx-ut.atk.com with ESMTP; 03 Feb 2015 16:19:28 -0600
Received: from UT40SVCWEM001.atk.com ([169.254.4.192]) by UT40SVEH3.atk.com
	([146.168.78.8]) with mapi id 14.03.0174.001;
	Tue, 3 Feb 2015 15:25:57 -0700
From: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>
To: Randy Witt <randy.e.witt@linux.intel.com>, "yocto@yoctoproject.org"
	<yocto@yoctoproject.org>
Thread-Topic: [yocto] Identifying image in os-release
Thread-Index: AdA/6KMO8umNP6amR1usyg4OeValOAAROtQAAAtcTTA=
Date: Tue, 3 Feb 2015 22:25:56 +0000
Message-ID: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7447DB@UT40SVCWEM001.atk.com>
References: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7446EF@UT40SVCWEM001.atk.com>
	<54D13450.4040208@linux.intel.com>
In-Reply-To: <54D13450.4040208@linux.intel.com>
Accept-Language: en-US
X-MS-Has-Attach: 
X-MS-TNEF-Correlator: 
x-originating-ip: [10.99.32.35]
MIME-Version: 1.0
Subject: Re: Identifying image in os-release
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
X-List-Received-Date: Tue, 03 Feb 2015 22:26:06 -0000
Content-Language: en-US
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: quoted-printable

Randy,

Thanks for the tip. Here's what I ended up with:

add_releaseinfo () {
    sed -i "/NAME=3D/s/${DISTRO_NAME}/${DISTRO_NAME} (Debug)/" ${IMAGE_ROOT=
FS}/${sysconfdir}/os-release
}

ROOTFS_POSTPROCESS_COMMAND +=3D " add_releaseinfo ; "

Thomas=20


-----Original Message-----
From: Randy Witt [mailto:randy.e.witt@linux.intel.com]=20
Sent: Tuesday, February 03, 2015 2:49 PM
To: Moore, Thomas (FtWorth); yocto@yoctoproject.org
Subject: Re: [yocto] Identifying image in os-release

On 02/03/2015 11:42 AM, Moore, Thomas (FtWorth) wrote:
> For my system, we are generating two images: a release image and a debug =
image. The debug image simply adds the debug image features (tools-debug, e=
clipse-debug, and dbg-pkgs). This approach looks like it is going to work w=
ell for our needs. However, the one issue that I have is that there doesn't=
 appear to be a way to easily tell which image is running. My current plan =
for version identification is to make use of the /etc/os-release file that =
is generated during the build, which is suitable for determining the versio=
n of the base distribution. However, I can't find a way to influence any of=
 those values from within my image recipes, which I image is by design.
>
> It would seem to me that having a way to assign a version, or some other =
identifying information, to a final image would be very important. The DIST=
RO_VERSION is nice, but it doesn't seem like it's enough considering that y=
ou can write an image recipe to add any number of additional packages.
>
> Any suggestions on how I can achieve this?

If you are willing to use a file other than os-release, I've often seen thi=
s done using a function in ROOTFS_POSTPROCESS_COMMAND https://www.yoctoproj=
ect.org/docs/1.7/ref-manual/ref-manual.html#var-ROOTFS_POSTPROCESS_COMMAND.=
=20
For example:

add_releaseinfo () {
     echo "foo: ${FOOVAR}" > ${IMAGE_ROOTFS}/${sysconfdir}/somefile
     echo "bar: ${BARVAR}" >> ${IMAGE_ROOTFS}/${sysconfdir}/somefile
}

ROOTFS_POSTPROCESS_COMMAND +=3D " add_releaseinfo ; "
> Thanks,
>
> Thomas
>
>


