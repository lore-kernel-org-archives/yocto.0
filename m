Return-Path: <Qi.Chen@windriver.com>
Received: from mail.windriver.com (mail.windriver.com [147.11.1.11])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id ABEDEE01524
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 19:04:54 -0700 (PDT)
Received: from ALA-HCA.corp.ad.wrs.com (ala-hca.corp.ad.wrs.com
	[147.11.189.40])
	by mail.windriver.com (8.14.5/8.14.3) with ESMTP id r6Q24qbB004171
	(version=TLSv1/SSLv3 cipher=AES128-SHA bits=128 verify=FAIL)
	for <yocto@yoctoproject.org>; Thu, 25 Jul 2013 19:04:52 -0700 (PDT)
Received: from [128.224.162.233] (128.224.162.233) by ALA-HCA.corp.ad.wrs.com
	(147.11.189.50) with Microsoft SMTP Server (TLS) id 14.2.342.3;
	Thu, 25 Jul 2013 19:04:52 -0700
Message-ID: <51F1D946.4090207@windriver.com>
Date: Fri, 26 Jul 2013 10:04:54 +0800
From: ChenQi <Qi.Chen@windriver.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64;
	rv:17.0) Gecko/20130623 Thunderbird/17.0.7
MIME-Version: 1.0
To: <yocto@yoctoproject.org>
References: <51F1BB68.6010204@gna.org>
In-Reply-To: <51F1BB68.6010204@gna.org>
X-Originating-IP: [128.224.162.233]
Subject: Re: Detecting build type within recipe (target, native or nativesdk)
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
X-List-Received-Date: Fri, 26 Jul 2013 02:04:54 -0000
Content-Type: text/plain; charset="ISO-8859-1"; format=flowed
Content-Transfer-Encoding: 7bit

On 07/26/2013 07:57 AM, Christian Gagneraud wrote:
> Hi there,
>
> Is there a way to detect what kind of build is going on (target, 
> native or nativesdk) from within a recipe or a class?
>
> Basically when using 'BBCLASSEXTEND = "native nativesdk"', how can I 
> tweak the build behaviour depending of the build type?
>
> Does anyone know an example recipe I could use as a reference for 
> doing these kind of things?
>
> Regards,
> Chris
> _______________________________________________
> yocto mailing list
> yocto@yoctoproject.org
> https://lists.yoctoproject.org/listinfo/yocto
>
>
1. Use suffixes such as _class-native, _class-target, etc.
I think this is the preferred way.
Please grep the repo for more info.

2. Use ${PN} value.
e.g. (from dpkg.inc)
do_install_append () {
         if [ "${PN}" = "dpkg-native" ]; then
                 # update-alternatives doesn't have an offline mode
                 rm ${D}${bindir}/update-alternatives
                 sed -i -e 
's|^#!.*${bindir}/perl-native.*/perl|#!/usr/bin/env nativeperl|' 
${D}${bindir}/dpkg-*
         else
                 mv ${D}${bindir}/update-alternatives ${D}${sbindir}
                 sed -i -e 
's|^#!.*${bindir}/perl-native.*/perl|#!/usr/bin/env perl|' 
${D}${bindir}/dpkg-*
         fi
}

Best Regards,
Chen Qi


