Return-Path: <randy.e.witt@linux.intel.com>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 9EE45E0076F; Tue,  3 Feb 2015 12:49:35 -0800 (PST)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-6.9 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_HI
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -5.0 RCVD_IN_DNSWL_HI RBL: Sender listed at
	http://www.dnswl.org/, high *      trust
	*      [134.134.136.20 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mga02.intel.com (mga02.intel.com [134.134.136.20])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 7AA95E005B4
	for <yocto@yoctoproject.org>; Tue,  3 Feb 2015 12:49:31 -0800 (PST)
Received: from orsmga002.jf.intel.com ([10.7.209.21])
	by orsmga101.jf.intel.com with ESMTP; 03 Feb 2015 12:49:21 -0800
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.09,514,1418112000"; d="scan'208";a="680408522"
Received: from localhost.jf.intel.com (HELO [10.7.201.167]) ([10.7.201.167])
	by orsmga002.jf.intel.com with ESMTP; 03 Feb 2015 12:49:21 -0800
Message-ID: <54D13450.4040208@linux.intel.com>
Date: Tue, 03 Feb 2015 12:49:20 -0800
From: Randy Witt <randy.e.witt@linux.intel.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:31.0) Gecko/20100101 Thunderbird/31.3.0
MIME-Version: 1.0
To: "Moore, Thomas (FtWorth)" <Thomas.Moore2@ATK.COM>, 
	"yocto@yoctoproject.org" <yocto@yoctoproject.org>
References: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7446EF@UT40SVCWEM001.atk.com>
In-Reply-To: <7B6FE55CD594D7478CED8A39DF3BFC0A5E7446EF@UT40SVCWEM001.atk.com>
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
X-List-Received-Date: Tue, 03 Feb 2015 20:49:35 -0000
Content-Type: text/plain; charset=windows-1252; format=flowed
Content-Transfer-Encoding: 7bit

On 02/03/2015 11:42 AM, Moore, Thomas (FtWorth) wrote:
> For my system, we are generating two images: a release image and a debug image. The debug image simply adds the debug image features (tools-debug, eclipse-debug, and dbg-pkgs). This approach looks like it is going to work well for our needs. However, the one issue that I have is that there doesn't appear to be a way to easily tell which image is running. My current plan for version identification is to make use of the /etc/os-release file that is generated during the build, which is suitable for determining the version of the base distribution. However, I can't find a way to influence any of those values from within my image recipes, which I image is by design.
>
> It would seem to me that having a way to assign a version, or some other identifying information, to a final image would be very important. The DISTRO_VERSION is nice, but it doesn't seem like it's enough considering that you can write an image recipe to add any number of additional packages.
>
> Any suggestions on how I can achieve this?

If you are willing to use a file other than os-release, I've often seen this 
done using a function in ROOTFS_POSTPROCESS_COMMAND 
https://www.yoctoproject.org/docs/1.7/ref-manual/ref-manual.html#var-ROOTFS_POSTPROCESS_COMMAND. 
For example:

add_releaseinfo () {
     echo "foo: ${FOOVAR}" > ${IMAGE_ROOTFS}/${sysconfdir}/somefile
     echo "bar: ${BARVAR}" >> ${IMAGE_ROOTFS}/${sysconfdir}/somefile
}

ROOTFS_POSTPROCESS_COMMAND += " add_releaseinfo ; "
> Thanks,
>
> Thomas
>
>


