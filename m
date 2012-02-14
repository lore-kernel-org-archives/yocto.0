Return-Path: <jfabernathy@gmail.com>
Received: from mail-qy0-f176.google.com (mail-qy0-f176.google.com
	[209.85.216.176])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id 88FB6E0059B
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 04:47:11 -0800 (PST)
Received: by qcsd1 with SMTP id d1so4145769qcs.35
	for <yocto@yoctoproject.org>; Tue, 14 Feb 2012 04:47:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=gamma;
	h=subject:mime-version:content-type:from:in-reply-to:date:cc
	:content-transfer-encoding:message-id:references:to:x-mailer;
	bh=S9gl1pBVE0RsVl/+hGbt8MIdQZ/ZFWIYEflGRBG98Ic=;
	b=OO+IZJAKcWCpBmRyeavAYFds9FsQ61Jp32GsSjzr0G49omCHD2OG1cZcZ37Lrfo7hm
	uIDsffm9c9Rv3suV1YaG9z3frndfhfUK9E53cVb+3idaHaiVRNKQrGMQlVI/Ko0TqcNm
	AS6GoNsrqGVw4zmsWkZl73Ly+nkfP+t57JPBY=
Received: by 10.229.102.87 with SMTP id f23mr12258257qco.125.1329223630751;
	Tue, 14 Feb 2012 04:47:10 -0800 (PST)
Received: from [10.0.1.26] (nc-184-3-50-47.dhcp.embarqhsd.net. [184.3.50.47])
	by mx.google.com with ESMTPS id fp5sm3152982qab.1.2012.02.14.04.47.09
	(version=TLSv1/SSLv3 cipher=OTHER);
	Tue, 14 Feb 2012 04:47:09 -0800 (PST)
Mime-Version: 1.0 (Apple Message framework v1257)
From: James Abernathy <jfabernathy@gmail.com>
In-Reply-To: <857BE142E5399E46B20FD45B9DB8A7BC0FCE74AA@SHSMSX102.ccr.corp.intel.com>
Date: Tue, 14 Feb 2012 07:47:20 -0500
Message-Id: <EB4F5542-59F9-419E-87BC-AE9741520771@gmail.com>
References: <CA+FcS-zG0sxF34GjLSsp+505ov2cJASjwWrK+5PB6+Yt4JQ0DA@mail.gmail.com>
	<857BE142E5399E46B20FD45B9DB8A7BC0FCE74AA@SHSMSX102.ccr.corp.intel.com>
To: "Lu, Lianhao" <lianhao.lu@intel.com>
X-Mailer: Apple Mail (2.1257)
Cc: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
Subject: Re: How to find Log
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
X-List-Received-Date: Tue, 14 Feb 2012 12:47:11 -0000
Content-Type: text/plain; charset=us-ascii
Content-Transfer-Encoding: quoted-printable


On Feb 14, 2012, at 4:04 AM, Lu, Lianhao wrote:

> James W. wrote on 2012-02-14:
>> How to locate Log file while a error occur.
>=20
> It's under the directory ${WORKDIR}/temp/. Actually when an error =
occurs, you can find the specific log file in the output, something =
like.
>=20
> ERROR: Logfile of failure stored in:=20
> =
/intel/poky/builds/toolchain/tmp/work-shared/gcc-4.6.2+svnr181430-r22/temp=
/log.do_patch.15156
>=20
> Best Regards,
> Lianhao
>=20
>=20
I have a similar questions. If the error occurs and the console log =
information scrolls too far to get back to, how do I find the error log =
file then? I know what directory all the logs will be, but is there an =
easy way to find the one with the error??

Jim A

> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto


