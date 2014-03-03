Return-Path: <ross.burton@intel.com>
Received: from mail-qc0-f177.google.com (mail-qc0-f177.google.com
	[209.85.216.177])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id CEA21E00832
	for <yocto@yoctoproject.org>; Mon,  3 Mar 2014 04:18:02 -0800 (PST)
Received: by mail-qc0-f177.google.com with SMTP id w7so3549269qcr.22
	for <yocto@yoctoproject.org>; Mon, 03 Mar 2014 04:18:01 -0800 (PST)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
	d=1e100.net; s=20130820;
	h=x-gm-message-state:mime-version:in-reply-to:references:from:date
	:message-id:subject:to:cc:content-type:content-transfer-encoding;
	bh=UPkgT8LPxHekcKuQIN71NBK7/A+DiqiIXRL/Qjwu3JE=;
	b=TFnA8QvJWT0ZzjFuxfTYEFvwO2n8fVOcffjqNtMkffUsrJTmVR30B1YTg9n72vfdYh
	zmCHlO9ij9PThHf1kE+XvGoEBh7ZD57Eg3/X5sKR3aesno923C05TIfqsJLvVqKhCRH8
	iDh/UxiS+xkT58948D/d4ge2XYEhFZ7wmCaqUnTHaZp+VKqFoRN8URpLUZ8n9PmsciSP
	p7QARj4klrrRl5y2ewaeFGwdHB8EU71Fz/yhARTfDlC3wgh4RnwZrHXRLN/j5FkDzfie
	iy3ios5VnWXQhg2a3KgpuGbOpFIqa8w0LIF3A7x2pnFtlqYNjhLq1lk9uJvjqlfTFHVj
	vyGQ==
X-Gm-Message-State: ALoCoQmtUaD3qi+LSTtODhXEAgd6WJhuZoC0lzTf1DdDh+Hxx9+PxKwq01l7zJ+MPXmZJrB+Re4Y
X-Received: by 10.140.42.54 with SMTP id b51mr21537888qga.87.1393849081191;
	Mon, 03 Mar 2014 04:18:01 -0800 (PST)
MIME-Version: 1.0
Received: by 10.140.48.79 with HTTP; Mon, 3 Mar 2014 04:17:41 -0800 (PST)
In-Reply-To: <CAP71Wjxm7c0LoeHFQ+xPOcgbs4P5i2RRg0TJSGmWfe1xm4-mkw@mail.gmail.com>
References: <FF9E7E89-95A5-4383-8BAF-35B201407F20@keylevel.com>
	<CAP71Wjxm7c0LoeHFQ+xPOcgbs4P5i2RRg0TJSGmWfe1xm4-mkw@mail.gmail.com>
From: "Burton, Ross" <ross.burton@intel.com>
Date: Mon, 3 Mar 2014 12:17:41 +0000
Message-ID: <CAJTo0LYPv3WMjkW8-QWhzBx7SK6p7My4_jA40bS1aG8D46MuiQ@mail.gmail.com>
To: Nicolas Dechesne <nicolas.dechesne@linaro.org>
Cc: Yocto Project <yocto@yoctoproject.org>
Subject: Re: Package 'X' provides... what?
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
X-List-Received-Date: Mon, 03 Mar 2014 12:18:05 -0000
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On 3 March 2014 07:10, Nicolas Dechesne <nicolas.dechesne@linaro.org> wrote=
:
>> How do I find out what (e.g.) gstreamer1.0-plugins-base.bb actually prov=
ides? Once I've got it to build for one plugin I can go to the work directo=
ry to see what gets packaged to find the names of other plugins, but I can'=
t find a way in to start with. Is there some bitbake magic I can use to lis=
t what's provided by a recipe?
>
> you can try:
>
> bitbake -e gstreamer1.0-plugins-base | grep ^PACKAGES
>
> basically, you are looking for the content of the variable 'PACKAGES'

Note that for situations such as this you won't find
PACKAGES=3Dgstreamer1.0-plugins-base-playbin anywhere as the set of
plugins that a recipe can build is dynamic .  There'll be a
PACKAGES_DYNAMIC=3Dgstreamer1.0-plugins-* statement that tells bitbake
it will provide a set of packages matching a glob, but that's all.  No
way of going from -plugins-playbin to the gstreamer1.0-plugins-base.

Ross

