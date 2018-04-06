Return-Path: <florian.doersch@iis.fraunhofer.de>
Received: by yocto-www.yoctoproject.org (Postfix, from userid 118)
	id 50413E00C4F; Thu,  5 Apr 2018 23:53:17 -0700 (PDT)
X-Spam-Checker-Version: SpamAssassin 3.3.1 (2010-03-16) on
	yocto-www.yoctoproject.org
X-Spam-Level: 
X-Spam-Status: No, score=-2.6 required=5.0 tests=BAYES_00,RCVD_IN_DNSWL_LOW
	autolearn=ham version=3.3.1
X-Spam-HAM-Report: * -0.7 RCVD_IN_DNSWL_LOW RBL: Sender listed at
	http://www.dnswl.org/, low *      trust
	*      [94.100.133.214 listed in list.dnswl.org]
	* -1.9 BAYES_00 BODY: Bayes spam probability is 0 to 1%
	*      [score: 0.0000]
Received: from mx-relay38-hz1.antispameurope.com
	(mx-relay38-hz1.antispameurope.com [94.100.133.214])
	by yocto-www.yoctoproject.org (Postfix) with ESMTP id C4B97E00823
	for <yocto@yoctoproject.org>; Thu,  5 Apr 2018 23:53:15 -0700 (PDT)
Received: from mailgw1.iis.fraunhofer.de ([153.96.172.4]) by
	mx-relay38-hz1.antispameurope.com; Fri, 06 Apr 2018 08:53:09 +0200
Received: from mail.iis.fraunhofer.de (mail03.iis.fhg.de [153.96.171.212])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-SHA384 (256/256 bits))
	(No client certificate requested)
	by mailgw1.iis.fraunhofer.de (Postfix) with ESMTPS id D4CA32400081
	for <yocto@yoctoproject.org>; Fri,  6 Apr 2018 08:53:08 +0200 (CEST)
Received: from [10.12.70.78] (153.96.171.210) by mail03.iis.fhg.de
	(2001:638:a0a:1111:314f:f22c:4a37:b25a) with Microsoft SMTP Server
	(TLS) id 15.0.1365.1; Fri, 6 Apr 2018 08:53:08 +0200
To: "yocto@yoctoproject.org" <yocto@yoctoproject.org>
From: Florian Doersch <florian.doersch@iis.fraunhofer.de>
Message-ID: <b3101c2c-8462-98fe-5c40-a0279f7d383a@iis.fraunhofer.de>
Date: Fri, 6 Apr 2018 08:53:08 +0200
User-Agent: Mozilla/5.0 (Windows NT 6.1; WOW64; rv:52.0) Gecko/20100101
	Thunderbird/52.6.0
MIME-Version: 1.0
X-Originating-IP: [153.96.171.210]
X-ClientProxiedBy: mail03.iis.fhg.de (2001:638:a0a:1111:314f:f22c:4a37:b25a)
	To mail03.iis.fhg.de (2001:638:a0a:1111:314f:f22c:4a37:b25a)
X-cloud-security-sender: florian.doersch@iis.fraunhofer.de
X-cloud-security-recipient: yocto@yoctoproject.org
X-cloud-security-crypt: load encryption module
X-cloud-security-Virusscan: CLEAN
X-cloud-security-disclaimer: This E-Mail was scanned by E-Mailservice on
	mx-relay38-hz1.antispameurope.com with E31D568B3C
X-cloud-security-connect: mailgw1.iis.fraunhofer.de[153.96.172.4], TLS=1,
	IP=153.96.172.4
X-cloud-security: scantime:.2269
Subject: pyro: missing ldconfig
X-BeenThere: yocto@yoctoproject.org
X-Mailman-Version: 2.1.13
Precedence: list
Reply-To: Florian Doersch <florian.doersch@iis.fraunhofer.de>
List-Id: Discussion of all things Yocto Project <yocto.yoctoproject.org>
List-Unsubscribe: <https://lists.yoctoproject.org/options/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=unsubscribe>
List-Archive: <http://lists.yoctoproject.org/pipermail/yocto>
List-Post: <mailto:yocto@yoctoproject.org>
List-Help: <mailto:yocto-request@yoctoproject.org?subject=help>
List-Subscribe: <https://lists.yoctoproject.org/listinfo/yocto>,
	<mailto:yocto-request@yoctoproject.org?subject=subscribe>
