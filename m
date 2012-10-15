Return-Path: <marc.ferland@gmail.com>
Received: from mail-qa0-f41.google.com (mail-qa0-f41.google.com
	[209.85.216.41])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id B14E4E0027E
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 11:55:35 -0700 (PDT)
Received: by mail-qa0-f41.google.com with SMTP id p27so1866521qat.14
	for <yocto@yoctoproject.org>; Mon, 15 Oct 2012 11:55:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20120113;
	h=sender:from:to:subject:references:date:in-reply-to:message-id
	:user-agent:mime-version:content-type;
	bh=Yre1UbIj+mr2FtfnfCvQaaMqfuihmY3OwrZlyPcaGok=;
	b=hDp1bpmbDEQQiuEwS9X/F6KaFAu/wtf08lVrdKLnKEMUAYhLGL8NB/UeV/YCNnNmNP
	nQ1xBkyDqiaSQ5ntcUorenQif1X7qtnPa1qEzvaudqApsuhQA1jvyHVNwOkss5/4mKdU
	WMfTxj1aioglPYClp+l7+BWLoJeCajGAKB6x/YpP0S+Cz+HveQVCDGlzRJ6RnUkfQOJm
	bu8JtPbxCl+SwYo9G8QrKDR8eTEw3AoXy3RgQ5fnnDMGhJYM12Cs6ESCzzOorMwXz2tV
	mIzGWByyMSnpXwMtj0dMJJrFCKaUNsClFR8xInHKjF0Gdf+cHsVFLZMAsqb4vDXBOScw
	bdEA==
Received: by 10.49.48.43 with SMTP id i11mr24518153qen.10.1350327332751;
	Mon, 15 Oct 2012 11:55:32 -0700 (PDT)
Received: from ferlandm@sonatest.com
	(modemcable066.15-37-24.static.videotron.ca. [24.37.15.66])
	by mx.google.com with ESMTPS id f12sm14792784qey.5.2012.10.15.11.55.29
	(version=TLSv1/SSLv3 cipher=OTHER);
	Mon, 15 Oct 2012 11:55:31 -0700 (PDT)
Sender: Marc Ferland <marc.ferland@gmail.com>
Received: by ferlandm@sonatest.com (sSMTP sendmail emulation);
	Mon, 15 Oct 2012 14:55:28 -0400
From: Marc Ferland <ferlandm@sonatest.com>
To: yocto@yoctoproject.org
References: <87hapzvgqn.fsf@sonatest.com>
	<20121015060147.GB9736@ad.chargestorm.se>
Date: Mon, 15 Oct 2012 14:55:28 -0400
In-Reply-To: <20121015060147.GB9736@ad.chargestorm.se> (Anders Darander's
	message of "Mon, 15 Oct 2012 08:01:48 +0200")
Message-ID: <87k3urmuov.fsf@sonatest.com>
User-Agent: Gnus/5.13 (Gnus v5.13) Emacs/24.1 (gnu/linux)
MIME-Version: 1.0
Subject: Re: Revision file in images
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
X-List-Received-Date: Mon, 15 Oct 2012 18:55:35 -0000
Content-Type: text/plain

Anders Darander <anders@chargestorm.se> writes:

> * Marc Ferland <ferlandm@sonatest.com> [121012 17:40]:
>
>> Hi,
>
>> Is a revision file populated in the images produced by the build process?
>> Something listing the revisions of the different layers used. Just like
>> the "OE Build Configuration" summary.
>
> As Saul wrote, I don't know any way of getting this info.
>
>
>> I'd like to easily identify what a target system currently runs.
>
> In my own project, I'm using something like:
>
>
> IMAGE_PREPROCESS_COMMAND += "rootfs_update_timestamp ;\
>              git describe --dirty --long --always
>>${IMAGE_ROOTFS}/etc/build ;\
>              "
>
> This doesn't explicitly put the SHA1's of the included layers into the
> rootfs, but it does put my the most recent tag from my top-layer,
> together with the number of commits after that tag, and an abreviated version
> of the current commits SHA1 into the file /etc/build. This will give me
> all info I need.
>
FYI, I was able to put the SHA1 of each meta data layer by doing:

def print_layers_version(d):
	layertext = "Configured metadata layers:\n%s\n" % '\n'.join(get_layers_branch_rev(d))
	return layertext

IMAGE_PREPROCESS_COMMAND += "echo "${@print_layers_version(d)}" > /
${IMAGE_ROOTFS}/etc/build; "

Marc