X-List-Received-Date: Fri, 06 Apr 2018 06:53:17 -0000
Content-Type: text/plain; charset="utf-8"; format=flowed
Content-Transfer-Encoding: 7bit

Hi,

I recently updated from pyro 2.3.3 to latest pyro branch for my 
raspberry3 and ran into the following problem trying to create the 
toolchain via:

`bitbake meta-toolchain -c populate_sdk`

```
ERROR: meta-toolchain-1.0-r7 do_populate_sdk: Unable to remove packages. 
Command 
'['/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-ctgen-linux-gnueabi/meta-toolchain/1.0-r7/recipe-sysroot-native/usr/bin/dpkg', 
'--admindir=/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-ctgen-linux-gnueabi/meta-toolchain/1.0-r7/sdk/image/var/lib/dpkg', 
'--instdir=/yocto/build/tmp/work/cortexa7hf-neon-vfpv4-ctgen-linux-gnueabi/meta-toolchain/1.0-r7/sdk/image', 
'-P', '--force-depends', 
'nativesdk-glibc-binary-localedata-hsb-de.utf-8', 
'nativesdk-glibc-binary-localedata-uk-ua.utf-8', 
'nativesdk-glibc-binary-localedata-en-dk.utf-8', 
'nativesdk-glibc-binary-localedata-om-ke.utf-8', 
'nativesdk-glibc-binary-localedata-en-au.utf-8', 
'nativesdk-glibc-binary-localedata-ar-sa.utf-8', 
'nativesdk-glibc-binary-localedata-ar-ye.utf-8', 
'nativesdk-glibc-binary-localedata-ga-ie.utf-8', 
'nativesdk-glibc-binary-localedata-wa-be.utf-8', 
'nativesdk-glibc-binary-localedata-es-bo.utf-8', 
'nativesdk-glibc-binary-localedata-pl-pl.utf-8', 
'nativesdk-glibc-binary-localedata-fr-fr.utf-8', 
'nativesdk-glibc-binary-localedata-lg-ug.utf-8', 
'nativesdk-glibc-binary-localedata-de-lu.utf-8', 
'nativesdk-glibc-binary-localedata-ca-fr.utf-8', 
'nativesdk-glibc-binary-localedata-es-gt.utf-8', 
'nativesdk-glibc-binary-localedata-fr-be.utf-8', 
'nativesdk-glibc-binary-localedata-ar-qa.utf-8', 
'nativesdk-glibc-binary-localedata-ja-jp.utf-8', 
'nativesdk-glibc-binary-localedata-en-nz.utf-8', 
'nativesdk-glibc-binary-localedata-es-pe.utf-8', 
'nativesdk-glibc-binary-localedata-fo-fo.utf-8', 
'nativesdk-glibc-binary-localedata-en-hk.utf-8', 
'nativesdk-glibc-binary-localedata-ms-my.utf-8', 
'nativesdk-glibc-binary-localedata-so-ke.utf-8', 
'nativesdk-glibc-binary-localedata-gv-gb.utf-8', 
'nativesdk-glibc-binary-localedata-ar-jo.utf-8', 
'nativesdk-glibc-binary-localedata-it-ch.utf-8', 
'nativesdk-glibc-binary-localedata-mi-nz.utf-8', 
'nativesdk-glibc-binary-localedata-sk-sk.utf-8', 
'nativesdk-glibc-binary-localedata-lv-lv.utf-8', 
'nativesdk-glibc-binary-localedata-ka-ge.utf-8', 
'nativesdk-glibc-binary-localedata-es-sv.utf-8', 
'nativesdk-glibc-binary-localedata-tr-tr.utf-8', 
'nativesdk-glibc-binary-localedata-en-sg.utf-8', 
'nativesdk-glibc-binary-localedata-ar-kw.utf-8', 
'nativesdk-glibc-binary-localedata-nb-no.utf-8', 
'nativesdk-glibc-binary-localedata-ar-ma.utf-8', 
'nativesdk-glibc-binary-localedata-ar-om.utf-8', 
'nativesdk-glibc-binary-localedata-nl-be.utf-8', 
'nativesdk-glibc-binary-localedata-sl-si.utf-8', 
'nativesdk-glibc-binary-localedata-is-is.utf-8', 
'nativesdk-glibc-binary-localedata-ar-sy.utf-8', 
'nativesdk-glibc-binary-localedata-sv-se.utf-8', 
'nativesdk-glibc-binary-localedata-en-us.utf-8', 
'nativesdk-glibc-binary-localedata-zh-hk.utf-8', 
'nativesdk-glibc-binary-localedata-gl-es.utf-8', 
'nativesdk-glibc-binary-localedata-so-so.utf-8', 
'nativesdk-glibc-binary-localedata-ru-ua.utf-8', 
'nativesdk-glibc-binary-localedata-it-it.utf-8', 
'nativesdk-glibc-binary-localedata-eu-es.utf-8', 
'nativesdk-glibc-binary-localedata-es-ni.utf-8', 
'nativesdk-glibc-binary-localedata-ar-bh.utf-8', 
'nativesdk-glibc-binary-localedata-so-dj.utf-8', 
'nativesdk-glibc-binary-localedata-fr-ch.utf-8', 
'nativesdk-glibc-binary-localedata-de-ch.utf-8', 
'nativesdk-glibc-binary-localedata-tl-ph.utf-8', 
'nativesdk-glibc-binary-localedata-en-ie.utf-8', 
'nativesdk-glibc-binary-localedata-fi-fi.utf-8', 
'nativesdk-glibc-binary-localedata-es-pa.utf-8', 
'nativesdk-glibc-binary-localedata-ar-sd.utf-8', 
'nativesdk-glibc-binary-localedata-et-ee.utf-8', 
'nativesdk-glibc-binary-localedata-bhb-in.utf-8', 
'nativesdk-glibc-binary-localedata-ru-ru.utf-8', 
'nativesdk-glibc-binary-localedata-de-at.utf-8', 
'nativesdk-glibc-binary-localedata-yi-us.utf-8', 
'nativesdk-glibc-binary-localedata-fr-ca.utf-8', 
'nativesdk-glibc-binary-localedata-de-it.utf-8', 
'nativesdk-glibc-binary-localedata-st-za.utf-8', 
'nativesdk-glibc-binary-localedata-ca-es.utf-8', 
'nativesdk-glibc-binary-localedata-fr-lu.utf-8', 
'nativesdk-glibc-binary-localedata-es-ve.utf-8', 
'nativesdk-glibc-binary-localedata-ar-ly.utf-8', 
'nativesdk-glibc-binary-localedata-mk-mk.utf-8', 
'nativesdk-glibc-binary-localedata-ca-ad.utf-8', 
'nativesdk-glibc-binary-localedata-el-cy.utf-8', 
'nativesdk-glibc-binary-localedata-es-us.utf-8', 
'nativesdk-glibc-binary-localedata-gd-gb.utf-8', 
'nativesdk-glibc-binary-localedata-es-hn.utf-8', 
'nativesdk-glibc-binary-localedata-ar-eg.utf-8', 
'nativesdk-glibc-binary-localedata-ar-dz.utf-8', 
'nativesdk-glibc-binary-localedata-da-dk.utf-8', 
'nativesdk-glibc-binary-localedata-sq-al.utf-8', 
'nativesdk-glibc-binary-localedata-kk-kz.utf-8', 
'nativesdk-glibc-binary-localedata-es-uy.utf-8', 
'nativesdk-glibc-binary-localedata-en-zw.utf-8', 
'nativesdk-glibc-binary-localedata-oc-fr.utf-8', 
'nativesdk-glibc-binary-localedata-ar-lb.utf-8', 
'nativesdk-glibc-binary-localedata-ar-iq.utf-8', 
'nativesdk-glibc-binary-localedata-mt-mt.utf-8', 
'nativesdk-glibc-binary-localedata-ast-es.utf-8', 
'nativesdk-glibc-binary-localedata-zh-cn.utf-8', 
'nativesdk-glibc-binary-localedata-kw-gb.utf-8', 
'nativesdk-glibc-binary-localedata-xh-za.utf-8', 
'nativesdk-glibc-binary-localedata-hu-hu.utf-8', 
'nativesdk-glibc-binary-localedata-sv-fi.utf-8', 
'nativesdk-glibc-binary-localedata-es-cr.utf-8', 
'nativesdk-glibc-binary-localedata-th-th.utf-8', 
'nativesdk-glibc-binary-localedata-br-fr.utf-8', 
'nativesdk-glibc-binary-localedata-tr-cy.utf-8', 
'nativesdk-glibc-binary-localedata-zu-za.utf-8', 
'nativesdk-glibc-binary-localedata-bg-bg.utf-8', 
'nativesdk-glibc-binary-localedata-zh-sg.utf-8', 
'nativesdk-glibc-binary-localedata-mg-mg.utf-8', 
'nativesdk-glibc-binary-localedata-ar-tn.utf-8', 
'nativesdk-glibc-binary-localedata-en-bw.utf-8', 
'nativesdk-glibc-binary-localedata-en-gb.utf-8', 
'nativesdk-glibc-binary-localedata-es-mx.utf-8', 
'nativesdk-glibc-binary-localedata-es-pr.utf-8', 
'nativesdk-glibc-binary-localedata-es-es.utf-8', 
'nativesdk-glibc-binary-localedata-he-il.utf-8', 
'nativesdk-glibc-binary-localedata-es-ec.utf-8', 
'nativesdk-glibc-binary-localedata-af-za.utf-8', 
'nativesdk-glibc-binary-localedata-bs-ba.utf-8', 
'nativesdk-glibc-binary-localedata-hr-hr.utf-8', 
'nativesdk-glibc-binary-localedata-en-ca.utf-8', 
'nativesdk-glibc-binary-localedata-ca-it.utf-8', 
'nativesdk-glibc-binary-localedata-es-do.utf-8', 
'nativesdk-glibc-binary-localedata-nn-no.utf-8', 
'nativesdk-glibc-binary-localedata-cy-gb.utf-8', 
'nativesdk-glibc-binary-localedata-uz-uz.utf-8', 
'nativesdk-glibc-binary-localedata-tg-tj.utf-8', 
'nativesdk-glibc-binary-localedata-lt-lt.utf-8', 
'nativesdk-glibc-binary-localedata-ro-ro.utf-8', 
'nativesdk-glibc-binary-localedata-an-es.utf-8', 
'nativesdk-glibc-binary-localedata-es-co.utf-8', 
'nativesdk-glibc-binary-localedata-ko-kr.utf-8', 
'nativesdk-glibc-binary-localedata-tcy-in.utf-8', 
'nativesdk-glibc-binary-localedata-aa-dj.utf-8', 
'nativesdk-glibc-binary-localedata-de-li.utf-8', 
'nativesdk-glibc-binary-localedata-es-ar.utf-8', 
'nativesdk-glibc-binary-localedata-cs-cz.utf-8', 
'nativesdk-glibc-binary-localedata-id-id.utf-8', 
'nativesdk-glibc-binary-localedata-en-za.utf-8', 
'nativesdk-glibc-binary-localedata-nl-nl.utf-8', 
'nativesdk-glibc-binary-localedata-es-cl.utf-8', 
'nativesdk-glibc-binary-localedata-de-de.utf-8', 
'nativesdk-glibc-binary-localedata-es-py.utf-8', 
'nativesdk-glibc-binary-localedata-be-by.utf-8', 
'nativesdk-glibc-binary-localedata-ku-tr.utf-8', 
'nativesdk-glibc-binary-localedata-de-be.utf-8', 
'nativesdk-glibc-binary-localedata-pt-pt.utf-8', 
'nativesdk-glibc-binary-localedata-ar-ae.utf-8', 
'nativesdk-glibc-binary-localedata-pt-br.utf-8', 
'nativesdk-glibc-binary-localedata-el-gr.utf-8', 
'nativesdk-glibc-binary-localedata-kl-gl.utf-8', 
'nativesdk-glibc-binary-localedata-zh-tw.utf-8', 
'nativesdk-glibc-binary-localedata-en-ph.utf-8']' returned 2:
dpkg: warning: 'ldconfig' not found in PATH or not executable
dpkg: error: 1 expected program not found in PATH or not executable
Note: root's PATH should usually contain /usr/local/sbin, /usr/sbin and 
/sbin
```

after adding

```
HOSTTOOLS += "ldconfig"
```

to `build/conf/local.conf`

the build succeeds.

I'm using
```
PACKAGE_CLASSES = "package_deb"
```

If you need additional information, let me know.

The problem does not occur when using the latest pyro tag (yocto-2.3.3)

Regards
Florian

